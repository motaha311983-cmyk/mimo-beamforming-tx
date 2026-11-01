interface   intf_1 ;
    logic  signed  [15:0]    tb_sin_in ;
    logic signed   [15:0]    tb_cos_in ;
    logic signed   [15:0]    tb_I_in ;
    logic signed   [15:0]    tb_Q_in ;
    logic signed   [15:0]    tb_I_out ;
    logic signed   [15:0]    tb_Q_out ;
    logic                   clk ;
    logic                   reset;

    clocking driver_cb @(posedge clk) ;
        default   input    #1step   output     #1step ;
        output tb_sin_in ;
        output tb_cos_in ;
        output tb_I_in ;
        output tb_Q_in ;
    endclocking : driver_cb


    clocking monitor_cb @(posedge clk) ;
        default   input    #0  output     #0 ; 
        input tb_I_out ;
        input tb_Q_out ;
        input tb_sin_in ;
        input tb_cos_in ;
        input tb_I_in ;
        input tb_Q_in;
    endclocking : monitor_cb

endinterface : intf_1


package pack;
 
`include "uvm_macros.svh"
import uvm_pkg::*;

class sequence_item extends uvm_sequence_item;
  
 `uvm_object_utils(sequence_item)


    function new(string name = "sequence_item");
        super.new(name) ;
    endfunction : new

    rand bit signed [15:0] tb_I_in;
    rand bit signed [15:0] tb_Q_in;

    rand int angle;   
    rand int amp;     
    rand int phase;  

    bit signed [15:0] tb_sin_in;
    bit signed [15:0] tb_cos_in;

    bit signed [15:0] tb_I_out;
    bit signed [15:0] tb_Q_out;
 
    constraint angle_c { angle inside {[0:359]}; }
    constraint phase_c { phase inside {[0:359]}; }
    constraint amp_c   { amp inside {[1000:20000]}; }

function void post_randomize();
    real rad;


    rad = phase * 3.14159265 / 180.0;
    tb_I_in = $rtoi( (amp * $cos(rad)) * (1<<15) / 20000 ); 
    tb_Q_in = $rtoi( (amp * $sin(rad)) * (1<<15) / 20000 );


    rad = angle * 3.14159265 / 180.0;
    tb_sin_in = $rtoi($sin(rad) * (1<<15));
    tb_cos_in = $rtoi($cos(rad) * (1<<15));
endfunction


endclass




class sequencer extends uvm_sequencer #(sequence_item) ;
    `uvm_component_utils(sequencer)

    function new(string name = "sequencer" , uvm_component parent = null);
        super.new(name,parent) ;
    endfunction : new
    
endclass : sequencer


class my_sequence extends uvm_sequence ;
    `uvm_object_utils(my_sequence)
    sequence_item   seq_item_inst ;

    function new(string name = "my_sequence");
        super.new(name) ;
    endfunction : new

    task pre_body;
        seq_item_inst = sequence_item::type_id::create("seq_item_inst") ;
        set_response_queue_depth(101);
    endtask : pre_body

    task body ;
       for(int i = 0; i < 100; i = i + 1)
         begin
            start_item(seq_item_inst) ;
            if( !seq_item_inst.randomize() ) 
              $fatal("Gen:: trans randomization failed");
            finish_item(seq_item_inst) ;
        end

    endtask : body
    
endclass : my_sequence


class driver extends uvm_driver #(sequence_item) ;
    `uvm_component_utils(driver)
    sequence_item   seq_item_inst ;
    virtual    intf_1    vif ;


    function new(string name = "driver" , uvm_component parent = null) ;
        super.new(name , parent) ;
    endfunction : new


    function void build_phase(uvm_phase phase) ;
        super.build_phase(phase) ;
        if (!uvm_config_db #(virtual intf_1)::get(this, "", "my_vif", vif)) begin
            `uvm_fatal("Driver", "Virtual interface not found in config DB!")
        end
    endfunction : build_phase


    task run_phase(uvm_phase phase) ;
        super.run_phase(phase) ;
        forever begin
            seq_item_port.get_next_item(seq_item_inst) ;
            @(posedge vif.clk);
            vif.driver_cb.tb_sin_in <= seq_item_inst.tb_sin_in;
            vif.driver_cb.tb_cos_in <= seq_item_inst.tb_cos_in;
            vif.driver_cb.tb_I_in <= seq_item_inst.tb_I_in;
            vif.driver_cb.tb_Q_in <= seq_item_inst.tb_Q_in;
            seq_item_port.item_done(seq_item_inst);
        end
    endtask : run_phase
    
endclass : driver



class monitor extends uvm_monitor ;
    `uvm_component_utils(monitor)
    sequence_item   seq_item_inst ;
    virtual    intf_1    vif ;
    uvm_analysis_port #(sequence_item) mon_port ;


    function new(string name = "monitor" , uvm_component parent = null) ;
        super.new(name , parent) ;
    endfunction : new


    function void build_phase(uvm_phase phase) ;
        super.build_phase(phase) ;
        seq_item_inst = sequence_item::type_id::create("seq_item_inst") ;
        mon_port = new("mon_port" , this) ;
        if(!uvm_config_db #(virtual intf_1)::get(this , "" , "my_vif" , vif)) begin
            `uvm_fatal("monitor", "Virtual interface not found in config DB!")
        end
    endfunction : build_phase

