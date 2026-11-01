interface   intf_1 ;
    logic signed  [15:0]    tb_in_data ;
    logic                   tb_data_out ;
    logic                   clk ;
    logic                   reset;

    clocking driver_cb @(posedge clk) ;
        default   input    #1step   output     #1step ;
        output tb_in_data ;
    endclocking : driver_cb


    clocking monitor_cb @(posedge clk) ;
        default   input    #0  output     #0 ; 
        input tb_data_out ;
        input tb_in_data ;
    endclocking : monitor_cb

endinterface : intf_1


package pack;
 
`include "uvm_macros.svh"
import uvm_pkg::*;

class sequence_item extends uvm_sequence_item;
    `uvm_object_utils(sequence_item)

    function new(string name = "sequence_item");
        super.new(name);
    endfunction : new

    // ----------------------------
    // Signals
    // ----------------------------
    rand bit signed [15:0] tb_in_data;   
    rand real freq;
    rand real amplitude;
    rand real phase;

    bit       tb_data_out;

    // ----------------------------
    // Constraints
    // ----------------------------
    constraint freq_range { freq >= 0.1; freq <= 5.0; }
    constraint amp_range  { amplitude >= 0.1; amplitude <= 1.0; } 
    constraint phase_range { phase >= 0.0; phase <= 2*3.1415926535; }

    // ----------------------------
    // Sine Generator
    // ----------------------------
    function void generate_single_sine_value(int sample_index, int num_samples);
        real theta;
        real sine_val_real;

        theta = (2.0 * 3.1415926535 * freq * sample_index / num_samples) + phase;
        sine_val_real = amplitude * $sin(theta);

        tb_in_data = $rtoi(sine_val_real * 32767.0);
    endfunction

endclass : sequence_item




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
        set_response_queue_depth(4001);
    endtask : pre_body

    task body ;
       for(int i = 0; i < 4000; i = i + 1)
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
       vif.driver_cb.tb_in_data <= 0;
        super.run_phase(phase) ;
        forever begin
            seq_item_port.get_next_item(seq_item_inst) ;
            @(posedge vif.clk);
            vif.driver_cb.tb_in_data <= seq_item_inst.tb_in_data ;
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
    bit start_flag = 0;
    forever begin
        @(posedge vif.clk);

        if (vif.reset == 1) begin

            if (vif.monitor_cb.tb_in_data != 0 || start_flag) begin
                start_flag = 1;
                seq_item_inst = sequence_item::type_id::create("seq_item_inst");
                
                seq_item_inst.tb_in_data = vif.monitor_cb.tb_in_data;
                

                @(posedge vif.clk); 
                #1ps; 
                seq_item_inst.tb_data_out = vif.monitor_cb.tb_data_out;
                
                mon_port.write(seq_item_inst);
            end
        end
    end
endtask
endclass : monitor


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


    int i = 0;                        
    logic signed [15:0] exp_in_arr [3999:0];     
    bit        cal_out_arr [3999:0];    
    bit        exp_out_arr [3999:0];    
    event      write_run;               
    int        fd;                      
    int        pass_count, fail_count;
    string     line;
    string     python_path = "C:/Users/ASAA/OneDrive/Desktop/project/verification/segma/";

    // Constructor
    function new(string name = "scoreboard", uvm_component parent = null);
        super.new(name, parent);
    endfunction : new

    // Build Phase
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        scr_imp = new("scr_imp", this);
    endfunction : build_phase


    function void write(sequence_item t);
        if (i < 4000) begin
            cal_out_arr[i] = t.tb_data_out;
            exp_in_arr[i]  = t.tb_in_data;   
            i++;
            if (i == 4000) -> write_run;    
        end
    endfunction

task run_phase(uvm_phase phase);
        int max_match = 0;
        int best_delay = 0;
        int d; 
        int j; 
        int current_match;

        phase.raise_objection(this);
        

        @(write_run); 


        fd = $fopen({python_path, "input_data.txt"}, "w");
        for(j=0; j<4000; j++) begin

$fdisplay(fd, "%0d", $signed(exp_in_arr[j][15:0]));
        end
        $fclose(fd);


        `uvm_info("SCB", "Running Python Reference Model...", UVM_LOW)
        if ($system($sformatf("python \"%ssegma.py\"", python_path)) != 0) begin
             `uvm_error("SCB", "Python Execution Failed!")
        end

        fd = $fopen({python_path, "output.txt"}, "r");
        for(j=0; j<4000; j++) begin
            if ($fgets(line, fd)) begin
                exp_out_arr[j] = line.atoi();
            end
        end
        $fclose(fd);

for (d = 0; d < 5; d++) begin 
    current_match = 0;
   for (int i = 0; i < 4000; i++) begin
        if (cal_out_arr[j] == exp_out_arr[j+1]) begin
            current_match++;
        end
            end            
            if (current_match > max_match) begin
                max_match = current_match;
                best_delay = d;
            end
        end

       `uvm_info("FINAL", $sformatf("RESULT: Best Match = %0d / 4000 at Delay = %0d", max_match, best_delay), UVM_LOW)     
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
        #100ns ;
        phase.drop_objection(this) ;
    endtask : run_phase

endclass : test 



endpackage



`timescale 1ns/1ps


module  Segma_TB ;
    import uvm_pkg::* ;
    import pack::* ;


    intf_1    intf1() ;


    segma uut1 (
        .clk(intf1.clk),
        .reset(intf1.reset), 
        .input_data(intf1.tb_in_data),
        .out_1bit(intf1.tb_data_out)
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



always #5 intf1.clk = ~intf1.clk;

endmodule:Segma_TB
