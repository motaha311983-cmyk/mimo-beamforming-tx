module MIMO (
input         clk,
input         rest_n,
input signed [15:0] I,
input signed  [15:0] Q,
output        out
);

wire signed [15:0] filter1_out;
wire signed[15:0] filter2_out;
//wire signed[15:0] I_1;
//wire signed[15:0] Q_1;
wire  segma_1,segma_2;
wire  clk_segma,clk3,clk2,clk1,clk4;
//wire ce_128_1;
//wire [21:0] out_fir1,out_fir2;
//assign out_fir1 = {{6{filter1_out[15]}}, filter1_out};
//assign out_fir2 = {{6{filter2_out[15]}}, filter2_out};

//ce_generator gen128_1 ( 
//.clk(clk), 
//.rst_n(rest_n),
//.div_ratio(8'd128), 
//.ce_out(ce_128_1)
//);

ClkDiv gen4 ( 
.i_ref_clk(clk), 
.i_rst(rest_n),
.i_clk_en(1'b1),
.i_div_ratio(8'd4), 
.o_div_clk(clk_segma)
);


ClkDiv gen128 ( 
.i_ref_clk(clk), 
.i_rst(rest_n),
.i_clk_en(1'b1),
.i_div_ratio(8'd128), 
.o_div_clk(clk1)
);

ClkDiv gen16 ( 
.i_ref_clk(clk), 
.i_rst(rest_n),
.i_clk_en(1'b1),
.i_div_ratio(8'd64), 
.o_div_clk(clk2)
);

ClkDiv gen64 (
.i_ref_clk(clk), 
.i_rst(rest_n),
.i_clk_en(1'b1),
.i_div_ratio(8'd16), 
.o_div_clk(clk3)
);

ClkDiv gen_4 ( 
.i_ref_clk(clk), 
.i_rst(rest_n),
.i_clk_en(1'b1),
.i_div_ratio(8'd4), 
.o_div_clk(clk4)
);


//phase_shift uut
//(.clk(ce_128_1),
//.rst(rest_n),
//.I_in(I),
//.Q_in(Q),
//.sin_in(16'sd32767),
//.cos_in(16'sd0),
//.I_out(I_1),
//.Q_out(Q_1)
//);


FIR uut1
(.clk(clk),
.clk_1(clk1),
.clk_2(clk2),
.clk_3(clk3),
.clk_4(clk4),
.reset(rest_n),
.data_in(I),
.out(filter1_out)
);


FIR uut2
(.clk(clk),
.clk_1(clk1),
.clk_2(clk2),
.clk_3(clk3),
.clk_4(clk4),
.reset(rest_n),
.data_in(Q),
.out(filter2_out)
);

segma uut3
(.clk(clk_segma),
.reset(rest_n),
.input_data(filter1_out),
.out_1bit(segma_1)
);

segma uut4
(.clk(clk_segma),
.reset(rest_n),
.input_data(filter2_out),
.out_1bit(segma_2)
);


DUC uut5 
(.clk(clk),
.rst(rest_n),
.I_in_DUC(segma_1),
.Q_in_DUC(segma_2),
.SYS_out(out)
);

endmodule