task run_phase(uvm_phase phase);
    super.run_phase(phase);
   
    wait(vif.reset == 1);
    
    forever begin
        @(vif.monitor_cb);         

        seq_item_inst.tb_sin_in = vif.monitor_cb.tb_sin_in;
        seq_item_inst.tb_cos_in = vif.monitor_cb.tb_cos_in;
        seq_item_inst.tb_I_in   = vif.monitor_cb.tb_I_in;
        seq_item_inst.tb_Q_in   = vif.monitor_cb.tb_Q_in;
        seq_item_inst.tb_I_out  = vif.monitor_cb.tb_I_out;
        seq_item_inst.tb_Q_out  = vif.monitor_cb.tb_Q_out;
        mon_port.write(seq_item_inst);
    end
endtask

endclass

class agent extends uvm_agent ;
    `uvm_component_utils(agent)
    driver driv_inst ;
    monitor mon_inst ; 
    sequencer seq_inst ;
    virtual intf_1 vif ; 

/*--------------------------------------------------
-- Constructor
--------------------------------------------------*/
    function new(string name = "agent" , uvm_component parent = null) ;
        super.new(name , parent) ;
    endfunction : new

/*--------------------------------------------------
-- build phase
--------------------------------------------------*/
    function void build_phase(uvm_phase phase) ;
        super.build_phase(phase) ;
        driv_inst = driver::type_id::create("driv_inst" , this) ;
        mon_inst = monitor::type_id::create("mon_inst" , this) ;
        seq_inst = sequencer::type_id::create("seq_inst" , this) ;
        if(!uvm_config_db #(virtual intf_1)::get(this , "" , "my_vif" , vif)) begin
            `uvm_fatal("agent", "Virtual interface not found in config DB!")
        end 
        uvm_config_db #(virtual intf_1)::set(this , "mon_inst" , "my_vif" , vif) ;
        uvm_config_db #(virtual intf_1)::set(this , "driv_inst" , "my_vif" , vif) ;
    endfunction : build_phase

/*--------------------------------------------------
-- connect phase
--------------------------------------------------*/
    function void connect_phase(uvm_phase phase) ;
        super.connect_phase(phase) ;
        driv_inst.seq_item_port.connect(seq_inst.seq_item_export) ;
    endfunction : connect_phase
endclass : agent


class scoreboard extends uvm_scoreboard;
    `uvm_component_utils(scoreboard)
    uvm_analysis_imp #(sequence_item, scoreboard) scr_imp;

    
    bit signed [15:0] cal_I_out_arr [1499:0];
    bit signed [15:0] cal_Q_out_arr [1499:0];
    

    bit signed [15:0] in_I_arr   [999:0];
    bit signed [15:0] in_Q_arr   [999:0];
    bit signed [15:0] in_sin_arr [999:0];
    bit signed [15:0] in_cos_arr [999:0];


    bit signed [15:0] exp_I_out_arr [999:0];
    bit signed [15:0] exp_Q_out_arr [999:0];

    int i = 0;
    event write_done; 
    string project_path = "C:/Users/ASAA/OneDrive/Desktop/project/verification/phase_shifter/";

    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        scr_imp = new("scr_imp", this);
    endfunction : build_phase

    
    function void write(sequence_item t);

            in_I_arr[i]   = t.tb_I_in;
            in_Q_arr[i]   = t.tb_Q_in;
            in_sin_arr[i] = t.tb_sin_in;
            in_cos_arr[i] = t.tb_cos_in;


            cal_I_out_arr[i] = t.tb_I_out;
            cal_Q_out_arr[i] = t.tb_Q_out;

            i++;
            if (i == 1000) -> write_done; 

    endfunction

    task run_phase(uvm_phase phase);
        int fd;
        int best_delay = 0;
        int max_matches = 0;
        int current_match_cnt;
        string line;

        phase.raise_objection(this);

        @(write_done);


        fd = $fopen({project_path, "input_data.txt"}, "w");
        if (fd == 0) `uvm_fatal("SCB", "Failed to open input_data.txt")
        for (int j = 0; j < 1000; j++) begin
            $fdisplay(fd, "%0d %0d %0d %0d", in_I_arr[j], in_Q_arr[j], in_sin_arr[j], in_cos_arr[j]);
        end
        $fclose(fd);


        `uvm_info("SCB", "Executing Phase Shifter Python Model...", UVM_LOW)
        if ($system($sformatf("python \"%sphase_shifter.py\"", project_path)) != 0) begin
             `uvm_error("SCB", "Python Script Error!")
        end


        fd = $fopen({project_path, "output.txt"}, "r");
        if (fd == 0) `uvm_fatal("SCB", "Failed to open output.txt")
        
        i = 0;
        while ($fgets(line, fd) && i < 1000) begin
            if ($sscanf(line, "%d %d", exp_I_out_arr[i], exp_Q_out_arr[i]) == 2) begin
                i++;
            end
        end
        $fclose(fd);


        for (int d = 0; d < 100; d++) begin
            current_match_cnt = 0;
            for (int k = 0; k < 990; k++) begin
                if ((cal_I_out_arr[k+d ] == exp_I_out_arr[k]) && 
                    (cal_Q_out_arr[k+d] == exp_Q_out_arr[k])) begin
                    current_match_cnt++;
                end
            end

            if (current_match_cnt > max_matches) begin
                max_matches = current_match_cnt;
                best_delay  = d;
            end
        end

       
        current_match_cnt = 0;
        for (int k = 0; k < 1000; k++) begin
            if ((cal_I_out_arr[k + best_delay] == exp_I_out_arr[k]) && 
                (cal_Q_out_arr[k + best_delay] == exp_Q_out_arr[k])) begin
                current_match_cnt++;
            end
        end

        `uvm_info("RESULT", $sformatf("MATCH SCORE: %0d / 1000 | Best Delay: %0d", current_match_cnt, best_delay), UVM_LOW)


        if (current_match_cnt < 1000) begin
            `uvm_error("FAIL", "Phase Shifter RTL output does not match Python Model!")
        end else begin
            `uvm_info("PASS", "PERFECT MATCH! 100% Accuracy.", UVM_LOW)
        end
