
`timescale 1ns/1ps

// 1. Interface Definition
interface intf_1;
    logic        tb_I_in;
    logic        tb_Q_in;
    logic        tb_out;
    logic        clk;
    logic        reset;

    clocking driver_cb @(posedge clk);
        default input #1step output #1step;
        output tb_I_in;
        output tb_Q_in;
    endclocking

    clocking monitor_cb @(posedge clk);
        default input #0 output #0; 
        input tb_out;
        input tb_I_in;
        input tb_Q_in;
    endclocking
endinterface

// 2. Package Definition
package pack;
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    // --- Sequence Item ---
    class sequence_item extends uvm_sequence_item;
        `uvm_object_utils(sequence_item)
        
        rand bit tb_I_in;
        rand bit tb_Q_in;
        bit signed [15:0] tb_out; 

        function new(string name = "sequence_item");
            super.new(name);
        endfunction

        constraint iq_c { tb_I_in inside {0,1}; tb_Q_in inside {0,1}; }
    endclass

    // --- Sequencer ---
    class sequencer extends uvm_sequencer #(sequence_item);
        `uvm_component_utils(sequencer)
        function new(string name = "sequencer", uvm_component parent = null);
            super.new(name, parent);
        endfunction
    endclass

    // --- Sequence ---
    class my_sequence extends uvm_sequence #(sequence_item);
        `uvm_object_utils(my_sequence)
        function new(string name = "my_sequence");
            super.new(name);
        endfunction

        task body();
            repeat(100) begin
                req = sequence_item::type_id::create("req");
                start_item(req);
                if(!req.randomize()) `uvm_fatal("SEQ", "Randomization failed")
                finish_item(req);
            end
        endtask
    endclass

    // --- Driver ---
    class driver extends uvm_driver #(sequence_item);
        `uvm_component_utils(driver)
        virtual intf_1 vif;

        function new(string name = "driver", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            if (!uvm_config_db #(virtual intf_1)::get(this, "", "my_vif", vif))
                `uvm_fatal("DRV", "Virtual interface not found")
        endfunction

        task run_phase(uvm_phase phase);
            forever begin
                seq_item_port.get_next_item(req);
                repeat(4) @(posedge vif.clk);
                vif.driver_cb.tb_I_in <= req.tb_I_in;
                vif.driver_cb.tb_Q_in <= req.tb_Q_in;
                seq_item_port.item_done();
            end
        endtask
    endclass

    // --- Monitor ---
    class monitor extends uvm_monitor;
        `uvm_component_utils(monitor)
        virtual intf_1 vif;
        uvm_analysis_port #(sequence_item) mon_port;

        function new(string name = "monitor", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            mon_port = new("mon_port", this);
            if(!uvm_config_db #(virtual intf_1)::get(this, "", "my_vif", vif))
                `uvm_fatal("MON", "Virtual interface not found")
        endfunction

        task run_phase(uvm_phase phase);
            sequence_item item;
            forever begin
                @(posedge vif.clk);
                if (vif.reset == 1) begin
                    item = sequence_item::type_id::create("item");
                    item.tb_I_in = vif.monitor_cb.tb_I_in;
                    item.tb_Q_in = vif.monitor_cb.tb_Q_in;
                    item.tb_out  = vif.monitor_cb.tb_out;
                    mon_port.write(item);
                end
            end
        endtask
    endclass

    // --- Scoreboard ---
    class scoreboard extends uvm_scoreboard;
        `uvm_component_utils(scoreboard)
        uvm_analysis_imp #(sequence_item, scoreboard) scr_imp;

        int i = 0;
        logic [15:0] exp_I_in_arr [399:0];
        logic [15:0] exp_Q_in_arr [399:0];
        bit   [15:0] cal_out_arr  [3999:0];
        bit   [15:0] exp_out_arr  [3999:0];
        int k = 0;
        event write_run;
        string python_path = "C:/Users/ASAA/OneDrive/Desktop/project/verification/DUC/";

        function new(string name = "scoreboard", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            scr_imp = new("scr_imp", this);
        endfunction

        function void write(sequence_item t);
            if (i < 400) begin
                exp_I_in_arr[i] = t.tb_I_in;
                exp_Q_in_arr[i] = t.tb_Q_in;
                i++;
                if (i == 400) -> write_run;
            end
            if (k < 4000) begin
                cal_out_arr[k] = t.tb_out;
                k++;
            end
        endfunction

        task run_phase(uvm_phase phase);
            int fd, max_match = 0, best_delay = 0;
            string line;
            phase.raise_objection(this);
            @(write_run);

            fd = $fopen({python_path, "input_data.txt"}, "w");
            for(int j=0; j<400; j++) 
                $fdisplay(fd, "%0d %0d", $signed(exp_I_in_arr[j]), $signed(exp_Q_in_arr[j]));
            $fclose(fd);

            if ($system($sformatf("python \"%sduc.py\"", python_path)) != 0)
                `uvm_error("SCB", "Python Failed")

            fd = $fopen({python_path, "output.txt"}, "r");
            for(int j=0; j<4000; j++) begin
                if ($fgets(line, fd)) exp_out_arr[j] = line.atoi();
            end
            $fclose(fd);

            for (int d = 0; d < 500; d++) begin
                int current_match = 0;
                for (int m = 0; m < 4000; m++) begin
                    if (cal_out_arr[m+d] == exp_out_arr[m]) current_match++;
                end
                if (current_match > max_match) begin
                    max_match = current_match;
                    best_delay = d;
                end
            end
            `uvm_info("FINAL", $sformatf("Match = %0d/4000, Delay = %0d", max_match, best_delay), UVM_LOW)
            phase.drop_objection(this);
        endtask
    endclass

    // --- Agent ---
    class agent extends uvm_agent;
        `uvm_component_utils(agent)
        driver driv_inst;
        monitor mon_inst;
        sequencer seq_inst;

        function new(string name = "agent", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            driv_inst = driver::type_id::create("driv_inst", this);
            mon_inst = monitor::type_id::create("mon_inst", this);
            seq_inst = sequencer::type_id::create("seq_inst", this);
        endfunction

        function void connect_phase(uvm_phase phase);
            driv_inst.seq_item_port.connect(seq_inst.seq_item_export);
        endfunction
    endclass

    // --- Env ---
    class env extends uvm_env;
        `uvm_component_utils(env)
        agent agent_inst;
        scoreboard scr_inst;

        function new(string name = "env", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            agent_inst = agent::type_id::create("agent_inst", this);
            scr_inst = scoreboard::type_id::create("scr_inst", this);
        endfunction

        function void connect_phase(uvm_phase phase);
            agent_inst.mon_inst.mon_port.connect(scr_inst.scr_imp);
        endfunction
    endclass

    // --- Test ---
    class test extends uvm_test;
        `uvm_component_utils(test)
        env env_inst;
        virtual intf_1 vif;

        function new(string name = "test", uvm_component parent = null);
            super.new(name, parent);
        endfunction

        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            env_inst = env::type_id::create("env_inst", this);
            if(!uvm_config_db #(virtual intf_1)::get(this, "", "my_vif", vif))
                `uvm_fatal("TEST", "VIF not found")
        endfunction

        task run_phase(uvm_phase phase);
            my_sequence seq = my_sequence::type_id::create("seq");
            phase.raise_objection(this);
            wait(vif.reset == 1);
            seq.start(env_inst.agent_inst.seq_inst);
            #5000ns;
            phase.drop_objection(this);
        endtask
    endclass
endpackage

// 3. Top Module
module DUC_TB;
    import uvm_pkg::*;
    import pack::*;

    intf_1 intf1();

    DUC uut (
        .clk(intf1.clk),
        .rst(intf1.reset),
        .I_in_DUC(intf1.tb_I_in),
        .Q_in_DUC(intf1.tb_Q_in),
        .SYS_out(intf1.tb_out)
    );

    initial begin
        intf1.clk = 0;
        uvm_config_db#(virtual intf_1)::set(null, "uvm_test_top*", "my_vif", intf1);
        run_test("test");
    end

    initial begin
        intf1.reset = 0;
        #100 intf1.reset = 1;
    end

    always #1.25 intf1.clk = ~intf1.clk;
endmodule