`timescale 1ns / 1ps

module mimo_tb;

    reg clk;
    reg rest_n;
    reg signed [15:0] I_in;
    reg signed [15:0] Q_in;
    wire out;

    integer f_in_i, f_in_q;
    integer f_phase_i, f_phase_q;
    integer f_fir_i, f_fir_q;
    integer f_sd_i, f_sd_q;
    integer f_duc;

    real time_v;
    real tone_freq = 100000; 
    real amp = 0.6 * 32767;  

    MIMO dut (
        .clk(clk),
        .rest_n(rest_n),
        .I(I_in),
        .Q(Q_in),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #1.25 clk = ~clk; 
    end

    initial begin
        f_in_i    = $fopen("input_i.txt", "w");
        f_in_q    = $fopen("input_q.txt", "w");
        f_phase_i = $fopen("phase_out_i.txt", "w");
        f_phase_q = $fopen("phase_out_q.txt", "w");
        f_fir_i   = $fopen("fir_out_i.txt", "w");
        f_fir_q   = $fopen("fir_out_q.txt", "w");
        f_sd_i    = $fopen("sd_out_i.txt", "w");
        f_sd_q    = $fopen("sd_out_q.txt", "w");
        f_duc     = $fopen("duc_out.txt", "w");

        rest_n = 0;
        I_in = 0;
        Q_in = 0;
        #100;
        rest_n = 1;

        #1000000; 
        
        $fclose(f_in_i);
        $fclose(f_in_q);
        $fclose(f_phase_i);
        $fclose(f_phase_q);
        $fclose(f_fir_i);
        $fclose(f_fir_q);
        $fclose(f_sd_i);
        $fclose(f_sd_q);
        $fclose(f_duc);
        $stop;
    end

    //always @(posedge dut.ce_128_1) begin
      always @(posedge clk) begin
        if (rest_n) begin
            time_v = $realtime / 1000000000.0;
            I_in = $rtoi(amp * $cos(2.0 * 3.14159265 * tone_freq * time_v));
            Q_in = $rtoi(amp * $sin(2.0 * 3.14159265 * tone_freq * time_v));
            
            $fwrite(f_in_i,    "%d\n", I_in);
            $fwrite(f_in_q,    "%d\n", Q_in);
        end
    end

    //always @(posedge dut.ce_128_1) begin
        //if (rest_n) begin
         
            //$fwrite(f_in_i,    "%d\n", I_in);
            //$fwrite(f_in_q,    "%d\n", Q_in);
            //$fwrite(f_phase_i, "%d\n", $signed(dut.I_1));
            //$fwrite(f_phase_q, "%d\n", $signed(dut.Q_1));
        //end
 //end
    always @(posedge dut.clk_segma) begin
        if (rest_n) begin
         
            $fwrite(f_fir_i,   "%d\n", $signed(dut.filter1_out));
            $fwrite(f_fir_q,   "%d\n", $signed(dut.filter2_out));
            $fwrite(f_sd_i,    "%d\n", dut.segma_1);
            $fwrite(f_sd_q,    "%d\n", dut.segma_2);
        end
 end

         always @(posedge clk) begin
        if (rest_n) begin
         
            $fwrite(f_duc,     "%d\n", out);


        end
    end

endmodule