if (i < 5) 
    `uvm_info("DEBUG_VAL", $sformatf("RTL_I: %0d, EXP_I: %0d | RTL_Q: %0d, EXP_Q: %0d", 
              cal_I_out_arr[i+best_delay], exp_I_out_arr[i], 
              cal_Q_out_arr[i+best_delay], exp_Q_out_arr[i]), UVM_LOW)
        phase.drop_objection(this);
    endtask

endclass : scoreboard





class env extends uvm_env;
    `uvm_component_utils(env)

    agent       agent_inst;
    scoreboard  scr_inst;
    virtual intf_1 vif;

    function new(string name = "env", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agent_inst = agent::type_id::create("agent_inst", this);
        scr_inst   = scoreboard::type_id::create("scr_inst", this);

        if (!uvm_config_db #(virtual intf_1)::get(this, "", "my_vif", vif)) begin
            `uvm_fatal("env", "Virtual interface not found in config DB!")
        end

        uvm_config_db #(virtual intf_1)::set(this, "agent_inst", "my_vif", vif);
    endfunction : build_phase

    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        agent_inst.mon_inst.mon_port.connect(scr_inst.scr_imp);
    endfunction : connect_phase

endclass : env



class test extends uvm_test ;
    `uvm_component_utils(test)
    env env_inst ;
    my_sequence packet ; 
    virtual intf_1 vif ;

/*--------------------------------------------------
-- Constructor
--------------------------------------------------*/
    function new(string name = "test" , uvm_component parent = null);
        super.new(name , parent) ;
    endfunction : new

/*--------------------------------------------------
-- build phase
--------------------------------------------------*/
    function void build_phase(uvm_phase phase) ;
        super.build_phase(phase) ;
        env_inst = env::type_id::create("env_inst" , this) ;
        packet = my_sequence::type_id::create("packet") ;
        if(!uvm_config_db #(virtual intf_1)::get(this , "" , "my_vif" , vif)) begin
            `uvm_fatal("test", "Virtual interface not found in config DB!")
        end
        uvm_config_db #(virtual intf_1)::set(this , "env_inst" , "my_vif" , vif) ;
    endfunction : build_phase

/*--------------------------------------------------
-- run phase
--------------------------------------------------*/
    task run_phase(uvm_phase phase) ;
        super.run_phase(phase) ;
        phase.raise_objection(this) ;
          wait(vif.reset == 1); 
           @(posedge vif.clk);
        packet.start(env_inst.agent_inst.seq_inst) ;
        #10us ;
        phase.drop_objection(this) ;
    endtask : run_phase

endclass : test 




endpackage



`timescale 1ns/1ps


module  Phase_TB ;
    import uvm_pkg::* ;
    import pack::* ;


    intf_1    intf1() ;


    phase_shift uut (
        .clk(intf1.clk),
        .rst(intf1.reset), 
        .sin_in(intf1.tb_sin_in),
        .cos_in(intf1.tb_cos_in),
        .I_in(intf1.tb_I_in),
        .Q_in(intf1.tb_Q_in),
        .I_out(intf1.tb_I_out),
        .Q_out(intf1.tb_Q_out)
    );
 


initial begin
    intf1.clk = 0;

    uvm_config_db#(virtual intf_1)::set(null, "uvm_test_top", "my_vif", intf1);

    run_test("test");
end

initial begin
    intf1.reset = 0;
    #100;
    intf1.reset = 1;
end



always #160 intf1.clk = ~intf1.clk;

endmodule:Phase_TB
