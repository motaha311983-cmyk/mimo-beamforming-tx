/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Jun 29 05:28:04 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  CLKMX2X4M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X8M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(SEL), .Y(OUT) );
endmodule


module ClkDiv_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_4 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N16, N17, N18, N19, N20, N21, N22, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n2, n3, n4, n5, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFRQX2M div_clk_reg ( .D(n27), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M count_reg_5_ ( .D(n29), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M count_reg_4_ ( .D(n30), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M count_reg_3_ ( .D(n31), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M count_reg_6_ ( .D(n28), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M count_reg_0_ ( .D(n34), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(n32), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M count_reg_1_ ( .D(n33), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n26), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
  NAND2BX2M U6 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n16) );
  OR2X2M U15 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n34) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n33) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n32) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n31) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n30) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n29) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n28) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n27) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(test_so), .B(n23), .Y(n26) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(test_so), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_0_DW01_inc_0 add_52 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_4_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_2 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4, n5,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFSQX2M odd_edge_tog_reg ( .D(n60), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
  SDFFRQX2M div_clk_reg ( .D(n59), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M count_reg_5_ ( .D(n57), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M count_reg_4_ ( .D(n56), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M count_reg_3_ ( .D(n55), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M count_reg_6_ ( .D(n58), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M count_reg_0_ ( .D(n52), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(n54), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M count_reg_1_ ( .D(n53), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  NAND2BX2M U5 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n15) );
  OR2X2M U11 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n52) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n53) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n54) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n55) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n56) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n57) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n58) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n59) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(test_so), .B(n22), .Y(n60) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(test_so), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_4_DW01_inc_0 add_52 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_3_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4, n5,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFSQX2M odd_edge_tog_reg ( .D(n60), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
  SDFFRQX2M div_clk_reg ( .D(n59), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M count_reg_5_ ( .D(n57), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M count_reg_4_ ( .D(n56), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M count_reg_3_ ( .D(n55), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M count_reg_6_ ( .D(n58), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M count_reg_0_ ( .D(n52), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(n54), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M count_reg_1_ ( .D(n53), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  NAND2BX2M U5 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n15) );
  OR2X2M U11 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n52) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n53) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n54) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n55) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n56) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n57) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n58) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n59) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(test_so), .B(n22), .Y(n60) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(test_so), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_3_DW01_inc_0 add_52 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_2_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N16, N17, N18, N19, N20, N21, N22, n1, n2, n3, n4, n5,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFSQX2M odd_edge_tog_reg ( .D(n60), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
  SDFFRQX2M div_clk_reg ( .D(n59), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M count_reg_5_ ( .D(n57), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M count_reg_4_ ( .D(n56), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M count_reg_3_ ( .D(n55), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M count_reg_6_ ( .D(n58), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M count_reg_0_ ( .D(n52), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(n54), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M count_reg_1_ ( .D(n53), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  NAND2BX2M U5 ( .AN(n50), .B(i_clk_en), .Y(n16) );
  INVX2M U6 ( .A(i_div_ratio[5]), .Y(n15) );
  OR2X2M U11 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U15 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U21 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U22 ( .A(n3), .B(n15), .Y(n4) );
  OAI21X1M U23 ( .A0(n3), .A1(n15), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U25 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U26 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U27 ( .A0(n16), .A1(count[0]), .B0(N16), .B1(n17), .Y(n52) );
  AO22X1M U28 ( .A0(n16), .A1(count[1]), .B0(N17), .B1(n17), .Y(n53) );
  AO22X1M U29 ( .A0(n16), .A1(count[2]), .B0(N18), .B1(n17), .Y(n54) );
  AO22X1M U30 ( .A0(n16), .A1(count[3]), .B0(N19), .B1(n17), .Y(n55) );
  AO22X1M U31 ( .A0(n16), .A1(count[4]), .B0(N20), .B1(n17), .Y(n56) );
  AO22X1M U32 ( .A0(n16), .A1(count[5]), .B0(N21), .B1(n17), .Y(n57) );
  AO22X1M U33 ( .A0(n16), .A1(count[6]), .B0(N22), .B1(n17), .Y(n58) );
  AND3X1M U34 ( .A(n18), .B(n19), .C(N2), .Y(n17) );
  CLKXOR2X2M U35 ( .A(div_clk), .B(n20), .Y(n59) );
  AOI21X1M U36 ( .A0(n19), .A1(n18), .B0(n16), .Y(n20) );
  OR2X1M U37 ( .A(n21), .B(i_div_ratio[0]), .Y(n18) );
  XNOR2X1M U38 ( .A(test_so), .B(n22), .Y(n60) );
  OR2X1M U39 ( .A(n19), .B(n16), .Y(n22) );
  CLKNAND2X2M U40 ( .A(n23), .B(i_div_ratio[0]), .Y(n19) );
  MXI2X1M U41 ( .A(n24), .B(n21), .S0(test_so), .Y(n23) );
  NAND4X1M U42 ( .A(n25), .B(n35), .C(n36), .D(n37), .Y(n21) );
  NOR4X1M U43 ( .A(n38), .B(n39), .C(n40), .D(n41), .Y(n37) );
  CLKXOR2X2M U44 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n41) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n38) );
  XNOR2X1M U48 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n36) );
  XNOR2X1M U49 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n25) );
  NAND4X1M U51 ( .A(n42), .B(n43), .C(n44), .D(n45), .Y(n24) );
  NOR4X1M U52 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n45) );
  CLKXOR2X2M U53 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n49) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n48) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n47) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n46) );
  XNOR2X1M U57 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n44) );
  XNOR2X1M U58 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n43) );
  XNOR2X1M U59 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n42) );
  CLKINVX1M U60 ( .A(n16), .Y(N2) );
  NOR4BX1M U61 ( .AN(n51), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n50) );
  NOR4X1M U62 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n51) );
  ClkDiv_2_DW01_inc_0 add_52 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module ClkDiv_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ClkDiv_test_3 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N16, N17, N18, N19, N20, N21, N22, n2, n3, n4, n5, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  SDFFRQX2M div_clk_reg ( .D(n60), .SI(count[6]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(div_clk) );
  SDFFRQX2M count_reg_5_ ( .D(n58), .SI(count[4]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[5]) );
  SDFFRQX2M count_reg_4_ ( .D(n57), .SI(count[3]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[4]) );
  SDFFRQX2M count_reg_3_ ( .D(n56), .SI(count[2]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[3]) );
  SDFFRQX2M count_reg_6_ ( .D(n59), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[6]) );
  SDFFRQX2M count_reg_0_ ( .D(n53), .SI(test_si), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst), .Q(count[0]) );
  SDFFRQX2M count_reg_2_ ( .D(n55), .SI(count[1]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[2]) );
  SDFFRQX2M count_reg_1_ ( .D(n54), .SI(count[0]), .SE(test_se), .CK(i_ref_clk), .RN(i_rst), .Q(count[1]) );
  SDFFSQX1M odd_edge_tog_reg ( .D(n61), .SI(div_clk), .SE(test_se), .CK(
        i_ref_clk), .SN(i_rst), .Q(test_so) );
  NAND2BX2M U6 ( .AN(n51), .B(i_clk_en), .Y(n17) );
  INVX2M U11 ( .A(i_div_ratio[5]), .Y(n16) );
  OR2X2M U15 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n2), .Y(
        edge_flip_half[1]) );
  OR2X1M U19 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U20 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(
        edge_flip_half[2]) );
  NOR2X1M U21 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  AO21XLM U22 ( .A0(n3), .A1(i_div_ratio[4]), .B0(n4), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U23 ( .A(n4), .B(n16), .Y(n5) );
  OAI21X1M U24 ( .A0(n4), .A1(n16), .B0(n5), .Y(edge_flip_half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n5), .Y(edge_flip_half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n5), .Y(n15) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n15), .Y(edge_flip_half[6]) );
  AO22X1M U28 ( .A0(n17), .A1(count[0]), .B0(N16), .B1(n18), .Y(n53) );
  AO22X1M U29 ( .A0(n17), .A1(count[1]), .B0(N17), .B1(n18), .Y(n54) );
  AO22X1M U30 ( .A0(n17), .A1(count[2]), .B0(N18), .B1(n18), .Y(n55) );
  AO22X1M U31 ( .A0(n17), .A1(count[3]), .B0(N19), .B1(n18), .Y(n56) );
  AO22X1M U32 ( .A0(n17), .A1(count[4]), .B0(N20), .B1(n18), .Y(n57) );
  AO22X1M U33 ( .A0(n17), .A1(count[5]), .B0(N21), .B1(n18), .Y(n58) );
  AO22X1M U34 ( .A0(n17), .A1(count[6]), .B0(N22), .B1(n18), .Y(n59) );
  AND3X1M U35 ( .A(n19), .B(n20), .C(N2), .Y(n18) );
  CLKXOR2X2M U36 ( .A(div_clk), .B(n21), .Y(n60) );
  AOI21X1M U37 ( .A0(n20), .A1(n19), .B0(n17), .Y(n21) );
  OR2X1M U38 ( .A(n22), .B(i_div_ratio[0]), .Y(n19) );
  XNOR2X1M U39 ( .A(test_so), .B(n23), .Y(n61) );
  OR2X1M U40 ( .A(n20), .B(n17), .Y(n23) );
  CLKNAND2X2M U41 ( .A(n24), .B(i_div_ratio[0]), .Y(n20) );
  MXI2X1M U42 ( .A(n25), .B(n22), .S0(test_so), .Y(n24) );
  NAND4X1M U43 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n22) );
  NOR4X1M U44 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n38) );
  CLKXOR2X2M U45 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n42) );
  CLKXOR2X2M U46 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n41) );
  CLKXOR2X2M U47 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n40) );
  CLKXOR2X2M U48 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n39) );
  XNOR2X1M U49 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n37) );
  XNOR2X1M U50 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n36) );
  XNOR2X1M U51 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n35) );
  NAND4X1M U52 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n25) );
  NOR4X1M U53 ( .A(n47), .B(n48), .C(n49), .D(n50), .Y(n46) );
  CLKXOR2X2M U54 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n50) );
  CLKXOR2X2M U55 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n49) );
  CLKXOR2X2M U56 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n48) );
  CLKXOR2X2M U57 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n47) );
  XNOR2X1M U58 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n45) );
  XNOR2X1M U59 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n44) );
  XNOR2X1M U60 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n43) );
  CLKINVX1M U61 ( .A(n17), .Y(N2) );
  NOR4BX1M U62 ( .AN(n52), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n51) );
  NOR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n52) );
  ClkDiv_1_DW01_inc_0 add_52 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module hfb_1_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_17 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_16 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_15 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_14 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_13 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_12 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  AND2X2M U2 ( .A(n14), .B(n15), .Y(SUM[8]) );
  INVX2M U3 ( .A(n61), .Y(n9) );
  INVX2M U4 ( .A(n58), .Y(n10) );
  INVX2M U5 ( .A(n11), .Y(SUM[7]) );
  INVX2M U6 ( .A(A[7]), .Y(n11) );
  BUFX2M U7 ( .A(A[6]), .Y(SUM[6]) );
  BUFX2M U8 ( .A(A[5]), .Y(SUM[5]) );
  BUFX2M U9 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U13 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2X1M U14 ( .A(n15), .B(n12), .Y(SUM[9]) );
  NOR2X1M U15 ( .A(n10), .B(n13), .Y(n12) );
  XOR3XLM U16 ( .A(B[22]), .B(A[22]), .C(n16), .Y(SUM[22]) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[21]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[21]), .A1(n17), .B0(B[21]), .Y(n18) );
  XOR3XLM U19 ( .A(B[21]), .B(A[21]), .C(n17), .Y(SUM[21]) );
  OAI2BB1X1M U20 ( .A0N(n19), .A1N(A[20]), .B0(n20), .Y(n17) );
  OAI21X1M U21 ( .A0(A[20]), .A1(n19), .B0(B[20]), .Y(n20) );
  XOR3XLM U22 ( .A(B[20]), .B(A[20]), .C(n19), .Y(SUM[20]) );
  OAI21BX1M U23 ( .A0(n21), .A1(n22), .B0N(n23), .Y(n19) );
  XNOR2X1M U24 ( .A(n22), .B(n24), .Y(SUM[19]) );
  NOR2X1M U25 ( .A(n23), .B(n21), .Y(n24) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n21) );
  AND2X1M U27 ( .A(B[19]), .B(A[19]), .Y(n23) );
  OA21X1M U28 ( .A0(n25), .A1(n26), .B0(n27), .Y(n22) );
  CLKXOR2X2M U29 ( .A(n28), .B(n26), .Y(SUM[18]) );
  AOI2B1X1M U30 ( .A1N(n29), .A0(n30), .B0(n31), .Y(n26) );
  NAND2BX1M U31 ( .AN(n25), .B(n27), .Y(n28) );
  CLKNAND2X2M U32 ( .A(B[18]), .B(A[18]), .Y(n27) );
  NOR2X1M U33 ( .A(B[18]), .B(A[18]), .Y(n25) );
  CLKXOR2X2M U34 ( .A(n30), .B(n32), .Y(SUM[17]) );
  NOR2X1M U35 ( .A(n31), .B(n29), .Y(n32) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n29) );
  AND2X1M U37 ( .A(B[17]), .B(A[17]), .Y(n31) );
  OAI21X1M U38 ( .A0(n33), .A1(n34), .B0(n35), .Y(n30) );
  CLKXOR2X2M U39 ( .A(n36), .B(n34), .Y(SUM[16]) );
  AOI2B1X1M U40 ( .A1N(n37), .A0(n38), .B0(n39), .Y(n34) );
  NAND2BX1M U41 ( .AN(n33), .B(n35), .Y(n36) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n35) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n33) );
  CLKXOR2X2M U44 ( .A(n38), .B(n40), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n39), .B(n37), .Y(n40) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n37) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n39) );
  OAI21X1M U48 ( .A0(n41), .A1(n42), .B0(n43), .Y(n38) );
  CLKXOR2X2M U49 ( .A(n44), .B(n42), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n45), .A0(n46), .B0(n47), .Y(n42) );
  NAND2BX1M U51 ( .AN(n41), .B(n43), .Y(n44) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n43) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n41) );
  CLKXOR2X2M U54 ( .A(n46), .B(n48), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n47), .B(n45), .Y(n48) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n45) );
  AND2X1M U57 ( .A(B[13]), .B(A[13]), .Y(n47) );
  OAI21X1M U58 ( .A0(n49), .A1(n50), .B0(n51), .Y(n46) );
  CLKXOR2X2M U59 ( .A(n52), .B(n50), .Y(SUM[12]) );
  AOI2BB1X1M U60 ( .A0N(n53), .A1N(n54), .B0(n55), .Y(n50) );
  AOI21BX1M U61 ( .A0(n56), .A1(n9), .B0N(n57), .Y(n54) );
  OAI21X1M U62 ( .A0(n13), .A1(n15), .B0(n58), .Y(n56) );
  NAND2BX1M U63 ( .AN(n49), .B(n51), .Y(n52) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n51) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n49) );
  CLKXOR2X2M U66 ( .A(n59), .B(n60), .Y(SUM[11]) );
  NOR2X1M U67 ( .A(n55), .B(n53), .Y(n60) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n53) );
  AND2X1M U69 ( .A(B[11]), .B(A[11]), .Y(n55) );
  OAI21X1M U70 ( .A0(n61), .A1(n62), .B0(n57), .Y(n59) );
  CLKXOR2X2M U71 ( .A(n63), .B(n62), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n15), .A1N(n13), .B0(n10), .Y(n62) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n58) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n13) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n15) );
  OR2X1M U76 ( .A(B[8]), .B(A[8]), .Y(n14) );
  CLKNAND2X2M U77 ( .A(n9), .B(n57), .Y(n63) );
  CLKNAND2X2M U78 ( .A(B[10]), .B(A[10]), .Y(n57) );
  NOR2X1M U79 ( .A(B[10]), .B(A[10]), .Y(n61) );
endmodule


module hfb_1_0_DW02_mult_3 ( A, B, TC, PRODUCT );
  input [8:0] A;
  input [16:0] B;
  output [25:0] PRODUCT;
  input TC;
  wire   CARRYB_7__14_, CARRYB_7__13_, CARRYB_7__12_, CARRYB_7__10_,
         CARRYB_7__9_, CARRYB_7__8_, CARRYB_7__7_, CARRYB_7__6_, CARRYB_7__5_,
         CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_, CARRYB_7__1_, CARRYB_7__0_,
         CARRYB_5__15_, SUMB_8__14_, SUMB_8__13_, SUMB_8__12_, SUMB_8__11_,
         SUMB_8__10_, SUMB_8__9_, SUMB_8__8_, SUMB_8__7_, SUMB_8__6_,
         SUMB_8__5_, SUMB_8__4_, SUMB_8__3_, SUMB_8__2_, SUMB_8__1_,
         SUMB_8__0_, SUMB_7__15_, SUMB_7__14_, SUMB_7__13_, SUMB_7__12_,
         SUMB_7__11_, SUMB_7__10_, SUMB_7__9_, SUMB_7__8_, SUMB_7__7_,
         SUMB_7__6_, SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_,
         SUMB_7__1_, SUMB_6__14_, SUMB_6__13_, SUMB_6__12_, SUMB_6__10_,
         SUMB_6__9_, SUMB_6__8_, SUMB_6__7_, SUMB_6__6_, SUMB_6__5_,
         SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_, SUMB_5__15_,
         SUMB_5__14_, SUMB_5__13_, SUMB_5__12_, SUMB_5__10_, SUMB_5__9_,
         SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, A1_21_, A1_20_, A1_19_, A1_18_,
         A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_,
         A1_8_, A1_7_, A1_5_, A1_4_, A1_3_, A2_15_, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, SYNOPSYS_UNCONNECTED_1;

  ADDFX2M S1_7_0 ( .A(B[0]), .B(n17), .CI(SUMB_6__1_), .CO(CARRYB_7__0_), .S(
        A1_5_) );
  ADDFX2M S2_7_1 ( .A(B[1]), .B(n16), .CI(SUMB_6__2_), .CO(CARRYB_7__1_), .S(
        SUMB_7__1_) );
  ADDFX2M S2_7_14 ( .A(B[14]), .B(n15), .CI(CARRYB_5__15_), .CO(CARRYB_7__14_), 
        .S(SUMB_7__14_) );
  ADDFX2M S2_7_13 ( .A(B[13]), .B(n4), .CI(SUMB_6__14_), .CO(CARRYB_7__13_), 
        .S(SUMB_7__13_) );
  ADDFX2M S2_7_2 ( .A(B[2]), .B(n14), .CI(SUMB_6__3_), .CO(CARRYB_7__2_), .S(
        SUMB_7__2_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(n5), .CI(SUMB_8__8_), .CO(A2_15_), .S(
        A1_14_) );
  ADDFX2M S2_7_12 ( .A(B[12]), .B(n6), .CI(SUMB_6__13_), .CO(CARRYB_7__12_), 
        .S(SUMB_7__12_) );
  ADDFX2M S2_7_8 ( .A(B[8]), .B(n13), .CI(SUMB_6__9_), .CO(CARRYB_7__8_), .S(
        SUMB_7__8_) );
  ADDFX2M S2_7_9 ( .A(B[9]), .B(n8), .CI(SUMB_6__10_), .CO(CARRYB_7__9_), .S(
        SUMB_7__9_) );
  ADDFX2M S2_7_7 ( .A(B[7]), .B(n12), .CI(SUMB_6__8_), .CO(CARRYB_7__7_), .S(
        SUMB_7__7_) );
  ADDFX2M S2_7_6 ( .A(B[6]), .B(n11), .CI(SUMB_6__7_), .CO(CARRYB_7__6_), .S(
        SUMB_7__6_) );
  ADDFX2M S2_7_4 ( .A(B[4]), .B(n10), .CI(SUMB_6__5_), .CO(CARRYB_7__4_), .S(
        SUMB_7__4_) );
  ADDFX2M S2_7_5 ( .A(B[5]), .B(n7), .CI(SUMB_6__6_), .CO(CARRYB_7__5_), .S(
        SUMB_7__5_) );
  ADDFX2M S2_7_3 ( .A(B[3]), .B(n9), .CI(SUMB_6__4_), .CO(CARRYB_7__3_), .S(
        SUMB_7__3_) );
  ADDFX2M S2_7_10 ( .A(B[10]), .B(n3), .CI(SUMB_5__12_), .CO(CARRYB_7__10_), 
        .S(SUMB_7__10_) );
  AND2X2M U2 ( .A(B[11]), .B(n54), .Y(n3) );
  AND2X2M U3 ( .A(SUMB_5__14_), .B(n50), .Y(n4) );
  AND2X2M U4 ( .A(SUMB_7__8_), .B(CARRYB_7__7_), .Y(n5) );
  AND2X2M U5 ( .A(SUMB_5__13_), .B(n51), .Y(n6) );
  AND2X2M U6 ( .A(SUMB_5__6_), .B(n49), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_5__10_), .B(n47), .Y(n8) );
  AND2X2M U8 ( .A(SUMB_5__4_), .B(n55), .Y(n9) );
  AND2X2M U9 ( .A(SUMB_5__5_), .B(n56), .Y(n10) );
  AND2X2M U10 ( .A(SUMB_5__7_), .B(n48), .Y(n11) );
  AND2X2M U11 ( .A(SUMB_5__8_), .B(n46), .Y(n12) );
  AND2X2M U12 ( .A(SUMB_5__9_), .B(n57), .Y(n13) );
  AND2X2M U13 ( .A(SUMB_5__3_), .B(n58), .Y(n14) );
  AND2X2M U14 ( .A(SUMB_5__15_), .B(n52), .Y(n15) );
  AND2X2M U15 ( .A(SUMB_5__2_), .B(n61), .Y(n16) );
  AND2X2M U16 ( .A(n60), .B(SUMB_5__1_), .Y(n17) );
  AND2X2M U17 ( .A(n45), .B(n59), .Y(n18) );
  CLKXOR2X2M U18 ( .A(n32), .B(SUMB_8__3_), .Y(A1_9_) );
  CLKXOR2X2M U19 ( .A(n33), .B(SUMB_8__4_), .Y(A1_10_) );
  CLKXOR2X2M U20 ( .A(n38), .B(SUMB_8__6_), .Y(A1_12_) );
  CLKXOR2X2M U21 ( .A(n36), .B(SUMB_8__2_), .Y(A1_8_) );
  CLKXOR2X2M U22 ( .A(n37), .B(SUMB_8__5_), .Y(A1_11_) );
  CLKXOR2X2M U23 ( .A(n39), .B(SUMB_8__7_), .Y(A1_13_) );
  CLKXOR2X2M U24 ( .A(n40), .B(SUMB_8__9_), .Y(A1_15_) );
  CLKXOR2X2M U25 ( .A(n34), .B(SUMB_8__11_), .Y(A1_17_) );
  AND2X2M U26 ( .A(n32), .B(SUMB_8__3_), .Y(n19) );
  XNOR2X2M U27 ( .A(n35), .B(n64), .Y(A1_7_) );
  CLKXOR2X2M U28 ( .A(n41), .B(SUMB_8__10_), .Y(A1_16_) );
  AND2X2M U29 ( .A(n36), .B(SUMB_8__2_), .Y(n20) );
  AND2X2M U30 ( .A(n33), .B(SUMB_8__4_), .Y(n21) );
  AND2X2M U31 ( .A(n38), .B(SUMB_8__6_), .Y(n22) );
  CLKXOR2X2M U32 ( .A(n44), .B(SUMB_8__14_), .Y(A1_20_) );
  CLKXOR2X2M U33 ( .A(n42), .B(SUMB_8__12_), .Y(A1_18_) );
  AND2X2M U34 ( .A(n40), .B(SUMB_8__9_), .Y(n23) );
  AND2X2M U35 ( .A(n34), .B(SUMB_8__11_), .Y(n24) );
  INVX2M U36 ( .A(SUMB_8__1_), .Y(n64) );
  CLKXOR2X2M U37 ( .A(n43), .B(SUMB_8__13_), .Y(A1_19_) );
  AND2X2M U38 ( .A(n37), .B(SUMB_8__5_), .Y(n25) );
  AND2X2M U39 ( .A(n39), .B(SUMB_8__7_), .Y(n26) );
  AND2X2M U40 ( .A(n43), .B(SUMB_8__13_), .Y(n27) );
  AND2X2M U41 ( .A(n35), .B(SUMB_8__1_), .Y(n28) );
  AND2X2M U42 ( .A(n41), .B(SUMB_8__10_), .Y(n29) );
  AND2X2M U43 ( .A(n42), .B(SUMB_8__12_), .Y(n30) );
  AND2X2M U44 ( .A(n44), .B(SUMB_8__14_), .Y(n31) );
  CLKXOR2X2M U45 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(SUMB_8__3_) );
  CLKXOR2X2M U46 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(SUMB_8__2_) );
  CLKXOR2X2M U47 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(SUMB_8__5_) );
  CLKXOR2X2M U48 ( .A(CARRYB_7__7_), .B(SUMB_7__8_), .Y(SUMB_8__7_) );
  CLKXOR2X2M U49 ( .A(CARRYB_7__10_), .B(SUMB_7__11_), .Y(SUMB_8__10_) );
  CLKXOR2X2M U50 ( .A(n51), .B(SUMB_5__13_), .Y(SUMB_6__12_) );
  XNOR2X2M U51 ( .A(CARRYB_7__0_), .B(n78), .Y(SUMB_8__0_) );
  INVX2M U52 ( .A(SUMB_7__1_), .Y(n78) );
  INVX2M U53 ( .A(SUMB_5__14_), .Y(n67) );
  INVX2M U54 ( .A(SUMB_5__5_), .Y(n72) );
  INVX2M U55 ( .A(SUMB_5__7_), .Y(n74) );
  INVX2M U56 ( .A(SUMB_5__6_), .Y(n73) );
  INVX2M U57 ( .A(SUMB_5__8_), .Y(n75) );
  INVX2M U58 ( .A(SUMB_5__9_), .Y(n76) );
  INVX2M U59 ( .A(SUMB_5__10_), .Y(n77) );
  AND2X2M U60 ( .A(SUMB_7__3_), .B(CARRYB_7__2_), .Y(n32) );
  AND2X2M U61 ( .A(SUMB_7__4_), .B(CARRYB_7__3_), .Y(n33) );
  CLKXOR2X2M U62 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(SUMB_8__4_) );
  CLKXOR2X2M U63 ( .A(CARRYB_7__6_), .B(SUMB_7__7_), .Y(SUMB_8__6_) );
  CLKXOR2X2M U64 ( .A(CARRYB_7__9_), .B(SUMB_7__10_), .Y(SUMB_8__9_) );
  INVX2M U65 ( .A(SUMB_7__9_), .Y(n79) );
  CLKXOR2X2M U66 ( .A(n53), .B(SUMB_7__12_), .Y(SUMB_8__11_) );
  CLKXOR2X2M U67 ( .A(CARRYB_7__13_), .B(SUMB_7__14_), .Y(SUMB_8__13_) );
  CLKXOR2X2M U68 ( .A(CARRYB_7__14_), .B(SUMB_7__15_), .Y(SUMB_8__14_) );
  XNOR2X2M U69 ( .A(n60), .B(n65), .Y(A1_4_) );
  INVX2M U70 ( .A(SUMB_5__1_), .Y(n65) );
  INVX2M U71 ( .A(SUMB_5__15_), .Y(n68) );
  INVX2M U72 ( .A(SUMB_5__4_), .Y(n71) );
  INVX2M U73 ( .A(SUMB_5__3_), .Y(n70) );
  INVX2M U74 ( .A(SUMB_5__2_), .Y(n69) );
  AND2X2M U75 ( .A(SUMB_7__11_), .B(CARRYB_7__10_), .Y(n34) );
  AND2X2M U76 ( .A(SUMB_7__1_), .B(CARRYB_7__0_), .Y(n35) );
  AND2X2M U77 ( .A(SUMB_7__2_), .B(CARRYB_7__1_), .Y(n36) );
  AND2X2M U78 ( .A(SUMB_7__5_), .B(CARRYB_7__4_), .Y(n37) );
  AND2X2M U79 ( .A(SUMB_7__6_), .B(CARRYB_7__5_), .Y(n38) );
  AND2X2M U80 ( .A(SUMB_7__7_), .B(CARRYB_7__6_), .Y(n39) );
  AND2X2M U81 ( .A(SUMB_7__9_), .B(CARRYB_7__8_), .Y(n40) );
  AND2X2M U82 ( .A(SUMB_7__10_), .B(CARRYB_7__9_), .Y(n41) );
  AND2X2M U83 ( .A(SUMB_7__12_), .B(n53), .Y(n42) );
  AND2X2M U84 ( .A(SUMB_7__13_), .B(CARRYB_7__12_), .Y(n43) );
  AND2X2M U85 ( .A(SUMB_7__14_), .B(CARRYB_7__13_), .Y(n44) );
  CLKXOR2X2M U86 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(SUMB_8__1_) );
  CLKXOR2X2M U87 ( .A(CARRYB_7__12_), .B(SUMB_7__13_), .Y(SUMB_8__12_) );
  CLKXOR2X2M U88 ( .A(n45), .B(n59), .Y(A1_21_) );
  AND2X2M U89 ( .A(SUMB_7__15_), .B(CARRYB_7__14_), .Y(n45) );
  CLKXOR2X2M U90 ( .A(B[13]), .B(B[16]), .Y(SUMB_5__13_) );
  CLKXOR2X2M U91 ( .A(B[14]), .B(B[16]), .Y(SUMB_5__14_) );
  CLKXOR2X2M U92 ( .A(B[6]), .B(B[11]), .Y(SUMB_5__6_) );
  CLKXOR2X2M U93 ( .A(B[5]), .B(B[10]), .Y(SUMB_5__5_) );
  CLKXOR2X2M U94 ( .A(B[7]), .B(B[12]), .Y(SUMB_5__7_) );
  CLKXOR2X2M U95 ( .A(B[8]), .B(B[13]), .Y(SUMB_5__8_) );
  CLKXOR2X2M U96 ( .A(B[10]), .B(B[15]), .Y(SUMB_5__10_) );
  CLKXOR2X2M U97 ( .A(B[9]), .B(B[14]), .Y(SUMB_5__9_) );
  XNOR2X2M U98 ( .A(B[12]), .B(n81), .Y(SUMB_5__12_) );
  XNOR2X2M U99 ( .A(n56), .B(n72), .Y(SUMB_6__4_) );
  XNOR2X2M U100 ( .A(n48), .B(n74), .Y(SUMB_6__6_) );
  XNOR2X2M U101 ( .A(n49), .B(n73), .Y(SUMB_6__5_) );
  XNOR2X2M U102 ( .A(n46), .B(n75), .Y(SUMB_6__7_) );
  XNOR2X2M U103 ( .A(n57), .B(n76), .Y(SUMB_6__8_) );
  XNOR2X2M U104 ( .A(n54), .B(n66), .Y(SUMB_6__10_) );
  INVX2M U105 ( .A(B[11]), .Y(n66) );
  XNOR2X2M U106 ( .A(n47), .B(n77), .Y(SUMB_6__9_) );
  XNOR2X2M U107 ( .A(n50), .B(n67), .Y(SUMB_6__13_) );
  INVX2M U108 ( .A(B[16]), .Y(n81) );
  AND2X2M U109 ( .A(B[12]), .B(B[7]), .Y(n46) );
  AND2X2M U110 ( .A(B[14]), .B(B[9]), .Y(n47) );
  XNOR2X2M U111 ( .A(CARRYB_7__8_), .B(n79), .Y(SUMB_8__8_) );
  CLKXOR2X2M U112 ( .A(B[11]), .B(SUMB_6__12_), .Y(SUMB_7__11_) );
  AND2X2M U113 ( .A(B[11]), .B(B[6]), .Y(n48) );
  AND2X2M U114 ( .A(B[10]), .B(B[5]), .Y(n49) );
  CLKXOR2X2M U115 ( .A(B[4]), .B(B[9]), .Y(SUMB_5__4_) );
  CLKXOR2X2M U116 ( .A(B[3]), .B(B[8]), .Y(SUMB_5__3_) );
  CLKXOR2X2M U117 ( .A(B[2]), .B(B[7]), .Y(SUMB_5__2_) );
  AND2X2M U118 ( .A(B[16]), .B(B[13]), .Y(n50) );
  XNOR2X2M U119 ( .A(n55), .B(n71), .Y(SUMB_6__3_) );
  XNOR2X2M U120 ( .A(n52), .B(n68), .Y(SUMB_6__14_) );
  INVX2M U121 ( .A(n82), .Y(CARRYB_5__15_) );
  NAND2X2M U122 ( .A(B[16]), .B(B[15]), .Y(n82) );
  XNOR2X2M U123 ( .A(n58), .B(n70), .Y(SUMB_6__2_) );
  CLKXOR2X2M U124 ( .A(B[15]), .B(B[16]), .Y(SUMB_5__15_) );
  XNOR2X2M U125 ( .A(B[0]), .B(n80), .Y(A1_3_) );
  INVX2M U126 ( .A(B[5]), .Y(n80) );
  XNOR2X2M U127 ( .A(n61), .B(n69), .Y(SUMB_6__1_) );
  AND2X2M U128 ( .A(B[16]), .B(B[12]), .Y(n51) );
  AND2X2M U129 ( .A(B[16]), .B(B[14]), .Y(n52) );
  AND2X2M U130 ( .A(SUMB_6__12_), .B(B[11]), .Y(n53) );
  AND2X2M U131 ( .A(B[15]), .B(B[10]), .Y(n54) );
  AND2X2M U132 ( .A(B[8]), .B(B[3]), .Y(n55) );
  AND2X2M U133 ( .A(B[9]), .B(B[4]), .Y(n56) );
  AND2X2M U134 ( .A(B[13]), .B(B[8]), .Y(n57) );
  AND2X2M U135 ( .A(B[7]), .B(B[2]), .Y(n58) );
  CLKXOR2X2M U136 ( .A(B[1]), .B(B[6]), .Y(SUMB_5__1_) );
  CLKXOR2X2M U137 ( .A(B[15]), .B(B[16]), .Y(SUMB_7__15_) );
  AND2X2M U138 ( .A(B[16]), .B(B[15]), .Y(n59) );
  AND2X2M U139 ( .A(B[0]), .B(B[5]), .Y(n60) );
  AND2X2M U140 ( .A(B[6]), .B(B[1]), .Y(n61) );
  BUFX2M U141 ( .A(B[1]), .Y(PRODUCT[1]) );
  BUFX2M U142 ( .A(B[0]), .Y(PRODUCT[0]) );
  hfb_1_0_DW01_add_12 FS_1 ( .A({B[16], B[16], A1_21_, A1_20_, A1_19_, A1_18_, 
        A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, 
        A1_8_, A1_7_, SUMB_8__0_, A1_5_, A1_4_, A1_3_, B[4:2]}), .B({1'b0, n18, 
        n31, n27, n30, n24, n29, n23, A2_15_, n26, n22, n25, n21, n19, n20, 
        n28, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({SYNOPSYS_UNCONNECTED_1, PRODUCT[24:2]}) );
endmodule


module hfb_1_0_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68;

  AOI21BX2M U2 ( .A0(n13), .A1(n12), .B0N(n14), .Y(n8) );
  INVX2M U3 ( .A(n66), .Y(n6) );
  INVX2M U4 ( .A(n63), .Y(n7) );
  XNOR2X2M U5 ( .A(B[21]), .B(n23), .Y(SUM[21]) );
  BUFX2M U6 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U7 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U8 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X1M U11 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U12 ( .A(n7), .B(n10), .Y(n9) );
  XNOR2X1M U13 ( .A(n11), .B(n12), .Y(SUM[8]) );
  CLKNAND2X2M U14 ( .A(n13), .B(n14), .Y(n11) );
  XNOR2X1M U15 ( .A(n15), .B(n16), .Y(SUM[7]) );
  NOR2X1M U16 ( .A(n17), .B(n18), .Y(n16) );
  CLKXOR2X2M U17 ( .A(n19), .B(n20), .Y(SUM[6]) );
  NAND2BX1M U18 ( .AN(n21), .B(n22), .Y(n20) );
  OA21X1M U19 ( .A0(B[5]), .A1(A[5]), .B0(n19), .Y(SUM[5]) );
  OAI2BB1X1M U20 ( .A0N(n24), .A1N(A[20]), .B0(n25), .Y(n23) );
  OAI21X1M U21 ( .A0(A[20]), .A1(n24), .B0(B[20]), .Y(n25) );
  XOR3XLM U22 ( .A(B[20]), .B(A[20]), .C(n24), .Y(SUM[20]) );
  OAI21BX1M U23 ( .A0(n26), .A1(n27), .B0N(n28), .Y(n24) );
  XNOR2X1M U24 ( .A(n27), .B(n29), .Y(SUM[19]) );
  NOR2X1M U25 ( .A(n28), .B(n26), .Y(n29) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n26) );
  AND2X1M U27 ( .A(B[19]), .B(A[19]), .Y(n28) );
  OA21X1M U28 ( .A0(n30), .A1(n31), .B0(n32), .Y(n27) );
  CLKXOR2X2M U29 ( .A(n33), .B(n31), .Y(SUM[18]) );
  AOI2B1X1M U30 ( .A1N(n34), .A0(n35), .B0(n36), .Y(n31) );
  NAND2BX1M U31 ( .AN(n30), .B(n32), .Y(n33) );
  CLKNAND2X2M U32 ( .A(B[18]), .B(A[18]), .Y(n32) );
  NOR2X1M U33 ( .A(B[18]), .B(A[18]), .Y(n30) );
  CLKXOR2X2M U34 ( .A(n35), .B(n37), .Y(SUM[17]) );
  NOR2X1M U35 ( .A(n36), .B(n34), .Y(n37) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n34) );
  AND2X1M U37 ( .A(B[17]), .B(A[17]), .Y(n36) );
  OAI21X1M U38 ( .A0(n38), .A1(n39), .B0(n40), .Y(n35) );
  CLKXOR2X2M U39 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2B1X1M U40 ( .A1N(n42), .A0(n43), .B0(n44), .Y(n39) );
  NAND2BX1M U41 ( .AN(n38), .B(n40), .Y(n41) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n40) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(n43), .B(n45), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n44), .B(n42), .Y(n45) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n42) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n44) );
  OAI21X1M U48 ( .A0(n46), .A1(n47), .B0(n48), .Y(n43) );
  CLKXOR2X2M U49 ( .A(n49), .B(n47), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n50), .A0(n51), .B0(n52), .Y(n47) );
  NAND2BX1M U51 ( .AN(n46), .B(n48), .Y(n49) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n48) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n46) );
  CLKXOR2X2M U54 ( .A(n51), .B(n53), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n52), .B(n50), .Y(n53) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n50) );
  AND2X1M U57 ( .A(B[13]), .B(A[13]), .Y(n52) );
  OAI21X1M U58 ( .A0(n54), .A1(n55), .B0(n56), .Y(n51) );
  CLKXOR2X2M U59 ( .A(n57), .B(n55), .Y(SUM[12]) );
  AOI2BB1X1M U60 ( .A0N(n58), .A1N(n59), .B0(n60), .Y(n55) );
  AOI21BX1M U61 ( .A0(n61), .A1(n6), .B0N(n62), .Y(n59) );
  OAI21X1M U62 ( .A0(n10), .A1(n8), .B0(n63), .Y(n61) );
  NAND2BX1M U63 ( .AN(n54), .B(n56), .Y(n57) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n56) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n54) );
  CLKXOR2X2M U66 ( .A(n64), .B(n65), .Y(SUM[11]) );
  NOR2X1M U67 ( .A(n60), .B(n58), .Y(n65) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n58) );
  AND2X1M U69 ( .A(B[11]), .B(A[11]), .Y(n60) );
  OAI21X1M U70 ( .A0(n66), .A1(n67), .B0(n62), .Y(n64) );
  CLKXOR2X2M U71 ( .A(n68), .B(n67), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n8), .A1N(n10), .B0(n7), .Y(n67) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n63) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n10) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n14) );
  OAI21BX1M U76 ( .A0(n18), .A1(n15), .B0N(n17), .Y(n12) );
  AND2X1M U77 ( .A(B[7]), .B(A[7]), .Y(n17) );
  OA21X1M U78 ( .A0(n21), .A1(n19), .B0(n22), .Y(n15) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKNAND2X2M U80 ( .A(B[5]), .B(A[5]), .Y(n19) );
  NOR2X1M U81 ( .A(B[6]), .B(A[6]), .Y(n21) );
  NOR2X1M U82 ( .A(B[7]), .B(A[7]), .Y(n18) );
  OR2X1M U83 ( .A(B[8]), .B(A[8]), .Y(n13) );
  CLKNAND2X2M U84 ( .A(n6), .B(n62), .Y(n68) );
  CLKNAND2X2M U85 ( .A(B[10]), .B(A[10]), .Y(n62) );
  NOR2X1M U86 ( .A(B[10]), .B(A[10]), .Y(n66) );
endmodule


module hfb_1_0_DW02_mult_2 ( A, B, TC, PRODUCT );
  input [6:0] A;
  input [16:0] B;
  output [23:0] PRODUCT;
  input TC;
  wire   CARRYB_6__14_, CARRYB_6__13_, CARRYB_6__12_, CARRYB_6__11_,
         CARRYB_6__10_, CARRYB_6__9_, CARRYB_6__8_, CARRYB_6__7_, CARRYB_6__6_,
         CARRYB_6__5_, CARRYB_6__4_, CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_,
         CARRYB_6__0_, CARRYB_3__14_, CARRYB_3__13_, CARRYB_3__12_,
         CARRYB_3__11_, CARRYB_3__10_, CARRYB_3__9_, CARRYB_3__8_,
         CARRYB_3__7_, CARRYB_3__6_, CARRYB_3__5_, CARRYB_3__4_, CARRYB_3__3_,
         CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_, SUMB_6__15_, SUMB_6__14_,
         SUMB_6__13_, SUMB_6__12_, SUMB_6__11_, SUMB_6__10_, SUMB_6__9_,
         SUMB_6__8_, SUMB_6__7_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_,
         SUMB_6__3_, SUMB_6__2_, SUMB_6__1_, SUMB_6__0_, SUMB_5__14_,
         SUMB_5__13_, SUMB_5__12_, SUMB_5__11_, SUMB_5__10_, SUMB_5__9_,
         SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__14_, SUMB_4__13_,
         SUMB_4__12_, SUMB_4__11_, SUMB_4__10_, SUMB_4__9_, SUMB_4__8_,
         SUMB_4__7_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__15_, SUMB_3__14_, SUMB_3__13_,
         SUMB_3__12_, SUMB_3__11_, SUMB_3__10_, SUMB_3__9_, SUMB_3__8_,
         SUMB_3__7_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_, SUMB_3__3_,
         SUMB_3__2_, SUMB_3__1_, SUMB_2__15_, SUMB_2__14_, SUMB_2__13_,
         SUMB_2__12_, SUMB_2__11_, SUMB_2__10_, SUMB_2__9_, SUMB_2__8_,
         SUMB_2__7_, SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_,
         SUMB_2__2_, SUMB_2__1_, SUMB_1__15_, A1_19_, A1_18_, A1_17_, A1_16_,
         A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_5_, A1_3_, A1_2_, A1_1_, A1_0_, A2_15_, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101;

  ADDFX2M S1_3_0 ( .A(B[0]), .B(n32), .CI(SUMB_2__1_), .CO(CARRYB_3__0_), .S(
        A1_1_) );
  ADDFX2M S4_0 ( .A(n101), .B(n29), .CI(SUMB_5__1_), .CO(CARRYB_6__0_), .S(
        SUMB_6__0_) );
  ADDFX2M S2_3_2 ( .A(B[2]), .B(n31), .CI(SUMB_2__3_), .CO(CARRYB_3__2_), .S(
        SUMB_3__2_) );
  ADDFX2M S2_3_3 ( .A(B[3]), .B(n27), .CI(SUMB_2__4_), .CO(CARRYB_3__3_), .S(
        SUMB_3__3_) );
  ADDFX2M S2_3_1 ( .A(B[1]), .B(n30), .CI(SUMB_2__2_), .CO(CARRYB_3__1_), .S(
        SUMB_3__1_) );
  ADDFX2M S4_14 ( .A(n96), .B(n15), .CI(B[16]), .CO(CARRYB_6__14_), .S(
        SUMB_6__14_) );
  ADDFX2M S2_3_14 ( .A(B[14]), .B(n16), .CI(SUMB_2__15_), .CO(CARRYB_3__14_), 
        .S(SUMB_3__14_) );
  ADDFX2M S2_3_12 ( .A(B[12]), .B(n26), .CI(SUMB_2__13_), .CO(CARRYB_3__12_), 
        .S(SUMB_3__12_) );
  ADDFX2M S2_3_10 ( .A(B[10]), .B(n25), .CI(SUMB_2__11_), .CO(CARRYB_3__10_), 
        .S(SUMB_3__10_) );
  ADDFX2M S2_3_11 ( .A(B[11]), .B(n24), .CI(SUMB_2__12_), .CO(CARRYB_3__11_), 
        .S(SUMB_3__11_) );
  ADDFX2M S2_3_9 ( .A(B[9]), .B(n23), .CI(SUMB_2__10_), .CO(CARRYB_3__9_), .S(
        SUMB_3__9_) );
  ADDFX2M S2_3_8 ( .A(B[8]), .B(n22), .CI(SUMB_2__9_), .CO(CARRYB_3__8_), .S(
        SUMB_3__8_) );
  ADDFX2M S2_3_7 ( .A(B[7]), .B(n21), .CI(SUMB_2__8_), .CO(CARRYB_3__7_), .S(
        SUMB_3__7_) );
  ADDFX2M S2_3_6 ( .A(B[6]), .B(n20), .CI(SUMB_2__7_), .CO(CARRYB_3__6_), .S(
        SUMB_3__6_) );
  ADDFX2M S2_3_4 ( .A(B[4]), .B(n19), .CI(SUMB_2__5_), .CO(CARRYB_3__4_), .S(
        SUMB_3__4_) );
  ADDFX2M S2_3_5 ( .A(B[5]), .B(n18), .CI(SUMB_2__6_), .CO(CARRYB_3__5_), .S(
        SUMB_3__5_) );
  ADDFX2M S4_13 ( .A(n95), .B(n14), .CI(SUMB_5__14_), .CO(CARRYB_6__13_), .S(
        SUMB_6__13_) );
  ADDFX2M S4_12 ( .A(n94), .B(n4), .CI(SUMB_5__13_), .CO(CARRYB_6__12_), .S(
        SUMB_6__12_) );
  ADDFX2M S4_11 ( .A(n93), .B(n3), .CI(SUMB_5__12_), .CO(CARRYB_6__11_), .S(
        SUMB_6__11_) );
  ADDFX2M S4_8 ( .A(n90), .B(n13), .CI(SUMB_5__9_), .CO(CARRYB_6__8_), .S(
        SUMB_6__8_) );
  ADDFX2M S4_9 ( .A(n91), .B(n12), .CI(SUMB_5__10_), .CO(CARRYB_6__9_), .S(
        SUMB_6__9_) );
  ADDFX2M S4_7 ( .A(n89), .B(n11), .CI(SUMB_5__8_), .CO(CARRYB_6__7_), .S(
        SUMB_6__7_) );
  ADDFX2M S4_6 ( .A(n88), .B(n10), .CI(SUMB_5__7_), .CO(CARRYB_6__6_), .S(
        SUMB_6__6_) );
  ADDFX2M S4_5 ( .A(n87), .B(n9), .CI(SUMB_5__6_), .CO(CARRYB_6__5_), .S(
        SUMB_6__5_) );
  ADDFX2M S4_4 ( .A(n86), .B(n8), .CI(SUMB_5__5_), .CO(CARRYB_6__4_), .S(
        SUMB_6__4_) );
  ADDFX2M S4_2 ( .A(n84), .B(n7), .CI(SUMB_5__3_), .CO(CARRYB_6__2_), .S(
        SUMB_6__2_) );
  ADDFX2M S4_3 ( .A(n85), .B(n6), .CI(SUMB_5__4_), .CO(CARRYB_6__3_), .S(
        SUMB_6__3_) );
  ADDFX2M S4_1 ( .A(n100), .B(n28), .CI(SUMB_5__2_), .CO(CARRYB_6__1_), .S(
        SUMB_6__1_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(CARRYB_6__9_), .CI(SUMB_6__10_), .CO(A2_15_), .S(A1_14_) );
  ADDFX2M S4_10 ( .A(n92), .B(n5), .CI(SUMB_5__11_), .CO(CARRYB_6__10_), .S(
        SUMB_6__10_) );
  ADDFX2M S2_3_13 ( .A(B[13]), .B(n17), .CI(SUMB_2__14_), .CO(CARRYB_3__13_), 
        .S(SUMB_3__13_) );
  AND2X2M U2 ( .A(SUMB_4__12_), .B(n38), .Y(n3) );
  AND2X2M U3 ( .A(SUMB_4__13_), .B(n39), .Y(n4) );
  AND2X2M U4 ( .A(SUMB_4__11_), .B(n37), .Y(n5) );
  AND2X2M U5 ( .A(SUMB_4__4_), .B(n57), .Y(n6) );
  AND2X2M U6 ( .A(SUMB_4__3_), .B(n55), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_4__5_), .B(n56), .Y(n8) );
  AND2X2M U8 ( .A(SUMB_4__6_), .B(n58), .Y(n9) );
  AND2X2M U9 ( .A(SUMB_4__7_), .B(n34), .Y(n10) );
  AND2X2M U10 ( .A(SUMB_4__8_), .B(n35), .Y(n11) );
  AND2X2M U11 ( .A(SUMB_4__10_), .B(n59), .Y(n12) );
  AND2X2M U12 ( .A(SUMB_4__9_), .B(n36), .Y(n13) );
  AND2X2M U13 ( .A(SUMB_4__14_), .B(n40), .Y(n14) );
  AND2X2M U14 ( .A(n64), .B(n53), .Y(n15) );
  AND2X2M U15 ( .A(SUMB_1__15_), .B(B[14]), .Y(n16) );
  AND2X2M U16 ( .A(B[14]), .B(B[13]), .Y(n17) );
  AND2X2M U17 ( .A(B[6]), .B(B[5]), .Y(n18) );
  AND2X2M U18 ( .A(B[5]), .B(B[4]), .Y(n19) );
  AND2X2M U19 ( .A(B[7]), .B(B[6]), .Y(n20) );
  AND2X2M U20 ( .A(B[8]), .B(B[7]), .Y(n21) );
  AND2X2M U21 ( .A(B[9]), .B(B[8]), .Y(n22) );
  AND2X2M U22 ( .A(B[10]), .B(B[9]), .Y(n23) );
  AND2X2M U23 ( .A(B[12]), .B(B[11]), .Y(n24) );
  AND2X2M U24 ( .A(B[11]), .B(B[10]), .Y(n25) );
  AND2X2M U25 ( .A(B[13]), .B(B[12]), .Y(n26) );
  AND2X2M U26 ( .A(B[4]), .B(B[3]), .Y(n27) );
  AND2X2M U27 ( .A(SUMB_4__2_), .B(n54), .Y(n28) );
  AND2X2M U28 ( .A(n51), .B(SUMB_4__1_), .Y(n29) );
  AND2X2M U29 ( .A(B[2]), .B(B[1]), .Y(n30) );
  AND2X2M U30 ( .A(B[3]), .B(B[2]), .Y(n31) );
  AND2X2M U31 ( .A(B[0]), .B(B[1]), .Y(n32) );
  INVX2M U32 ( .A(SUMB_4__12_), .Y(n71) );
  INVX2M U33 ( .A(SUMB_4__3_), .Y(n76) );
  INVX2M U34 ( .A(SUMB_4__5_), .Y(n78) );
  INVX2M U35 ( .A(SUMB_4__4_), .Y(n77) );
  INVX2M U36 ( .A(SUMB_4__6_), .Y(n79) );
  INVX2M U37 ( .A(SUMB_4__7_), .Y(n80) );
  INVX2M U38 ( .A(SUMB_4__8_), .Y(n81) );
  INVX2M U39 ( .A(SUMB_4__9_), .Y(n82) );
  INVX2M U40 ( .A(SUMB_4__11_), .Y(n70) );
  INVX2M U41 ( .A(SUMB_4__10_), .Y(n83) );
  INVX2M U42 ( .A(SUMB_4__13_), .Y(n72) );
  INVX2M U43 ( .A(SUMB_4__14_), .Y(n73) );
  XNOR2X2M U44 ( .A(n51), .B(n69), .Y(A1_3_) );
  INVX2M U45 ( .A(SUMB_4__1_), .Y(n69) );
  INVX2M U46 ( .A(SUMB_4__2_), .Y(n75) );
  CLKXOR2X2M U47 ( .A(CARRYB_3__12_), .B(SUMB_3__13_), .Y(SUMB_4__12_) );
  INVX2M U48 ( .A(SUMB_1__15_), .Y(n97) );
  CLKXOR2X2M U49 ( .A(CARRYB_3__3_), .B(SUMB_3__4_), .Y(SUMB_4__3_) );
  CLKXOR2X2M U50 ( .A(CARRYB_3__5_), .B(SUMB_3__6_), .Y(SUMB_4__5_) );
  CLKXOR2X2M U51 ( .A(CARRYB_3__4_), .B(SUMB_3__5_), .Y(SUMB_4__4_) );
  CLKXOR2X2M U52 ( .A(CARRYB_3__6_), .B(SUMB_3__7_), .Y(SUMB_4__6_) );
  CLKXOR2X2M U53 ( .A(CARRYB_3__8_), .B(SUMB_3__9_), .Y(SUMB_4__8_) );
  CLKXOR2X2M U54 ( .A(CARRYB_3__9_), .B(SUMB_3__10_), .Y(SUMB_4__9_) );
  CLKXOR2X2M U55 ( .A(CARRYB_3__11_), .B(SUMB_3__12_), .Y(SUMB_4__11_) );
  CLKXOR2X2M U56 ( .A(CARRYB_3__13_), .B(SUMB_3__14_), .Y(SUMB_4__13_) );
  CLKXOR2X2M U57 ( .A(CARRYB_3__14_), .B(SUMB_3__15_), .Y(SUMB_4__14_) );
  CLKXOR2X2M U58 ( .A(CARRYB_6__1_), .B(SUMB_6__2_), .Y(A1_6_) );
  CLKXOR2X2M U59 ( .A(CARRYB_6__4_), .B(SUMB_6__5_), .Y(A1_9_) );
  CLKXOR2X2M U60 ( .A(CARRYB_6__5_), .B(SUMB_6__6_), .Y(A1_10_) );
  CLKXOR2X2M U61 ( .A(CARRYB_6__7_), .B(SUMB_6__8_), .Y(A1_12_) );
  CLKXOR2X2M U62 ( .A(CARRYB_6__3_), .B(SUMB_6__4_), .Y(A1_8_) );
  CLKXOR2X2M U63 ( .A(CARRYB_6__0_), .B(SUMB_6__1_), .Y(A1_5_) );
  CLKXOR2X2M U64 ( .A(CARRYB_6__2_), .B(SUMB_6__3_), .Y(A1_7_) );
  CLKXOR2X2M U65 ( .A(CARRYB_6__6_), .B(SUMB_6__7_), .Y(A1_11_) );
  CLKXOR2X2M U66 ( .A(CARRYB_6__8_), .B(SUMB_6__9_), .Y(A1_13_) );
  CLKXOR2X2M U67 ( .A(CARRYB_6__10_), .B(SUMB_6__11_), .Y(A1_15_) );
  CLKXOR2X2M U68 ( .A(CARRYB_6__12_), .B(SUMB_6__13_), .Y(A1_17_) );
  AND2X2M U69 ( .A(CARRYB_6__11_), .B(SUMB_6__12_), .Y(n33) );
  AND2X2M U70 ( .A(SUMB_3__7_), .B(CARRYB_3__6_), .Y(n34) );
  AND2X2M U71 ( .A(SUMB_3__8_), .B(CARRYB_3__7_), .Y(n35) );
  AND2X2M U72 ( .A(SUMB_3__9_), .B(CARRYB_3__8_), .Y(n36) );
  AND2X2M U73 ( .A(SUMB_3__11_), .B(CARRYB_3__10_), .Y(n37) );
  AND2X2M U74 ( .A(SUMB_3__12_), .B(CARRYB_3__11_), .Y(n38) );
  AND2X2M U75 ( .A(SUMB_3__13_), .B(CARRYB_3__12_), .Y(n39) );
  AND2X2M U76 ( .A(SUMB_3__14_), .B(CARRYB_3__13_), .Y(n40) );
  CLKXOR2X2M U77 ( .A(CARRYB_6__11_), .B(SUMB_6__12_), .Y(A1_16_) );
  CLKXOR2X2M U78 ( .A(CARRYB_3__7_), .B(SUMB_3__8_), .Y(SUMB_4__7_) );
  CLKXOR2X2M U79 ( .A(CARRYB_3__10_), .B(SUMB_3__11_), .Y(SUMB_4__10_) );
  AND2X2M U80 ( .A(CARRYB_6__0_), .B(SUMB_6__1_), .Y(n41) );
  AND2X2M U81 ( .A(CARRYB_6__3_), .B(SUMB_6__4_), .Y(n42) );
  AND2X2M U82 ( .A(CARRYB_6__4_), .B(SUMB_6__5_), .Y(n43) );
  AND2X2M U83 ( .A(CARRYB_6__6_), .B(SUMB_6__7_), .Y(n44) );
  AND2X2M U84 ( .A(CARRYB_6__8_), .B(SUMB_6__9_), .Y(n45) );
  AND2X2M U85 ( .A(CARRYB_6__10_), .B(SUMB_6__11_), .Y(n46) );
  AND2X2M U86 ( .A(CARRYB_6__2_), .B(SUMB_6__3_), .Y(n47) );
  AND2X2M U87 ( .A(CARRYB_6__1_), .B(SUMB_6__2_), .Y(n48) );
  AND2X2M U88 ( .A(CARRYB_6__5_), .B(SUMB_6__6_), .Y(n49) );
  AND2X2M U89 ( .A(CARRYB_6__7_), .B(SUMB_6__8_), .Y(n50) );
  CLKXOR2X2M U90 ( .A(CARRYB_3__1_), .B(SUMB_3__2_), .Y(SUMB_4__1_) );
  CLKXOR2X2M U91 ( .A(CARRYB_3__2_), .B(SUMB_3__3_), .Y(SUMB_4__2_) );
  CLKXOR2X2M U92 ( .A(CARRYB_6__13_), .B(SUMB_6__14_), .Y(A1_18_) );
  CLKXOR2X2M U93 ( .A(CARRYB_6__14_), .B(SUMB_6__15_), .Y(A1_19_) );
  INVX2M U94 ( .A(SUMB_6__0_), .Y(n99) );
  AND2X2M U95 ( .A(CARRYB_3__0_), .B(SUMB_3__1_), .Y(n51) );
  AND2X2M U96 ( .A(CARRYB_6__12_), .B(SUMB_6__13_), .Y(n52) );
  AND2X2M U97 ( .A(SUMB_3__15_), .B(CARRYB_3__14_), .Y(n53) );
  AND2X2M U98 ( .A(SUMB_3__2_), .B(CARRYB_3__1_), .Y(n54) );
  AND2X2M U99 ( .A(SUMB_3__3_), .B(CARRYB_3__2_), .Y(n55) );
  AND2X2M U100 ( .A(SUMB_3__5_), .B(CARRYB_3__4_), .Y(n56) );
  AND2X2M U101 ( .A(SUMB_3__4_), .B(CARRYB_3__3_), .Y(n57) );
  AND2X2M U102 ( .A(SUMB_3__6_), .B(CARRYB_3__5_), .Y(n58) );
  AND2X2M U103 ( .A(SUMB_3__10_), .B(CARRYB_3__9_), .Y(n59) );
  XNOR2X2M U104 ( .A(CARRYB_3__0_), .B(n68), .Y(A1_2_) );
  INVX2M U105 ( .A(SUMB_3__1_), .Y(n68) );
  AND2X2M U106 ( .A(CARRYB_6__14_), .B(SUMB_6__15_), .Y(n60) );
  INVX2M U107 ( .A(n64), .Y(n74) );
  AND2X2M U108 ( .A(CARRYB_6__13_), .B(SUMB_6__14_), .Y(n61) );
  INVX2M U109 ( .A(n65), .Y(n98) );
  CLKXOR2X2M U110 ( .A(B[15]), .B(B[16]), .Y(SUMB_1__15_) );
  XNOR2X2M U111 ( .A(B[14]), .B(n97), .Y(SUMB_2__14_) );
  XNOR2X2M U112 ( .A(n38), .B(n71), .Y(SUMB_5__11_) );
  CLKXOR2X2M U113 ( .A(n62), .B(B[15]), .Y(SUMB_3__15_) );
  INVX2M U114 ( .A(B[1]), .Y(n100) );
  XNOR2X2M U115 ( .A(n55), .B(n76), .Y(SUMB_5__2_) );
  XNOR2X2M U116 ( .A(n56), .B(n78), .Y(SUMB_5__4_) );
  XNOR2X2M U117 ( .A(n57), .B(n77), .Y(SUMB_5__3_) );
  XNOR2X2M U118 ( .A(n58), .B(n79), .Y(SUMB_5__5_) );
  XNOR2X2M U119 ( .A(n34), .B(n80), .Y(SUMB_5__6_) );
  XNOR2X2M U120 ( .A(n35), .B(n81), .Y(SUMB_5__7_) );
  XNOR2X2M U121 ( .A(n36), .B(n82), .Y(SUMB_5__8_) );
  XNOR2X2M U122 ( .A(n37), .B(n70), .Y(SUMB_5__10_) );
  XNOR2X2M U123 ( .A(n59), .B(n83), .Y(SUMB_5__9_) );
  XNOR2X2M U124 ( .A(n39), .B(n72), .Y(SUMB_5__12_) );
  XNOR2X2M U125 ( .A(n40), .B(n73), .Y(SUMB_5__13_) );
  XNOR2X2M U126 ( .A(n53), .B(n74), .Y(SUMB_5__14_) );
  XNOR2X2M U127 ( .A(B[6]), .B(n89), .Y(SUMB_2__6_) );
  XNOR2X2M U128 ( .A(B[5]), .B(n88), .Y(SUMB_2__5_) );
  XNOR2X2M U129 ( .A(B[7]), .B(n90), .Y(SUMB_2__7_) );
  XNOR2X2M U130 ( .A(B[8]), .B(n91), .Y(SUMB_2__8_) );
  XNOR2X2M U131 ( .A(B[9]), .B(n92), .Y(SUMB_2__9_) );
  XNOR2X2M U132 ( .A(B[10]), .B(n93), .Y(SUMB_2__10_) );
  XNOR2X2M U133 ( .A(B[12]), .B(n95), .Y(SUMB_2__12_) );
  XNOR2X2M U134 ( .A(B[11]), .B(n94), .Y(SUMB_2__11_) );
  XNOR2X2M U135 ( .A(B[13]), .B(n96), .Y(SUMB_2__13_) );
  XNOR2X2M U136 ( .A(n63), .B(n67), .Y(SUMB_2__15_) );
  INVX2M U137 ( .A(B[15]), .Y(n67) );
  INVX2M U138 ( .A(B[7]), .Y(n89) );
  INVX2M U139 ( .A(B[6]), .Y(n88) );
  INVX2M U140 ( .A(B[8]), .Y(n90) );
  INVX2M U141 ( .A(B[9]), .Y(n91) );
  INVX2M U142 ( .A(B[10]), .Y(n92) );
  INVX2M U143 ( .A(B[11]), .Y(n93) );
  INVX2M U144 ( .A(B[13]), .Y(n95) );
  INVX2M U145 ( .A(B[12]), .Y(n94) );
  INVX2M U146 ( .A(B[14]), .Y(n96) );
  AND2X2M U147 ( .A(B[15]), .B(n63), .Y(n62) );
  AND2X2M U148 ( .A(B[16]), .B(B[15]), .Y(n63) );
  XNOR2X2M U149 ( .A(B[2]), .B(n85), .Y(SUMB_2__2_) );
  XNOR2X2M U150 ( .A(B[4]), .B(n87), .Y(SUMB_2__4_) );
  XNOR2X2M U151 ( .A(B[3]), .B(n86), .Y(SUMB_2__3_) );
  INVX2M U152 ( .A(B[0]), .Y(n101) );
  XNOR2X2M U153 ( .A(n54), .B(n75), .Y(SUMB_5__1_) );
  INVX2M U154 ( .A(B[5]), .Y(n87) );
  INVX2M U155 ( .A(B[4]), .Y(n86) );
  INVX2M U156 ( .A(B[3]), .Y(n85) );
  AND2X2M U157 ( .A(B[15]), .B(n62), .Y(n64) );
  CLKXOR2X2M U158 ( .A(n67), .B(B[16]), .Y(SUMB_6__15_) );
  XNOR2X2M U159 ( .A(B[1]), .B(n84), .Y(SUMB_2__1_) );
  XNOR2X2M U160 ( .A(B[0]), .B(n100), .Y(A1_0_) );
  INVX2M U161 ( .A(B[2]), .Y(n84) );
  BUFX2M U162 ( .A(B[0]), .Y(PRODUCT[1]) );
  AND2X2M U163 ( .A(B[16]), .B(n67), .Y(n65) );
  hfb_1_0_DW01_add_11 FS_1 ( .A({1'b1, n98, A1_19_, A1_18_, A1_17_, A1_16_, 
        A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, A1_5_, n99, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n65, n60, n61, 
        n52, n33, n46, A2_15_, n45, n50, n44, n49, n43, n42, n47, n48, n41, 
        SUMB_6__0_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[23:2]) );
endmodule


module hfb_1_0_DW01_add_10 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66;

  OA21X2M U2 ( .A0(n27), .A1(n28), .B0(n29), .Y(n1) );
  AOI2B1X1M U3 ( .A1N(n16), .A0(n13), .B0(n15), .Y(n10) );
  INVX2M U4 ( .A(n65), .Y(n7) );
  INVX2M U5 ( .A(n26), .Y(n8) );
  INVX2M U6 ( .A(n24), .Y(SUM[5]) );
  BUFX2M U7 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U8 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U9 ( .A(A[3]), .Y(SUM[3]) );
  XNOR2X2M U10 ( .A(A[20]), .B(n1), .Y(SUM[20]) );
  BUFX2M U11 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U12 ( .A(A[1]), .Y(SUM[1]) );
  CLKXOR2X2M U13 ( .A(n9), .B(n10), .Y(SUM[9]) );
  NAND2BX1M U14 ( .AN(n11), .B(n12), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n13), .B(n14), .Y(SUM[8]) );
  NOR2X1M U16 ( .A(n15), .B(n16), .Y(n14) );
  CLKXOR2X2M U17 ( .A(n17), .B(n18), .Y(SUM[7]) );
  NAND2BX1M U18 ( .AN(n19), .B(n20), .Y(n17) );
  CLKXOR2X2M U19 ( .A(n8), .B(n21), .Y(SUM[6]) );
  NOR2X1M U20 ( .A(n22), .B(n23), .Y(n21) );
  NAND2BX1M U21 ( .AN(n25), .B(n26), .Y(n24) );
  CLKXOR2X2M U22 ( .A(n30), .B(n28), .Y(SUM[19]) );
  AOI2B1X1M U23 ( .A1N(n31), .A0(n32), .B0(n33), .Y(n28) );
  NAND2BX1M U24 ( .AN(n27), .B(n29), .Y(n30) );
  CLKNAND2X2M U25 ( .A(B[19]), .B(A[19]), .Y(n29) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n27) );
  CLKXOR2X2M U27 ( .A(n32), .B(n34), .Y(SUM[18]) );
  NOR2X1M U28 ( .A(n33), .B(n31), .Y(n34) );
  NOR2X1M U29 ( .A(B[18]), .B(A[18]), .Y(n31) );
  AND2X1M U30 ( .A(B[18]), .B(A[18]), .Y(n33) );
  OAI21X1M U31 ( .A0(n35), .A1(n36), .B0(n37), .Y(n32) );
  CLKXOR2X2M U32 ( .A(n38), .B(n36), .Y(SUM[17]) );
  AOI2B1X1M U33 ( .A1N(n39), .A0(n40), .B0(n41), .Y(n36) );
  NAND2BX1M U34 ( .AN(n35), .B(n37), .Y(n38) );
  CLKNAND2X2M U35 ( .A(B[17]), .B(A[17]), .Y(n37) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n35) );
  CLKXOR2X2M U37 ( .A(n40), .B(n42), .Y(SUM[16]) );
  NOR2X1M U38 ( .A(n41), .B(n39), .Y(n42) );
  NOR2X1M U39 ( .A(B[16]), .B(A[16]), .Y(n39) );
  AND2X1M U40 ( .A(B[16]), .B(A[16]), .Y(n41) );
  OAI21X1M U41 ( .A0(n43), .A1(n44), .B0(n45), .Y(n40) );
  CLKXOR2X2M U42 ( .A(n46), .B(n44), .Y(SUM[15]) );
  AOI2B1X1M U43 ( .A1N(n47), .A0(n48), .B0(n49), .Y(n44) );
  NAND2BX1M U44 ( .AN(n43), .B(n45), .Y(n46) );
  CLKNAND2X2M U45 ( .A(B[15]), .B(A[15]), .Y(n45) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n43) );
  CLKXOR2X2M U47 ( .A(n48), .B(n50), .Y(SUM[14]) );
  NOR2X1M U48 ( .A(n49), .B(n47), .Y(n50) );
  NOR2X1M U49 ( .A(B[14]), .B(A[14]), .Y(n47) );
  AND2X1M U50 ( .A(B[14]), .B(A[14]), .Y(n49) );
  OAI21X1M U51 ( .A0(n51), .A1(n52), .B0(n53), .Y(n48) );
  CLKXOR2X2M U52 ( .A(n54), .B(n52), .Y(SUM[13]) );
  AOI2B1X1M U53 ( .A1N(n55), .A0(n56), .B0(n57), .Y(n52) );
  NAND2BX1M U54 ( .AN(n51), .B(n53), .Y(n54) );
  CLKNAND2X2M U55 ( .A(B[13]), .B(A[13]), .Y(n53) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n51) );
  CLKXOR2X2M U57 ( .A(n56), .B(n58), .Y(SUM[12]) );
  NOR2X1M U58 ( .A(n57), .B(n55), .Y(n58) );
  NOR2X1M U59 ( .A(B[12]), .B(A[12]), .Y(n55) );
  AND2X1M U60 ( .A(B[12]), .B(A[12]), .Y(n57) );
  OAI21X1M U61 ( .A0(n59), .A1(n60), .B0(n61), .Y(n56) );
  CLKXOR2X2M U62 ( .A(n62), .B(n60), .Y(SUM[11]) );
  AOI21X1M U63 ( .A0(n63), .A1(n7), .B0(n64), .Y(n60) );
  NAND2BX1M U64 ( .AN(n59), .B(n61), .Y(n62) );
  CLKNAND2X2M U65 ( .A(B[11]), .B(A[11]), .Y(n61) );
  NOR2X1M U66 ( .A(B[11]), .B(A[11]), .Y(n59) );
  CLKXOR2X2M U67 ( .A(n63), .B(n66), .Y(SUM[10]) );
  NOR2X1M U68 ( .A(n64), .B(n65), .Y(n66) );
  NOR2X1M U69 ( .A(B[10]), .B(A[10]), .Y(n65) );
  AND2X1M U70 ( .A(B[10]), .B(A[10]), .Y(n64) );
  OAI21X1M U71 ( .A0(n10), .A1(n11), .B0(n12), .Y(n63) );
  CLKNAND2X2M U72 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U73 ( .A(B[9]), .B(A[9]), .Y(n11) );
  AND2X1M U74 ( .A(B[8]), .B(A[8]), .Y(n15) );
  OAI21X1M U75 ( .A0(n19), .A1(n18), .B0(n20), .Y(n13) );
  CLKNAND2X2M U76 ( .A(B[7]), .B(A[7]), .Y(n20) );
  AOI2B1X1M U77 ( .A1N(n23), .A0(n8), .B0(n22), .Y(n18) );
  AND2X1M U78 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKNAND2X2M U79 ( .A(B[5]), .B(A[5]), .Y(n26) );
  NOR2X1M U80 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NOR2X1M U81 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1M U82 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NOR2X1M U83 ( .A(B[8]), .B(A[8]), .Y(n16) );
endmodule


module hfb_1_0_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [5:0] A;
  input [16:0] B;
  output [22:0] PRODUCT;
  input TC;
  wire   CARRYB_4__14_, CARRYB_4__12_, CARRYB_4__11_, CARRYB_4__10_,
         CARRYB_4__9_, CARRYB_4__8_, CARRYB_4__7_, CARRYB_4__6_, CARRYB_4__5_,
         CARRYB_4__4_, CARRYB_4__3_, CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_,
         SUMB_5__14_, SUMB_5__13_, SUMB_5__12_, SUMB_5__11_, SUMB_5__10_,
         SUMB_5__9_, SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_,
         SUMB_5__4_, SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_5__0_,
         SUMB_4__15_, SUMB_4__14_, SUMB_4__13_, SUMB_4__12_, SUMB_4__11_,
         SUMB_4__10_, SUMB_4__9_, SUMB_4__8_, SUMB_4__7_, SUMB_4__6_,
         SUMB_4__5_, SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_,
         SUMB_3__15_, SUMB_3__14_, SUMB_3__12_, SUMB_3__11_, SUMB_3__10_,
         SUMB_3__9_, SUMB_3__8_, SUMB_3__7_, SUMB_3__6_, SUMB_3__5_,
         SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, A1_20_, A1_18_,
         A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_,
         A1_8_, A1_7_, A1_6_, A1_5_, A1_4_, A1_2_, A1_1_, A2_15_, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66;

  ADDFX2M S1_4_0 ( .A(B[0]), .B(n17), .CI(SUMB_3__1_), .CO(CARRYB_4__0_), .S(
        A1_2_) );
  ADDFX2M S2_4_1 ( .A(B[1]), .B(n16), .CI(SUMB_3__2_), .CO(CARRYB_4__1_), .S(
        SUMB_4__1_) );
  ADDFX2M S2_4_14 ( .A(B[14]), .B(n9), .CI(SUMB_3__15_), .CO(CARRYB_4__14_), 
        .S(SUMB_4__14_) );
  ADDFX2M S2_4_11 ( .A(B[11]), .B(n10), .CI(SUMB_3__12_), .CO(CARRYB_4__11_), 
        .S(SUMB_4__11_) );
  ADDFX2M S2_4_12 ( .A(B[12]), .B(n7), .CI(B[13]), .CO(CARRYB_4__12_), .S(
        SUMB_4__12_) );
  ADDFX2M S2_4_9 ( .A(B[9]), .B(n15), .CI(SUMB_3__10_), .CO(CARRYB_4__9_), .S(
        SUMB_4__9_) );
  ADDFX2M S2_4_7 ( .A(B[7]), .B(n14), .CI(SUMB_3__8_), .CO(CARRYB_4__7_), .S(
        SUMB_4__7_) );
  ADDFX2M S2_4_5 ( .A(B[5]), .B(n13), .CI(SUMB_3__6_), .CO(CARRYB_4__5_), .S(
        SUMB_4__5_) );
  ADDFX2M S2_4_6 ( .A(B[6]), .B(n5), .CI(SUMB_3__7_), .CO(CARRYB_4__6_), .S(
        SUMB_4__6_) );
  ADDFX2M S2_4_2 ( .A(B[2]), .B(n12), .CI(SUMB_3__3_), .CO(CARRYB_4__2_), .S(
        SUMB_4__2_) );
  ADDFX2M S2_4_10 ( .A(B[10]), .B(n6), .CI(SUMB_3__11_), .CO(CARRYB_4__10_), 
        .S(SUMB_4__10_) );
  ADDFX2M S2_4_8 ( .A(B[8]), .B(n4), .CI(SUMB_3__9_), .CO(CARRYB_4__8_), .S(
        SUMB_4__8_) );
  ADDFX2M S2_4_4 ( .A(B[4]), .B(n3), .CI(SUMB_3__5_), .CO(CARRYB_4__4_), .S(
        SUMB_4__4_) );
  ADDFX2M S2_4_3 ( .A(B[3]), .B(n11), .CI(SUMB_3__4_), .CO(CARRYB_4__3_), .S(
        SUMB_4__3_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(n8), .CI(SUMB_5__11_), .CO(A2_15_), .S(
        A1_14_) );
  AND2X2M U2 ( .A(B[7]), .B(B[4]), .Y(n3) );
  AND2X2M U3 ( .A(B[11]), .B(B[8]), .Y(n4) );
  AND2X2M U4 ( .A(B[9]), .B(B[6]), .Y(n5) );
  AND2X2M U5 ( .A(B[13]), .B(B[10]), .Y(n6) );
  AND2X2M U6 ( .A(B[15]), .B(B[12]), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_4__11_), .B(CARRYB_4__10_), .Y(n8) );
  AND2X2M U8 ( .A(B[16]), .B(B[14]), .Y(n9) );
  AND2X2M U9 ( .A(B[14]), .B(B[11]), .Y(n10) );
  AND2X2M U10 ( .A(B[6]), .B(B[3]), .Y(n11) );
  AND2X2M U11 ( .A(B[5]), .B(B[2]), .Y(n12) );
  AND2X2M U12 ( .A(B[8]), .B(B[5]), .Y(n13) );
  AND2X2M U13 ( .A(B[10]), .B(B[7]), .Y(n14) );
  AND2X2M U14 ( .A(B[12]), .B(B[9]), .Y(n15) );
  AND2X2M U15 ( .A(B[4]), .B(B[1]), .Y(n16) );
  AND2X2M U16 ( .A(B[0]), .B(B[3]), .Y(n17) );
  CLKXOR2X2M U17 ( .A(n37), .B(SUMB_5__2_), .Y(A1_5_) );
  CLKXOR2X2M U18 ( .A(n39), .B(SUMB_5__4_), .Y(A1_7_) );
  CLKXOR2X2M U19 ( .A(n34), .B(SUMB_5__6_), .Y(A1_9_) );
  CLKXOR2X2M U20 ( .A(n40), .B(SUMB_5__8_), .Y(A1_11_) );
  CLKXOR2X2M U21 ( .A(n42), .B(SUMB_5__10_), .Y(A1_13_) );
  CLKXOR2X2M U22 ( .A(n38), .B(SUMB_5__3_), .Y(A1_6_) );
  CLKXOR2X2M U23 ( .A(n32), .B(SUMB_5__5_), .Y(A1_8_) );
  CLKXOR2X2M U24 ( .A(n31), .B(SUMB_5__7_), .Y(A1_10_) );
  CLKXOR2X2M U25 ( .A(n41), .B(SUMB_5__9_), .Y(A1_12_) );
  CLKXOR2X2M U26 ( .A(n33), .B(SUMB_5__13_), .Y(A1_16_) );
  CLKXOR2X2M U27 ( .A(n43), .B(SUMB_5__12_), .Y(A1_15_) );
  AND2X2M U28 ( .A(n36), .B(SUMB_5__1_), .Y(n18) );
  AND2X2M U29 ( .A(n37), .B(SUMB_5__2_), .Y(n19) );
  AND2X2M U30 ( .A(n39), .B(SUMB_5__4_), .Y(n20) );
  AND2X2M U31 ( .A(n34), .B(SUMB_5__6_), .Y(n21) );
  AND2X2M U32 ( .A(n40), .B(SUMB_5__8_), .Y(n22) );
  AND2X2M U33 ( .A(n42), .B(SUMB_5__10_), .Y(n23) );
  CLKXOR2X2M U34 ( .A(n36), .B(SUMB_5__1_), .Y(A1_4_) );
  AND2X2M U35 ( .A(n33), .B(SUMB_5__13_), .Y(n24) );
  CLKXOR2X2M U36 ( .A(n44), .B(SUMB_5__14_), .Y(A1_17_) );
  AND2X2M U37 ( .A(n38), .B(SUMB_5__3_), .Y(n25) );
  AND2X2M U38 ( .A(n32), .B(SUMB_5__5_), .Y(n26) );
  AND2X2M U39 ( .A(n31), .B(SUMB_5__7_), .Y(n27) );
  AND2X2M U40 ( .A(n41), .B(SUMB_5__9_), .Y(n28) );
  AND2X2M U41 ( .A(n43), .B(SUMB_5__12_), .Y(n29) );
  AND2X2M U42 ( .A(n44), .B(SUMB_5__14_), .Y(n30) );
  CLKXOR2X2M U43 ( .A(CARRYB_4__2_), .B(SUMB_4__3_), .Y(SUMB_5__2_) );
  CLKXOR2X2M U44 ( .A(CARRYB_4__4_), .B(SUMB_4__5_), .Y(SUMB_5__4_) );
  CLKXOR2X2M U45 ( .A(CARRYB_4__5_), .B(SUMB_4__6_), .Y(SUMB_5__5_) );
  CLKXOR2X2M U46 ( .A(CARRYB_4__7_), .B(SUMB_4__8_), .Y(SUMB_5__7_) );
  CLKXOR2X2M U47 ( .A(CARRYB_4__9_), .B(SUMB_4__10_), .Y(SUMB_5__9_) );
  CLKXOR2X2M U48 ( .A(CARRYB_4__10_), .B(SUMB_4__11_), .Y(SUMB_5__10_) );
  CLKXOR2X2M U49 ( .A(CARRYB_4__12_), .B(SUMB_4__13_), .Y(SUMB_5__12_) );
  AND2X2M U50 ( .A(SUMB_4__7_), .B(CARRYB_4__6_), .Y(n31) );
  AND2X2M U51 ( .A(SUMB_4__5_), .B(CARRYB_4__4_), .Y(n32) );
  CLKXOR2X2M U52 ( .A(CARRYB_4__1_), .B(SUMB_4__2_), .Y(SUMB_5__1_) );
  CLKXOR2X2M U53 ( .A(CARRYB_4__3_), .B(SUMB_4__4_), .Y(SUMB_5__3_) );
  CLKXOR2X2M U54 ( .A(CARRYB_4__6_), .B(SUMB_4__7_), .Y(SUMB_5__6_) );
  CLKXOR2X2M U55 ( .A(CARRYB_4__8_), .B(SUMB_4__9_), .Y(SUMB_5__8_) );
  INVX2M U56 ( .A(SUMB_4__12_), .Y(n52) );
  CLKXOR2X2M U57 ( .A(n48), .B(SUMB_4__14_), .Y(SUMB_5__13_) );
  CLKXOR2X2M U58 ( .A(CARRYB_4__14_), .B(SUMB_4__15_), .Y(SUMB_5__14_) );
  CLKXOR2X2M U59 ( .A(n35), .B(n46), .Y(A1_18_) );
  AND2X2M U60 ( .A(SUMB_4__13_), .B(CARRYB_4__12_), .Y(n33) );
  XNOR2X2M U61 ( .A(CARRYB_4__0_), .B(n51), .Y(SUMB_5__0_) );
  AND2X2M U62 ( .A(SUMB_4__6_), .B(CARRYB_4__5_), .Y(n34) );
  AND2X2M U63 ( .A(SUMB_4__15_), .B(CARRYB_4__14_), .Y(n35) );
  AND2X2M U64 ( .A(SUMB_4__1_), .B(CARRYB_4__0_), .Y(n36) );
  AND2X2M U65 ( .A(SUMB_4__2_), .B(CARRYB_4__1_), .Y(n37) );
  AND2X2M U66 ( .A(SUMB_4__3_), .B(CARRYB_4__2_), .Y(n38) );
  AND2X2M U67 ( .A(SUMB_4__4_), .B(CARRYB_4__3_), .Y(n39) );
  AND2X2M U68 ( .A(SUMB_4__8_), .B(CARRYB_4__7_), .Y(n40) );
  AND2X2M U69 ( .A(SUMB_4__9_), .B(CARRYB_4__8_), .Y(n41) );
  AND2X2M U70 ( .A(SUMB_4__10_), .B(CARRYB_4__9_), .Y(n42) );
  AND2X2M U71 ( .A(SUMB_4__12_), .B(CARRYB_4__11_), .Y(n43) );
  AND2X2M U72 ( .A(SUMB_4__14_), .B(n48), .Y(n44) );
  INVX2M U73 ( .A(SUMB_4__1_), .Y(n51) );
  AND2X2M U74 ( .A(n35), .B(n46), .Y(n45) );
  CLKXOR2X2M U75 ( .A(B[14]), .B(B[16]), .Y(SUMB_3__14_) );
  CLKXOR2X2M U76 ( .A(B[13]), .B(SUMB_3__14_), .Y(SUMB_4__13_) );
  XNOR2X2M U77 ( .A(CARRYB_4__11_), .B(n52), .Y(SUMB_5__11_) );
  XNOR2X2M U78 ( .A(B[4]), .B(n57), .Y(SUMB_3__4_) );
  XNOR2X2M U79 ( .A(B[5]), .B(n58), .Y(SUMB_3__5_) );
  XNOR2X2M U80 ( .A(B[9]), .B(n62), .Y(SUMB_3__9_) );
  XNOR2X2M U81 ( .A(B[11]), .B(n64), .Y(SUMB_3__11_) );
  XNOR2X2M U82 ( .A(B[3]), .B(n56), .Y(SUMB_3__3_) );
  XNOR2X2M U83 ( .A(B[7]), .B(n60), .Y(SUMB_3__7_) );
  XNOR2X2M U84 ( .A(B[6]), .B(n59), .Y(SUMB_3__6_) );
  XNOR2X2M U85 ( .A(B[8]), .B(n61), .Y(SUMB_3__8_) );
  XNOR2X2M U86 ( .A(B[10]), .B(n63), .Y(SUMB_3__10_) );
  XNOR2X2M U87 ( .A(B[12]), .B(n65), .Y(SUMB_3__12_) );
  XNOR2X2M U88 ( .A(B[15]), .B(n66), .Y(SUMB_3__15_) );
  INVX2M U89 ( .A(B[16]), .Y(n66) );
  INVX2M U90 ( .A(B[15]), .Y(n65) );
  INVX2M U91 ( .A(B[7]), .Y(n57) );
  INVX2M U92 ( .A(B[6]), .Y(n56) );
  INVX2M U93 ( .A(B[8]), .Y(n58) );
  INVX2M U94 ( .A(B[10]), .Y(n60) );
  INVX2M U95 ( .A(B[9]), .Y(n59) );
  INVX2M U96 ( .A(B[12]), .Y(n62) );
  INVX2M U97 ( .A(B[11]), .Y(n61) );
  INVX2M U98 ( .A(B[14]), .Y(n64) );
  INVX2M U99 ( .A(B[13]), .Y(n63) );
  CLKXOR2X2M U100 ( .A(n47), .B(B[15]), .Y(SUMB_4__15_) );
  XNOR2X2M U101 ( .A(B[2]), .B(n55), .Y(SUMB_3__2_) );
  AND2X2M U102 ( .A(B[15]), .B(n47), .Y(n46) );
  XNOR2X2M U103 ( .A(B[1]), .B(n54), .Y(SUMB_3__1_) );
  INVX2M U104 ( .A(B[5]), .Y(n55) );
  INVX2M U105 ( .A(B[4]), .Y(n54) );
  AND2X2M U106 ( .A(B[16]), .B(B[15]), .Y(n47) );
  AND2X2M U107 ( .A(SUMB_3__14_), .B(B[13]), .Y(n48) );
  INVX2M U108 ( .A(B[3]), .Y(n53) );
  BUFX2M U109 ( .A(B[1]), .Y(PRODUCT[1]) );
  XNOR2X2M U110 ( .A(B[0]), .B(n53), .Y(A1_1_) );
  BUFX2M U111 ( .A(B[0]), .Y(PRODUCT[0]) );
  CLKINVX1M U114 ( .A(n66), .Y(A1_20_) );
  hfb_1_0_DW01_add_10 FS_1 ( .A({A1_20_, B[16], A1_18_, A1_17_, A1_16_, A1_15_, 
        A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, 
        A1_5_, A1_4_, SUMB_5__0_, A1_2_, A1_1_, B[2]}), .B({1'b0, n45, n30, 
        n24, n29, A2_15_, n23, n28, n22, n27, n21, n26, n20, n25, n19, n18, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[22:2]) );
endmodule


module hfb_1_0_DW01_add_9 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  INVX2M U2 ( .A(n69), .Y(n7) );
  INVX2M U3 ( .A(n22), .Y(n9) );
  INVX2M U4 ( .A(n29), .Y(n10) );
  INVX2M U5 ( .A(n49), .Y(n6) );
  INVX2M U6 ( .A(n66), .Y(n8) );
  AOI21BX2M U7 ( .A0(n16), .A1(n15), .B0N(n17), .Y(n11) );
  INVX2M U8 ( .A(n55), .Y(n5) );
  CLKXOR2X2M U9 ( .A(B[19]), .B(n1), .Y(SUM[19]) );
  AOI21BX2M U10 ( .A0(n34), .A1(A[18]), .B0N(n35), .Y(n1) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U13 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X1M U14 ( .A(n11), .B(n12), .Y(SUM[9]) );
  NOR2X1M U15 ( .A(n8), .B(n13), .Y(n12) );
  XNOR2X1M U16 ( .A(n14), .B(n15), .Y(SUM[8]) );
  CLKNAND2X2M U17 ( .A(n16), .B(n17), .Y(n14) );
  CLKXOR2X2M U18 ( .A(n18), .B(n19), .Y(SUM[7]) );
  NOR2BX1M U19 ( .AN(n20), .B(n21), .Y(n19) );
  OAI21X1M U20 ( .A0(n22), .A1(n23), .B0(n24), .Y(n18) );
  CLKXOR2X2M U21 ( .A(n25), .B(n23), .Y(SUM[6]) );
  AOI2B1X1M U22 ( .A1N(n26), .A0(n27), .B0(n10), .Y(n23) );
  CLKNAND2X2M U23 ( .A(n9), .B(n24), .Y(n25) );
  CLKXOR2X2M U24 ( .A(n27), .B(n28), .Y(SUM[5]) );
  NOR2X1M U25 ( .A(n10), .B(n26), .Y(n28) );
  OAI21X1M U26 ( .A0(n30), .A1(n31), .B0(n32), .Y(n27) );
  CLKXOR2X2M U27 ( .A(n31), .B(n33), .Y(SUM[4]) );
  NAND2BX1M U28 ( .AN(n30), .B(n32), .Y(n33) );
  OA21X1M U29 ( .A0(B[3]), .A1(A[3]), .B0(n31), .Y(SUM[3]) );
  OAI21X1M U30 ( .A0(A[18]), .A1(n34), .B0(B[18]), .Y(n35) );
  XOR3XLM U31 ( .A(B[18]), .B(A[18]), .C(n34), .Y(SUM[18]) );
  AO22X1M U32 ( .A0(n36), .A1(A[17]), .B0(n37), .B1(B[17]), .Y(n34) );
  OR2X1M U33 ( .A(A[17]), .B(n36), .Y(n37) );
  XOR3XLM U34 ( .A(B[17]), .B(A[17]), .C(n36), .Y(SUM[17]) );
  OAI21X1M U35 ( .A0(n38), .A1(n39), .B0(n40), .Y(n36) );
  CLKXOR2X2M U36 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2BB1X1M U37 ( .A0N(n42), .A1N(n43), .B0(n44), .Y(n39) );
  AOI21BX1M U38 ( .A0(n45), .A1(n5), .B0N(n46), .Y(n43) );
  OAI21X1M U39 ( .A0(n47), .A1(n48), .B0(n49), .Y(n45) );
  OA21X1M U40 ( .A0(n50), .A1(n51), .B0(n52), .Y(n48) );
  NAND2BX1M U41 ( .AN(n38), .B(n40), .Y(n41) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n40) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(n53), .B(n54), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n44), .B(n42), .Y(n54) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n42) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n44) );
  OAI21X1M U48 ( .A0(n55), .A1(n56), .B0(n46), .Y(n53) );
  CLKXOR2X2M U49 ( .A(n57), .B(n56), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n47), .A0(n58), .B0(n6), .Y(n56) );
  CLKNAND2X2M U51 ( .A(n5), .B(n46), .Y(n57) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n46) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n55) );
  CLKXOR2X2M U54 ( .A(n58), .B(n59), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n6), .B(n47), .Y(n59) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n47) );
  CLKNAND2X2M U57 ( .A(B[13]), .B(A[13]), .Y(n49) );
  OAI21X1M U58 ( .A0(n51), .A1(n50), .B0(n52), .Y(n58) );
  CLKXOR2X2M U59 ( .A(n60), .B(n50), .Y(SUM[12]) );
  OA21X1M U60 ( .A0(n61), .A1(n62), .B0(n63), .Y(n50) );
  AOI21BX1M U61 ( .A0(n64), .A1(n7), .B0N(n65), .Y(n62) );
  OAI21X1M U62 ( .A0(n13), .A1(n11), .B0(n66), .Y(n64) );
  NAND2BX1M U63 ( .AN(n51), .B(n52), .Y(n60) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n52) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n51) );
  CLKXOR2X2M U66 ( .A(n67), .B(n68), .Y(SUM[11]) );
  NOR2BX1M U67 ( .AN(n63), .B(n61), .Y(n68) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n61) );
  CLKNAND2X2M U69 ( .A(B[11]), .B(A[11]), .Y(n63) );
  OAI21X1M U70 ( .A0(n69), .A1(n70), .B0(n65), .Y(n67) );
  CLKXOR2X2M U71 ( .A(n71), .B(n70), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n11), .A1N(n13), .B0(n8), .Y(n70) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n66) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n13) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n17) );
  OAI21X1M U76 ( .A0(n21), .A1(n72), .B0(n20), .Y(n15) );
  CLKNAND2X2M U77 ( .A(B[7]), .B(A[7]), .Y(n20) );
  AOI21BX1M U78 ( .A0(n73), .A1(n9), .B0N(n24), .Y(n72) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n24) );
  NOR2X1M U80 ( .A(B[6]), .B(A[6]), .Y(n22) );
  OAI21X1M U81 ( .A0(n26), .A1(n74), .B0(n29), .Y(n73) );
  CLKNAND2X2M U82 ( .A(B[5]), .B(A[5]), .Y(n29) );
  OA21X1M U83 ( .A0(n31), .A1(n30), .B0(n32), .Y(n74) );
  CLKNAND2X2M U84 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NOR2X1M U85 ( .A(B[4]), .B(A[4]), .Y(n30) );
  CLKNAND2X2M U86 ( .A(B[3]), .B(A[3]), .Y(n31) );
  NOR2X1M U87 ( .A(B[5]), .B(A[5]), .Y(n26) );
  NOR2X1M U88 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OR2X1M U89 ( .A(B[8]), .B(A[8]), .Y(n16) );
  CLKNAND2X2M U90 ( .A(n7), .B(n65), .Y(n71) );
  CLKNAND2X2M U91 ( .A(B[10]), .B(A[10]), .Y(n65) );
  NOR2X1M U92 ( .A(B[10]), .B(A[10]), .Y(n69) );
endmodule


module hfb_1_0_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [4:0] A;
  input [16:0] B;
  output [21:0] PRODUCT;
  input TC;
  wire   SUMB_4__15_, SUMB_4__14_, SUMB_4__13_, SUMB_4__12_, SUMB_4__11_,
         SUMB_4__10_, SUMB_4__9_, SUMB_4__8_, SUMB_4__7_, SUMB_4__6_,
         SUMB_4__5_, SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_,
         SUMB_4__0_, SUMB_1__15_, A1_17_, A1_16_, A1_15_, A1_14_, A1_13_,
         A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_5_, A1_4_,
         A1_3_, A2_15_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  ADDFX2M S14_16_0 ( .A(B[16]), .B(n3), .CI(SUMB_4__12_), .CO(A2_15_), .S(
        A1_14_) );
  AND2X2M U2 ( .A(B[14]), .B(n41), .Y(n3) );
  CLKXOR2X2M U3 ( .A(n5), .B(SUMB_4__13_), .Y(A1_15_) );
  AND2X2M U4 ( .A(n5), .B(SUMB_4__13_), .Y(n4) );
  INVX2M U5 ( .A(SUMB_1__15_), .Y(n35) );
  CLKXOR2X2M U6 ( .A(n39), .B(n20), .Y(SUMB_4__13_) );
  CLKXOR2X2M U7 ( .A(n25), .B(SUMB_4__8_), .Y(A1_10_) );
  AND2X2M U8 ( .A(SUMB_1__15_), .B(n40), .Y(n5) );
  CLKXOR2X2M U9 ( .A(n28), .B(SUMB_4__15_), .Y(A1_17_) );
  CLKXOR2X2M U10 ( .A(n30), .B(SUMB_4__3_), .Y(A1_5_) );
  CLKXOR2X2M U11 ( .A(n22), .B(SUMB_4__4_), .Y(A1_6_) );
  CLKXOR2X2M U12 ( .A(n29), .B(SUMB_4__2_), .Y(A1_4_) );
  CLKXOR2X2M U13 ( .A(n32), .B(SUMB_4__9_), .Y(A1_11_) );
  CLKXOR2X2M U14 ( .A(n26), .B(SUMB_4__10_), .Y(A1_12_) );
  CLKXOR2X2M U15 ( .A(n7), .B(SUMB_4__14_), .Y(A1_16_) );
  AND2X2M U16 ( .A(n27), .B(SUMB_4__11_), .Y(n6) );
  INVX2M U17 ( .A(SUMB_4__0_), .Y(n50) );
  CLKXOR2X2M U18 ( .A(n21), .B(SUMB_4__1_), .Y(A1_3_) );
  CLKXOR2X2M U19 ( .A(n31), .B(SUMB_4__5_), .Y(A1_7_) );
  CLKXOR2X2M U20 ( .A(n24), .B(SUMB_4__7_), .Y(A1_9_) );
  CLKXOR2X2M U21 ( .A(n23), .B(SUMB_4__6_), .Y(A1_8_) );
  CLKXOR2X2M U22 ( .A(n27), .B(SUMB_4__11_), .Y(A1_13_) );
  AND2X2M U23 ( .A(n20), .B(n39), .Y(n7) );
  AND2X2M U24 ( .A(n29), .B(SUMB_4__2_), .Y(n8) );
  AND2X2M U25 ( .A(n30), .B(SUMB_4__3_), .Y(n9) );
  AND2X2M U26 ( .A(n21), .B(SUMB_4__1_), .Y(n10) );
  AND2X2M U27 ( .A(n22), .B(SUMB_4__4_), .Y(n11) );
  AND2X2M U28 ( .A(n23), .B(SUMB_4__6_), .Y(n12) );
  AND2X2M U29 ( .A(n24), .B(SUMB_4__7_), .Y(n13) );
  AND2X2M U30 ( .A(n25), .B(SUMB_4__8_), .Y(n14) );
  AND2X2M U31 ( .A(n26), .B(SUMB_4__10_), .Y(n15) );
  AND2X2M U32 ( .A(n32), .B(SUMB_4__9_), .Y(n16) );
  AND2X2M U33 ( .A(n28), .B(SUMB_4__15_), .Y(n17) );
  AND2X2M U34 ( .A(n31), .B(SUMB_4__5_), .Y(n18) );
  AND2X2M U35 ( .A(n7), .B(SUMB_4__14_), .Y(n19) );
  INVX2M U36 ( .A(n33), .Y(n36) );
  CLKXOR2X2M U37 ( .A(B[15]), .B(B[16]), .Y(SUMB_1__15_) );
  XNOR2X2M U38 ( .A(n40), .B(n35), .Y(SUMB_4__12_) );
  CLKXOR2X2M U39 ( .A(n44), .B(B[11]), .Y(SUMB_4__8_) );
  AND2X2M U40 ( .A(B[16]), .B(B[15]), .Y(n20) );
  CLKXOR2X2M U41 ( .A(n49), .B(B[6]), .Y(SUMB_4__3_) );
  CLKXOR2X2M U42 ( .A(n51), .B(B[5]), .Y(SUMB_4__2_) );
  CLKXOR2X2M U43 ( .A(n48), .B(B[7]), .Y(SUMB_4__4_) );
  CLKXOR2X2M U44 ( .A(n52), .B(B[4]), .Y(SUMB_4__1_) );
  CLKXOR2X2M U45 ( .A(n47), .B(B[8]), .Y(SUMB_4__5_) );
  CLKXOR2X2M U46 ( .A(n45), .B(B[10]), .Y(SUMB_4__7_) );
  CLKXOR2X2M U47 ( .A(n46), .B(B[9]), .Y(SUMB_4__6_) );
  CLKXOR2X2M U48 ( .A(n43), .B(B[12]), .Y(SUMB_4__9_) );
  CLKXOR2X2M U49 ( .A(n41), .B(B[14]), .Y(SUMB_4__11_) );
  CLKXOR2X2M U50 ( .A(n42), .B(B[13]), .Y(SUMB_4__10_) );
  CLKXOR2X2M U51 ( .A(n38), .B(B[16]), .Y(SUMB_4__14_) );
  CLKXOR2X2M U52 ( .A(n37), .B(B[16]), .Y(SUMB_4__15_) );
  CLKXOR2X2M U53 ( .A(n53), .B(B[3]), .Y(SUMB_4__0_) );
  AND2X2M U54 ( .A(B[3]), .B(n53), .Y(n21) );
  AND2X2M U55 ( .A(B[6]), .B(n49), .Y(n22) );
  AND2X2M U56 ( .A(B[8]), .B(n47), .Y(n23) );
  AND2X2M U57 ( .A(B[9]), .B(n46), .Y(n24) );
  AND2X2M U58 ( .A(B[10]), .B(n45), .Y(n25) );
  AND2X2M U59 ( .A(B[12]), .B(n43), .Y(n26) );
  AND2X2M U60 ( .A(B[13]), .B(n42), .Y(n27) );
  INVX2M U61 ( .A(B[3]), .Y(n49) );
  INVX2M U62 ( .A(B[4]), .Y(n48) );
  INVX2M U63 ( .A(B[7]), .Y(n45) );
  INVX2M U64 ( .A(B[6]), .Y(n46) );
  INVX2M U65 ( .A(B[8]), .Y(n44) );
  INVX2M U66 ( .A(B[9]), .Y(n43) );
  INVX2M U67 ( .A(B[10]), .Y(n42) );
  INVX2M U68 ( .A(B[11]), .Y(n41) );
  INVX2M U69 ( .A(B[13]), .Y(n39) );
  INVX2M U70 ( .A(B[12]), .Y(n40) );
  INVX2M U71 ( .A(B[14]), .Y(n38) );
  INVX2M U72 ( .A(B[15]), .Y(n37) );
  AND2X2M U73 ( .A(B[16]), .B(n38), .Y(n28) );
  INVX2M U74 ( .A(B[2]), .Y(n51) );
  AND2X2M U75 ( .A(B[4]), .B(n52), .Y(n29) );
  AND2X2M U76 ( .A(B[5]), .B(n51), .Y(n30) );
  AND2X2M U77 ( .A(B[7]), .B(n48), .Y(n31) );
  AND2X2M U78 ( .A(B[11]), .B(n44), .Y(n32) );
  INVX2M U79 ( .A(B[0]), .Y(n53) );
  INVX2M U80 ( .A(B[5]), .Y(n47) );
  INVX2M U81 ( .A(B[1]), .Y(n52) );
  AND2X2M U82 ( .A(B[16]), .B(n37), .Y(n33) );
  BUFX2M U83 ( .A(B[0]), .Y(PRODUCT[1]) );
  hfb_1_0_DW01_add_9 FS_1 ( .A({1'b1, n36, A1_17_, A1_16_, A1_15_, A1_14_, 
        A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_5_, 
        A1_4_, A1_3_, n50, B[2:1]}), .B({n33, n17, n19, n4, A2_15_, n6, n15, 
        n16, n14, n13, n12, n18, n11, n9, n8, n10, SUMB_4__0_, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM(PRODUCT[21:2]) );
endmodule


module hfb_1_0_DW01_add_8 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  INVX2M U3 ( .A(A[3]), .Y(n4) );
  BUFX2M U4 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U5 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module hfb_1_0_DW01_add_7 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[2]), .B(n4), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[2]), .Y(n4) );
  BUFX2M U4 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U5 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [24:2] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n21), .CI(n22), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n7), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n5), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_4 ( .A(A[4]), .B(n18), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFX2M U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFX2M U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n3), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n4), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n10), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n11), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n14), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n17), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3XLM U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  INVX2M U1 ( .A(B[5]), .Y(n17) );
  INVX2M U2 ( .A(B[6]), .Y(n16) );
  INVX2M U3 ( .A(B[7]), .Y(n15) );
  INVX2M U4 ( .A(B[8]), .Y(n14) );
  INVX2M U5 ( .A(B[9]), .Y(n13) );
  INVX2M U6 ( .A(B[10]), .Y(n12) );
  INVX2M U7 ( .A(B[11]), .Y(n11) );
  INVX2M U8 ( .A(B[12]), .Y(n10) );
  INVX2M U9 ( .A(B[13]), .Y(n9) );
  INVX2M U10 ( .A(B[16]), .Y(n6) );
  INVX2M U11 ( .A(B[18]), .Y(n4) );
  INVX2M U12 ( .A(B[19]), .Y(n3) );
  INVX2M U13 ( .A(B[4]), .Y(n18) );
  INVX2M U14 ( .A(B[17]), .Y(n5) );
  INVX2M U15 ( .A(B[14]), .Y(n8) );
  INVX2M U16 ( .A(B[15]), .Y(n7) );
  INVX2M U17 ( .A(B[24]), .Y(n2) );
  INVX2M U18 ( .A(B[2]), .Y(n20) );
  INVX2M U19 ( .A(B[3]), .Y(n19) );
  INVX2M U20 ( .A(B[0]), .Y(n22) );
  INVX2M U21 ( .A(B[1]), .Y(n21) );
  BUFX2M U22 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module hfb_1_0_DW01_add_6 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [23:3] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3XLM U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2M U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  INVX2M U2 ( .A(A[1]), .Y(n3) );
  XNOR2X2M U3 ( .A(B[1]), .B(n3), .Y(SUM[1]) );
  BUFX2M U4 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:3] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AND2X2M U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  BUFX2M U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:2] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [24:9] carry;

  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[8]), .B0(n2), .Y(carry[9]) );
  OAI21X1M U2 ( .A0(A[8]), .A1(n1), .B0(B[8]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[7]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[7]), .A1(n3), .B0(B[7]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[6]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[6]), .A1(n5), .B0(B[6]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[5]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[5]), .A1(n7), .B0(B[5]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(n9), .A1N(A[4]), .B0(n10), .Y(n7) );
  OAI21X1M U10 ( .A0(A[4]), .A1(n9), .B0(B[4]), .Y(n10) );
  OAI2BB1X1M U11 ( .A0N(n11), .A1N(A[3]), .B0(n12), .Y(n9) );
  OAI21X1M U12 ( .A0(A[3]), .A1(n11), .B0(B[3]), .Y(n12) );
  OAI2BB1X1M U13 ( .A0N(n13), .A1N(A[2]), .B0(n14), .Y(n11) );
  OAI21X1M U14 ( .A0(A[2]), .A1(n13), .B0(B[2]), .Y(n14) );
  OAI2BB1X1M U15 ( .A0N(A[1]), .A1N(B[1]), .B0(n15), .Y(n13) );
  OAI211X1M U16 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n15) );
endmodule


module hfb_1_test_0 ( clk, reset, data_in, even_out, odd_out, test_si, test_se
 );
  input [15:0] data_in;
  output [15:0] even_out;
  output [15:0] odd_out;
  input clk, reset, test_si, test_se;
  wire   N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N9,
         N8, N7, N6, N5, N401, N400, N4, N399, N398, N397, N396, N395, N394,
         N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383,
         N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372,
         N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361,
         N360, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325,
         N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314,
         N313, N312, N310, N309, N308, N307, N306, N305, N304, N303, N302,
         N301, N300, N3, N299, N298, N297, N296, N295, N294, N269, N268, N267,
         N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256,
         N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245,
         N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234,
         N233, N232, N231, N230, N206, N205, N204, N203, N202, N201, N200, N2,
         N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189,
         N188, N187, N186, N184, N183, N182, N181, N180, N179, N178, N177,
         N176, N175, N174, N173, N172, N171, N170, N169, N168, N16, N15, N14,
         N13, N128, N127, N126, N125, N124, N123, N122, N121, N120, N12, N119,
         N118, N117, N116, N115, N114, N113, N112, N111, N110, N11, N109, N108,
         N10, N1, N0, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13;
  wire   [24:9] acc;
  wire   [255:0] d;

  SDFFRQX2M d_reg_12__14_ ( .D(d[78]), .SI(d[61]), .SE(n469), .CK(clk), .RN(
        n308), .Q(d[62]) );
  SDFFRQX2M d_reg_12__13_ ( .D(d[77]), .SI(d[60]), .SE(n466), .CK(clk), .RN(
        n308), .Q(d[61]) );
  SDFFRQX2M d_reg_12__12_ ( .D(d[76]), .SI(d[59]), .SE(n467), .CK(clk), .RN(
        n308), .Q(d[60]) );
  SDFFRQX2M d_reg_13__14_ ( .D(d[62]), .SI(d[45]), .SE(n465), .CK(clk), .RN(
        n309), .Q(d[46]) );
  SDFFRQX2M d_reg_13__13_ ( .D(d[61]), .SI(d[44]), .SE(n466), .CK(clk), .RN(
        n309), .Q(d[45]) );
  SDFFRQX2M d_reg_2__14_ ( .D(d[238]), .SI(d[221]), .SE(n472), .CK(clk), .RN(
        n294), .Q(d[222]) );
  SDFFRQX2M d_reg_2__13_ ( .D(d[237]), .SI(d[220]), .SE(n468), .CK(clk), .RN(
        n294), .Q(d[221]) );
  SDFFRQX2M d_reg_3__14_ ( .D(d[222]), .SI(d[205]), .SE(n471), .CK(clk), .RN(
        n296), .Q(d[206]) );
  SDFFRQX2M d_reg_3__13_ ( .D(d[221]), .SI(d[204]), .SE(n472), .CK(clk), .RN(
        n296), .Q(d[205]) );
  SDFFRQX2M d_reg_12__15_ ( .D(d[79]), .SI(d[62]), .SE(n465), .CK(clk), .RN(
        n308), .Q(d[63]) );
  SDFFRQX2M d_reg_13__15_ ( .D(d[63]), .SI(d[46]), .SE(n473), .CK(clk), .RN(
        n309), .Q(d[47]) );
  SDFFRQX2M d_reg_14__15_ ( .D(d[47]), .SI(d[30]), .SE(n468), .CK(clk), .RN(
        n310), .Q(d[31]) );
  SDFFRQX2M d_reg_2__15_ ( .D(d[239]), .SI(d[222]), .SE(n471), .CK(clk), .RN(
        n294), .Q(d[223]) );
  SDFFRQX2M d_reg_3__15_ ( .D(d[223]), .SI(d[206]), .SE(n473), .CK(clk), .RN(
        n296), .Q(d[207]) );
  SDFFRQX2M d_reg_15__14_ ( .D(d[30]), .SI(d[13]), .SE(n469), .CK(clk), .RN(
        n312), .Q(d[14]) );
  SDFFRQX2M d_reg_15__13_ ( .D(d[29]), .SI(d[12]), .SE(n468), .CK(clk), .RN(
        n312), .Q(d[13]) );
  SDFFRQX2M d_reg_15__12_ ( .D(d[28]), .SI(d[11]), .SE(n470), .CK(clk), .RN(
        n312), .Q(d[12]) );
  SDFFRQX2M d_reg_15__11_ ( .D(d[27]), .SI(d[10]), .SE(n472), .CK(clk), .RN(
        n312), .Q(d[11]) );
  SDFFRQX2M d_reg_12__11_ ( .D(d[75]), .SI(d[58]), .SE(n467), .CK(clk), .RN(
        n308), .Q(d[59]) );
  SDFFRQX2M d_reg_12__10_ ( .D(d[74]), .SI(d[57]), .SE(n466), .CK(clk), .RN(
        n308), .Q(d[58]) );
  SDFFRQX2M d_reg_12__9_ ( .D(d[73]), .SI(d[56]), .SE(n468), .CK(clk), .RN(
        n308), .Q(d[57]) );
  SDFFRQX2M d_reg_12__8_ ( .D(d[72]), .SI(d[55]), .SE(n466), .CK(clk), .RN(
        n308), .Q(d[56]) );
  SDFFRQX2M d_reg_13__12_ ( .D(d[60]), .SI(d[43]), .SE(n470), .CK(clk), .RN(
        n309), .Q(d[44]) );
  SDFFRQX2M d_reg_13__11_ ( .D(d[59]), .SI(d[42]), .SE(n465), .CK(clk), .RN(
        n309), .Q(d[43]) );
  SDFFRQX2M d_reg_13__10_ ( .D(d[58]), .SI(d[41]), .SE(n469), .CK(clk), .RN(
        n309), .Q(d[42]) );
  SDFFRQX2M d_reg_13__9_ ( .D(d[57]), .SI(d[40]), .SE(n466), .CK(clk), .RN(
        n309), .Q(d[41]) );
  SDFFRQX2M d_reg_13__8_ ( .D(d[56]), .SI(d[39]), .SE(n468), .CK(clk), .RN(
        n309), .Q(d[40]) );
  SDFFRQX2M d_reg_14__14_ ( .D(d[46]), .SI(d[29]), .SE(n465), .CK(clk), .RN(
        n310), .Q(d[30]) );
  SDFFRQX2M d_reg_14__13_ ( .D(d[45]), .SI(d[28]), .SE(n466), .CK(clk), .RN(
        n310), .Q(d[29]) );
  SDFFRQX2M d_reg_14__12_ ( .D(d[44]), .SI(d[27]), .SE(n472), .CK(clk), .RN(
        n310), .Q(d[28]) );
  SDFFRQX2M d_reg_14__11_ ( .D(d[43]), .SI(d[26]), .SE(n467), .CK(clk), .RN(
        n311), .Q(d[27]) );
  SDFFRQX2M d_reg_14__10_ ( .D(d[42]), .SI(d[25]), .SE(n471), .CK(clk), .RN(
        n311), .Q(d[26]) );
  SDFFRQX2M d_reg_0__14_ ( .D(data_in[14]), .SI(d[253]), .SE(n472), .CK(clk), 
        .RN(n292), .Q(d[254]) );
  SDFFRQX2M d_reg_0__13_ ( .D(data_in[13]), .SI(d[252]), .SE(n465), .CK(clk), 
        .RN(n292), .Q(d[253]) );
  SDFFRQX2M d_reg_0__12_ ( .D(data_in[12]), .SI(d[251]), .SE(n473), .CK(clk), 
        .RN(n292), .Q(d[252]) );
  SDFFRQX2M d_reg_0__11_ ( .D(data_in[11]), .SI(d[250]), .SE(n468), .CK(clk), 
        .RN(n292), .Q(d[251]) );
  SDFFRQX2M d_reg_1__14_ ( .D(d[254]), .SI(d[237]), .SE(n466), .CK(clk), .RN(
        n293), .Q(d[238]) );
  SDFFRQX2M d_reg_1__13_ ( .D(d[253]), .SI(d[236]), .SE(n473), .CK(clk), .RN(
        n293), .Q(d[237]) );
  SDFFRQX2M d_reg_1__12_ ( .D(d[252]), .SI(d[235]), .SE(n472), .CK(clk), .RN(
        n293), .Q(d[236]) );
  SDFFRQX2M d_reg_1__11_ ( .D(d[251]), .SI(d[234]), .SE(n468), .CK(clk), .RN(
        n293), .Q(d[235]) );
  SDFFRQX2M d_reg_2__12_ ( .D(d[236]), .SI(d[219]), .SE(n470), .CK(clk), .RN(
        n294), .Q(d[220]) );
  SDFFRQX2M d_reg_2__11_ ( .D(d[235]), .SI(d[218]), .SE(n469), .CK(clk), .RN(
        n295), .Q(d[219]) );
  SDFFRQX2M d_reg_2__10_ ( .D(d[234]), .SI(d[217]), .SE(n467), .CK(clk), .RN(
        n295), .Q(d[218]) );
  SDFFRQX2M d_reg_2__9_ ( .D(d[233]), .SI(d[216]), .SE(n471), .CK(clk), .RN(
        n295), .Q(d[217]) );
  SDFFRQX2M d_reg_3__12_ ( .D(d[220]), .SI(d[203]), .SE(n468), .CK(clk), .RN(
        n296), .Q(d[204]) );
  SDFFRQX2M d_reg_3__11_ ( .D(d[219]), .SI(d[202]), .SE(n466), .CK(clk), .RN(
        n296), .Q(d[203]) );
  SDFFRQX2M d_reg_3__10_ ( .D(d[218]), .SI(d[201]), .SE(n470), .CK(clk), .RN(
        n296), .Q(d[202]) );
  SDFFRQX2M d_reg_3__9_ ( .D(d[217]), .SI(d[200]), .SE(n465), .CK(clk), .RN(
        n296), .Q(d[201]) );
  SDFFRQX2M d_reg_15__15_ ( .D(d[31]), .SI(d[14]), .SE(n465), .CK(clk), .RN(
        n312), .Q(d[15]) );
  SDFFRQX2M d_reg_0__15_ ( .D(data_in[15]), .SI(d[254]), .SE(n466), .CK(clk), 
        .RN(n292), .Q(d[255]) );
  SDFFRQX2M d_reg_1__15_ ( .D(d[255]), .SI(d[238]), .SE(n470), .CK(clk), .RN(
        n293), .Q(d[239]) );
  SDFFRQX2M d_reg_15__10_ ( .D(d[26]), .SI(d[9]), .SE(n465), .CK(clk), .RN(
        n312), .Q(d[10]) );
  SDFFRQX2M d_reg_15__9_ ( .D(d[25]), .SI(d[8]), .SE(n466), .CK(clk), .RN(n312), .Q(d[9]) );
  SDFFRQX2M d_reg_15__8_ ( .D(d[24]), .SI(d[7]), .SE(n472), .CK(clk), .RN(n312), .Q(d[8]) );
  SDFFRQX2M d_reg_15__7_ ( .D(d[23]), .SI(d[6]), .SE(n467), .CK(clk), .RN(n312), .Q(d[7]) );
  SDFFRQX2M d_reg_9__14_ ( .D(d[126]), .SI(d[109]), .SE(n471), .CK(clk), .RN(
        n304), .Q(d[110]) );
  SDFFRQX2M d_reg_10__14_ ( .D(d[110]), .SI(d[93]), .SE(n472), .CK(clk), .RN(
        n305), .Q(d[94]) );
  SDFFRQX2M d_reg_10__13_ ( .D(d[109]), .SI(d[92]), .SE(n465), .CK(clk), .RN(
        n305), .Q(d[93]) );
  SDFFRQX2M d_reg_10__12_ ( .D(d[108]), .SI(d[91]), .SE(n473), .CK(clk), .RN(
        n305), .Q(d[92]) );
  SDFFRQX2M d_reg_11__14_ ( .D(d[94]), .SI(d[77]), .SE(n468), .CK(clk), .RN(
        n306), .Q(d[78]) );
  SDFFRQX2M d_reg_12__7_ ( .D(d[71]), .SI(d[54]), .SE(n466), .CK(clk), .RN(
        n308), .Q(d[55]) );
  SDFFRQX2M d_reg_12__6_ ( .D(d[70]), .SI(d[53]), .SE(n473), .CK(clk), .RN(
        n308), .Q(d[54]) );
  SDFFRQX2M d_reg_12__5_ ( .D(d[69]), .SI(d[52]), .SE(n472), .CK(clk), .RN(
        n308), .Q(d[53]) );
  SDFFRQX2M d_reg_12__4_ ( .D(d[68]), .SI(d[51]), .SE(n468), .CK(clk), .RN(
        n308), .Q(d[52]) );
  SDFFRQX2M d_reg_13__7_ ( .D(d[55]), .SI(d[38]), .SE(n470), .CK(clk), .RN(
        n310), .Q(d[39]) );
  SDFFRQX2M d_reg_13__6_ ( .D(d[54]), .SI(d[37]), .SE(n466), .CK(clk), .RN(
        n310), .Q(d[38]) );
  SDFFRQX2M d_reg_13__5_ ( .D(d[53]), .SI(d[36]), .SE(n467), .CK(clk), .RN(
        n310), .Q(d[37]) );
  SDFFRQX2M d_reg_13__4_ ( .D(d[52]), .SI(d[35]), .SE(n465), .CK(clk), .RN(
        n310), .Q(d[36]) );
  SDFFRQX2M d_reg_14__9_ ( .D(d[41]), .SI(d[24]), .SE(n468), .CK(clk), .RN(
        n311), .Q(d[25]) );
  SDFFRQX2M d_reg_14__8_ ( .D(d[40]), .SI(d[23]), .SE(n469), .CK(clk), .RN(
        n311), .Q(d[24]) );
  SDFFRQX2M d_reg_14__7_ ( .D(d[39]), .SI(d[22]), .SE(n470), .CK(clk), .RN(
        n311), .Q(d[23]) );
  SDFFRQX2M d_reg_14__6_ ( .D(d[38]), .SI(d[21]), .SE(n471), .CK(clk), .RN(
        n311), .Q(d[22]) );
  SDFFRQX2M d_reg_8__14_ ( .D(d[142]), .SI(d[125]), .SE(n471), .CK(clk), .RN(
        n302), .Q(d[126]) );
  SDFFRQX2M d_reg_8__13_ ( .D(d[141]), .SI(d[124]), .SE(n466), .CK(clk), .RN(
        n302), .Q(d[125]) );
  SDFFRQX2M d_reg_8__12_ ( .D(d[140]), .SI(d[123]), .SE(n470), .CK(clk), .RN(
        n302), .Q(d[124]) );
  SDFFRQX2M d_reg_0__10_ ( .D(data_in[10]), .SI(d[249]), .SE(n465), .CK(clk), 
        .RN(n292), .Q(d[250]) );
  SDFFRQX2M d_reg_0__9_ ( .D(data_in[9]), .SI(d[248]), .SE(n466), .CK(clk), 
        .RN(n292), .Q(d[249]) );
  SDFFRQX2M d_reg_0__8_ ( .D(data_in[8]), .SI(d[247]), .SE(n472), .CK(clk), 
        .RN(n292), .Q(d[248]) );
  SDFFRQX2M d_reg_0__7_ ( .D(data_in[7]), .SI(d[246]), .SE(n467), .CK(clk), 
        .RN(n292), .Q(d[247]) );
  SDFFRQX2M d_reg_1__10_ ( .D(d[250]), .SI(d[233]), .SE(n465), .CK(clk), .RN(
        n293), .Q(d[234]) );
  SDFFRQX2M d_reg_1__9_ ( .D(d[249]), .SI(d[232]), .SE(n471), .CK(clk), .RN(
        n293), .Q(d[233]) );
  SDFFRQX2M d_reg_1__8_ ( .D(d[248]), .SI(d[231]), .SE(n469), .CK(clk), .RN(
        n293), .Q(d[232]) );
  SDFFRQX2M d_reg_1__7_ ( .D(d[247]), .SI(d[230]), .SE(n473), .CK(clk), .RN(
        n294), .Q(d[231]) );
  SDFFRQX2M d_reg_1__6_ ( .D(d[246]), .SI(d[229]), .SE(n468), .CK(clk), .RN(
        n294), .Q(d[230]) );
  SDFFRQX2M d_reg_2__8_ ( .D(d[232]), .SI(d[215]), .SE(n466), .CK(clk), .RN(
        n295), .Q(d[216]) );
  SDFFRQX2M d_reg_2__7_ ( .D(d[231]), .SI(d[214]), .SE(n473), .CK(clk), .RN(
        n295), .Q(d[215]) );
  SDFFRQX2M d_reg_2__6_ ( .D(d[230]), .SI(d[213]), .SE(n472), .CK(clk), .RN(
        n295), .Q(d[214]) );
  SDFFRQX2M d_reg_2__5_ ( .D(d[229]), .SI(d[212]), .SE(n468), .CK(clk), .RN(
        n295), .Q(d[213]) );
  SDFFRQX2M d_reg_2__4_ ( .D(d[228]), .SI(d[211]), .SE(n470), .CK(clk), .RN(
        n295), .Q(d[212]) );
  SDFFRQX2M d_reg_3__8_ ( .D(d[216]), .SI(d[199]), .SE(n466), .CK(clk), .RN(
        n296), .Q(d[200]) );
  SDFFRQX2M d_reg_3__7_ ( .D(d[215]), .SI(d[198]), .SE(n467), .CK(clk), .RN(
        n296), .Q(d[199]) );
  SDFFRQX2M d_reg_3__6_ ( .D(d[214]), .SI(d[197]), .SE(n465), .CK(clk), .RN(
        n296), .Q(d[198]) );
  SDFFRQX2M d_reg_3__5_ ( .D(d[213]), .SI(d[196]), .SE(n468), .CK(clk), .RN(
        n296), .Q(d[197]) );
  SDFFRQX2M d_reg_3__4_ ( .D(d[212]), .SI(d[195]), .SE(n465), .CK(clk), .RN(
        n296), .Q(d[196]) );
  SDFFRQX2M d_reg_5__14_ ( .D(d[190]), .SI(d[173]), .SE(n470), .CK(clk), .RN(
        n298), .Q(d[174]) );
  SDFFRQX2M d_reg_5__13_ ( .D(d[189]), .SI(d[172]), .SE(n472), .CK(clk), .RN(
        n298), .Q(d[173]) );
  SDFFRQX2M d_reg_7__14_ ( .D(d[158]), .SI(d[141]), .SE(n471), .CK(clk), .RN(
        n301), .Q(d[142]) );
  SDFFRQX2M d_reg_7__13_ ( .D(d[157]), .SI(d[140]), .SE(n466), .CK(clk), .RN(
        n301), .Q(d[141]) );
  SDFFRQX2M d_reg_9__15_ ( .D(d[127]), .SI(d[110]), .SE(n473), .CK(clk), .RN(
        n304), .Q(d[111]) );
  SDFFRQX2M d_reg_10__15_ ( .D(d[111]), .SI(d[94]), .SE(n465), .CK(clk), .RN(
        n305), .Q(d[95]) );
  SDFFRQX2M d_reg_11__15_ ( .D(d[95]), .SI(d[78]), .SE(n471), .CK(clk), .RN(
        n306), .Q(d[79]) );
  SDFFRQX2M d_reg_8__15_ ( .D(d[143]), .SI(d[126]), .SE(n469), .CK(clk), .RN(
        n302), .Q(d[127]) );
  SDFFRQX2M d_reg_4__15_ ( .D(d[207]), .SI(d[190]), .SE(n469), .CK(clk), .RN(
        n297), .Q(d[191]) );
  SDFFRQX2M d_reg_5__15_ ( .D(d[191]), .SI(d[174]), .SE(n473), .CK(clk), .RN(
        n298), .Q(d[175]) );
  SDFFRQX2M d_reg_6__15_ ( .D(d[175]), .SI(d[158]), .SE(n466), .CK(clk), .RN(
        n300), .Q(d[159]) );
  SDFFRQX2M d_reg_7__15_ ( .D(d[159]), .SI(d[142]), .SE(n472), .CK(clk), .RN(
        n301), .Q(d[143]) );
  SDFFRQX2M d_reg_15__6_ ( .D(d[22]), .SI(d[5]), .SE(n465), .CK(clk), .RN(n312), .Q(d[6]) );
  SDFFRQX2M d_reg_15__5_ ( .D(d[21]), .SI(d[4]), .SE(n471), .CK(clk), .RN(n312), .Q(d[5]) );
  SDFFRQX2M d_reg_15__4_ ( .D(d[20]), .SI(d[3]), .SE(n466), .CK(clk), .RN(n312), .Q(d[4]) );
  SDFFRQX2M d_reg_15__3_ ( .D(d[19]), .SI(d[2]), .SE(n473), .CK(clk), .RN(n313), .Q(d[3]) );
  SDFFRQX2M d_reg_15__2_ ( .D(d[18]), .SI(d[1]), .SE(n472), .CK(clk), .RN(n313), .Q(d[2]) );
  SDFFRQX2M d_reg_9__13_ ( .D(d[125]), .SI(d[108]), .SE(n472), .CK(clk), .RN(
        n304), .Q(d[109]) );
  SDFFRQX2M d_reg_9__12_ ( .D(d[124]), .SI(d[107]), .SE(n473), .CK(clk), .RN(
        n304), .Q(d[108]) );
  SDFFRQX2M d_reg_9__11_ ( .D(d[123]), .SI(d[106]), .SE(n466), .CK(clk), .RN(
        n304), .Q(d[107]) );
  SDFFRQX2M d_reg_9__10_ ( .D(d[122]), .SI(d[105]), .SE(n469), .CK(clk), .RN(
        n304), .Q(d[106]) );
  SDFFRQX2M d_reg_10__11_ ( .D(d[107]), .SI(d[90]), .SE(n465), .CK(clk), .RN(
        n305), .Q(d[91]) );
  SDFFRQX2M d_reg_10__10_ ( .D(d[106]), .SI(d[89]), .SE(n471), .CK(clk), .RN(
        n305), .Q(d[90]) );
  SDFFRQX2M d_reg_10__9_ ( .D(d[105]), .SI(d[88]), .SE(n465), .CK(clk), .RN(
        n305), .Q(d[89]) );
  SDFFRQX2M d_reg_10__8_ ( .D(d[104]), .SI(d[87]), .SE(n473), .CK(clk), .RN(
        n305), .Q(d[88]) );
  SDFFRQX2M d_reg_11__13_ ( .D(d[93]), .SI(d[76]), .SE(n472), .CK(clk), .RN(
        n306), .Q(d[77]) );
  SDFFRQX2M d_reg_11__12_ ( .D(d[92]), .SI(d[75]), .SE(n471), .CK(clk), .RN(
        n306), .Q(d[76]) );
  SDFFRQX2M d_reg_11__11_ ( .D(d[91]), .SI(d[74]), .SE(n469), .CK(clk), .RN(
        n307), .Q(d[75]) );
  SDFFRQX2M d_reg_11__10_ ( .D(d[90]), .SI(d[73]), .SE(n473), .CK(clk), .RN(
        n307), .Q(d[74]) );
  SDFFRQX2M d_reg_12__3_ ( .D(d[67]), .SI(d[50]), .SE(n471), .CK(clk), .RN(
        n309), .Q(d[51]) );
  SDFFRQX2M d_reg_12__2_ ( .D(d[66]), .SI(d[49]), .SE(n465), .CK(clk), .RN(
        n309), .Q(d[50]) );
  SDFFRQX2M d_reg_12__1_ ( .D(d[65]), .SI(d[48]), .SE(n466), .CK(clk), .RN(
        n309), .Q(d[49]) );
  SDFFRQX2M d_reg_13__3_ ( .D(d[51]), .SI(d[34]), .SE(n469), .CK(clk), .RN(
        n310), .Q(d[35]) );
  SDFFRQX2M d_reg_13__2_ ( .D(d[50]), .SI(d[33]), .SE(n473), .CK(clk), .RN(
        n310), .Q(d[34]) );
  SDFFRQX2M d_reg_13__1_ ( .D(d[49]), .SI(d[32]), .SE(n466), .CK(clk), .RN(
        n310), .Q(d[33]) );
  SDFFRQX2M d_reg_14__5_ ( .D(d[37]), .SI(d[20]), .SE(n472), .CK(clk), .RN(
        n311), .Q(d[21]) );
  SDFFRQX2M d_reg_14__4_ ( .D(d[36]), .SI(d[19]), .SE(n469), .CK(clk), .RN(
        n311), .Q(d[20]) );
  SDFFRQX2M d_reg_14__3_ ( .D(d[35]), .SI(d[18]), .SE(n471), .CK(clk), .RN(
        n311), .Q(d[19]) );
  SDFFRQX2M d_reg_14__2_ ( .D(d[34]), .SI(d[17]), .SE(n466), .CK(clk), .RN(
        n311), .Q(d[18]) );
  SDFFRQX2M d_reg_8__11_ ( .D(d[139]), .SI(d[122]), .SE(n473), .CK(clk), .RN(
        n303), .Q(d[123]) );
  SDFFRQX2M d_reg_8__10_ ( .D(d[138]), .SI(d[121]), .SE(n472), .CK(clk), .RN(
        n303), .Q(d[122]) );
  SDFFRQX2M d_reg_8__9_ ( .D(d[137]), .SI(d[120]), .SE(n469), .CK(clk), .RN(
        n303), .Q(d[121]) );
  SDFFRQX2M d_reg_8__8_ ( .D(d[136]), .SI(d[119]), .SE(n465), .CK(clk), .RN(
        n303), .Q(d[120]) );
  SDFFRQX2M d_reg_0__6_ ( .D(data_in[6]), .SI(d[245]), .SE(n466), .CK(clk), 
        .RN(n292), .Q(d[246]) );
  SDFFRQX2M d_reg_0__5_ ( .D(data_in[5]), .SI(d[244]), .SE(n472), .CK(clk), 
        .RN(n292), .Q(d[245]) );
  SDFFRQX2M d_reg_0__4_ ( .D(data_in[4]), .SI(d[243]), .SE(n465), .CK(clk), 
        .RN(n292), .Q(d[244]) );
  SDFFRQX2M d_reg_0__3_ ( .D(data_in[3]), .SI(d[242]), .SE(n471), .CK(clk), 
        .RN(n293), .Q(d[243]) );
  SDFFRQX2M d_reg_1__5_ ( .D(d[245]), .SI(d[228]), .SE(n465), .CK(clk), .RN(
        n294), .Q(d[229]) );
  SDFFRQX2M d_reg_1__4_ ( .D(d[244]), .SI(d[227]), .SE(n473), .CK(clk), .RN(
        n294), .Q(d[228]) );
  SDFFRQX2M d_reg_1__3_ ( .D(d[243]), .SI(d[226]), .SE(n472), .CK(clk), .RN(
        n294), .Q(d[227]) );
  SDFFRQX2M d_reg_1__2_ ( .D(d[242]), .SI(d[225]), .SE(n471), .CK(clk), .RN(
        n294), .Q(d[226]) );
  SDFFRQX2M d_reg_2__3_ ( .D(d[227]), .SI(d[210]), .SE(n465), .CK(clk), .RN(
        n295), .Q(d[211]) );
  SDFFRQX2M d_reg_2__2_ ( .D(d[226]), .SI(d[209]), .SE(n473), .CK(clk), .RN(
        n295), .Q(d[210]) );
  SDFFRQX2M d_reg_2__1_ ( .D(d[225]), .SI(d[208]), .SE(n472), .CK(clk), .RN(
        n295), .Q(d[209]) );
  SDFFRQX2M d_reg_3__3_ ( .D(d[211]), .SI(d[194]), .SE(n465), .CK(clk), .RN(
        n297), .Q(d[195]) );
  SDFFRQX2M d_reg_3__2_ ( .D(d[210]), .SI(d[193]), .SE(n466), .CK(clk), .RN(
        n297), .Q(d[194]) );
  SDFFRQX2M d_reg_3__1_ ( .D(d[209]), .SI(d[192]), .SE(n469), .CK(clk), .RN(
        n297), .Q(d[193]) );
  SDFFRQX2M d_reg_4__14_ ( .D(d[206]), .SI(d[189]), .SE(n473), .CK(clk), .RN(
        n297), .Q(d[190]) );
  SDFFRQX2M d_reg_4__13_ ( .D(d[205]), .SI(d[188]), .SE(n466), .CK(clk), .RN(
        n297), .Q(d[189]) );
  SDFFRQX2M d_reg_4__12_ ( .D(d[204]), .SI(d[187]), .SE(n472), .CK(clk), .RN(
        n297), .Q(d[188]) );
  SDFFRQX2M d_reg_4__11_ ( .D(d[203]), .SI(d[186]), .SE(n469), .CK(clk), .RN(
        n297), .Q(d[187]) );
  SDFFRQX2M d_reg_4__10_ ( .D(d[202]), .SI(d[185]), .SE(n471), .CK(clk), .RN(
        n297), .Q(d[186]) );
  SDFFRQX2M d_reg_5__12_ ( .D(d[188]), .SI(d[171]), .SE(n466), .CK(clk), .RN(
        n298), .Q(d[172]) );
  SDFFRQX2M d_reg_5__11_ ( .D(d[187]), .SI(d[170]), .SE(n473), .CK(clk), .RN(
        n299), .Q(d[171]) );
  SDFFRQX2M d_reg_5__10_ ( .D(d[186]), .SI(d[169]), .SE(n472), .CK(clk), .RN(
        n299), .Q(d[170]) );
  SDFFRQX2M d_reg_5__9_ ( .D(d[185]), .SI(d[168]), .SE(n469), .CK(clk), .RN(
        n299), .Q(d[169]) );
  SDFFRQX2M d_reg_6__14_ ( .D(d[174]), .SI(d[157]), .SE(n471), .CK(clk), .RN(
        n300), .Q(d[158]) );
  SDFFRQX2M d_reg_6__13_ ( .D(d[173]), .SI(d[156]), .SE(n466), .CK(clk), .RN(
        n300), .Q(d[157]) );
  SDFFRQX2M d_reg_6__12_ ( .D(d[172]), .SI(d[155]), .SE(n473), .CK(clk), .RN(
        n300), .Q(d[156]) );
  SDFFRQX2M d_reg_6__11_ ( .D(d[171]), .SI(d[154]), .SE(n465), .CK(clk), .RN(
        n300), .Q(d[155]) );
  SDFFRQX2M d_reg_6__10_ ( .D(d[170]), .SI(d[153]), .SE(n465), .CK(clk), .RN(
        n300), .Q(d[154]) );
  SDFFRQX2M d_reg_7__12_ ( .D(d[156]), .SI(d[139]), .SE(n465), .CK(clk), .RN(
        n301), .Q(d[140]) );
  SDFFRQX2M d_reg_7__11_ ( .D(d[155]), .SI(d[138]), .SE(n472), .CK(clk), .RN(
        n301), .Q(d[139]) );
  SDFFRQX2M d_reg_7__10_ ( .D(d[154]), .SI(d[137]), .SE(n472), .CK(clk), .RN(
        n301), .Q(d[138]) );
  SDFFRQX2M d_reg_7__9_ ( .D(d[153]), .SI(d[136]), .SE(n471), .CK(clk), .RN(
        n301), .Q(d[137]) );
  SDFFRQX2M d_reg_12__0_ ( .D(d[64]), .SI(d[79]), .SE(n465), .CK(clk), .RN(
        n309), .Q(d[48]) );
  SDFFRQX2M d_reg_13__0_ ( .D(d[48]), .SI(d[63]), .SE(n473), .CK(clk), .RN(
        n310), .Q(d[32]) );
  SDFFRQX2M d_reg_2__0_ ( .D(d[224]), .SI(d[239]), .SE(n472), .CK(clk), .RN(
        n295), .Q(d[208]) );
  SDFFRQX2M d_reg_3__0_ ( .D(d[208]), .SI(d[223]), .SE(n465), .CK(clk), .RN(
        n297), .Q(d[192]) );
  SDFFRQX2M d_reg_15__1_ ( .D(d[17]), .SI(d[0]), .SE(n466), .CK(clk), .RN(n313), .Q(d[1]) );
  SDFFRQX2M d_reg_9__9_ ( .D(d[121]), .SI(d[104]), .SE(n469), .CK(clk), .RN(
        n304), .Q(d[105]) );
  SDFFRQX2M d_reg_9__8_ ( .D(d[120]), .SI(d[103]), .SE(n473), .CK(clk), .RN(
        n304), .Q(d[104]) );
  SDFFRQX2M d_reg_9__7_ ( .D(d[119]), .SI(d[102]), .SE(n466), .CK(clk), .RN(
        n304), .Q(d[103]) );
  SDFFRQX2M d_reg_9__6_ ( .D(d[118]), .SI(d[101]), .SE(n472), .CK(clk), .RN(
        n304), .Q(d[102]) );
  SDFFRQX2M d_reg_10__7_ ( .D(d[103]), .SI(d[86]), .SE(n469), .CK(clk), .RN(
        n306), .Q(d[87]) );
  SDFFRQX2M d_reg_10__6_ ( .D(d[102]), .SI(d[85]), .SE(n472), .CK(clk), .RN(
        n306), .Q(d[86]) );
  SDFFRQX2M d_reg_10__5_ ( .D(d[101]), .SI(d[84]), .SE(n466), .CK(clk), .RN(
        n306), .Q(d[85]) );
  SDFFRQX2M d_reg_10__4_ ( .D(d[100]), .SI(d[83]), .SE(n465), .CK(clk), .RN(
        n306), .Q(d[84]) );
  SDFFRQX2M d_reg_11__9_ ( .D(d[89]), .SI(d[72]), .SE(n472), .CK(clk), .RN(
        n307), .Q(d[73]) );
  SDFFRQX2M d_reg_11__8_ ( .D(d[88]), .SI(d[71]), .SE(n469), .CK(clk), .RN(
        n307), .Q(d[72]) );
  SDFFRQX2M d_reg_11__7_ ( .D(d[87]), .SI(d[70]), .SE(n471), .CK(clk), .RN(
        n307), .Q(d[71]) );
  SDFFRQX2M d_reg_11__6_ ( .D(d[86]), .SI(d[69]), .SE(n466), .CK(clk), .RN(
        n307), .Q(d[70]) );
  SDFFRQX2M d_reg_14__1_ ( .D(d[33]), .SI(d[16]), .SE(n473), .CK(clk), .RN(
        n311), .Q(d[17]) );
  SDFFRQX2M d_reg_8__7_ ( .D(d[135]), .SI(d[118]), .SE(n465), .CK(clk), .RN(
        n303), .Q(d[119]) );
  SDFFRQX2M d_reg_8__6_ ( .D(d[134]), .SI(d[117]), .SE(n469), .CK(clk), .RN(
        n303), .Q(d[118]) );
  SDFFRQX2M d_reg_8__5_ ( .D(d[133]), .SI(d[116]), .SE(n465), .CK(clk), .RN(
        n303), .Q(d[117]) );
  SDFFRQX2M d_reg_8__4_ ( .D(d[132]), .SI(d[115]), .SE(n471), .CK(clk), .RN(
        n303), .Q(d[116]) );
  SDFFRQX2M d_reg_0__2_ ( .D(data_in[2]), .SI(d[241]), .SE(n472), .CK(clk), 
        .RN(n293), .Q(d[242]) );
  SDFFRQX2M d_reg_0__1_ ( .D(data_in[1]), .SI(d[240]), .SE(n468), .CK(clk), 
        .RN(n293), .Q(d[241]) );
  SDFFRQX2M d_reg_1__1_ ( .D(d[241]), .SI(d[224]), .SE(n467), .CK(clk), .RN(
        n294), .Q(d[225]) );
  SDFFRQX2M d_reg_4__9_ ( .D(d[201]), .SI(d[184]), .SE(n473), .CK(clk), .RN(
        n297), .Q(d[185]) );
  SDFFRQX2M d_reg_4__8_ ( .D(d[200]), .SI(d[183]), .SE(n470), .CK(clk), .RN(
        n297), .Q(d[184]) );
  SDFFRQX2M d_reg_4__7_ ( .D(d[199]), .SI(d[182]), .SE(n467), .CK(clk), .RN(
        n298), .Q(d[183]) );
  SDFFRQX2M d_reg_4__6_ ( .D(d[198]), .SI(d[181]), .SE(n468), .CK(clk), .RN(
        n298), .Q(d[182]) );
  SDFFRQX2M d_reg_5__8_ ( .D(d[184]), .SI(d[167]), .SE(n472), .CK(clk), .RN(
        n299), .Q(d[168]) );
  SDFFRQX2M d_reg_5__7_ ( .D(d[183]), .SI(d[166]), .SE(n470), .CK(clk), .RN(
        n299), .Q(d[167]) );
  SDFFRQX2M d_reg_5__6_ ( .D(d[182]), .SI(d[165]), .SE(n468), .CK(clk), .RN(
        n299), .Q(d[166]) );
  SDFFRQX2M d_reg_5__5_ ( .D(d[181]), .SI(d[164]), .SE(n470), .CK(clk), .RN(
        n299), .Q(d[165]) );
  SDFFRQX2M d_reg_5__4_ ( .D(d[180]), .SI(d[163]), .SE(n467), .CK(clk), .RN(
        n299), .Q(d[164]) );
  SDFFRQX2M d_reg_6__9_ ( .D(d[169]), .SI(d[152]), .SE(n469), .CK(clk), .RN(
        n300), .Q(d[153]) );
  SDFFRQX2M d_reg_6__8_ ( .D(d[168]), .SI(d[151]), .SE(n470), .CK(clk), .RN(
        n300), .Q(d[152]) );
  SDFFRQX2M d_reg_6__7_ ( .D(d[167]), .SI(d[150]), .SE(n467), .CK(clk), .RN(
        n300), .Q(d[151]) );
  SDFFRQX2M d_reg_6__6_ ( .D(d[166]), .SI(d[149]), .SE(n468), .CK(clk), .RN(
        n300), .Q(d[150]) );
  SDFFRQX2M d_reg_7__8_ ( .D(d[152]), .SI(d[135]), .SE(n469), .CK(clk), .RN(
        n301), .Q(d[136]) );
  SDFFRQX2M d_reg_7__7_ ( .D(d[151]), .SI(d[134]), .SE(n471), .CK(clk), .RN(
        n302), .Q(d[135]) );
  SDFFRQX2M d_reg_7__6_ ( .D(d[150]), .SI(d[133]), .SE(n468), .CK(clk), .RN(
        n302), .Q(d[134]) );
  SDFFRQX2M d_reg_7__5_ ( .D(d[149]), .SI(d[132]), .SE(n473), .CK(clk), .RN(
        n302), .Q(d[133]) );
  SDFFRQX2M d_reg_7__4_ ( .D(d[148]), .SI(d[131]), .SE(n467), .CK(clk), .RN(
        n302), .Q(d[132]) );
  SDFFRQX2M d_reg_15__0_ ( .D(d[16]), .SI(d[31]), .SE(n469), .CK(clk), .RN(
        n313), .Q(d[0]) );
  SDFFRQX2M d_reg_14__0_ ( .D(d[32]), .SI(d[47]), .SE(n467), .CK(clk), .RN(
        n311), .Q(d[16]) );
  SDFFRQX2M d_reg_0__0_ ( .D(data_in[0]), .SI(test_si), .SE(n471), .CK(clk), 
        .RN(n293), .Q(d[240]) );
  SDFFRQX2M d_reg_1__0_ ( .D(d[240]), .SI(d[255]), .SE(n470), .CK(clk), .RN(
        n294), .Q(d[224]) );
  SDFFRQX2M d_reg_9__5_ ( .D(d[117]), .SI(d[100]), .SE(n468), .CK(clk), .RN(
        n304), .Q(d[101]) );
  SDFFRQX2M d_reg_9__4_ ( .D(d[116]), .SI(d[99]), .SE(n467), .CK(clk), .RN(
        n304), .Q(d[100]) );
  SDFFRQX2M d_reg_9__3_ ( .D(d[115]), .SI(d[98]), .SE(n472), .CK(clk), .RN(
        n305), .Q(d[99]) );
  SDFFRQX2M d_reg_9__2_ ( .D(d[114]), .SI(d[97]), .SE(n470), .CK(clk), .RN(
        n305), .Q(d[98]) );
  SDFFRQX2M d_reg_9__1_ ( .D(d[113]), .SI(d[96]), .SE(n467), .CK(clk), .RN(
        n305), .Q(d[97]) );
  SDFFRQX2M d_reg_10__3_ ( .D(d[99]), .SI(d[82]), .SE(n468), .CK(clk), .RN(
        n306), .Q(d[83]) );
  SDFFRQX2M d_reg_10__2_ ( .D(d[98]), .SI(d[81]), .SE(n473), .CK(clk), .RN(
        n306), .Q(d[82]) );
  SDFFRQX2M d_reg_10__1_ ( .D(d[97]), .SI(d[80]), .SE(n470), .CK(clk), .RN(
        n306), .Q(d[81]) );
  SDFFRQX2M d_reg_11__5_ ( .D(d[85]), .SI(d[68]), .SE(n468), .CK(clk), .RN(
        n307), .Q(d[69]) );
  SDFFRQX2M d_reg_11__4_ ( .D(d[84]), .SI(d[67]), .SE(n470), .CK(clk), .RN(
        n307), .Q(d[68]) );
  SDFFRQX2M d_reg_11__3_ ( .D(d[83]), .SI(d[66]), .SE(n467), .CK(clk), .RN(
        n307), .Q(d[67]) );
  SDFFRQX2M d_reg_11__2_ ( .D(d[82]), .SI(d[65]), .SE(n469), .CK(clk), .RN(
        n307), .Q(d[66]) );
  SDFFRQX2M d_reg_8__3_ ( .D(d[131]), .SI(d[114]), .SE(n467), .CK(clk), .RN(
        n303), .Q(d[115]) );
  SDFFRQX2M d_reg_8__2_ ( .D(d[130]), .SI(d[113]), .SE(n467), .CK(clk), .RN(
        n303), .Q(d[114]) );
  SDFFRQX2M d_reg_8__1_ ( .D(d[129]), .SI(d[112]), .SE(n468), .CK(clk), .RN(
        n303), .Q(d[113]) );
  SDFFRQX2M d_reg_4__5_ ( .D(d[197]), .SI(d[180]), .SE(n469), .CK(clk), .RN(
        n298), .Q(d[181]) );
  SDFFRQX2M d_reg_4__4_ ( .D(d[196]), .SI(d[179]), .SE(n471), .CK(clk), .RN(
        n298), .Q(d[180]) );
  SDFFRQX2M d_reg_4__3_ ( .D(d[195]), .SI(d[178]), .SE(n468), .CK(clk), .RN(
        n298), .Q(d[179]) );
  SDFFRQX2M d_reg_4__2_ ( .D(d[194]), .SI(d[177]), .SE(n473), .CK(clk), .RN(
        n298), .Q(d[178]) );
  SDFFRQX2M d_reg_5__3_ ( .D(d[179]), .SI(d[162]), .SE(n470), .CK(clk), .RN(
        n299), .Q(d[163]) );
  SDFFRQX2M d_reg_5__2_ ( .D(d[178]), .SI(d[161]), .SE(n469), .CK(clk), .RN(
        n299), .Q(d[162]) );
  SDFFRQX2M d_reg_5__1_ ( .D(d[177]), .SI(d[160]), .SE(n467), .CK(clk), .RN(
        n299), .Q(d[161]) );
  SDFFRQX2M d_reg_6__5_ ( .D(d[165]), .SI(d[148]), .SE(n471), .CK(clk), .RN(
        n300), .Q(d[149]) );
  SDFFRQX2M d_reg_6__4_ ( .D(d[164]), .SI(d[147]), .SE(n470), .CK(clk), .RN(
        n300), .Q(d[148]) );
  SDFFRQX2M d_reg_6__3_ ( .D(d[163]), .SI(d[146]), .SE(n470), .CK(clk), .RN(
        n301), .Q(d[147]) );
  SDFFRQX2M d_reg_6__2_ ( .D(d[162]), .SI(d[145]), .SE(n467), .CK(clk), .RN(
        n301), .Q(d[146]) );
  SDFFRQX2M d_reg_7__3_ ( .D(d[147]), .SI(d[130]), .SE(n471), .CK(clk), .RN(
        n302), .Q(d[131]) );
  SDFFRQX2M d_reg_7__2_ ( .D(d[146]), .SI(d[129]), .SE(n470), .CK(clk), .RN(
        n302), .Q(d[130]) );
  SDFFRQX2M d_reg_7__1_ ( .D(d[145]), .SI(d[128]), .SE(n467), .CK(clk), .RN(
        n302), .Q(d[129]) );
  SDFFRQX2M d_reg_8__0_ ( .D(d[128]), .SI(d[143]), .SE(n468), .CK(clk), .RN(
        n303), .Q(d[112]) );
  SDFFRQX2M d_reg_9__0_ ( .D(d[112]), .SI(d[127]), .SE(n473), .CK(clk), .RN(
        n305), .Q(d[96]) );
  SDFFRQX2M d_reg_10__0_ ( .D(d[96]), .SI(d[111]), .SE(n470), .CK(clk), .RN(
        n306), .Q(d[80]) );
  SDFFRQX2M d_reg_5__0_ ( .D(d[176]), .SI(d[191]), .SE(n468), .CK(clk), .RN(
        n299), .Q(d[160]) );
  SDFFRQX2M d_reg_7__0_ ( .D(d[144]), .SI(d[159]), .SE(n470), .CK(clk), .RN(
        n302), .Q(d[128]) );
  SDFFRQX2M d_reg_11__1_ ( .D(d[81]), .SI(d[64]), .SE(n467), .CK(clk), .RN(
        n307), .Q(d[65]) );
  SDFFRQX2M d_reg_4__1_ ( .D(d[193]), .SI(d[176]), .SE(n469), .CK(clk), .RN(
        n298), .Q(d[177]) );
  SDFFRQX2M d_reg_6__1_ ( .D(d[161]), .SI(d[144]), .SE(n467), .CK(clk), .RN(
        n301), .Q(d[145]) );
  SDFFRQX2M d_reg_11__0_ ( .D(d[80]), .SI(d[95]), .SE(n467), .CK(clk), .RN(
        n307), .Q(d[64]) );
  SDFFRQX2M d_reg_4__0_ ( .D(d[192]), .SI(d[207]), .SE(n468), .CK(clk), .RN(
        n298), .Q(d[176]) );
  SDFFRQX2M d_reg_6__0_ ( .D(d[160]), .SI(d[175]), .SE(n469), .CK(clk), .RN(
        n301), .Q(d[144]) );
  SDFFRQX2M odd_out_reg_15_ ( .D(d[127]), .SI(odd_out[14]), .SE(n471), .CK(clk), .RN(n313), .Q(odd_out[15]) );
  SDFFRQX2M odd_out_reg_14_ ( .D(d[127]), .SI(odd_out[13]), .SE(n467), .CK(clk), .RN(n313), .Q(odd_out[14]) );
  SDFFRQX2M odd_out_reg_13_ ( .D(d[126]), .SI(odd_out[12]), .SE(n473), .CK(clk), .RN(n313), .Q(odd_out[13]) );
  SDFFRQX2M even_out_reg_15_ ( .D(acc[24]), .SI(even_out[14]), .SE(n470), .CK(
        clk), .RN(n314), .Q(even_out[15]) );
  SDFFRQX2M even_out_reg_14_ ( .D(acc[23]), .SI(even_out[13]), .SE(n469), .CK(
        clk), .RN(n314), .Q(even_out[14]) );
  SDFFRQX2M even_out_reg_13_ ( .D(acc[22]), .SI(even_out[12]), .SE(n468), .CK(
        clk), .RN(n314), .Q(even_out[13]) );
  SDFFRQX2M odd_out_reg_12_ ( .D(d[125]), .SI(odd_out[11]), .SE(n471), .CK(clk), .RN(n313), .Q(odd_out[12]) );
  SDFFRQX2M odd_out_reg_11_ ( .D(d[124]), .SI(odd_out[10]), .SE(n470), .CK(clk), .RN(n313), .Q(odd_out[11]) );
  SDFFRQX2M odd_out_reg_10_ ( .D(d[123]), .SI(odd_out[9]), .SE(n470), .CK(clk), 
        .RN(n313), .Q(odd_out[10]) );
  SDFFRQX2M odd_out_reg_9_ ( .D(d[122]), .SI(odd_out[8]), .SE(n467), .CK(clk), 
        .RN(n313), .Q(odd_out[9]) );
  SDFFRQX2M odd_out_reg_8_ ( .D(d[121]), .SI(odd_out[7]), .SE(n471), .CK(clk), 
        .RN(n313), .Q(odd_out[8]) );
  SDFFRQX2M even_out_reg_12_ ( .D(acc[21]), .SI(even_out[11]), .SE(n470), .CK(
        clk), .RN(n314), .Q(even_out[12]) );
  SDFFRQX2M even_out_reg_11_ ( .D(acc[20]), .SI(even_out[10]), .SE(n467), .CK(
        clk), .RN(n315), .Q(even_out[11]) );
  SDFFRQX2M even_out_reg_10_ ( .D(acc[19]), .SI(even_out[9]), .SE(n468), .CK(
        clk), .RN(n315), .Q(even_out[10]) );
  SDFFRQX2M even_out_reg_9_ ( .D(acc[18]), .SI(even_out[8]), .SE(n473), .CK(
        clk), .RN(n315), .Q(even_out[9]) );
  SDFFRQX2M even_out_reg_8_ ( .D(acc[17]), .SI(even_out[7]), .SE(n470), .CK(
        clk), .RN(n315), .Q(even_out[8]) );
  SDFFRQX2M odd_out_reg_7_ ( .D(d[120]), .SI(odd_out[6]), .SE(n470), .CK(clk), 
        .RN(n314), .Q(odd_out[7]) );
  SDFFRQX2M odd_out_reg_6_ ( .D(d[119]), .SI(odd_out[5]), .SE(n468), .CK(clk), 
        .RN(n314), .Q(odd_out[6]) );
  SDFFRQX2M odd_out_reg_5_ ( .D(d[118]), .SI(odd_out[4]), .SE(n467), .CK(clk), 
        .RN(n314), .Q(odd_out[5]) );
  SDFFRQX2M odd_out_reg_4_ ( .D(d[117]), .SI(odd_out[3]), .SE(n469), .CK(clk), 
        .RN(n314), .Q(odd_out[4]) );
  SDFFRQX2M even_out_reg_7_ ( .D(acc[16]), .SI(even_out[6]), .SE(n467), .CK(
        clk), .RN(n315), .Q(even_out[7]) );
  SDFFRQX2M even_out_reg_6_ ( .D(acc[15]), .SI(even_out[5]), .SE(n467), .CK(
        clk), .RN(n315), .Q(even_out[6]) );
  SDFFRQX2M even_out_reg_5_ ( .D(acc[14]), .SI(even_out[4]), .SE(n468), .CK(
        clk), .RN(n315), .Q(even_out[5]) );
  SDFFRQX2M even_out_reg_4_ ( .D(acc[13]), .SI(even_out[3]), .SE(n469), .CK(
        clk), .RN(n315), .Q(even_out[4]) );
  SDFFRQX2M odd_out_reg_3_ ( .D(d[116]), .SI(odd_out[2]), .SE(n471), .CK(clk), 
        .RN(n314), .Q(odd_out[3]) );
  SDFFRQX2M odd_out_reg_2_ ( .D(d[115]), .SI(odd_out[1]), .SE(n467), .CK(clk), 
        .RN(n314), .Q(odd_out[2]) );
  SDFFRQX2M odd_out_reg_1_ ( .D(d[114]), .SI(odd_out[0]), .SE(n473), .CK(clk), 
        .RN(n314), .Q(odd_out[1]) );
  SDFFRQX2M odd_out_reg_0_ ( .D(d[113]), .SI(even_out[15]), .SE(n470), .CK(clk), .RN(n314), .Q(odd_out[0]) );
  SDFFRQX2M even_out_reg_3_ ( .D(acc[12]), .SI(even_out[2]), .SE(n469), .CK(
        clk), .RN(n315), .Q(even_out[3]) );
  SDFFRQX2M even_out_reg_2_ ( .D(acc[11]), .SI(even_out[1]), .SE(n470), .CK(
        clk), .RN(n315), .Q(even_out[2]) );
  SDFFRQX2M even_out_reg_1_ ( .D(acc[10]), .SI(even_out[0]), .SE(n471), .CK(
        clk), .RN(n315), .Q(even_out[1]) );
  SDFFRQX2M even_out_reg_0_ ( .D(acc[9]), .SI(d[15]), .SE(n468), .CK(clk), 
        .RN(n315), .Q(even_out[0]) );
  BUFX2M U294 ( .A(n316), .Y(n315) );
  BUFX2M U295 ( .A(n316), .Y(n314) );
  BUFX2M U296 ( .A(n316), .Y(n313) );
  BUFX2M U297 ( .A(n317), .Y(n312) );
  BUFX2M U298 ( .A(n317), .Y(n311) );
  BUFX2M U299 ( .A(n317), .Y(n310) );
  BUFX2M U300 ( .A(n318), .Y(n309) );
  BUFX2M U301 ( .A(n318), .Y(n308) );
  BUFX2M U302 ( .A(n318), .Y(n307) );
  BUFX2M U303 ( .A(n319), .Y(n306) );
  BUFX2M U304 ( .A(n319), .Y(n305) );
  BUFX2M U305 ( .A(n319), .Y(n304) );
  BUFX2M U306 ( .A(n320), .Y(n303) );
  BUFX2M U307 ( .A(n320), .Y(n302) );
  BUFX2M U308 ( .A(n320), .Y(n301) );
  BUFX2M U309 ( .A(n321), .Y(n300) );
  BUFX2M U310 ( .A(n321), .Y(n299) );
  BUFX2M U311 ( .A(n321), .Y(n298) );
  BUFX2M U312 ( .A(n322), .Y(n297) );
  BUFX2M U313 ( .A(n322), .Y(n296) );
  BUFX2M U314 ( .A(n322), .Y(n295) );
  BUFX2M U315 ( .A(n323), .Y(n294) );
  BUFX2M U316 ( .A(n323), .Y(n293) );
  BUFX2M U317 ( .A(n323), .Y(n292) );
  BUFX2M U318 ( .A(n326), .Y(n316) );
  BUFX2M U319 ( .A(n326), .Y(n317) );
  BUFX2M U320 ( .A(n325), .Y(n318) );
  BUFX2M U321 ( .A(n325), .Y(n319) );
  BUFX2M U322 ( .A(n325), .Y(n320) );
  BUFX2M U323 ( .A(n324), .Y(n321) );
  BUFX2M U324 ( .A(n324), .Y(n322) );
  BUFX2M U325 ( .A(n324), .Y(n323) );
  BUFX2M U326 ( .A(reset), .Y(n325) );
  BUFX2M U327 ( .A(reset), .Y(n324) );
  BUFX2M U328 ( .A(reset), .Y(n326) );
  DLY1X1M U348 ( .A(test_se), .Y(n465) );
  DLY1X1M U349 ( .A(test_se), .Y(n466) );
  DLY1X1M U350 ( .A(test_se), .Y(n467) );
  DLY1X1M U351 ( .A(test_se), .Y(n468) );
  DLY1X1M U352 ( .A(test_se), .Y(n469) );
  DLY1X1M U353 ( .A(test_se), .Y(n470) );
  DLY1X1M U354 ( .A(test_se), .Y(n471) );
  DLY1X1M U355 ( .A(test_se), .Y(n472) );
  DLY1X1M U356 ( .A(test_se), .Y(n473) );
  hfb_1_0_DW01_add_0 add_40_I4 ( .A({d[207], d[207:192]}), .B({d[63], d[63:48]}), .CI(1'b0), .SUM({N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  hfb_1_0_DW01_add_1 add_40_I3 ( .A({d[223], d[223:208]}), .B({d[47], d[47:32]}), .CI(1'b0), .SUM({N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71}) );
  hfb_1_0_DW01_add_2 add_40_I2 ( .A({d[239], d[239:224]}), .B({d[31], d[31:16]}), .CI(1'b0), .SUM({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35}) );
  hfb_1_0_DW01_add_17 add_40_I8 ( .A({d[143], d[143:128]}), .B({d[127], 
        d[127:112]}), .CI(1'b0), .SUM({N376, N375, N374, N373, N372, N371, 
        N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360}) );
  hfb_1_0_DW01_add_16 add_40_I7 ( .A({d[159], d[159:144]}), .B({d[111], 
        d[111:96]}), .CI(1'b0), .SUM({N310, N309, N308, N307, N306, N305, N304, 
        N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}) );
  hfb_1_0_DW01_add_15 add_40_I6 ( .A({d[175], d[175:160]}), .B({d[95], 
        d[95:80]}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230}) );
  hfb_1_0_DW01_add_14 add_40_I5 ( .A({d[191], d[191:176]}), .B({d[79], 
        d[79:64]}), .CI(1'b0), .SUM({N184, N183, N182, N181, N180, N179, N178, 
        N177, N176, N175, N174, N173, N172, N171, N170, N169, N168}) );
  hfb_1_0_DW01_add_13 add_40 ( .A({d[255], d[255:240]}), .B({d[15], d[15:0]}), 
        .CI(1'b0), .SUM({N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1, N0}) );
  hfb_1_0_DW02_mult_3 mult_40_I8 ( .A({1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1}), .B({N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360}), .TC(1'b1), 
        .PRODUCT({SYNOPSYS_UNCONNECTED_1, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377}) );
  hfb_1_0_DW02_mult_2 mult_40_I7 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0}), .B({N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, 
        N300, N299, N298, N297, N296, N295, N294}), .TC(1'b1), .PRODUCT({N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        SYNOPSYS_UNCONNECTED_2}) );
  hfb_1_0_DW02_mult_1 mult_40_I6 ( .A({1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), 
        .B({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230}), .TC(1'b1), .PRODUCT({N269, N268, 
        N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247}) );
  hfb_1_0_DW02_mult_0 mult_40_I5 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b0}), .B({
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, 
        N172, N171, N170, N169, N168}), .TC(1'b1), .PRODUCT({N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, SYNOPSYS_UNCONNECTED_3}) );
  hfb_1_0_DW01_add_8 add_8_root_add_40_2_I8 ( .A({N51, N51, N51, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        1'b0}), .B({N145, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({n327, n359, n370, n381, n392, n403, n414, n425, n436, 
        n328, n339, n350, n352, n353, n354, n355, n356, n357, n358, n360, 
        SYNOPSYS_UNCONNECTED_4}) );
  hfb_1_0_DW01_add_7 add_5_root_add_40_2_I8 ( .A({N16, N16, N16, N16, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        {N87, N87, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, 1'b0, 1'b0}), .CI(1'b0), .SUM({N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108}) );
  hfb_1_0_DW01_sub_0 sub_3_root_add_2_root_add_40_2_I8 ( .A({n327, n327, n327, 
        n327, n327, n359, n370, n381, n392, n403, n414, n425, n436, n328, n339, 
        n350, n352, n353, n354, n355, n356, n357, n358, n360, 1'b0}), .B({N128, 
        N128, N128, N128, N128, N127, N126, N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}), .CI(1'b0), .DIFF({n388, n389, n390, n391, n393, n394, n395, n396, n397, 
        n398, n399, n400, n401, n402, n404, n405, n406, n407, n408, n409, n410, 
        n411, n412, n413, n415}) );
  hfb_1_0_DW01_add_6 add_7_root_add_40_2_I8 ( .A({N206, N206, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, 1'b0}), .B({N269, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({
        n362, n363, n364, n365, n366, n367, n368, n369, n371, n372, n373, n374, 
        n375, n376, n377, n378, n379, n380, n382, n383, n384, n385, n386, n387}) );
  hfb_1_0_DW01_add_5 add_2_root_add_2_root_add_40_2_I8 ( .A({n388, n389, n390, 
        n391, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n404, 
        n405, n406, n407, n408, n409, n410, n411, n412, n413, n415}), .B({N334, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 1'b0}), .CI(1'b0), .SUM({n443, n444, n445, n446, n329, n330, n331, n332, n333, n334, 
        n335, n336, n337, n338, n340, n341, n342, n343, n344, n345, n346, n347, 
        n348, n349, n351}) );
  hfb_1_0_DW01_add_4 add_1_root_add_2_root_add_40_2_I8 ( .A({N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377}), .B({n362, 
        n362, n363, n364, n365, n366, n367, n368, n369, n371, n372, n373, n374, 
        n375, n376, n377, n378, n379, n380, n382, n383, n384, n385, n386, n387}), .CI(1'b0), .SUM({n416, n417, n418, n419, n420, n421, n422, n423, n424, n426, 
        n427, n428, n429, n430, n431, n432, n433, n434, n435, n437, n438, n439, 
        n440, n441, n442}) );
  hfb_1_0_DW01_add_3 add_0_root_add_2_root_add_40_2_I8 ( .A({n443, n444, n445, 
        n446, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n340, 
        n341, n342, n343, n344, n345, n346, n347, n348, n349, n351}), .B({n416, 
        n417, n418, n419, n420, n421, n422, n423, n424, n426, n427, n428, n429, 
        n430, n431, n432, n433, n434, n435, n437, n438, n439, n440, n441, n442}), .CI(1'b0), .SUM({acc, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13}) );
endmodule


module counter_test_0 ( clk, reset, SEL, test_si, test_so, test_se );
  input clk, reset, test_si, test_se;
  output SEL, test_so;


  SDFFRX1M SEL_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(SEL), .QN(test_so) );
endmodule


module up4_filter_0_DW01_add_7 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:6] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(n1), .CO(carry[6]), .S(SUM[5]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
  BUFX2M U3 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U4 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_0_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n5;
  wire   [21:7] carry;

  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[5]), .B(n5), .Y(SUM[5]) );
  INVX2M U3 ( .A(A[5]), .Y(n5) );
  BUFX2M U4 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U5 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U6 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_0_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(B[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  AND2X2M U1 ( .A(A[2]), .B(B[2]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n4), .A1N(A[4]), .B0(n5), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n5) );
  OAI2BB1X1M U6 ( .A0N(n1), .A1N(A[3]), .B0(n6), .Y(n4) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n1), .B0(B[3]), .Y(n6) );
endmodule


module up4_filter_0_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_0_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [21:6] carry;

  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(A[2]), .B(B[2]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n4), .A1N(A[4]), .B0(n5), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n5) );
  OAI2BB1X1M U6 ( .A0N(n1), .A1N(A[3]), .B0(n6), .Y(n4) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n1), .B0(B[3]), .Y(n6) );
endmodule


module up4_filter_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n7;
  wire   [21:7] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  BUFX2M U2 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U4 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U5 ( .A(A[4]), .Y(SUM[4]) );
  XNOR2X2M U6 ( .A(B[5]), .B(n7), .Y(SUM[5]) );
  INVX2M U7 ( .A(A[5]), .Y(n7) );
  BUFX2M U8 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module up4_filter_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:2] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  INVX2M U3 ( .A(A[0]), .Y(n2) );
endmodule


module up4_filter_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXLM U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(A[1]), .A1N(B[1]), .B0(n9), .Y(n7) );
  OAI211X1M U10 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n9) );
endmodule


module up4_filter_0_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[3]), .Y(n3) );
  XNOR2X2M U4 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
endmodule


module up4_filter_0_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X2M U3 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  INVX2M U4 ( .A(A[3]), .Y(n4) );
  BUFX2M U5 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_0_DW01_add_9 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_0_DW01_add_8 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X1M U1 ( .A(A[1]), .B(B[1]), .Y(n7) );
  OAI2BB1X1M U2 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U4 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U6 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U8 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U9 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
endmodule


module up4_filter_test_0 ( clk, rst_n, in_data, b0, b1, b2, b3, test_si, 
        test_so, test_se );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n, test_si, test_se;
  output test_so;
  wire   x_n3_14_, x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_,
         x_n3_7_, x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_,
         x_n3_0_, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
         N189, N190, N191, N192, N193, N194, N195, N196, N99, N98, N97, N96,
         N95, N94, N93, N92, N91, N154, N153, N152, N151, N150, N149, N148,
         N147, N146, N145, N144, N143, N142, N141, N140, N139, N138, N137,
         N136, N135, N132, N131, N130, N129, N128, N127, N126, N125, N124,
         N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113,
         N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100,
         N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317,
         N316, N315, N314, N313, N312, N311, N310, N309, N308, N283, N282,
         N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271,
         N270, N269, N268, N267, N9, N88, N87, N86, N85, N84, N83, N82, N81,
         N80, N8, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N7, N69,
         N68, N67, N66, N65, N64, N63, N62, N61, N60, N6, N59, N58, N57, N56,
         N55, N54, N53, N52, N51, N50, N5, N49, N48, N47, N46, N45, N44, N4,
         N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27, N26,
         N25, N24, N23, N22, N20, N2, N19, N18, N17, N16, N15, N14, N13, N12,
         N11, N10, N1, N262, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231,
         N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N199, N174, N173,
         N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162,
         N161, N160, N159, N158, r116_carry_6_, r116_carry_7_, r116_carry_8_,
         r116_carry_9_, r116_carry_10_, r116_carry_11_, r116_carry_12_,
         r116_carry_13_, r116_carry_14_, r116_carry_15_, r116_carry_16_,
         r116_carry_17_, r116_carry_18_, r116_carry_19_,
         add_5_root_add_38_6_carry_4_, add_5_root_add_38_6_carry_5_,
         add_5_root_add_38_6_carry_6_, add_5_root_add_38_6_carry_7_,
         add_5_root_add_38_6_carry_8_, add_5_root_add_38_6_carry_9_,
         add_5_root_add_38_6_carry_10_, add_5_root_add_38_6_carry_11_,
         add_5_root_add_38_6_carry_12_, add_5_root_add_38_6_carry_13_,
         add_5_root_add_38_6_carry_14_, add_5_root_add_38_6_carry_15_,
         add_5_root_add_38_6_carry_16_, add_5_root_add_38_6_carry_17_,
         add_3_root_add_42_4_carry_5_, add_3_root_add_42_4_carry_6_,
         add_3_root_add_42_4_carry_7_, add_3_root_add_42_4_carry_8_,
         add_3_root_add_42_4_carry_9_, add_3_root_add_42_4_carry_10_,
         add_3_root_add_42_4_carry_11_, add_3_root_add_42_4_carry_12_,
         add_3_root_add_42_4_carry_13_, add_3_root_add_42_4_carry_14_,
         add_3_root_add_42_4_carry_15_, add_3_root_add_42_4_carry_16_,
         add_3_root_add_42_4_carry_17_, add_3_root_add_42_4_carry_18_, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n117, n118, n119, n120,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32,
         SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34,
         SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36;
  wire   [15:2] x_n1;
  wire   [15:0] x_n2;
  wire   [15:1] sub_3_root_sub_0_root_add_30_3_carry;
  wire   [20:2] sub_2_root_sub_0_root_add_30_3_carry;

  SDFFRQX2M x_n3_reg_14_ ( .D(x_n2[14]), .SI(x_n3_13_), .SE(n120), .CK(clk), 
        .RN(n62), .Q(x_n3_14_) );
  SDFFRQX2M x_n3_reg_13_ ( .D(x_n2[13]), .SI(x_n3_12_), .SE(n119), .CK(clk), 
        .RN(n62), .Q(x_n3_13_) );
  SDFFRQX2M x_n3_reg_12_ ( .D(x_n2[12]), .SI(x_n3_11_), .SE(n118), .CK(clk), 
        .RN(n62), .Q(x_n3_12_) );
  SDFFRQX2M x_n1_reg_15_ ( .D(N174), .SI(x_n1[14]), .SE(n120), .CK(clk), .RN(
        n61), .Q(x_n1[15]) );
  SDFFRQX2M x_n3_reg_11_ ( .D(x_n2[11]), .SI(x_n3_10_), .SE(n119), .CK(clk), 
        .RN(n63), .Q(x_n3_11_) );
  SDFFRQX2M x_n3_reg_10_ ( .D(x_n2[10]), .SI(x_n3_9_), .SE(n118), .CK(clk), 
        .RN(n63), .Q(x_n3_10_) );
  SDFFRQX2M x_n3_reg_9_ ( .D(x_n2[9]), .SI(x_n3_8_), .SE(n120), .CK(clk), .RN(
        n63), .Q(x_n3_9_) );
  SDFFRQX2M x_n3_reg_8_ ( .D(x_n2[8]), .SI(x_n3_7_), .SE(n119), .CK(clk), .RN(
        n63), .Q(x_n3_8_) );
  SDFFRQX2M x_n3_reg_7_ ( .D(x_n2[7]), .SI(x_n3_6_), .SE(n118), .CK(clk), .RN(
        n63), .Q(x_n3_7_) );
  SDFFRQX2M x_n2_reg_15_ ( .D(n55), .SI(x_n2[14]), .SE(n120), .CK(clk), .RN(
        n62), .Q(x_n2[15]) );
  SDFFRQX2M x_n2_reg_14_ ( .D(x_n1[14]), .SI(x_n2[13]), .SE(n119), .CK(clk), 
        .RN(n62), .Q(x_n2[14]) );
  SDFFRQX2M x_n2_reg_13_ ( .D(x_n1[13]), .SI(x_n2[12]), .SE(n118), .CK(clk), 
        .RN(n62), .Q(x_n2[13]) );
  SDFFRQX2M x_n2_reg_12_ ( .D(x_n1[12]), .SI(x_n2[11]), .SE(n120), .CK(clk), 
        .RN(n62), .Q(x_n2[12]) );
  SDFFRQX2M x_n3_reg_4_ ( .D(x_n2[4]), .SI(x_n3_3_), .SE(n119), .CK(clk), .RN(
        n64), .Q(x_n3_4_) );
  SDFFRQX2M x_n3_reg_3_ ( .D(x_n2[3]), .SI(x_n3_2_), .SE(n118), .CK(clk), .RN(
        n64), .Q(x_n3_3_) );
  SDFFRQX2M x_n3_reg_2_ ( .D(x_n2[2]), .SI(x_n3_1_), .SE(n120), .CK(clk), .RN(
        n64), .Q(x_n3_2_) );
  SDFFRQX2M x_n3_reg_1_ ( .D(x_n2[1]), .SI(x_n3_0_), .SE(n119), .CK(clk), .RN(
        n64), .Q(x_n3_1_) );
  SDFFRQX2M x_n3_reg_0_ ( .D(x_n2[0]), .SI(n57), .SE(n118), .CK(clk), .RN(n64), 
        .Q(x_n3_0_) );
  SDFFRQX2M x_n3_reg_6_ ( .D(x_n2[6]), .SI(x_n3_5_), .SE(n120), .CK(clk), .RN(
        n63), .Q(x_n3_6_) );
  SDFFRQX2M x_n3_reg_5_ ( .D(x_n2[5]), .SI(x_n3_4_), .SE(n119), .CK(clk), .RN(
        n64), .Q(x_n3_5_) );
  SDFFRQX2M x_n2_reg_11_ ( .D(x_n1[11]), .SI(x_n2[10]), .SE(n118), .CK(clk), 
        .RN(n63), .Q(x_n2[11]) );
  SDFFRQX2M x_n2_reg_10_ ( .D(x_n1[10]), .SI(x_n2[9]), .SE(n120), .CK(clk), 
        .RN(n63), .Q(x_n2[10]) );
  SDFFRQX2M x_n2_reg_9_ ( .D(x_n1[9]), .SI(x_n2[8]), .SE(n119), .CK(clk), .RN(
        n63), .Q(x_n2[9]) );
  SDFFRQX2M x_n2_reg_8_ ( .D(x_n1[8]), .SI(x_n2[7]), .SE(n118), .CK(clk), .RN(
        n63), .Q(x_n2[8]) );
  SDFFRQX2M x_n1_reg_2_ ( .D(in_data[2]), .SI(n53), .SE(n120), .CK(clk), .RN(
        n62), .Q(x_n1[2]) );
  SDFFRQX2M x_n1_reg_1_ ( .D(in_data[1]), .SI(n52), .SE(n119), .CK(clk), .RN(
        n62), .Q(N179) );
  SDFFRQX2M x_n1_reg_0_ ( .D(in_data[0]), .SI(test_si), .SE(n118), .CK(clk), 
        .RN(n62), .Q(N1) );
  SDFFRQX2M x_n2_reg_7_ ( .D(x_n1[7]), .SI(x_n2[6]), .SE(n120), .CK(clk), .RN(
        n63), .Q(x_n2[7]) );
  SDFFRQX2M x_n2_reg_6_ ( .D(x_n1[6]), .SI(x_n2[5]), .SE(n119), .CK(clk), .RN(
        n63), .Q(x_n2[6]) );
  SDFFRQX2M x_n2_reg_5_ ( .D(x_n1[5]), .SI(x_n2[4]), .SE(n118), .CK(clk), .RN(
        n64), .Q(x_n2[5]) );
  SDFFRQX2M x_n2_reg_4_ ( .D(x_n1[4]), .SI(x_n2[3]), .SE(n120), .CK(clk), .RN(
        n64), .Q(x_n2[4]) );
  SDFFRQX2M x_n2_reg_1_ ( .D(n53), .SI(x_n2[0]), .SE(n119), .CK(clk), .RN(n64), 
        .Q(x_n2[1]) );
  SDFFRQX2M x_n2_reg_2_ ( .D(n54), .SI(x_n2[1]), .SE(n118), .CK(clk), .RN(n64), 
        .Q(x_n2[2]) );
  SDFFRQX2M x_n1_reg_14_ ( .D(in_data[14]), .SI(x_n1[13]), .SE(n120), .CK(clk), 
        .RN(n61), .Q(x_n1[14]) );
  SDFFRQX2M x_n1_reg_13_ ( .D(in_data[13]), .SI(x_n1[12]), .SE(n119), .CK(clk), 
        .RN(n61), .Q(x_n1[13]) );
  SDFFRQX2M x_n1_reg_12_ ( .D(in_data[12]), .SI(x_n1[11]), .SE(n118), .CK(clk), 
        .RN(n61), .Q(x_n1[12]) );
  SDFFRQX2M x_n3_reg_15_ ( .D(n57), .SI(x_n3_14_), .SE(n120), .CK(clk), .RN(
        n62), .Q(test_so) );
  SDFFRQX2M x_n1_reg_11_ ( .D(in_data[11]), .SI(x_n1[10]), .SE(n119), .CK(clk), 
        .RN(n61), .Q(x_n1[11]) );
  SDFFRQX2M x_n1_reg_10_ ( .D(in_data[10]), .SI(x_n1[9]), .SE(n118), .CK(clk), 
        .RN(n61), .Q(x_n1[10]) );
  SDFFRQX2M x_n1_reg_9_ ( .D(in_data[9]), .SI(x_n1[8]), .SE(n120), .CK(clk), 
        .RN(n61), .Q(x_n1[9]) );
  SDFFRQX2M x_n1_reg_8_ ( .D(in_data[8]), .SI(x_n1[7]), .SE(n119), .CK(clk), 
        .RN(n61), .Q(x_n1[8]) );
  SDFFRQX2M x_n1_reg_7_ ( .D(in_data[7]), .SI(x_n1[6]), .SE(n118), .CK(clk), 
        .RN(n61), .Q(x_n1[7]) );
  SDFFRQX2M x_n1_reg_6_ ( .D(in_data[6]), .SI(x_n1[5]), .SE(n120), .CK(clk), 
        .RN(n61), .Q(x_n1[6]) );
  SDFFRQX2M x_n1_reg_5_ ( .D(in_data[5]), .SI(x_n1[4]), .SE(n119), .CK(clk), 
        .RN(n61), .Q(x_n1[5]) );
  SDFFRQX2M x_n1_reg_4_ ( .D(in_data[4]), .SI(x_n1[3]), .SE(n118), .CK(clk), 
        .RN(n61), .Q(x_n1[4]) );
  SDFFRQX2M x_n1_reg_3_ ( .D(in_data[3]), .SI(n54), .SE(n120), .CK(clk), .RN(
        n62), .Q(x_n1[3]) );
  SDFFRQX2M x_n2_reg_0_ ( .D(n52), .SI(N196), .SE(n119), .CK(clk), .RN(n64), 
        .Q(x_n2[0]) );
  SDFFRQX2M x_n2_reg_3_ ( .D(x_n1[3]), .SI(x_n2[2]), .SE(n118), .CK(clk), .RN(
        n64), .Q(x_n2[3]) );
  ADDFX2M U51 ( .A(in_data[14]), .B(n95), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[14]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[15]), .S(N37) );
  AOI222XLM U52 ( .A0(sub_3_root_sub_0_root_add_30_3_carry[15]), .A1(N174), 
        .B0(n58), .B1(sub_3_root_sub_0_root_add_30_3_carry[15]), .C0(n58), 
        .C1(N174), .Y(n49) );
  AOI222X1M U53 ( .A0(sub_3_root_sub_0_root_add_30_3_carry[15]), .A1(N174), 
        .B0(n58), .B1(sub_3_root_sub_0_root_add_30_3_carry[15]), .C0(n58), 
        .C1(N174), .Y(n96) );
  BUFX2M U54 ( .A(in_data[15]), .Y(N174) );
  INVX2M U55 ( .A(n58), .Y(n57) );
  BUFX2M U56 ( .A(x_n1[15]), .Y(n55) );
  BUFX2M U57 ( .A(x_n1[15]), .Y(N196) );
  XOR3XLM U58 ( .A(n57), .B(N174), .C(n49), .Y(n50) );
  XOR3XLM U59 ( .A(n57), .B(N174), .C(n49), .Y(n51) );
  BUFX2M U60 ( .A(n60), .Y(n64) );
  BUFX2M U61 ( .A(n60), .Y(n63) );
  BUFX2M U62 ( .A(n59), .Y(n62) );
  BUFX2M U63 ( .A(n59), .Y(n61) );
  ADDFX2M U64 ( .A(n56), .B(N174), .CI(N282), .CO(N283) );
  BUFX2M U65 ( .A(rst_n), .Y(n60) );
  BUFX2M U66 ( .A(rst_n), .Y(n59) );
  ADDFX2M U67 ( .A(in_data[14]), .B(N174), .CI(add_5_root_add_38_6_carry_17_), 
        .CO(N173), .S(N172) );
  ADDFX2M U68 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_5_root_add_38_6_carry_4_), .CO(add_5_root_add_38_6_carry_5_), .S(
        N159) );
  ADDFX2M U69 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_5_root_add_38_6_carry_5_), .CO(add_5_root_add_38_6_carry_6_), .S(
        N160) );
  ADDFX2M U70 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_5_root_add_38_6_carry_6_), .CO(add_5_root_add_38_6_carry_7_), .S(
        N161) );
  ADDFX2M U71 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_5_root_add_38_6_carry_7_), .CO(add_5_root_add_38_6_carry_8_), .S(
        N162) );
  ADDFX2M U72 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_5_root_add_38_6_carry_8_), .CO(add_5_root_add_38_6_carry_9_), .S(
        N163) );
  ADDFX2M U73 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_5_root_add_38_6_carry_9_), .CO(add_5_root_add_38_6_carry_10_), .S(
        N164) );
  ADDFX2M U74 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_5_root_add_38_6_carry_10_), .CO(add_5_root_add_38_6_carry_11_), 
        .S(N165) );
  ADDFX2M U75 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_5_root_add_38_6_carry_11_), .CO(add_5_root_add_38_6_carry_12_), 
        .S(N166) );
  ADDFX2M U76 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_5_root_add_38_6_carry_12_), .CO(add_5_root_add_38_6_carry_13_), 
        .S(N167) );
  ADDFX2M U77 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_5_root_add_38_6_carry_13_), .CO(add_5_root_add_38_6_carry_14_), 
        .S(N168) );
  ADDFX2M U78 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_5_root_add_38_6_carry_14_), .CO(add_5_root_add_38_6_carry_15_), 
        .S(N169) );
  ADDFX2M U79 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_5_root_add_38_6_carry_15_), .CO(add_5_root_add_38_6_carry_16_), 
        .S(N170) );
  ADDFX2M U80 ( .A(in_data[13]), .B(N174), .CI(add_5_root_add_38_6_carry_16_), 
        .CO(add_5_root_add_38_6_carry_17_), .S(N171) );
  INVX2M U81 ( .A(n52), .Y(n65) );
  INVX2M U82 ( .A(n53), .Y(n66) );
  INVX2M U83 ( .A(n54), .Y(n67) );
  ADDFX2M U84 ( .A(in_data[14]), .B(N174), .CI(add_3_root_add_42_4_carry_18_), 
        .CO(N282), .S(N281) );
  ADDFX2M U85 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_3_root_add_42_4_carry_5_), .CO(add_3_root_add_42_4_carry_6_), .S(
        N268) );
  ADDFX2M U86 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_3_root_add_42_4_carry_6_), .CO(add_3_root_add_42_4_carry_7_), .S(
        N269) );
  ADDFX2M U87 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_3_root_add_42_4_carry_7_), .CO(add_3_root_add_42_4_carry_8_), .S(
        N270) );
  ADDFX2M U88 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_3_root_add_42_4_carry_8_), .CO(add_3_root_add_42_4_carry_9_), .S(
        N271) );
  ADDFX2M U89 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_3_root_add_42_4_carry_9_), .CO(add_3_root_add_42_4_carry_10_), .S(
        N272) );
  ADDFX2M U90 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_3_root_add_42_4_carry_10_), .CO(add_3_root_add_42_4_carry_11_), 
        .S(N273) );
  ADDFX2M U91 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_3_root_add_42_4_carry_11_), .CO(add_3_root_add_42_4_carry_12_), 
        .S(N274) );
  ADDFX2M U92 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_3_root_add_42_4_carry_12_), .CO(add_3_root_add_42_4_carry_13_), 
        .S(N275) );
  ADDFX2M U93 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_3_root_add_42_4_carry_13_), .CO(add_3_root_add_42_4_carry_14_), 
        .S(N276) );
  ADDFX2M U94 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_3_root_add_42_4_carry_14_), .CO(add_3_root_add_42_4_carry_15_), 
        .S(N277) );
  ADDFX2M U95 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_3_root_add_42_4_carry_15_), .CO(add_3_root_add_42_4_carry_16_), 
        .S(N278) );
  ADDFX2M U96 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_3_root_add_42_4_carry_16_), .CO(add_3_root_add_42_4_carry_17_), 
        .S(N279) );
  ADDFX2M U97 ( .A(in_data[13]), .B(N174), .CI(add_3_root_add_42_4_carry_17_), 
        .CO(add_3_root_add_42_4_carry_18_), .S(N280) );
  INVX2M U98 ( .A(sub_2_root_sub_0_root_add_30_3_carry[20]), .Y(N22) );
  INVX2M U99 ( .A(n55), .Y(n80) );
  BUFX2M U100 ( .A(in_data[15]), .Y(n56) );
  ADDFX2M U101 ( .A(in_data[1]), .B(n82), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[1]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[2]), .S(N24) );
  INVX2M U102 ( .A(x_n2[1]), .Y(n82) );
  ADDFX2M U103 ( .A(in_data[2]), .B(n83), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[2]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[3]), .S(N25) );
  INVX2M U104 ( .A(x_n2[2]), .Y(n83) );
  ADDFX2M U105 ( .A(in_data[3]), .B(n84), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[3]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[4]), .S(N26) );
  INVX2M U106 ( .A(x_n2[3]), .Y(n84) );
  ADDFX2M U107 ( .A(in_data[4]), .B(n85), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[4]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[5]), .S(N27) );
  INVX2M U108 ( .A(x_n2[4]), .Y(n85) );
  ADDFX2M U109 ( .A(in_data[5]), .B(n86), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[5]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[6]), .S(N28) );
  INVX2M U110 ( .A(x_n2[5]), .Y(n86) );
  ADDFX2M U111 ( .A(in_data[6]), .B(n87), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[6]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[7]), .S(N29) );
  INVX2M U112 ( .A(x_n2[6]), .Y(n87) );
  ADDFX2M U113 ( .A(in_data[7]), .B(n88), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[7]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[8]), .S(N30) );
  INVX2M U114 ( .A(x_n2[7]), .Y(n88) );
  ADDFX2M U115 ( .A(in_data[8]), .B(n89), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[8]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[9]), .S(N31) );
  INVX2M U116 ( .A(x_n2[8]), .Y(n89) );
  ADDFX2M U117 ( .A(in_data[9]), .B(n90), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[9]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[10]), .S(N32) );
  INVX2M U118 ( .A(x_n2[9]), .Y(n90) );
  ADDFX2M U119 ( .A(in_data[10]), .B(n91), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[10]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[11]), .S(N33) );
  INVX2M U120 ( .A(x_n2[10]), .Y(n91) );
  ADDFX2M U121 ( .A(in_data[11]), .B(n92), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[11]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[12]), .S(N34) );
  INVX2M U122 ( .A(x_n2[11]), .Y(n92) );
  ADDFX2M U123 ( .A(in_data[12]), .B(n93), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[12]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[13]), .S(N35) );
  INVX2M U124 ( .A(x_n2[12]), .Y(n93) );
  ADDFX2M U125 ( .A(in_data[13]), .B(n94), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[13]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[14]), .S(N36) );
  INVX2M U126 ( .A(x_n2[13]), .Y(n94) );
  INVX2M U127 ( .A(x_n2[14]), .Y(n95) );
  INVX2M U128 ( .A(x_n2[0]), .Y(n81) );
  BUFX2M U129 ( .A(N1), .Y(n52) );
  BUFX2M U130 ( .A(N179), .Y(n53) );
  BUFX2M U131 ( .A(x_n1[2]), .Y(n54) );
  ADDFX2M U132 ( .A(n52), .B(n70), .CI(sub_2_root_sub_0_root_add_30_3_carry[5]), .CO(sub_2_root_sub_0_root_add_30_3_carry[6]), .S(N6) );
  INVX2M U133 ( .A(x_n1[5]), .Y(n70) );
  ADDFX2M U134 ( .A(n53), .B(n71), .CI(sub_2_root_sub_0_root_add_30_3_carry[6]), .CO(sub_2_root_sub_0_root_add_30_3_carry[7]), .S(N7) );
  INVX2M U135 ( .A(x_n1[6]), .Y(n71) );
  ADDFX2M U136 ( .A(n54), .B(n72), .CI(sub_2_root_sub_0_root_add_30_3_carry[7]), .CO(sub_2_root_sub_0_root_add_30_3_carry[8]), .S(N8) );
  INVX2M U137 ( .A(x_n1[7]), .Y(n72) );
  ADDFX2M U138 ( .A(x_n1[5]), .B(n75), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[10]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[11]), .S(N11) );
  INVX2M U139 ( .A(x_n1[10]), .Y(n75) );
  ADDFX2M U140 ( .A(x_n1[6]), .B(n76), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[11]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[12]), .S(N12) );
  INVX2M U141 ( .A(x_n1[11]), .Y(n76) );
  ADDFX2M U142 ( .A(x_n1[9]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[14]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[15]), .S(N15) );
  INVX2M U143 ( .A(x_n1[14]), .Y(n79) );
  ADDFX2M U144 ( .A(x_n1[10]), .B(n80), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[15]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[16]), .S(N16) );
  ADDFX2M U145 ( .A(x_n1[14]), .B(n80), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[19]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[20]), .S(N20) );
  ADDFX2M U146 ( .A(x_n1[3]), .B(n73), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[8]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[9]), .S(N9) );
  INVX2M U147 ( .A(x_n1[8]), .Y(n73) );
  ADDFX2M U148 ( .A(x_n1[4]), .B(n74), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[9]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[10]), .S(N10) );
  INVX2M U149 ( .A(x_n1[9]), .Y(n74) );
  ADDFX2M U150 ( .A(x_n1[7]), .B(n77), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[12]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[13]), .S(N13) );
  INVX2M U151 ( .A(x_n1[12]), .Y(n77) );
  ADDFX2M U152 ( .A(x_n1[8]), .B(n78), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[13]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[14]), .S(N14) );
  INVX2M U153 ( .A(x_n1[13]), .Y(n78) );
  ADDFX2M U154 ( .A(x_n1[11]), .B(n80), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[16]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[17]), .S(N17) );
  ADDFX2M U155 ( .A(x_n1[12]), .B(n80), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[17]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[18]), .S(N18) );
  ADDFX2M U156 ( .A(x_n1[13]), .B(n80), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[18]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[19]), .S(N19) );
  INVX2M U157 ( .A(x_n1[3]), .Y(n68) );
  ADDFX2M U158 ( .A(n53), .B(x_n1[3]), .CI(r116_carry_6_), .CO(r116_carry_7_), 
        .S(N181) );
  ADDFX2M U159 ( .A(n54), .B(x_n1[4]), .CI(r116_carry_7_), .CO(r116_carry_8_), 
        .S(N182) );
  ADDFX2M U160 ( .A(x_n1[10]), .B(x_n1[12]), .CI(r116_carry_15_), .CO(
        r116_carry_16_), .S(N190) );
  ADDFX2M U161 ( .A(x_n1[13]), .B(N196), .CI(r116_carry_18_), .CO(
        r116_carry_19_), .S(N193) );
  ADDFX2M U162 ( .A(x_n1[14]), .B(n55), .CI(r116_carry_19_), .CO(N195), .S(
        N194) );
  ADDFX2M U163 ( .A(x_n1[3]), .B(x_n1[5]), .CI(r116_carry_8_), .CO(
        r116_carry_9_), .S(N183) );
  ADDFX2M U164 ( .A(x_n1[4]), .B(x_n1[6]), .CI(r116_carry_9_), .CO(
        r116_carry_10_), .S(N184) );
  ADDFX2M U165 ( .A(x_n1[5]), .B(x_n1[7]), .CI(r116_carry_10_), .CO(
        r116_carry_11_), .S(N185) );
  ADDFX2M U166 ( .A(x_n1[6]), .B(x_n1[8]), .CI(r116_carry_11_), .CO(
        r116_carry_12_), .S(N186) );
  ADDFX2M U167 ( .A(x_n1[7]), .B(x_n1[9]), .CI(r116_carry_12_), .CO(
        r116_carry_13_), .S(N187) );
  ADDFX2M U168 ( .A(x_n1[8]), .B(x_n1[10]), .CI(r116_carry_13_), .CO(
        r116_carry_14_), .S(N188) );
  ADDFX2M U169 ( .A(x_n1[9]), .B(x_n1[11]), .CI(r116_carry_14_), .CO(
        r116_carry_15_), .S(N189) );
  ADDFX2M U170 ( .A(x_n1[11]), .B(x_n1[13]), .CI(r116_carry_16_), .CO(
        r116_carry_17_), .S(N191) );
  ADDFX2M U171 ( .A(x_n1[12]), .B(x_n1[14]), .CI(r116_carry_17_), .CO(
        r116_carry_18_), .S(N192) );
  INVX2M U172 ( .A(x_n1[4]), .Y(n69) );
  INVX2M U173 ( .A(x_n2[15]), .Y(n58) );
  AND2X1M U174 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_5_root_add_38_6_carry_4_) );
  CLKXOR2X2M U175 ( .A(in_data[2]), .B(in_data[0]), .Y(N158) );
  AND2X1M U176 ( .A(n52), .B(n54), .Y(r116_carry_6_) );
  CLKXOR2X2M U177 ( .A(n54), .B(n52), .Y(N180) );
  AND2X1M U178 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_3_root_add_42_4_carry_5_) );
  CLKXOR2X2M U179 ( .A(in_data[2]), .B(in_data[0]), .Y(N267) );
  OR2X1M U180 ( .A(n81), .B(in_data[0]), .Y(
        sub_3_root_sub_0_root_add_30_3_carry[1]) );
  XNOR2X1M U181 ( .A(in_data[0]), .B(n81), .Y(N23) );
  AND2X1M U182 ( .A(sub_2_root_sub_0_root_add_30_3_carry[4]), .B(n69), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[5]) );
  CLKXOR2X2M U183 ( .A(n69), .B(sub_2_root_sub_0_root_add_30_3_carry[4]), .Y(
        N5) );
  AND2X1M U184 ( .A(sub_2_root_sub_0_root_add_30_3_carry[3]), .B(n68), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[4]) );
  CLKXOR2X2M U185 ( .A(n68), .B(sub_2_root_sub_0_root_add_30_3_carry[3]), .Y(
        N4) );
  AND2X1M U186 ( .A(sub_2_root_sub_0_root_add_30_3_carry[2]), .B(n67), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[3]) );
  CLKXOR2X2M U187 ( .A(n67), .B(sub_2_root_sub_0_root_add_30_3_carry[2]), .Y(
        N3) );
  AND2X1M U188 ( .A(n65), .B(n66), .Y(sub_2_root_sub_0_root_add_30_3_carry[2])
         );
  CLKXOR2X2M U189 ( .A(n66), .B(n65), .Y(N2) );
  XOR3XLM U190 ( .A(n58), .B(sub_3_root_sub_0_root_add_30_3_carry[15]), .C(
        N174), .Y(N38) );
  XOR3XLM U191 ( .A(n57), .B(N174), .C(n96), .Y(N44) );
  INVXLM U225 ( .A(test_se), .Y(n117) );
  INVXLM U226 ( .A(n117), .Y(n118) );
  INVXLM U227 ( .A(n117), .Y(n119) );
  INVXLM U228 ( .A(n117), .Y(n120) );
  up4_filter_0_DW01_add_7 add_3_root_add_0_root_add_34_4 ( .A({n56, n56, n56, 
        n56, n56, in_data[14:0], 1'b0, 1'b0}), .B({n57, n57, n57, x_n2[14:0], 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N110, N109, N108, N107, 
        N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, 
        N93, N92, N91, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  up4_filter_0_DW01_add_6 add_2_root_add_0_root_add_34_4 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], n57, x_n2[14:0], 1'b0, 1'b0}), .B({N196, 
        n55, x_n1[14:3], n54, n53, n52, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({N154, N153, N152, N151, N150, N149, N148, N147, N146, 
        N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}) );
  up4_filter_0_DW01_add_5 add_1_root_add_0_root_add_34_4 ( .A({N196, n55, N196, 
        n55, x_n1[14:3], n54, n53, n52, 1'b0, 1'b0, 1'b0}), .B({N154, N153, 
        N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6}) );
  up4_filter_0_DW01_add_4 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({N110, N109, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, 
        N95, N94, N93, N92, N91, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12}) );
  up4_filter_0_DW01_add_14 add_1_root_add_0_root_add_42_4 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], x_n2, 1'b0, 1'b0}), .B({N196, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, n53, n52, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14}) );
  up4_filter_0_DW01_add_13 add_0_root_add_0_root_add_42_4 ( .A({N283, N283, 
        N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, 
        N270, N269, N268, N267, in_data[1:0], 1'b0, 1'b0}), .B({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20}) );
  up4_filter_0_DW01_add_3 add_4_root_sub_0_root_add_30_3 ( .A({test_so, 
        test_so, test_so, test_so, test_so, test_so, test_so, x_n3_14_, 
        x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_, x_n3_7_, 
        x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_, x_n3_0_}), .B({
        n57, n57, x_n2[14:0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        {N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52, N51, N50, N49, N48, N47, N46, N45}) );
  up4_filter_0_DW01_add_2 add_1_root_sub_0_root_add_30_3 ( .A({N66, N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45}), .B({N22, N22, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, n52}), .CI(
        1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_0_DW01_add_1 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({n50, n51, n50, n51, n50, N44, N38, N37, 
        N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), 
        .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24, 
        SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26}) );
  up4_filter_0_DW01_add_11 add_3_root_add_0_root_add_38_6 ( .A({n55, N196, n55, 
        N196, n55, x_n1[14:3], n54, n53, n52, 1'b0, 1'b0}), .B({n57, n57, n57, 
        n57, x_n2[14:0], 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N218, N217, N216, 
        N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28}) );
  up4_filter_0_DW01_add_10 add_2_root_add_0_root_add_38_6 ( .A({x_n2[15], 
        x_n2[15], n57, x_n2[15], n57, n57, x_n2[14:0], 1'b0}), .B({N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, n53, n52, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N262, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, 
        N249, N248, N247, N246, N245, N244, N243, N242, 
        SYNOPSYS_UNCONNECTED_29}) );
  up4_filter_0_DW01_add_9 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED_30}) );
  up4_filter_0_DW01_add_8 add_0_root_add_0_root_add_38_6 ( .A({N174, N174, 
        N174, N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, 
        N162, N161, N160, N159, N158, in_data[1:0], 1'b0}), .B({N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32, 
        SYNOPSYS_UNCONNECTED_33, SYNOPSYS_UNCONNECTED_34, 
        SYNOPSYS_UNCONNECTED_35, SYNOPSYS_UNCONNECTED_36}) );
endmodule


module counter2bit_test_0 ( clk, reset, count, test_si, test_se );
  output [1:0] count;
  input clk, reset, test_si, test_se;
  wire   N2, n3;

  SDFFRQX2M count_reg_1_ ( .D(N2), .SI(n3), .SE(test_se), .CK(clk), .RN(reset), 
        .Q(count[1]) );
  SDFFRQX2M count_reg_0_ ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(count[0]) );
  INVX2M U5 ( .A(count[0]), .Y(n3) );
  CLKXOR2X2M U6 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_0 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n1, n38, n39;

  NAND2X2M U1 ( .A(n32), .B(n33), .Y(Y[11]) );
  AOI22X1M U2 ( .A0(I3[11]), .A1(n4), .B0(I2[11]), .B1(n5), .Y(n33) );
  AOI22X1M U3 ( .A0(I1[11]), .A1(n1), .B0(I0[11]), .B1(n38), .Y(n32) );
  NAND2X2M U4 ( .A(n30), .B(n31), .Y(Y[12]) );
  AOI22X1M U5 ( .A0(I3[12]), .A1(n4), .B0(I2[12]), .B1(n5), .Y(n31) );
  AOI22X1M U6 ( .A0(I1[12]), .A1(n1), .B0(I0[12]), .B1(n38), .Y(n30) );
  NAND2X2M U7 ( .A(n28), .B(n29), .Y(Y[13]) );
  AOI22X1M U8 ( .A0(I3[13]), .A1(n4), .B0(I2[13]), .B1(n5), .Y(n29) );
  AOI22X1M U9 ( .A0(I1[13]), .A1(n1), .B0(I0[13]), .B1(n38), .Y(n28) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(Y[9]) );
  AOI22X1M U11 ( .A0(I3[9]), .A1(n4), .B0(I2[9]), .B1(n5), .Y(n3) );
  AOI22X1M U12 ( .A0(I1[9]), .A1(n1), .B0(I0[9]), .B1(n38), .Y(n2) );
  NAND2X2M U13 ( .A(n34), .B(n35), .Y(Y[10]) );
  AOI22X1M U14 ( .A0(I3[10]), .A1(n4), .B0(I2[10]), .B1(n5), .Y(n35) );
  AOI22X1M U15 ( .A0(I1[10]), .A1(n1), .B0(I0[10]), .B1(n38), .Y(n34) );
  NAND2X2M U16 ( .A(n26), .B(n27), .Y(Y[14]) );
  AOI22X1M U17 ( .A0(I3[14]), .A1(n4), .B0(I2[14]), .B1(n5), .Y(n27) );
  AOI22X1M U18 ( .A0(I1[14]), .A1(n1), .B0(I0[14]), .B1(n38), .Y(n26) );
  NAND2X2M U19 ( .A(n24), .B(n25), .Y(Y[15]) );
  AOI22X1M U20 ( .A0(I3[15]), .A1(n4), .B0(I2[15]), .B1(n5), .Y(n25) );
  AOI22X1M U21 ( .A0(I1[15]), .A1(n1), .B0(I0[15]), .B1(n38), .Y(n24) );
  NAND2X2M U22 ( .A(n36), .B(n37), .Y(Y[0]) );
  AOI22X1M U23 ( .A0(I3[0]), .A1(n4), .B0(I2[0]), .B1(n5), .Y(n37) );
  AOI22X1M U24 ( .A0(I1[0]), .A1(n1), .B0(I0[0]), .B1(n38), .Y(n36) );
  NAND2X2M U25 ( .A(n22), .B(n23), .Y(Y[1]) );
  AOI22X1M U26 ( .A0(I3[1]), .A1(n4), .B0(I2[1]), .B1(n5), .Y(n23) );
  AOI22X1M U27 ( .A0(I1[1]), .A1(n1), .B0(I0[1]), .B1(n38), .Y(n22) );
  NAND2X2M U28 ( .A(n20), .B(n21), .Y(Y[2]) );
  AOI22X1M U29 ( .A0(I3[2]), .A1(n4), .B0(I2[2]), .B1(n5), .Y(n21) );
  AOI22X1M U30 ( .A0(I1[2]), .A1(n1), .B0(I0[2]), .B1(n38), .Y(n20) );
  NAND2X2M U31 ( .A(n16), .B(n17), .Y(Y[4]) );
  AOI22X1M U32 ( .A0(I3[4]), .A1(n4), .B0(I2[4]), .B1(n5), .Y(n17) );
  AOI22X1M U33 ( .A0(I1[4]), .A1(n1), .B0(I0[4]), .B1(n38), .Y(n16) );
  NAND2X2M U34 ( .A(n14), .B(n15), .Y(Y[5]) );
  AOI22X1M U35 ( .A0(I3[5]), .A1(n4), .B0(I2[5]), .B1(n5), .Y(n15) );
  AOI22X1M U36 ( .A0(I1[5]), .A1(n1), .B0(I0[5]), .B1(n38), .Y(n14) );
  NAND2X2M U37 ( .A(n12), .B(n13), .Y(Y[6]) );
  AOI22X1M U38 ( .A0(I3[6]), .A1(n4), .B0(I2[6]), .B1(n5), .Y(n13) );
  AOI22X1M U39 ( .A0(I1[6]), .A1(n1), .B0(I0[6]), .B1(n38), .Y(n12) );
  NAND2X2M U40 ( .A(n10), .B(n11), .Y(Y[7]) );
  AOI22X1M U41 ( .A0(I3[7]), .A1(n4), .B0(I2[7]), .B1(n5), .Y(n11) );
  AOI22X1M U42 ( .A0(I1[7]), .A1(n1), .B0(I0[7]), .B1(n38), .Y(n10) );
  NAND2X2M U43 ( .A(n8), .B(n9), .Y(Y[8]) );
  AOI22X1M U44 ( .A0(I3[8]), .A1(n4), .B0(I2[8]), .B1(n5), .Y(n9) );
  AOI22X1M U45 ( .A0(I1[8]), .A1(n1), .B0(I0[8]), .B1(n38), .Y(n8) );
  NAND2X2M U46 ( .A(n18), .B(n19), .Y(Y[3]) );
  AOI22X1M U47 ( .A0(I3[3]), .A1(n4), .B0(I2[3]), .B1(n5), .Y(n19) );
  AOI22X1M U48 ( .A0(I1[3]), .A1(n1), .B0(I0[3]), .B1(n38), .Y(n18) );
  AND2X2M U49 ( .A(S[1]), .B(S[0]), .Y(n4) );
  AND2X2M U50 ( .A(S[1]), .B(n39), .Y(n5) );
  INVX2M U51 ( .A(S[0]), .Y(n39) );
  BUFX2M U52 ( .A(n6), .Y(n1) );
  NOR2X2M U53 ( .A(n39), .B(S[1]), .Y(n6) );
  BUFX2M U54 ( .A(n7), .Y(n38) );
  NOR2X2M U55 ( .A(S[0]), .B(S[1]), .Y(n7) );
endmodule


module up4_filter_3_DW01_add_2 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2X2M U3 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_3_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [21:6] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(A[3]), .A1N(B[3]), .B0(n5), .Y(n3) );
  OAI211X1M U6 ( .A0(A[3]), .A1(B[3]), .B0(A[2]), .C0(B[2]), .Y(n5) );
endmodule


module up4_filter_3_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_3_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [21:6] carry;

  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  AND2X2M U1 ( .A(A[2]), .B(B[2]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n4), .A1N(A[4]), .B0(n5), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n5) );
  OAI2BB1X1M U6 ( .A0N(n1), .A1N(A[3]), .B0(n6), .Y(n4) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n1), .B0(B[3]), .Y(n6) );
endmodule


module up4_filter_3_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:7] carry;

  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U4 ( .A(A[4]), .Y(SUM[4]) );
  CLKXOR2X2M U5 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
  BUFX2M U6 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U7 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module up4_filter_3_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n7;
  wire   [21:7] carry;

  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  BUFX2M U2 ( .A(B[1]), .Y(SUM[1]) );
  BUFX2M U3 ( .A(B[2]), .Y(SUM[2]) );
  BUFX2M U4 ( .A(B[3]), .Y(SUM[3]) );
  BUFX2M U5 ( .A(B[4]), .Y(SUM[4]) );
  XNOR2X2M U6 ( .A(B[5]), .B(n7), .Y(SUM[5]) );
  INVX2M U7 ( .A(A[5]), .Y(n7) );
  BUFX2M U8 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module up4_filter_3_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [21:1] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n17), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_14 ( .A(A[14]), .B(n4), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n5), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n8), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n9), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n3), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XNOR3X2M U1 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(DIFF[21]) );
  XNOR2X2M U2 ( .A(n18), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U3 ( .A(B[17]), .Y(n2) );
  INVX2M U4 ( .A(B[15]), .Y(n3) );
  INVX2M U5 ( .A(B[6]), .Y(n12) );
  INVX2M U6 ( .A(B[7]), .Y(n11) );
  INVX2M U7 ( .A(B[8]), .Y(n10) );
  INVX2M U8 ( .A(B[9]), .Y(n9) );
  INVX2M U9 ( .A(B[10]), .Y(n8) );
  INVX2M U10 ( .A(B[11]), .Y(n7) );
  INVX2M U11 ( .A(B[12]), .Y(n6) );
  INVX2M U12 ( .A(B[13]), .Y(n5) );
  INVX2M U13 ( .A(B[14]), .Y(n4) );
  NAND2X2M U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U15 ( .A(B[1]), .Y(n17) );
  INVX2M U16 ( .A(A[0]), .Y(n1) );
  INVX2M U17 ( .A(B[2]), .Y(n16) );
  INVX2M U18 ( .A(B[3]), .Y(n15) );
  INVX2M U19 ( .A(B[4]), .Y(n14) );
  INVX2M U20 ( .A(B[5]), .Y(n13) );
  INVX2M U21 ( .A(B[0]), .Y(n18) );
endmodule


module up4_filter_3_DW01_add_8 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [21:6] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(A[1]), .A1N(B[1]), .B0(n9), .Y(n7) );
  OAI211X1M U10 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n9) );
endmodule


module up4_filter_3_DW01_add_15 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[3]), .Y(n3) );
  XNOR2X2M U4 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
endmodule


module up4_filter_3_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  INVX2M U2 ( .A(A[3]), .Y(n4) );
  BUFX2M U3 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X2M U4 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  BUFX2M U5 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_3_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_3_DW01_add_12 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX1M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXLM U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X1M U1 ( .A(A[1]), .B(B[1]), .Y(n7) );
  OAI2BB1X1M U2 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U4 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U6 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U8 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U9 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
endmodule


module up4_filter_test_1 ( clk, rst_n, in_data, b0, b1, b2, b3, test_si, 
        test_so, test_se );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n, test_si, test_se;
  output test_so;
  wire   x_n3_14_, x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_,
         x_n3_7_, x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_,
         x_n3_0_, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N99, N98, N97, N96, N95,
         N94, N93, N92, N91, N154, N153, N152, N151, N150, N149, N148, N147,
         N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136,
         N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122,
         N121, N120, N119, N118, N117, N116, N115, N114, N113, N110, N109,
         N108, N107, N106, N105, N104, N103, N102, N101, N100, N327, N326,
         N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315,
         N314, N313, N312, N311, N310, N309, N308, N283, N282, N281, N280,
         N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269,
         N268, N267, N9, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79,
         N78, N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66,
         N65, N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53,
         N52, N51, N50, N5, N49, N48, N47, N46, N45, N44, N4, N38, N37, N36,
         N35, N34, N33, N32, N31, N30, N3, N29, N28, N27, N26, N25, N24, N23,
         N22, N21, N20, N2, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10,
         N1, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252,
         N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N240,
         N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N174, N173, N172, N171,
         N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160,
         N159, N158, r116_carry_6_, r116_carry_7_, r116_carry_8_,
         r116_carry_9_, r116_carry_10_, r116_carry_11_, r116_carry_12_,
         r116_carry_13_, r116_carry_14_, r116_carry_15_, r116_carry_16_,
         r116_carry_17_, r116_carry_18_, r116_carry_19_,
         add_2_root_add_0_root_add_34_4_carry_6_,
         add_2_root_add_0_root_add_34_4_carry_7_,
         add_2_root_add_0_root_add_34_4_carry_8_,
         add_2_root_add_0_root_add_34_4_carry_9_,
         add_2_root_add_0_root_add_34_4_carry_10_,
         add_2_root_add_0_root_add_34_4_carry_11_,
         add_2_root_add_0_root_add_34_4_carry_12_,
         add_2_root_add_0_root_add_34_4_carry_13_,
         add_2_root_add_0_root_add_34_4_carry_14_,
         add_2_root_add_0_root_add_34_4_carry_15_,
         add_2_root_add_0_root_add_34_4_carry_16_,
         add_2_root_add_0_root_add_34_4_carry_17_,
         add_2_root_add_0_root_add_34_4_carry_18_,
         add_2_root_add_0_root_add_34_4_carry_19_,
         add_3_root_add_0_root_add_34_4_carry_5_,
         add_3_root_add_0_root_add_34_4_carry_6_,
         add_3_root_add_0_root_add_34_4_carry_7_,
         add_3_root_add_0_root_add_34_4_carry_8_,
         add_3_root_add_0_root_add_34_4_carry_9_,
         add_3_root_add_0_root_add_34_4_carry_10_,
         add_3_root_add_0_root_add_34_4_carry_11_,
         add_3_root_add_0_root_add_34_4_carry_12_,
         add_3_root_add_0_root_add_34_4_carry_13_,
         add_3_root_add_0_root_add_34_4_carry_14_,
         add_3_root_add_0_root_add_34_4_carry_15_,
         add_3_root_add_0_root_add_34_4_carry_16_,
         add_3_root_add_0_root_add_34_4_carry_17_,
         add_3_root_add_0_root_add_34_4_carry_18_,
         add_3_root_add_42_4_carry_5_, add_3_root_add_42_4_carry_6_,
         add_3_root_add_42_4_carry_7_, add_3_root_add_42_4_carry_8_,
         add_3_root_add_42_4_carry_9_, add_3_root_add_42_4_carry_10_,
         add_3_root_add_42_4_carry_11_, add_3_root_add_42_4_carry_12_,
         add_3_root_add_42_4_carry_13_, add_3_root_add_42_4_carry_14_,
         add_3_root_add_42_4_carry_15_, add_3_root_add_42_4_carry_16_,
         add_3_root_add_42_4_carry_17_, add_3_root_add_42_4_carry_18_,
         add_5_root_add_38_6_carry_4_, add_5_root_add_38_6_carry_5_,
         add_5_root_add_38_6_carry_6_, add_5_root_add_38_6_carry_7_,
         add_5_root_add_38_6_carry_8_, add_5_root_add_38_6_carry_9_,
         add_5_root_add_38_6_carry_10_, add_5_root_add_38_6_carry_11_,
         add_5_root_add_38_6_carry_12_, add_5_root_add_38_6_carry_13_,
         add_5_root_add_38_6_carry_14_, add_5_root_add_38_6_carry_15_,
         add_5_root_add_38_6_carry_16_, add_5_root_add_38_6_carry_17_, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n129,
         n130, n131, n132, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32;
  wire   [15:2] x_n1;
  wire   [15:2] x_n2;
  wire   [15:1] add_3_root_sub_0_root_add_30_3_carry;

  SDFFRQX2M x_n3_reg_14_ ( .D(x_n2[14]), .SI(x_n3_13_), .SE(n132), .CK(clk), 
        .RN(n58), .Q(x_n3_14_) );
  SDFFRQX2M x_n3_reg_13_ ( .D(x_n2[13]), .SI(x_n3_12_), .SE(n131), .CK(clk), 
        .RN(n58), .Q(x_n3_13_) );
  SDFFRQX2M x_n3_reg_12_ ( .D(x_n2[12]), .SI(x_n3_11_), .SE(n130), .CK(clk), 
        .RN(n58), .Q(x_n3_12_) );
  SDFFRQX2M x_n3_reg_11_ ( .D(x_n2[11]), .SI(x_n3_10_), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n3_11_) );
  SDFFRQX2M x_n3_reg_4_ ( .D(x_n2[4]), .SI(x_n3_3_), .SE(n131), .CK(clk), .RN(
        n60), .Q(x_n3_4_) );
  SDFFRQX2M x_n3_reg_10_ ( .D(x_n2[10]), .SI(x_n3_9_), .SE(n130), .CK(clk), 
        .RN(n59), .Q(x_n3_10_) );
  SDFFRQX2M x_n3_reg_9_ ( .D(x_n2[9]), .SI(x_n3_8_), .SE(n132), .CK(clk), .RN(
        n59), .Q(x_n3_9_) );
  SDFFRQX2M x_n3_reg_8_ ( .D(x_n2[8]), .SI(x_n3_7_), .SE(n131), .CK(clk), .RN(
        n59), .Q(x_n3_8_) );
  SDFFRQX2M x_n3_reg_7_ ( .D(x_n2[7]), .SI(x_n3_6_), .SE(n130), .CK(clk), .RN(
        n59), .Q(x_n3_7_) );
  SDFFRQX2M x_n1_reg_15_ ( .D(N283), .SI(x_n1[14]), .SE(n132), .CK(clk), .RN(
        n57), .Q(x_n1[15]) );
  SDFFRQX2M x_n2_reg_15_ ( .D(N196), .SI(x_n2[14]), .SE(n131), .CK(clk), .RN(
        n58), .Q(x_n2[15]) );
  SDFFRQX2M x_n1_reg_14_ ( .D(in_data[14]), .SI(x_n1[13]), .SE(n130), .CK(clk), 
        .RN(n57), .Q(x_n1[14]) );
  SDFFRQX2M x_n1_reg_13_ ( .D(in_data[13]), .SI(x_n1[12]), .SE(n132), .CK(clk), 
        .RN(n57), .Q(x_n1[13]) );
  SDFFRQX2M x_n2_reg_14_ ( .D(x_n1[14]), .SI(x_n2[13]), .SE(n131), .CK(clk), 
        .RN(n58), .Q(x_n2[14]) );
  SDFFRQX2M x_n2_reg_13_ ( .D(x_n1[13]), .SI(x_n2[12]), .SE(n130), .CK(clk), 
        .RN(n58), .Q(x_n2[13]) );
  SDFFRQX2M x_n3_reg_3_ ( .D(x_n2[3]), .SI(x_n3_2_), .SE(n132), .CK(clk), .RN(
        n60), .Q(x_n3_3_) );
  SDFFRQX2M x_n3_reg_2_ ( .D(n49), .SI(x_n3_1_), .SE(n131), .CK(clk), .RN(n60), 
        .Q(x_n3_2_) );
  SDFFRQX2M x_n3_reg_1_ ( .D(N92), .SI(x_n3_0_), .SE(n130), .CK(clk), .RN(n60), 
        .Q(x_n3_1_) );
  SDFFRQX2M x_n3_reg_0_ ( .D(N91), .SI(n53), .SE(n132), .CK(clk), .RN(n60), 
        .Q(x_n3_0_) );
  SDFFRQX2M x_n3_reg_6_ ( .D(x_n2[6]), .SI(x_n3_5_), .SE(n131), .CK(clk), .RN(
        n59), .Q(x_n3_6_) );
  SDFFRQX2M x_n3_reg_5_ ( .D(x_n2[5]), .SI(x_n3_4_), .SE(n130), .CK(clk), .RN(
        n60), .Q(x_n3_5_) );
  SDFFRQX2M x_n1_reg_12_ ( .D(in_data[12]), .SI(x_n1[11]), .SE(n132), .CK(clk), 
        .RN(n57), .Q(x_n1[12]) );
  SDFFRQX2M x_n1_reg_11_ ( .D(in_data[11]), .SI(x_n1[10]), .SE(n131), .CK(clk), 
        .RN(n57), .Q(x_n1[11]) );
  SDFFRQX2M x_n1_reg_10_ ( .D(in_data[10]), .SI(x_n1[9]), .SE(n130), .CK(clk), 
        .RN(n57), .Q(x_n1[10]) );
  SDFFRQX2M x_n1_reg_9_ ( .D(in_data[9]), .SI(x_n1[8]), .SE(n132), .CK(clk), 
        .RN(n57), .Q(x_n1[9]) );
  SDFFRQX2M x_n2_reg_12_ ( .D(x_n1[12]), .SI(x_n2[11]), .SE(n131), .CK(clk), 
        .RN(n58), .Q(x_n2[12]) );
  SDFFRQX2M x_n2_reg_11_ ( .D(x_n1[11]), .SI(x_n2[10]), .SE(n130), .CK(clk), 
        .RN(n59), .Q(x_n2[11]) );
  SDFFRQX2M x_n2_reg_10_ ( .D(x_n1[10]), .SI(x_n2[9]), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n2[10]) );
  SDFFRQX2M x_n2_reg_9_ ( .D(x_n1[9]), .SI(x_n2[8]), .SE(n131), .CK(clk), .RN(
        n59), .Q(x_n2[9]) );
  SDFFRQX2M x_n1_reg_8_ ( .D(in_data[8]), .SI(x_n1[7]), .SE(n130), .CK(clk), 
        .RN(n57), .Q(x_n1[8]) );
  SDFFRQX2M x_n1_reg_7_ ( .D(in_data[7]), .SI(x_n1[6]), .SE(n132), .CK(clk), 
        .RN(n57), .Q(x_n1[7]) );
  SDFFRQX2M x_n1_reg_6_ ( .D(in_data[6]), .SI(x_n1[5]), .SE(n131), .CK(clk), 
        .RN(n57), .Q(x_n1[6]) );
  SDFFRQX2M x_n1_reg_5_ ( .D(in_data[5]), .SI(x_n1[4]), .SE(n130), .CK(clk), 
        .RN(n57), .Q(x_n1[5]) );
  SDFFRQX2M x_n2_reg_8_ ( .D(x_n1[8]), .SI(x_n2[7]), .SE(n132), .CK(clk), .RN(
        n59), .Q(x_n2[8]) );
  SDFFRQX2M x_n2_reg_7_ ( .D(x_n1[7]), .SI(x_n2[6]), .SE(n131), .CK(clk), .RN(
        n59), .Q(x_n2[7]) );
  SDFFRQX2M x_n2_reg_6_ ( .D(x_n1[6]), .SI(x_n2[5]), .SE(n130), .CK(clk), .RN(
        n59), .Q(x_n2[6]) );
  SDFFRQX2M x_n2_reg_5_ ( .D(x_n1[5]), .SI(x_n2[4]), .SE(n132), .CK(clk), .RN(
        n60), .Q(x_n2[5]) );
  SDFFRQX2M x_n1_reg_2_ ( .D(in_data[2]), .SI(n51), .SE(n131), .CK(clk), .RN(
        n58), .Q(x_n1[2]) );
  SDFFRQX2M x_n1_reg_1_ ( .D(in_data[1]), .SI(n50), .SE(n130), .CK(clk), .RN(
        n58), .Q(N137) );
  SDFFRQX2M x_n1_reg_0_ ( .D(in_data[0]), .SI(test_si), .SE(n132), .CK(clk), 
        .RN(n58), .Q(N136) );
  SDFFRQX2M x_n2_reg_2_ ( .D(n52), .SI(N92), .SE(n131), .CK(clk), .RN(n60), 
        .Q(x_n2[2]) );
  SDFFRQX2M x_n2_reg_0_ ( .D(n50), .SI(N196), .SE(n130), .CK(clk), .RN(n60), 
        .Q(N91) );
  SDFFRQX2M x_n1_reg_4_ ( .D(in_data[4]), .SI(x_n1[3]), .SE(n132), .CK(clk), 
        .RN(n57), .Q(x_n1[4]) );
  SDFFRQX2M x_n1_reg_3_ ( .D(in_data[3]), .SI(n52), .SE(n131), .CK(clk), .RN(
        n58), .Q(x_n1[3]) );
  SDFFRQX2M x_n2_reg_4_ ( .D(x_n1[4]), .SI(x_n2[3]), .SE(n130), .CK(clk), .RN(
        n60), .Q(x_n2[4]) );
  SDFFRQX2M x_n2_reg_3_ ( .D(x_n1[3]), .SI(n49), .SE(n132), .CK(clk), .RN(n60), 
        .Q(x_n2[3]) );
  SDFFRQX2M x_n3_reg_15_ ( .D(n53), .SI(x_n3_14_), .SE(n131), .CK(clk), .RN(
        n58), .Q(test_so) );
  SDFFRQX2M x_n2_reg_1_ ( .D(n51), .SI(N91), .SE(n130), .CK(clk), .RN(n60), 
        .Q(N92) );
  ADDFX1M U51 ( .A(in_data[14]), .B(N283), .CI(add_5_root_add_38_6_carry_17_), 
        .CO(N173), .S(N172) );
  BUFX2M U52 ( .A(in_data[15]), .Y(N174) );
  INVX2M U53 ( .A(n54), .Y(n53) );
  BUFX2M U54 ( .A(n56), .Y(n60) );
  BUFX2M U55 ( .A(n56), .Y(n59) );
  BUFX2M U56 ( .A(n55), .Y(n58) );
  BUFX2M U57 ( .A(n55), .Y(n57) );
  ADDFX2M U58 ( .A(in_data[13]), .B(N174), .CI(add_5_root_add_38_6_carry_16_), 
        .CO(add_5_root_add_38_6_carry_17_), .S(N171) );
  ADDFX2M U59 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_5_root_add_38_6_carry_12_), .CO(add_5_root_add_38_6_carry_13_), 
        .S(N167) );
  ADDFX2M U60 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_5_root_add_38_6_carry_13_), .CO(add_5_root_add_38_6_carry_14_), 
        .S(N168) );
  ADDFX2M U61 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_5_root_add_38_6_carry_14_), .CO(add_5_root_add_38_6_carry_15_), 
        .S(N169) );
  ADDFX2M U62 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_5_root_add_38_6_carry_15_), .CO(add_5_root_add_38_6_carry_16_), 
        .S(N170) );
  BUFX2M U63 ( .A(in_data[15]), .Y(N283) );
  ADDFX2M U64 ( .A(in_data[13]), .B(N283), .CI(add_3_root_add_42_4_carry_17_), 
        .CO(add_3_root_add_42_4_carry_18_), .S(N280) );
  ADDFX2M U65 ( .A(in_data[14]), .B(N283), .CI(add_3_root_add_42_4_carry_18_), 
        .CO(N282), .S(N281) );
  ADDFX2M U66 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_5_root_add_38_6_carry_10_), .CO(add_5_root_add_38_6_carry_11_), 
        .S(N165) );
  ADDFX2M U67 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_5_root_add_38_6_carry_11_), .CO(add_5_root_add_38_6_carry_12_), 
        .S(N166) );
  ADDFX2M U68 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_3_root_add_42_4_carry_12_), .CO(add_3_root_add_42_4_carry_13_), 
        .S(N275) );
  ADDFX2M U69 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_3_root_add_42_4_carry_13_), .CO(add_3_root_add_42_4_carry_14_), 
        .S(N276) );
  ADDFX2M U70 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_3_root_add_42_4_carry_14_), .CO(add_3_root_add_42_4_carry_15_), 
        .S(N277) );
  ADDFX2M U71 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_3_root_add_42_4_carry_15_), .CO(add_3_root_add_42_4_carry_16_), 
        .S(N278) );
  ADDFX2M U72 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_3_root_add_42_4_carry_16_), .CO(add_3_root_add_42_4_carry_17_), 
        .S(N279) );
  ADDFX2M U73 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_5_root_add_38_6_carry_9_), .CO(add_5_root_add_38_6_carry_10_), .S(
        N164) );
  ADDFX2M U74 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_3_root_add_42_4_carry_10_), .CO(add_3_root_add_42_4_carry_11_), 
        .S(N273) );
  ADDFX2M U75 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_5_root_add_38_6_carry_4_), .CO(add_5_root_add_38_6_carry_5_), .S(
        N159) );
  ADDFX2M U76 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_3_root_add_42_4_carry_5_), .CO(add_3_root_add_42_4_carry_6_), .S(
        N268) );
  ADDFX2M U77 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_5_root_add_38_6_carry_5_), .CO(add_5_root_add_38_6_carry_6_), .S(
        N160) );
  ADDFX2M U78 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_5_root_add_38_6_carry_6_), .CO(add_5_root_add_38_6_carry_7_), .S(
        N161) );
  ADDFX2M U79 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_3_root_add_42_4_carry_6_), .CO(add_3_root_add_42_4_carry_7_), .S(
        N269) );
  ADDFX2M U80 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_5_root_add_38_6_carry_7_), .CO(add_5_root_add_38_6_carry_8_), .S(
        N162) );
  ADDFX2M U81 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_3_root_add_42_4_carry_7_), .CO(add_3_root_add_42_4_carry_8_), .S(
        N270) );
  ADDFX2M U82 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_5_root_add_38_6_carry_8_), .CO(add_5_root_add_38_6_carry_9_), .S(
        N163) );
  ADDFX2M U83 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_3_root_add_42_4_carry_8_), .CO(add_3_root_add_42_4_carry_9_), .S(
        N271) );
  ADDFX2M U84 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_3_root_add_42_4_carry_9_), .CO(add_3_root_add_42_4_carry_10_), .S(
        N272) );
  ADDFX2M U85 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_3_root_add_42_4_carry_11_), .CO(add_3_root_add_42_4_carry_12_), 
        .S(N274) );
  BUFX2M U86 ( .A(rst_n), .Y(n56) );
  BUFX2M U87 ( .A(rst_n), .Y(n55) );
  ADDFX2M U88 ( .A(n52), .B(n49), .CI(add_3_root_sub_0_root_add_30_3_carry[2]), 
        .CO(add_3_root_sub_0_root_add_30_3_carry[3]), .S(N25) );
  ADDFX2M U89 ( .A(x_n2[15]), .B(n53), .CI(N109), .CO(N110) );
  ADDFX2M U90 ( .A(x_n2[15]), .B(n53), .CI(N108), .CO(N109) );
  BUFX2M U91 ( .A(N137), .Y(n51) );
  BUFX2M U92 ( .A(x_n2[2]), .Y(n49) );
  BUFX2M U93 ( .A(N136), .Y(n50) );
  BUFX2M U94 ( .A(x_n1[2]), .Y(n52) );
  ADDFX2M U95 ( .A(n51), .B(N92), .CI(add_3_root_sub_0_root_add_30_3_carry[1]), 
        .CO(add_3_root_sub_0_root_add_30_3_carry[2]), .S(N24) );
  ADDFX2M U96 ( .A(x_n1[3]), .B(x_n2[3]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[3]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[4]), .S(N26) );
  ADDFX2M U97 ( .A(x_n1[4]), .B(x_n2[4]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[4]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[5]), .S(N27) );
  ADDFX2M U98 ( .A(x_n1[5]), .B(x_n2[5]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[5]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[6]), .S(N28) );
  ADDFX2M U99 ( .A(x_n1[6]), .B(x_n2[6]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[6]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[7]), .S(N29) );
  ADDFX2M U100 ( .A(x_n1[7]), .B(x_n2[7]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[7]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[8]), .S(N30) );
  ADDFX2M U101 ( .A(x_n1[8]), .B(x_n2[8]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[8]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[9]), .S(N31) );
  ADDFX2M U102 ( .A(x_n1[9]), .B(x_n2[9]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[9]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[10]), .S(N32) );
  ADDFX2M U103 ( .A(x_n1[10]), .B(x_n2[10]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[10]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[11]), .S(N33) );
  ADDFX2M U104 ( .A(x_n1[11]), .B(x_n2[11]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[11]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[12]), .S(N34) );
  ADDFX2M U105 ( .A(x_n1[12]), .B(x_n2[12]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[12]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[13]), .S(N35) );
  ADDFX2M U106 ( .A(x_n1[13]), .B(x_n2[13]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[13]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[14]), .S(N36) );
  ADDFX2M U107 ( .A(x_n1[14]), .B(x_n2[14]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[14]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[15]), .S(N37) );
  ADDFX2M U108 ( .A(N92), .B(x_n2[3]), .CI(
        add_3_root_add_0_root_add_34_4_carry_5_), .CO(
        add_3_root_add_0_root_add_34_4_carry_6_), .S(N94) );
  ADDFX2M U109 ( .A(n52), .B(x_n1[4]), .CI(r116_carry_7_), .CO(r116_carry_8_), 
        .S(N182) );
  ADDFX2M U110 ( .A(x_n1[10]), .B(x_n1[12]), .CI(r116_carry_15_), .CO(
        r116_carry_16_), .S(N190) );
  ADDFX2M U111 ( .A(x_n1[13]), .B(N196), .CI(r116_carry_18_), .CO(
        r116_carry_19_), .S(N193) );
  ADDFX2M U112 ( .A(x_n1[14]), .B(N154), .CI(r116_carry_19_), .CO(N195), .S(
        N194) );
  ADDFX2M U113 ( .A(n51), .B(x_n1[3]), .CI(r116_carry_6_), .CO(r116_carry_7_), 
        .S(N181) );
  ADDFX2M U114 ( .A(n49), .B(x_n2[4]), .CI(
        add_3_root_add_0_root_add_34_4_carry_6_), .CO(
        add_3_root_add_0_root_add_34_4_carry_7_), .S(N95) );
  ADDFX2M U115 ( .A(x_n2[3]), .B(x_n2[5]), .CI(
        add_3_root_add_0_root_add_34_4_carry_7_), .CO(
        add_3_root_add_0_root_add_34_4_carry_8_), .S(N96) );
  ADDFX2M U116 ( .A(x_n2[4]), .B(x_n2[6]), .CI(
        add_3_root_add_0_root_add_34_4_carry_8_), .CO(
        add_3_root_add_0_root_add_34_4_carry_9_), .S(N97) );
  ADDFX2M U117 ( .A(x_n2[14]), .B(n53), .CI(
        add_3_root_add_0_root_add_34_4_carry_18_), .CO(N108), .S(N107) );
  ADDFX2M U118 ( .A(x_n1[3]), .B(x_n1[5]), .CI(r116_carry_8_), .CO(
        r116_carry_9_), .S(N183) );
  ADDFX2M U119 ( .A(x_n1[4]), .B(x_n1[6]), .CI(r116_carry_9_), .CO(
        r116_carry_10_), .S(N184) );
  ADDFX2M U120 ( .A(x_n2[5]), .B(x_n2[7]), .CI(
        add_3_root_add_0_root_add_34_4_carry_9_), .CO(
        add_3_root_add_0_root_add_34_4_carry_10_), .S(N98) );
  ADDFX2M U121 ( .A(x_n1[5]), .B(x_n1[7]), .CI(r116_carry_10_), .CO(
        r116_carry_11_), .S(N185) );
  ADDFX2M U122 ( .A(x_n2[6]), .B(x_n2[8]), .CI(
        add_3_root_add_0_root_add_34_4_carry_10_), .CO(
        add_3_root_add_0_root_add_34_4_carry_11_), .S(N99) );
  ADDFX2M U123 ( .A(x_n1[6]), .B(x_n1[8]), .CI(r116_carry_11_), .CO(
        r116_carry_12_), .S(N186) );
  ADDFX2M U124 ( .A(x_n2[7]), .B(x_n2[9]), .CI(
        add_3_root_add_0_root_add_34_4_carry_11_), .CO(
        add_3_root_add_0_root_add_34_4_carry_12_), .S(N100) );
  ADDFX2M U125 ( .A(x_n1[7]), .B(x_n1[9]), .CI(r116_carry_12_), .CO(
        r116_carry_13_), .S(N187) );
  ADDFX2M U126 ( .A(x_n2[8]), .B(x_n2[10]), .CI(
        add_3_root_add_0_root_add_34_4_carry_12_), .CO(
        add_3_root_add_0_root_add_34_4_carry_13_), .S(N101) );
  ADDFX2M U127 ( .A(x_n1[8]), .B(x_n1[10]), .CI(r116_carry_13_), .CO(
        r116_carry_14_), .S(N188) );
  ADDFX2M U128 ( .A(x_n2[9]), .B(x_n2[11]), .CI(
        add_3_root_add_0_root_add_34_4_carry_13_), .CO(
        add_3_root_add_0_root_add_34_4_carry_14_), .S(N102) );
  ADDFX2M U129 ( .A(x_n1[9]), .B(x_n1[11]), .CI(r116_carry_14_), .CO(
        r116_carry_15_), .S(N189) );
  ADDFX2M U130 ( .A(x_n2[10]), .B(x_n2[12]), .CI(
        add_3_root_add_0_root_add_34_4_carry_14_), .CO(
        add_3_root_add_0_root_add_34_4_carry_15_), .S(N103) );
  ADDFX2M U131 ( .A(x_n2[11]), .B(x_n2[13]), .CI(
        add_3_root_add_0_root_add_34_4_carry_15_), .CO(
        add_3_root_add_0_root_add_34_4_carry_16_), .S(N104) );
  ADDFX2M U132 ( .A(x_n1[11]), .B(x_n1[13]), .CI(r116_carry_16_), .CO(
        r116_carry_17_), .S(N191) );
  ADDFX2M U133 ( .A(x_n2[12]), .B(x_n2[14]), .CI(
        add_3_root_add_0_root_add_34_4_carry_16_), .CO(
        add_3_root_add_0_root_add_34_4_carry_17_), .S(N105) );
  ADDFX2M U134 ( .A(x_n1[12]), .B(x_n1[14]), .CI(r116_carry_17_), .CO(
        r116_carry_18_), .S(N192) );
  ADDFX2M U135 ( .A(x_n2[13]), .B(n53), .CI(
        add_3_root_add_0_root_add_34_4_carry_17_), .CO(
        add_3_root_add_0_root_add_34_4_carry_18_), .S(N106) );
  BUFX2M U136 ( .A(x_n1[15]), .Y(N196) );
  ADDFX2M U137 ( .A(x_n1[13]), .B(N154), .CI(
        add_2_root_add_0_root_add_34_4_carry_18_), .CO(
        add_2_root_add_0_root_add_34_4_carry_19_), .S(N151) );
  ADDFX2M U138 ( .A(x_n1[14]), .B(N196), .CI(
        add_2_root_add_0_root_add_34_4_carry_19_), .CO(N153), .S(N152) );
  ADDFX2M U139 ( .A(n51), .B(x_n1[3]), .CI(
        add_2_root_add_0_root_add_34_4_carry_6_), .CO(
        add_2_root_add_0_root_add_34_4_carry_7_), .S(N139) );
  ADDFX2M U140 ( .A(n52), .B(x_n1[4]), .CI(
        add_2_root_add_0_root_add_34_4_carry_7_), .CO(
        add_2_root_add_0_root_add_34_4_carry_8_), .S(N140) );
  ADDFX2M U141 ( .A(x_n1[3]), .B(x_n1[5]), .CI(
        add_2_root_add_0_root_add_34_4_carry_8_), .CO(
        add_2_root_add_0_root_add_34_4_carry_9_), .S(N141) );
  BUFX2M U142 ( .A(x_n1[15]), .Y(N154) );
  ADDFX2M U143 ( .A(x_n1[4]), .B(x_n1[6]), .CI(
        add_2_root_add_0_root_add_34_4_carry_9_), .CO(
        add_2_root_add_0_root_add_34_4_carry_10_), .S(N142) );
  ADDFX2M U144 ( .A(x_n1[5]), .B(x_n1[7]), .CI(
        add_2_root_add_0_root_add_34_4_carry_10_), .CO(
        add_2_root_add_0_root_add_34_4_carry_11_), .S(N143) );
  ADDFX2M U145 ( .A(x_n1[6]), .B(x_n1[8]), .CI(
        add_2_root_add_0_root_add_34_4_carry_11_), .CO(
        add_2_root_add_0_root_add_34_4_carry_12_), .S(N144) );
  ADDFX2M U146 ( .A(x_n1[7]), .B(x_n1[9]), .CI(
        add_2_root_add_0_root_add_34_4_carry_12_), .CO(
        add_2_root_add_0_root_add_34_4_carry_13_), .S(N145) );
  ADDFX2M U147 ( .A(x_n1[8]), .B(x_n1[10]), .CI(
        add_2_root_add_0_root_add_34_4_carry_13_), .CO(
        add_2_root_add_0_root_add_34_4_carry_14_), .S(N146) );
  ADDFX2M U148 ( .A(x_n1[9]), .B(x_n1[11]), .CI(
        add_2_root_add_0_root_add_34_4_carry_14_), .CO(
        add_2_root_add_0_root_add_34_4_carry_15_), .S(N147) );
  ADDFX2M U149 ( .A(x_n1[10]), .B(x_n1[12]), .CI(
        add_2_root_add_0_root_add_34_4_carry_15_), .CO(
        add_2_root_add_0_root_add_34_4_carry_16_), .S(N148) );
  ADDFX2M U150 ( .A(x_n1[11]), .B(x_n1[13]), .CI(
        add_2_root_add_0_root_add_34_4_carry_16_), .CO(
        add_2_root_add_0_root_add_34_4_carry_17_), .S(N149) );
  ADDFX2M U151 ( .A(x_n1[12]), .B(x_n1[14]), .CI(
        add_2_root_add_0_root_add_34_4_carry_17_), .CO(
        add_2_root_add_0_root_add_34_4_carry_18_), .S(N150) );
  INVX2M U152 ( .A(x_n2[15]), .Y(n54) );
  AND2X1M U153 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_5_root_add_38_6_carry_4_) );
  CLKXOR2X2M U154 ( .A(in_data[2]), .B(in_data[0]), .Y(N158) );
  AND2X1M U155 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_3_root_add_42_4_carry_5_) );
  CLKXOR2X2M U156 ( .A(in_data[2]), .B(in_data[0]), .Y(N267) );
  AND2X1M U157 ( .A(n50), .B(n52), .Y(r116_carry_6_) );
  CLKXOR2X2M U158 ( .A(n52), .B(n50), .Y(N180) );
  AND2X1M U159 ( .A(n50), .B(N91), .Y(add_3_root_sub_0_root_add_30_3_carry[1])
         );
  CLKXOR2X2M U160 ( .A(N91), .B(n50), .Y(N23) );
  AND2X1M U161 ( .A(n50), .B(n52), .Y(add_2_root_add_0_root_add_34_4_carry_6_)
         );
  CLKXOR2X2M U162 ( .A(n52), .B(n50), .Y(N138) );
  AND2X1M U163 ( .A(N91), .B(n49), .Y(add_3_root_add_0_root_add_34_4_carry_5_)
         );
  CLKXOR2X2M U164 ( .A(n49), .B(N91), .Y(N93) );
  XOR3XLM U165 ( .A(add_3_root_sub_0_root_add_30_3_carry[15]), .B(n53), .C(
        N154), .Y(N38) );
  XOR3XLM U166 ( .A(n54), .B(N154), .C(n61), .Y(N44) );
  AOI222X1M U167 ( .A0(add_3_root_sub_0_root_add_30_3_carry[15]), .A1(N196), 
        .B0(add_3_root_sub_0_root_add_30_3_carry[15]), .B1(n53), .C0(n53), 
        .C1(N154), .Y(n61) );
  INVXLM U200 ( .A(test_se), .Y(n129) );
  INVXLM U201 ( .A(n129), .Y(n130) );
  INVXLM U202 ( .A(n129), .Y(n131) );
  INVXLM U203 ( .A(n129), .Y(n132) );
  up4_filter_3_DW01_add_2 add_1_root_add_0_root_add_34_4 ( .A({N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, 1'b0, 1'b0}), .B({N154, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, n51, n50, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}) );
  up4_filter_3_DW01_add_1 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({N283, N283, N283, 
        N283, N283, in_data[14:0], 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  up4_filter_3_DW01_add_6 add_1_root_add_0_root_add_42_4 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], x_n2[15:3], n49, N92, N91, 1'b0, 1'b0}), 
        .B({N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, n51, n50, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({N327, N326, N325, N324, N323, N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10}) );
  up4_filter_3_DW01_add_5 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({N283, N283, N282, 
        N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, N268, N267, in_data[1:0], 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}) );
  up4_filter_3_DW01_add_11 add_4_root_sub_0_root_add_30_3 ( .A({test_so, 
        test_so, test_so, test_so, test_so, test_so, test_so, x_n3_14_, 
        x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_, x_n3_7_, 
        x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_, x_n3_0_}), .B({
        N154, N196, x_n1[14:3], n52, n51, n50, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45}) );
  up4_filter_3_DW01_add_10 add_2_root_sub_0_root_add_30_3 ( .A({x_n2[15], 
        x_n2[15:3], n49, N92, N91, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N66, 
        N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, 
        N51, N50, N49, N48, N47, N46, N45}), .CI(1'b0), .SUM({N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1}) );
  up4_filter_3_DW01_sub_0 sub_1_root_sub_0_root_add_30_3 ( .A({N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1}), .B({N44, N44, N44, N44, N44, N44, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), .CI(1'b0), .DIFF({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, 
        N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_3_DW01_add_8 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({N174, N283, N283, N283, N283, N283, 
        N283, in_data[14:0]}), .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22}) );
  up4_filter_3_DW01_add_15 add_3_root_add_0_root_add_38_6 ( .A({N196, N154, 
        N196, N154, N196, x_n1[14:3], n52, n51, n50, 1'b0, 1'b0}), .B({n53, 
        n53, n53, n53, x_n2[14:3], n49, N92, N91, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24}) );
  up4_filter_3_DW01_add_14 add_2_root_add_0_root_add_38_6 ( .A({x_n2[15], 
        x_n2[15], n53, n53, n53, n53, x_n2[14:3], n49, N92, N91, 1'b0}), .B({
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, n51, n50, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, 
        N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        SYNOPSYS_UNCONNECTED_25}) );
  up4_filter_3_DW01_add_13 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED_26}) );
  up4_filter_3_DW01_add_12 add_0_root_add_0_root_add_38_6 ( .A({N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, 1'b0}), .B({N174, N174, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, in_data[1:0], 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}) );
endmodule


module counter2bit_test_1 ( clk, reset, count, test_si, test_se );
  output [1:0] count;
  input clk, reset, test_si, test_se;
  wire   N2, n3;

  SDFFRQX2M count_reg_1_ ( .D(N2), .SI(n3), .SE(test_se), .CK(clk), .RN(reset), 
        .Q(count[1]) );
  SDFFRQX2M count_reg_0_ ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(count[0]) );
  INVX2M U5 ( .A(count[0]), .Y(n3) );
  CLKXOR2X2M U6 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_3 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  NAND2X2M U1 ( .A(n53), .B(n52), .Y(Y[15]) );
  AOI22X1M U2 ( .A0(I1[15]), .A1(n1), .B0(I0[15]), .B1(n38), .Y(n53) );
  AOI22X1M U3 ( .A0(I3[15]), .A1(n73), .B0(I2[15]), .B1(n72), .Y(n52) );
  NAND2X2M U4 ( .A(n65), .B(n64), .Y(Y[6]) );
  AOI22X1M U5 ( .A0(I1[6]), .A1(n1), .B0(I0[6]), .B1(n38), .Y(n65) );
  AOI22X1M U6 ( .A0(I3[6]), .A1(n73), .B0(I2[6]), .B1(n72), .Y(n64) );
  NAND2X2M U7 ( .A(n67), .B(n66), .Y(Y[7]) );
  AOI22X1M U8 ( .A0(I1[7]), .A1(n1), .B0(I0[7]), .B1(n38), .Y(n67) );
  AOI22X1M U9 ( .A0(I3[7]), .A1(n73), .B0(I2[7]), .B1(n72), .Y(n66) );
  NAND2X2M U10 ( .A(n69), .B(n68), .Y(Y[8]) );
  AOI22X1M U11 ( .A0(I1[8]), .A1(n1), .B0(I0[8]), .B1(n38), .Y(n69) );
  AOI22X1M U12 ( .A0(I3[8]), .A1(n73), .B0(I2[8]), .B1(n72), .Y(n68) );
  NAND2X2M U13 ( .A(n75), .B(n74), .Y(Y[9]) );
  AOI22X1M U14 ( .A0(I1[9]), .A1(n1), .B0(I0[9]), .B1(n38), .Y(n75) );
  AOI22X1M U15 ( .A0(I3[9]), .A1(n73), .B0(I2[9]), .B1(n72), .Y(n74) );
  NAND2X2M U16 ( .A(n43), .B(n42), .Y(Y[10]) );
  AOI22X1M U17 ( .A0(I1[10]), .A1(n1), .B0(I0[10]), .B1(n38), .Y(n43) );
  AOI22X1M U18 ( .A0(I3[10]), .A1(n73), .B0(I2[10]), .B1(n72), .Y(n42) );
  NAND2X2M U19 ( .A(n45), .B(n44), .Y(Y[11]) );
  AOI22X1M U20 ( .A0(I1[11]), .A1(n1), .B0(I0[11]), .B1(n38), .Y(n45) );
  AOI22X1M U21 ( .A0(I3[11]), .A1(n73), .B0(I2[11]), .B1(n72), .Y(n44) );
  NAND2X2M U22 ( .A(n47), .B(n46), .Y(Y[12]) );
  AOI22X1M U23 ( .A0(I1[12]), .A1(n1), .B0(I0[12]), .B1(n38), .Y(n47) );
  AOI22X1M U24 ( .A0(I3[12]), .A1(n73), .B0(I2[12]), .B1(n72), .Y(n46) );
  NAND2X2M U25 ( .A(n49), .B(n48), .Y(Y[13]) );
  AOI22X1M U26 ( .A0(I1[13]), .A1(n1), .B0(I0[13]), .B1(n38), .Y(n49) );
  AOI22X1M U27 ( .A0(I3[13]), .A1(n73), .B0(I2[13]), .B1(n72), .Y(n48) );
  NAND2X2M U28 ( .A(n51), .B(n50), .Y(Y[14]) );
  AOI22X1M U29 ( .A0(I1[14]), .A1(n1), .B0(I0[14]), .B1(n38), .Y(n51) );
  AOI22X1M U30 ( .A0(I3[14]), .A1(n73), .B0(I2[14]), .B1(n72), .Y(n50) );
  NAND2X2M U31 ( .A(n61), .B(n60), .Y(Y[4]) );
  AOI22X1M U32 ( .A0(I3[4]), .A1(n73), .B0(I2[4]), .B1(n72), .Y(n60) );
  AOI22X1M U33 ( .A0(I1[4]), .A1(n1), .B0(I0[4]), .B1(n38), .Y(n61) );
  NAND2X2M U34 ( .A(n63), .B(n62), .Y(Y[5]) );
  AOI22X1M U35 ( .A0(I3[5]), .A1(n73), .B0(I2[5]), .B1(n72), .Y(n62) );
  AOI22X1M U36 ( .A0(I1[5]), .A1(n1), .B0(I0[5]), .B1(n38), .Y(n63) );
  AOI22X1M U37 ( .A0(I3[1]), .A1(n73), .B0(I2[1]), .B1(n72), .Y(n54) );
  AOI22X1M U38 ( .A0(I1[1]), .A1(n1), .B0(I0[1]), .B1(n38), .Y(n55) );
  NAND2X2M U39 ( .A(n41), .B(n40), .Y(Y[0]) );
  AOI22X1M U40 ( .A0(I1[0]), .A1(n1), .B0(I0[0]), .B1(n38), .Y(n41) );
  AOI22X1M U41 ( .A0(I3[0]), .A1(n73), .B0(I2[0]), .B1(n72), .Y(n40) );
  NAND2X2M U42 ( .A(n57), .B(n56), .Y(Y[2]) );
  AOI22X1M U43 ( .A0(I1[2]), .A1(n1), .B0(I0[2]), .B1(n38), .Y(n57) );
  AOI22X1M U44 ( .A0(I3[2]), .A1(n73), .B0(I2[2]), .B1(n72), .Y(n56) );
  NAND2X2M U45 ( .A(n59), .B(n58), .Y(Y[3]) );
  AOI22X1M U46 ( .A0(I3[3]), .A1(n73), .B0(I2[3]), .B1(n72), .Y(n58) );
  AOI22X1M U47 ( .A0(I1[3]), .A1(n1), .B0(I0[3]), .B1(n38), .Y(n59) );
  NAND2X2M U48 ( .A(n55), .B(n54), .Y(Y[1]) );
  AND2X2M U49 ( .A(S[1]), .B(S[0]), .Y(n73) );
  AND2X2M U50 ( .A(S[1]), .B(n39), .Y(n72) );
  INVX2M U51 ( .A(S[0]), .Y(n39) );
  BUFX2M U52 ( .A(n71), .Y(n1) );
  NOR2X2M U53 ( .A(n39), .B(S[1]), .Y(n71) );
  BUFX2M U54 ( .A(n70), .Y(n38) );
  NOR2X2M U55 ( .A(S[0]), .B(S[1]), .Y(n70) );
endmodule


module FIR_test_0 ( clk, clk_3, clk_2, clk_1, clk_4, reset, data_in, out, 
        test_si, test_so, test_se );
  input [15:0] data_in;
  output [15:0] out;
  input clk, clk_3, clk_2, clk_1, clk_4, reset, test_si, test_se;
  output test_so;
  wire   SEL, odd_14_, odd_13_, odd_12_, odd_11_, odd_10_, odd_9_, odd_8_,
         odd_7_, odd_6_, odd_5_, odd_4_, odd_3_, odd_2_, odd_1_, odd_0_, n1,
         n2, n3, n4, n5, n6, n7;
  wire   [15:0] mux_out;
  wire   [15:0] even;
  wire   [15:0] b0;
  wire   [15:0] b1;
  wire   [15:0] b2;
  wire   [15:0] b3;
  wire   [1:0] count;
  wire   [15:0] out_comb4;
  wire   [15:0] B0;
  wire   [15:0] B1;
  wire   [15:0] B2;
  wire   [15:0] B3;
  wire   [1:0] Count;

  INVX2M U1 ( .A(n1), .Y(n4) );
  AO22X1M U2 ( .A0(even[0]), .A1(n1), .B0(odd_0_), .B1(n4), .Y(mux_out[0]) );
  AO22XLM U3 ( .A0(even[3]), .A1(n1), .B0(odd_3_), .B1(n4), .Y(mux_out[3]) );
  AO22XLM U4 ( .A0(even[4]), .A1(n1), .B0(odd_4_), .B1(n4), .Y(mux_out[4]) );
  AO22XLM U5 ( .A0(even[5]), .A1(n1), .B0(odd_5_), .B1(n4), .Y(mux_out[5]) );
  AO22XLM U6 ( .A0(even[6]), .A1(n1), .B0(odd_6_), .B1(n4), .Y(mux_out[6]) );
  AO22XLM U7 ( .A0(even[7]), .A1(n1), .B0(odd_7_), .B1(n4), .Y(mux_out[7]) );
  AO22XLM U8 ( .A0(even[8]), .A1(n1), .B0(odd_8_), .B1(n4), .Y(mux_out[8]) );
  AO22XLM U9 ( .A0(even[9]), .A1(n1), .B0(odd_9_), .B1(n4), .Y(mux_out[9]) );
  AO22XLM U10 ( .A0(even[10]), .A1(n1), .B0(odd_10_), .B1(n4), .Y(mux_out[10])
         );
  AO22XLM U11 ( .A0(even[11]), .A1(n1), .B0(odd_11_), .B1(n4), .Y(mux_out[11])
         );
  AO22XLM U12 ( .A0(even[12]), .A1(n1), .B0(odd_12_), .B1(n4), .Y(mux_out[12])
         );
  AO22XLM U13 ( .A0(even[13]), .A1(n1), .B0(odd_13_), .B1(n4), .Y(mux_out[13])
         );
  AO22XLM U14 ( .A0(even[14]), .A1(n1), .B0(odd_14_), .B1(n4), .Y(mux_out[14])
         );
  AO22XLM U15 ( .A0(even[15]), .A1(n1), .B0(test_so), .B1(n4), .Y(mux_out[15])
         );
  AO22XLM U16 ( .A0(even[1]), .A1(n1), .B0(odd_1_), .B1(n4), .Y(mux_out[1]) );
  AO22XLM U17 ( .A0(even[2]), .A1(n1), .B0(odd_2_), .B1(n4), .Y(mux_out[2]) );
  INVX2M U18 ( .A(n3), .Y(n2) );
  INVX2M U19 ( .A(reset), .Y(n3) );
  BUFX2M U20 ( .A(SEL), .Y(n1) );
  hfb_1_test_0 uut ( .clk(clk_1), .reset(n2), .data_in(data_in), .even_out(
        even), .odd_out({test_so, odd_14_, odd_13_, odd_12_, odd_11_, odd_10_, 
        odd_9_, odd_8_, odd_7_, odd_6_, odd_5_, odd_4_, odd_3_, odd_2_, odd_1_, 
        odd_0_}), .test_si(Count[1]), .test_se(test_se) );
  counter_test_0 uut1 ( .clk(clk_2), .reset(n2), .SEL(SEL), .test_si(test_si), 
        .test_so(n7), .test_se(test_se) );
  up4_filter_test_0 uut2 ( .clk(clk_2), .rst_n(n2), .in_data(mux_out), .b0(b0), 
        .b1(b1), .b2(b2), .b3(b3), .test_si(n7), .test_so(n6), .test_se(
        test_se) );
  counter2bit_test_0 uut3 ( .clk(clk_3), .reset(n2), .count(count), .test_si(
        n6), .test_se(test_se) );
  mux4to1_0 uut4 ( .I0(b0), .I1(b1), .I2(b2), .I3(b3), .S(count), .Y(out_comb4) );
  up4_filter_test_1 uut5 ( .clk(clk_3), .rst_n(n2), .in_data(out_comb4), .b0(
        B0), .b1(B1), .b2(B2), .b3(B3), .test_si(count[1]), .test_so(n5), 
        .test_se(test_se) );
  counter2bit_test_1 uut6 ( .clk(clk_4), .reset(n2), .count(Count), .test_si(
        n5), .test_se(test_se) );
  mux4to1_3 uut7 ( .I0(B0), .I1(B1), .I2(B2), .I3(B3), .S(Count), .Y(out) );
endmodule


module hfb_1_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_17 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_16 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_15 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_14 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_13 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [16:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  INVX2M U3 ( .A(A[0]), .Y(n2) );
endmodule


module hfb_1_1_DW01_add_12 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63;

  AND2X2M U2 ( .A(n14), .B(n15), .Y(SUM[8]) );
  INVX2M U3 ( .A(n61), .Y(n9) );
  INVX2M U4 ( .A(n58), .Y(n10) );
  INVX2M U5 ( .A(n11), .Y(SUM[7]) );
  INVX2M U6 ( .A(A[7]), .Y(n11) );
  BUFX2M U7 ( .A(A[5]), .Y(SUM[5]) );
  BUFX2M U8 ( .A(A[6]), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U13 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X1M U14 ( .A(n15), .B(n12), .Y(SUM[9]) );
  NOR2X1M U15 ( .A(n10), .B(n13), .Y(n12) );
  XOR3XLM U16 ( .A(B[22]), .B(A[22]), .C(n16), .Y(SUM[22]) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[21]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[21]), .A1(n17), .B0(B[21]), .Y(n18) );
  XOR3XLM U19 ( .A(B[21]), .B(A[21]), .C(n17), .Y(SUM[21]) );
  OAI2BB1X1M U20 ( .A0N(n19), .A1N(A[20]), .B0(n20), .Y(n17) );
  OAI21X1M U21 ( .A0(A[20]), .A1(n19), .B0(B[20]), .Y(n20) );
  XOR3XLM U22 ( .A(B[20]), .B(A[20]), .C(n19), .Y(SUM[20]) );
  OAI21BX1M U23 ( .A0(n21), .A1(n22), .B0N(n23), .Y(n19) );
  XNOR2X1M U24 ( .A(n22), .B(n24), .Y(SUM[19]) );
  NOR2X1M U25 ( .A(n23), .B(n21), .Y(n24) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n21) );
  AND2X1M U27 ( .A(B[19]), .B(A[19]), .Y(n23) );
  OA21X1M U28 ( .A0(n25), .A1(n26), .B0(n27), .Y(n22) );
  CLKXOR2X2M U29 ( .A(n28), .B(n26), .Y(SUM[18]) );
  AOI2B1X1M U30 ( .A1N(n29), .A0(n30), .B0(n31), .Y(n26) );
  NAND2BX1M U31 ( .AN(n25), .B(n27), .Y(n28) );
  CLKNAND2X2M U32 ( .A(B[18]), .B(A[18]), .Y(n27) );
  NOR2X1M U33 ( .A(B[18]), .B(A[18]), .Y(n25) );
  CLKXOR2X2M U34 ( .A(n30), .B(n32), .Y(SUM[17]) );
  NOR2X1M U35 ( .A(n31), .B(n29), .Y(n32) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n29) );
  AND2X1M U37 ( .A(B[17]), .B(A[17]), .Y(n31) );
  OAI21X1M U38 ( .A0(n33), .A1(n34), .B0(n35), .Y(n30) );
  CLKXOR2X2M U39 ( .A(n36), .B(n34), .Y(SUM[16]) );
  AOI2B1X1M U40 ( .A1N(n37), .A0(n38), .B0(n39), .Y(n34) );
  NAND2BX1M U41 ( .AN(n33), .B(n35), .Y(n36) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n35) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n33) );
  CLKXOR2X2M U44 ( .A(n38), .B(n40), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n39), .B(n37), .Y(n40) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n37) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n39) );
  OAI21X1M U48 ( .A0(n41), .A1(n42), .B0(n43), .Y(n38) );
  CLKXOR2X2M U49 ( .A(n44), .B(n42), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n45), .A0(n46), .B0(n47), .Y(n42) );
  NAND2BX1M U51 ( .AN(n41), .B(n43), .Y(n44) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n43) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n41) );
  CLKXOR2X2M U54 ( .A(n46), .B(n48), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n47), .B(n45), .Y(n48) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n45) );
  AND2X1M U57 ( .A(B[13]), .B(A[13]), .Y(n47) );
  OAI21X1M U58 ( .A0(n49), .A1(n50), .B0(n51), .Y(n46) );
  CLKXOR2X2M U59 ( .A(n52), .B(n50), .Y(SUM[12]) );
  AOI2BB1X1M U60 ( .A0N(n53), .A1N(n54), .B0(n55), .Y(n50) );
  AOI21BX1M U61 ( .A0(n56), .A1(n9), .B0N(n57), .Y(n54) );
  OAI21X1M U62 ( .A0(n13), .A1(n15), .B0(n58), .Y(n56) );
  NAND2BX1M U63 ( .AN(n49), .B(n51), .Y(n52) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n51) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n49) );
  CLKXOR2X2M U66 ( .A(n59), .B(n60), .Y(SUM[11]) );
  NOR2X1M U67 ( .A(n55), .B(n53), .Y(n60) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n53) );
  AND2X1M U69 ( .A(B[11]), .B(A[11]), .Y(n55) );
  OAI21X1M U70 ( .A0(n61), .A1(n62), .B0(n57), .Y(n59) );
  CLKXOR2X2M U71 ( .A(n63), .B(n62), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n15), .A1N(n13), .B0(n10), .Y(n62) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n58) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n13) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n15) );
  OR2X1M U76 ( .A(B[8]), .B(A[8]), .Y(n14) );
  CLKNAND2X2M U77 ( .A(n9), .B(n57), .Y(n63) );
  CLKNAND2X2M U78 ( .A(B[10]), .B(A[10]), .Y(n57) );
  NOR2X1M U79 ( .A(B[10]), .B(A[10]), .Y(n61) );
endmodule


module hfb_1_1_DW02_mult_3 ( A, B, TC, PRODUCT );
  input [8:0] A;
  input [16:0] B;
  output [25:0] PRODUCT;
  input TC;
  wire   CARRYB_7__14_, CARRYB_7__13_, CARRYB_7__12_, CARRYB_7__10_,
         CARRYB_7__9_, CARRYB_7__8_, CARRYB_7__7_, CARRYB_7__6_, CARRYB_7__5_,
         CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_, CARRYB_7__1_, CARRYB_7__0_,
         CARRYB_5__15_, SUMB_8__14_, SUMB_8__13_, SUMB_8__12_, SUMB_8__11_,
         SUMB_8__10_, SUMB_8__9_, SUMB_8__8_, SUMB_8__7_, SUMB_8__6_,
         SUMB_8__5_, SUMB_8__4_, SUMB_8__3_, SUMB_8__2_, SUMB_8__1_,
         SUMB_8__0_, SUMB_7__15_, SUMB_7__14_, SUMB_7__13_, SUMB_7__12_,
         SUMB_7__11_, SUMB_7__10_, SUMB_7__9_, SUMB_7__8_, SUMB_7__7_,
         SUMB_7__6_, SUMB_7__5_, SUMB_7__4_, SUMB_7__3_, SUMB_7__2_,
         SUMB_7__1_, SUMB_6__14_, SUMB_6__13_, SUMB_6__12_, SUMB_6__10_,
         SUMB_6__9_, SUMB_6__8_, SUMB_6__7_, SUMB_6__6_, SUMB_6__5_,
         SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_, SUMB_5__15_,
         SUMB_5__14_, SUMB_5__13_, SUMB_5__12_, SUMB_5__10_, SUMB_5__9_,
         SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, A1_21_, A1_20_, A1_19_, A1_18_,
         A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_,
         A1_8_, A1_7_, A1_5_, A1_4_, A1_3_, A2_15_, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, SYNOPSYS_UNCONNECTED_1;

  ADDFX2M S1_7_0 ( .A(B[0]), .B(n17), .CI(SUMB_6__1_), .CO(CARRYB_7__0_), .S(
        A1_5_) );
  ADDFX2M S2_7_1 ( .A(B[1]), .B(n16), .CI(SUMB_6__2_), .CO(CARRYB_7__1_), .S(
        SUMB_7__1_) );
  ADDFX2M S2_7_14 ( .A(B[14]), .B(n15), .CI(CARRYB_5__15_), .CO(CARRYB_7__14_), 
        .S(SUMB_7__14_) );
  ADDFX2M S2_7_13 ( .A(B[13]), .B(n4), .CI(SUMB_6__14_), .CO(CARRYB_7__13_), 
        .S(SUMB_7__13_) );
  ADDFX2M S2_7_2 ( .A(B[2]), .B(n14), .CI(SUMB_6__3_), .CO(CARRYB_7__2_), .S(
        SUMB_7__2_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(n5), .CI(SUMB_8__8_), .CO(A2_15_), .S(
        A1_14_) );
  ADDFX2M S2_7_12 ( .A(B[12]), .B(n6), .CI(SUMB_6__13_), .CO(CARRYB_7__12_), 
        .S(SUMB_7__12_) );
  ADDFX2M S2_7_8 ( .A(B[8]), .B(n13), .CI(SUMB_6__9_), .CO(CARRYB_7__8_), .S(
        SUMB_7__8_) );
  ADDFX2M S2_7_9 ( .A(B[9]), .B(n8), .CI(SUMB_6__10_), .CO(CARRYB_7__9_), .S(
        SUMB_7__9_) );
  ADDFX2M S2_7_7 ( .A(B[7]), .B(n12), .CI(SUMB_6__8_), .CO(CARRYB_7__7_), .S(
        SUMB_7__7_) );
  ADDFX2M S2_7_6 ( .A(B[6]), .B(n11), .CI(SUMB_6__7_), .CO(CARRYB_7__6_), .S(
        SUMB_7__6_) );
  ADDFX2M S2_7_4 ( .A(B[4]), .B(n10), .CI(SUMB_6__5_), .CO(CARRYB_7__4_), .S(
        SUMB_7__4_) );
  ADDFX2M S2_7_5 ( .A(B[5]), .B(n7), .CI(SUMB_6__6_), .CO(CARRYB_7__5_), .S(
        SUMB_7__5_) );
  ADDFX2M S2_7_3 ( .A(B[3]), .B(n9), .CI(SUMB_6__4_), .CO(CARRYB_7__3_), .S(
        SUMB_7__3_) );
  ADDFX2M S2_7_10 ( .A(B[10]), .B(n3), .CI(SUMB_5__12_), .CO(CARRYB_7__10_), 
        .S(SUMB_7__10_) );
  AND2X2M U2 ( .A(B[11]), .B(n55), .Y(n3) );
  AND2X2M U3 ( .A(SUMB_5__14_), .B(n50), .Y(n4) );
  AND2X2M U4 ( .A(SUMB_7__8_), .B(CARRYB_7__7_), .Y(n5) );
  AND2X2M U5 ( .A(SUMB_5__13_), .B(n52), .Y(n6) );
  AND2X2M U6 ( .A(SUMB_5__6_), .B(n49), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_5__10_), .B(n47), .Y(n8) );
  AND2X2M U8 ( .A(SUMB_5__4_), .B(n56), .Y(n9) );
  AND2X2M U9 ( .A(SUMB_5__5_), .B(n57), .Y(n10) );
  AND2X2M U10 ( .A(SUMB_5__7_), .B(n48), .Y(n11) );
  AND2X2M U11 ( .A(SUMB_5__8_), .B(n46), .Y(n12) );
  AND2X2M U12 ( .A(SUMB_5__9_), .B(n58), .Y(n13) );
  AND2X2M U13 ( .A(SUMB_5__3_), .B(n51), .Y(n14) );
  AND2X2M U14 ( .A(SUMB_5__15_), .B(n53), .Y(n15) );
  AND2X2M U15 ( .A(SUMB_5__2_), .B(n61), .Y(n16) );
  AND2X2M U16 ( .A(n59), .B(SUMB_5__1_), .Y(n17) );
  AND2X2M U17 ( .A(n45), .B(n60), .Y(n18) );
  CLKXOR2X2M U18 ( .A(n32), .B(SUMB_8__3_), .Y(A1_9_) );
  CLKXOR2X2M U19 ( .A(n33), .B(SUMB_8__4_), .Y(A1_10_) );
  CLKXOR2X2M U20 ( .A(n38), .B(SUMB_8__6_), .Y(A1_12_) );
  CLKXOR2X2M U21 ( .A(n36), .B(SUMB_8__2_), .Y(A1_8_) );
  CLKXOR2X2M U22 ( .A(n37), .B(SUMB_8__5_), .Y(A1_11_) );
  CLKXOR2X2M U23 ( .A(n39), .B(SUMB_8__7_), .Y(A1_13_) );
  CLKXOR2X2M U24 ( .A(n40), .B(SUMB_8__9_), .Y(A1_15_) );
  CLKXOR2X2M U25 ( .A(n34), .B(SUMB_8__11_), .Y(A1_17_) );
  AND2X2M U26 ( .A(n32), .B(SUMB_8__3_), .Y(n19) );
  XNOR2X2M U27 ( .A(n35), .B(n64), .Y(A1_7_) );
  CLKXOR2X2M U28 ( .A(n41), .B(SUMB_8__10_), .Y(A1_16_) );
  AND2X2M U29 ( .A(n36), .B(SUMB_8__2_), .Y(n20) );
  AND2X2M U30 ( .A(n33), .B(SUMB_8__4_), .Y(n21) );
  AND2X2M U31 ( .A(n38), .B(SUMB_8__6_), .Y(n22) );
  CLKXOR2X2M U32 ( .A(n44), .B(SUMB_8__14_), .Y(A1_20_) );
  CLKXOR2X2M U33 ( .A(n42), .B(SUMB_8__12_), .Y(A1_18_) );
  AND2X2M U34 ( .A(n40), .B(SUMB_8__9_), .Y(n23) );
  AND2X2M U35 ( .A(n34), .B(SUMB_8__11_), .Y(n24) );
  INVX2M U36 ( .A(SUMB_8__1_), .Y(n64) );
  CLKXOR2X2M U37 ( .A(n43), .B(SUMB_8__13_), .Y(A1_19_) );
  AND2X2M U38 ( .A(n37), .B(SUMB_8__5_), .Y(n25) );
  AND2X2M U39 ( .A(n39), .B(SUMB_8__7_), .Y(n26) );
  AND2X2M U40 ( .A(n43), .B(SUMB_8__13_), .Y(n27) );
  AND2X2M U41 ( .A(n35), .B(SUMB_8__1_), .Y(n28) );
  AND2X2M U42 ( .A(n41), .B(SUMB_8__10_), .Y(n29) );
  AND2X2M U43 ( .A(n42), .B(SUMB_8__12_), .Y(n30) );
  AND2X2M U44 ( .A(n44), .B(SUMB_8__14_), .Y(n31) );
  CLKXOR2X2M U45 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(SUMB_8__3_) );
  CLKXOR2X2M U46 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(SUMB_8__2_) );
  CLKXOR2X2M U47 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(SUMB_8__5_) );
  CLKXOR2X2M U48 ( .A(CARRYB_7__7_), .B(SUMB_7__8_), .Y(SUMB_8__7_) );
  CLKXOR2X2M U49 ( .A(CARRYB_7__10_), .B(SUMB_7__11_), .Y(SUMB_8__10_) );
  CLKXOR2X2M U50 ( .A(n52), .B(SUMB_5__13_), .Y(SUMB_6__12_) );
  XNOR2X2M U51 ( .A(CARRYB_7__0_), .B(n78), .Y(SUMB_8__0_) );
  INVX2M U52 ( .A(SUMB_7__1_), .Y(n78) );
  INVX2M U53 ( .A(SUMB_5__14_), .Y(n67) );
  INVX2M U54 ( .A(SUMB_5__5_), .Y(n72) );
  INVX2M U55 ( .A(SUMB_5__7_), .Y(n74) );
  INVX2M U56 ( .A(SUMB_5__6_), .Y(n73) );
  INVX2M U57 ( .A(SUMB_5__8_), .Y(n75) );
  INVX2M U58 ( .A(SUMB_5__9_), .Y(n76) );
  INVX2M U59 ( .A(SUMB_5__10_), .Y(n77) );
  AND2X2M U60 ( .A(SUMB_7__3_), .B(CARRYB_7__2_), .Y(n32) );
  AND2X2M U61 ( .A(SUMB_7__4_), .B(CARRYB_7__3_), .Y(n33) );
  CLKXOR2X2M U62 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(SUMB_8__4_) );
  CLKXOR2X2M U63 ( .A(CARRYB_7__6_), .B(SUMB_7__7_), .Y(SUMB_8__6_) );
  CLKXOR2X2M U64 ( .A(CARRYB_7__9_), .B(SUMB_7__10_), .Y(SUMB_8__9_) );
  INVX2M U65 ( .A(SUMB_7__9_), .Y(n79) );
  CLKXOR2X2M U66 ( .A(n54), .B(SUMB_7__12_), .Y(SUMB_8__11_) );
  CLKXOR2X2M U67 ( .A(CARRYB_7__13_), .B(SUMB_7__14_), .Y(SUMB_8__13_) );
  CLKXOR2X2M U68 ( .A(CARRYB_7__14_), .B(SUMB_7__15_), .Y(SUMB_8__14_) );
  XNOR2X2M U69 ( .A(n59), .B(n65), .Y(A1_4_) );
  INVX2M U70 ( .A(SUMB_5__1_), .Y(n65) );
  INVX2M U71 ( .A(SUMB_5__15_), .Y(n68) );
  INVX2M U72 ( .A(SUMB_5__4_), .Y(n71) );
  INVX2M U73 ( .A(SUMB_5__3_), .Y(n70) );
  INVX2M U74 ( .A(SUMB_5__2_), .Y(n69) );
  AND2X2M U75 ( .A(SUMB_7__11_), .B(CARRYB_7__10_), .Y(n34) );
  AND2X2M U76 ( .A(SUMB_7__1_), .B(CARRYB_7__0_), .Y(n35) );
  AND2X2M U77 ( .A(SUMB_7__2_), .B(CARRYB_7__1_), .Y(n36) );
  AND2X2M U78 ( .A(SUMB_7__5_), .B(CARRYB_7__4_), .Y(n37) );
  AND2X2M U79 ( .A(SUMB_7__6_), .B(CARRYB_7__5_), .Y(n38) );
  AND2X2M U80 ( .A(SUMB_7__7_), .B(CARRYB_7__6_), .Y(n39) );
  AND2X2M U81 ( .A(SUMB_7__9_), .B(CARRYB_7__8_), .Y(n40) );
  AND2X2M U82 ( .A(SUMB_7__10_), .B(CARRYB_7__9_), .Y(n41) );
  AND2X2M U83 ( .A(SUMB_7__12_), .B(n54), .Y(n42) );
  AND2X2M U84 ( .A(SUMB_7__13_), .B(CARRYB_7__12_), .Y(n43) );
  AND2X2M U85 ( .A(SUMB_7__14_), .B(CARRYB_7__13_), .Y(n44) );
  CLKXOR2X2M U86 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(SUMB_8__1_) );
  CLKXOR2X2M U87 ( .A(CARRYB_7__12_), .B(SUMB_7__13_), .Y(SUMB_8__12_) );
  CLKXOR2X2M U88 ( .A(n45), .B(n60), .Y(A1_21_) );
  AND2X2M U89 ( .A(SUMB_7__15_), .B(CARRYB_7__14_), .Y(n45) );
  CLKXOR2X2M U90 ( .A(B[13]), .B(B[16]), .Y(SUMB_5__13_) );
  CLKXOR2X2M U91 ( .A(B[14]), .B(B[16]), .Y(SUMB_5__14_) );
  CLKXOR2X2M U92 ( .A(B[6]), .B(B[11]), .Y(SUMB_5__6_) );
  CLKXOR2X2M U93 ( .A(B[5]), .B(B[10]), .Y(SUMB_5__5_) );
  CLKXOR2X2M U94 ( .A(B[7]), .B(B[12]), .Y(SUMB_5__7_) );
  CLKXOR2X2M U95 ( .A(B[8]), .B(B[13]), .Y(SUMB_5__8_) );
  CLKXOR2X2M U96 ( .A(B[10]), .B(B[15]), .Y(SUMB_5__10_) );
  CLKXOR2X2M U97 ( .A(B[9]), .B(B[14]), .Y(SUMB_5__9_) );
  XNOR2X2M U98 ( .A(B[12]), .B(n81), .Y(SUMB_5__12_) );
  XNOR2X2M U99 ( .A(n57), .B(n72), .Y(SUMB_6__4_) );
  XNOR2X2M U100 ( .A(n48), .B(n74), .Y(SUMB_6__6_) );
  XNOR2X2M U101 ( .A(n49), .B(n73), .Y(SUMB_6__5_) );
  XNOR2X2M U102 ( .A(n46), .B(n75), .Y(SUMB_6__7_) );
  XNOR2X2M U103 ( .A(n58), .B(n76), .Y(SUMB_6__8_) );
  XNOR2X2M U104 ( .A(n55), .B(n66), .Y(SUMB_6__10_) );
  INVX2M U105 ( .A(B[11]), .Y(n66) );
  XNOR2X2M U106 ( .A(n47), .B(n77), .Y(SUMB_6__9_) );
  XNOR2X2M U107 ( .A(n50), .B(n67), .Y(SUMB_6__13_) );
  INVX2M U108 ( .A(B[16]), .Y(n81) );
  AND2X2M U109 ( .A(B[12]), .B(B[7]), .Y(n46) );
  AND2X2M U110 ( .A(B[14]), .B(B[9]), .Y(n47) );
  XNOR2X2M U111 ( .A(CARRYB_7__8_), .B(n79), .Y(SUMB_8__8_) );
  CLKXOR2X2M U112 ( .A(B[11]), .B(SUMB_6__12_), .Y(SUMB_7__11_) );
  AND2X2M U113 ( .A(B[11]), .B(B[6]), .Y(n48) );
  AND2X2M U114 ( .A(B[10]), .B(B[5]), .Y(n49) );
  CLKXOR2X2M U115 ( .A(B[4]), .B(B[9]), .Y(SUMB_5__4_) );
  CLKXOR2X2M U116 ( .A(B[3]), .B(B[8]), .Y(SUMB_5__3_) );
  CLKXOR2X2M U117 ( .A(B[2]), .B(B[7]), .Y(SUMB_5__2_) );
  AND2X2M U118 ( .A(B[16]), .B(B[13]), .Y(n50) );
  XNOR2X2M U119 ( .A(n56), .B(n71), .Y(SUMB_6__3_) );
  XNOR2X2M U120 ( .A(n53), .B(n68), .Y(SUMB_6__14_) );
  INVX2M U121 ( .A(n82), .Y(CARRYB_5__15_) );
  NAND2X2M U122 ( .A(B[16]), .B(B[15]), .Y(n82) );
  XNOR2X2M U123 ( .A(n51), .B(n70), .Y(SUMB_6__2_) );
  CLKXOR2X2M U124 ( .A(B[15]), .B(B[16]), .Y(SUMB_5__15_) );
  AND2X2M U125 ( .A(B[7]), .B(B[2]), .Y(n51) );
  XNOR2X2M U126 ( .A(n61), .B(n69), .Y(SUMB_6__1_) );
  XNOR2X2M U127 ( .A(B[0]), .B(n80), .Y(A1_3_) );
  INVX2M U128 ( .A(B[5]), .Y(n80) );
  AND2X2M U129 ( .A(B[16]), .B(B[12]), .Y(n52) );
  AND2X2M U130 ( .A(B[16]), .B(B[14]), .Y(n53) );
  AND2X2M U131 ( .A(SUMB_6__12_), .B(B[11]), .Y(n54) );
  AND2X2M U132 ( .A(B[15]), .B(B[10]), .Y(n55) );
  AND2X2M U133 ( .A(B[8]), .B(B[3]), .Y(n56) );
  AND2X2M U134 ( .A(B[9]), .B(B[4]), .Y(n57) );
  AND2X2M U135 ( .A(B[13]), .B(B[8]), .Y(n58) );
  CLKXOR2X2M U136 ( .A(B[1]), .B(B[6]), .Y(SUMB_5__1_) );
  CLKXOR2X2M U137 ( .A(B[15]), .B(B[16]), .Y(SUMB_7__15_) );
  AND2X2M U138 ( .A(B[0]), .B(B[5]), .Y(n59) );
  BUFX2M U139 ( .A(B[1]), .Y(PRODUCT[1]) );
  AND2X2M U140 ( .A(B[16]), .B(B[15]), .Y(n60) );
  BUFX2M U141 ( .A(B[0]), .Y(PRODUCT[0]) );
  AND2X2M U142 ( .A(B[6]), .B(B[1]), .Y(n61) );
  hfb_1_1_DW01_add_12 FS_1 ( .A({B[16], B[16], A1_21_, A1_20_, A1_19_, A1_18_, 
        A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, 
        A1_8_, A1_7_, SUMB_8__0_, A1_5_, A1_4_, A1_3_, B[4:2]}), .B({1'b0, n18, 
        n31, n27, n30, n24, n29, n23, A2_15_, n26, n22, n25, n21, n19, n20, 
        n28, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({SYNOPSYS_UNCONNECTED_1, PRODUCT[24:2]}) );
endmodule


module hfb_1_1_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68;

  AOI21BX2M U2 ( .A0(n13), .A1(n12), .B0N(n14), .Y(n8) );
  INVX2M U3 ( .A(n66), .Y(n6) );
  INVX2M U4 ( .A(n63), .Y(n7) );
  BUFX2M U5 ( .A(A[3]), .Y(SUM[3]) );
  XNOR2X2M U6 ( .A(B[21]), .B(n23), .Y(SUM[21]) );
  BUFX2M U7 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U8 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U9 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U10 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2X1M U11 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U12 ( .A(n7), .B(n10), .Y(n9) );
  XNOR2X1M U13 ( .A(n11), .B(n12), .Y(SUM[8]) );
  CLKNAND2X2M U14 ( .A(n13), .B(n14), .Y(n11) );
  XNOR2X1M U15 ( .A(n15), .B(n16), .Y(SUM[7]) );
  NOR2X1M U16 ( .A(n17), .B(n18), .Y(n16) );
  CLKXOR2X2M U17 ( .A(n19), .B(n20), .Y(SUM[6]) );
  NAND2BX1M U18 ( .AN(n21), .B(n22), .Y(n20) );
  OA21X1M U19 ( .A0(B[5]), .A1(A[5]), .B0(n19), .Y(SUM[5]) );
  OAI2BB1X1M U20 ( .A0N(n24), .A1N(A[20]), .B0(n25), .Y(n23) );
  OAI21X1M U21 ( .A0(A[20]), .A1(n24), .B0(B[20]), .Y(n25) );
  XOR3XLM U22 ( .A(B[20]), .B(A[20]), .C(n24), .Y(SUM[20]) );
  OAI21BX1M U23 ( .A0(n26), .A1(n27), .B0N(n28), .Y(n24) );
  XNOR2X1M U24 ( .A(n27), .B(n29), .Y(SUM[19]) );
  NOR2X1M U25 ( .A(n28), .B(n26), .Y(n29) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n26) );
  AND2X1M U27 ( .A(B[19]), .B(A[19]), .Y(n28) );
  OA21X1M U28 ( .A0(n30), .A1(n31), .B0(n32), .Y(n27) );
  CLKXOR2X2M U29 ( .A(n33), .B(n31), .Y(SUM[18]) );
  AOI2B1X1M U30 ( .A1N(n34), .A0(n35), .B0(n36), .Y(n31) );
  NAND2BX1M U31 ( .AN(n30), .B(n32), .Y(n33) );
  CLKNAND2X2M U32 ( .A(B[18]), .B(A[18]), .Y(n32) );
  NOR2X1M U33 ( .A(B[18]), .B(A[18]), .Y(n30) );
  CLKXOR2X2M U34 ( .A(n35), .B(n37), .Y(SUM[17]) );
  NOR2X1M U35 ( .A(n36), .B(n34), .Y(n37) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n34) );
  AND2X1M U37 ( .A(B[17]), .B(A[17]), .Y(n36) );
  OAI21X1M U38 ( .A0(n38), .A1(n39), .B0(n40), .Y(n35) );
  CLKXOR2X2M U39 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2B1X1M U40 ( .A1N(n42), .A0(n43), .B0(n44), .Y(n39) );
  NAND2BX1M U41 ( .AN(n38), .B(n40), .Y(n41) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n40) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(n43), .B(n45), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n44), .B(n42), .Y(n45) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n42) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n44) );
  OAI21X1M U48 ( .A0(n46), .A1(n47), .B0(n48), .Y(n43) );
  CLKXOR2X2M U49 ( .A(n49), .B(n47), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n50), .A0(n51), .B0(n52), .Y(n47) );
  NAND2BX1M U51 ( .AN(n46), .B(n48), .Y(n49) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n48) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n46) );
  CLKXOR2X2M U54 ( .A(n51), .B(n53), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n52), .B(n50), .Y(n53) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n50) );
  AND2X1M U57 ( .A(B[13]), .B(A[13]), .Y(n52) );
  OAI21X1M U58 ( .A0(n54), .A1(n55), .B0(n56), .Y(n51) );
  CLKXOR2X2M U59 ( .A(n57), .B(n55), .Y(SUM[12]) );
  AOI2BB1X1M U60 ( .A0N(n58), .A1N(n59), .B0(n60), .Y(n55) );
  AOI21BX1M U61 ( .A0(n61), .A1(n6), .B0N(n62), .Y(n59) );
  OAI21X1M U62 ( .A0(n10), .A1(n8), .B0(n63), .Y(n61) );
  NAND2BX1M U63 ( .AN(n54), .B(n56), .Y(n57) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n56) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n54) );
  CLKXOR2X2M U66 ( .A(n64), .B(n65), .Y(SUM[11]) );
  NOR2X1M U67 ( .A(n60), .B(n58), .Y(n65) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n58) );
  AND2X1M U69 ( .A(B[11]), .B(A[11]), .Y(n60) );
  OAI21X1M U70 ( .A0(n66), .A1(n67), .B0(n62), .Y(n64) );
  CLKXOR2X2M U71 ( .A(n68), .B(n67), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n8), .A1N(n10), .B0(n7), .Y(n67) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n63) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n10) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n14) );
  OAI21BX1M U76 ( .A0(n18), .A1(n15), .B0N(n17), .Y(n12) );
  AND2X1M U77 ( .A(B[7]), .B(A[7]), .Y(n17) );
  OA21X1M U78 ( .A0(n21), .A1(n19), .B0(n22), .Y(n15) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKNAND2X2M U80 ( .A(B[5]), .B(A[5]), .Y(n19) );
  NOR2X1M U81 ( .A(B[6]), .B(A[6]), .Y(n21) );
  NOR2X1M U82 ( .A(B[7]), .B(A[7]), .Y(n18) );
  OR2X1M U83 ( .A(B[8]), .B(A[8]), .Y(n13) );
  CLKNAND2X2M U84 ( .A(n6), .B(n62), .Y(n68) );
  CLKNAND2X2M U85 ( .A(B[10]), .B(A[10]), .Y(n62) );
  NOR2X1M U86 ( .A(B[10]), .B(A[10]), .Y(n66) );
endmodule


module hfb_1_1_DW02_mult_2 ( A, B, TC, PRODUCT );
  input [6:0] A;
  input [16:0] B;
  output [23:0] PRODUCT;
  input TC;
  wire   CARRYB_6__14_, CARRYB_6__13_, CARRYB_6__12_, CARRYB_6__11_,
         CARRYB_6__10_, CARRYB_6__9_, CARRYB_6__8_, CARRYB_6__7_, CARRYB_6__6_,
         CARRYB_6__5_, CARRYB_6__4_, CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_,
         CARRYB_6__0_, CARRYB_3__14_, CARRYB_3__13_, CARRYB_3__12_,
         CARRYB_3__11_, CARRYB_3__10_, CARRYB_3__9_, CARRYB_3__8_,
         CARRYB_3__7_, CARRYB_3__6_, CARRYB_3__5_, CARRYB_3__4_, CARRYB_3__3_,
         CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_, SUMB_6__15_, SUMB_6__14_,
         SUMB_6__13_, SUMB_6__12_, SUMB_6__11_, SUMB_6__10_, SUMB_6__9_,
         SUMB_6__8_, SUMB_6__7_, SUMB_6__6_, SUMB_6__5_, SUMB_6__4_,
         SUMB_6__3_, SUMB_6__2_, SUMB_6__1_, SUMB_6__0_, SUMB_5__14_,
         SUMB_5__13_, SUMB_5__12_, SUMB_5__11_, SUMB_5__10_, SUMB_5__9_,
         SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_, SUMB_5__4_,
         SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_4__14_, SUMB_4__13_,
         SUMB_4__12_, SUMB_4__11_, SUMB_4__10_, SUMB_4__9_, SUMB_4__8_,
         SUMB_4__7_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__15_, SUMB_3__14_, SUMB_3__13_,
         SUMB_3__12_, SUMB_3__11_, SUMB_3__10_, SUMB_3__9_, SUMB_3__8_,
         SUMB_3__7_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_, SUMB_3__3_,
         SUMB_3__2_, SUMB_3__1_, SUMB_2__15_, SUMB_2__14_, SUMB_2__13_,
         SUMB_2__12_, SUMB_2__11_, SUMB_2__10_, SUMB_2__9_, SUMB_2__8_,
         SUMB_2__7_, SUMB_2__6_, SUMB_2__5_, SUMB_2__4_, SUMB_2__3_,
         SUMB_2__2_, SUMB_2__1_, SUMB_1__15_, A1_19_, A1_18_, A1_17_, A1_16_,
         A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_,
         A1_6_, A1_5_, A1_3_, A1_2_, A1_1_, A1_0_, A2_15_, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101;

  ADDFX2M S1_3_0 ( .A(B[0]), .B(n32), .CI(SUMB_2__1_), .CO(CARRYB_3__0_), .S(
        A1_1_) );
  ADDFX2M S4_0 ( .A(n101), .B(n29), .CI(SUMB_5__1_), .CO(CARRYB_6__0_), .S(
        SUMB_6__0_) );
  ADDFX2M S2_3_2 ( .A(B[2]), .B(n31), .CI(SUMB_2__3_), .CO(CARRYB_3__2_), .S(
        SUMB_3__2_) );
  ADDFX2M S2_3_3 ( .A(B[3]), .B(n27), .CI(SUMB_2__4_), .CO(CARRYB_3__3_), .S(
        SUMB_3__3_) );
  ADDFX2M S2_3_1 ( .A(B[1]), .B(n30), .CI(SUMB_2__2_), .CO(CARRYB_3__1_), .S(
        SUMB_3__1_) );
  ADDFX2M S4_14 ( .A(n96), .B(n15), .CI(B[16]), .CO(CARRYB_6__14_), .S(
        SUMB_6__14_) );
  ADDFX2M S2_3_14 ( .A(B[14]), .B(n16), .CI(SUMB_2__15_), .CO(CARRYB_3__14_), 
        .S(SUMB_3__14_) );
  ADDFX2M S2_3_12 ( .A(B[12]), .B(n26), .CI(SUMB_2__13_), .CO(CARRYB_3__12_), 
        .S(SUMB_3__12_) );
  ADDFX2M S2_3_10 ( .A(B[10]), .B(n25), .CI(SUMB_2__11_), .CO(CARRYB_3__10_), 
        .S(SUMB_3__10_) );
  ADDFX2M S2_3_11 ( .A(B[11]), .B(n24), .CI(SUMB_2__12_), .CO(CARRYB_3__11_), 
        .S(SUMB_3__11_) );
  ADDFX2M S2_3_9 ( .A(B[9]), .B(n23), .CI(SUMB_2__10_), .CO(CARRYB_3__9_), .S(
        SUMB_3__9_) );
  ADDFX2M S2_3_8 ( .A(B[8]), .B(n22), .CI(SUMB_2__9_), .CO(CARRYB_3__8_), .S(
        SUMB_3__8_) );
  ADDFX2M S2_3_7 ( .A(B[7]), .B(n21), .CI(SUMB_2__8_), .CO(CARRYB_3__7_), .S(
        SUMB_3__7_) );
  ADDFX2M S2_3_6 ( .A(B[6]), .B(n20), .CI(SUMB_2__7_), .CO(CARRYB_3__6_), .S(
        SUMB_3__6_) );
  ADDFX2M S2_3_4 ( .A(B[4]), .B(n19), .CI(SUMB_2__5_), .CO(CARRYB_3__4_), .S(
        SUMB_3__4_) );
  ADDFX2M S2_3_5 ( .A(B[5]), .B(n18), .CI(SUMB_2__6_), .CO(CARRYB_3__5_), .S(
        SUMB_3__5_) );
  ADDFX2M S4_13 ( .A(n95), .B(n14), .CI(SUMB_5__14_), .CO(CARRYB_6__13_), .S(
        SUMB_6__13_) );
  ADDFX2M S4_12 ( .A(n94), .B(n4), .CI(SUMB_5__13_), .CO(CARRYB_6__12_), .S(
        SUMB_6__12_) );
  ADDFX2M S4_11 ( .A(n93), .B(n3), .CI(SUMB_5__12_), .CO(CARRYB_6__11_), .S(
        SUMB_6__11_) );
  ADDFX2M S4_8 ( .A(n90), .B(n13), .CI(SUMB_5__9_), .CO(CARRYB_6__8_), .S(
        SUMB_6__8_) );
  ADDFX2M S4_9 ( .A(n91), .B(n12), .CI(SUMB_5__10_), .CO(CARRYB_6__9_), .S(
        SUMB_6__9_) );
  ADDFX2M S4_7 ( .A(n89), .B(n11), .CI(SUMB_5__8_), .CO(CARRYB_6__7_), .S(
        SUMB_6__7_) );
  ADDFX2M S4_6 ( .A(n88), .B(n10), .CI(SUMB_5__7_), .CO(CARRYB_6__6_), .S(
        SUMB_6__6_) );
  ADDFX2M S4_5 ( .A(n87), .B(n9), .CI(SUMB_5__6_), .CO(CARRYB_6__5_), .S(
        SUMB_6__5_) );
  ADDFX2M S4_4 ( .A(n86), .B(n8), .CI(SUMB_5__5_), .CO(CARRYB_6__4_), .S(
        SUMB_6__4_) );
  ADDFX2M S4_2 ( .A(n84), .B(n7), .CI(SUMB_5__3_), .CO(CARRYB_6__2_), .S(
        SUMB_6__2_) );
  ADDFX2M S4_3 ( .A(n85), .B(n6), .CI(SUMB_5__4_), .CO(CARRYB_6__3_), .S(
        SUMB_6__3_) );
  ADDFX2M S4_1 ( .A(n100), .B(n28), .CI(SUMB_5__2_), .CO(CARRYB_6__1_), .S(
        SUMB_6__1_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(CARRYB_6__9_), .CI(SUMB_6__10_), .CO(A2_15_), .S(A1_14_) );
  ADDFX2M S4_10 ( .A(n92), .B(n5), .CI(SUMB_5__11_), .CO(CARRYB_6__10_), .S(
        SUMB_6__10_) );
  ADDFX2M S2_3_13 ( .A(B[13]), .B(n17), .CI(SUMB_2__14_), .CO(CARRYB_3__13_), 
        .S(SUMB_3__13_) );
  AND2X2M U2 ( .A(SUMB_4__12_), .B(n38), .Y(n3) );
  AND2X2M U3 ( .A(SUMB_4__13_), .B(n39), .Y(n4) );
  AND2X2M U4 ( .A(SUMB_4__11_), .B(n37), .Y(n5) );
  AND2X2M U5 ( .A(SUMB_4__4_), .B(n57), .Y(n6) );
  AND2X2M U6 ( .A(SUMB_4__3_), .B(n55), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_4__5_), .B(n56), .Y(n8) );
  AND2X2M U8 ( .A(SUMB_4__6_), .B(n58), .Y(n9) );
  AND2X2M U9 ( .A(SUMB_4__7_), .B(n34), .Y(n10) );
  AND2X2M U10 ( .A(SUMB_4__8_), .B(n35), .Y(n11) );
  AND2X2M U11 ( .A(SUMB_4__10_), .B(n59), .Y(n12) );
  AND2X2M U12 ( .A(SUMB_4__9_), .B(n36), .Y(n13) );
  AND2X2M U13 ( .A(SUMB_4__14_), .B(n40), .Y(n14) );
  AND2X2M U14 ( .A(n64), .B(n53), .Y(n15) );
  AND2X2M U15 ( .A(SUMB_1__15_), .B(B[14]), .Y(n16) );
  AND2X2M U16 ( .A(B[14]), .B(B[13]), .Y(n17) );
  AND2X2M U17 ( .A(B[6]), .B(B[5]), .Y(n18) );
  AND2X2M U18 ( .A(B[5]), .B(B[4]), .Y(n19) );
  AND2X2M U19 ( .A(B[7]), .B(B[6]), .Y(n20) );
  AND2X2M U20 ( .A(B[8]), .B(B[7]), .Y(n21) );
  AND2X2M U21 ( .A(B[9]), .B(B[8]), .Y(n22) );
  AND2X2M U22 ( .A(B[10]), .B(B[9]), .Y(n23) );
  AND2X2M U23 ( .A(B[12]), .B(B[11]), .Y(n24) );
  AND2X2M U24 ( .A(B[11]), .B(B[10]), .Y(n25) );
  AND2X2M U25 ( .A(B[13]), .B(B[12]), .Y(n26) );
  AND2X2M U26 ( .A(B[4]), .B(B[3]), .Y(n27) );
  AND2X2M U27 ( .A(SUMB_4__2_), .B(n54), .Y(n28) );
  AND2X2M U28 ( .A(n51), .B(SUMB_4__1_), .Y(n29) );
  AND2X2M U29 ( .A(B[2]), .B(B[1]), .Y(n30) );
  AND2X2M U30 ( .A(B[3]), .B(B[2]), .Y(n31) );
  AND2X2M U31 ( .A(B[0]), .B(B[1]), .Y(n32) );
  INVX2M U32 ( .A(SUMB_4__12_), .Y(n71) );
  INVX2M U33 ( .A(SUMB_4__3_), .Y(n76) );
  INVX2M U34 ( .A(SUMB_4__5_), .Y(n78) );
  INVX2M U35 ( .A(SUMB_4__4_), .Y(n77) );
  INVX2M U36 ( .A(SUMB_4__6_), .Y(n79) );
  INVX2M U37 ( .A(SUMB_4__7_), .Y(n80) );
  INVX2M U38 ( .A(SUMB_4__8_), .Y(n81) );
  INVX2M U39 ( .A(SUMB_4__9_), .Y(n82) );
  INVX2M U40 ( .A(SUMB_4__11_), .Y(n70) );
  INVX2M U41 ( .A(SUMB_4__10_), .Y(n83) );
  INVX2M U42 ( .A(SUMB_4__13_), .Y(n72) );
  INVX2M U43 ( .A(SUMB_4__14_), .Y(n73) );
  XNOR2X2M U44 ( .A(n51), .B(n69), .Y(A1_3_) );
  INVX2M U45 ( .A(SUMB_4__1_), .Y(n69) );
  INVX2M U46 ( .A(SUMB_4__2_), .Y(n75) );
  CLKXOR2X2M U47 ( .A(CARRYB_3__12_), .B(SUMB_3__13_), .Y(SUMB_4__12_) );
  INVX2M U48 ( .A(SUMB_1__15_), .Y(n97) );
  CLKXOR2X2M U49 ( .A(CARRYB_3__3_), .B(SUMB_3__4_), .Y(SUMB_4__3_) );
  CLKXOR2X2M U50 ( .A(CARRYB_3__5_), .B(SUMB_3__6_), .Y(SUMB_4__5_) );
  CLKXOR2X2M U51 ( .A(CARRYB_3__4_), .B(SUMB_3__5_), .Y(SUMB_4__4_) );
  CLKXOR2X2M U52 ( .A(CARRYB_3__6_), .B(SUMB_3__7_), .Y(SUMB_4__6_) );
  CLKXOR2X2M U53 ( .A(CARRYB_3__8_), .B(SUMB_3__9_), .Y(SUMB_4__8_) );
  CLKXOR2X2M U54 ( .A(CARRYB_3__9_), .B(SUMB_3__10_), .Y(SUMB_4__9_) );
  CLKXOR2X2M U55 ( .A(CARRYB_3__11_), .B(SUMB_3__12_), .Y(SUMB_4__11_) );
  CLKXOR2X2M U56 ( .A(CARRYB_3__13_), .B(SUMB_3__14_), .Y(SUMB_4__13_) );
  CLKXOR2X2M U57 ( .A(CARRYB_3__14_), .B(SUMB_3__15_), .Y(SUMB_4__14_) );
  CLKXOR2X2M U58 ( .A(CARRYB_6__1_), .B(SUMB_6__2_), .Y(A1_6_) );
  CLKXOR2X2M U59 ( .A(CARRYB_6__4_), .B(SUMB_6__5_), .Y(A1_9_) );
  CLKXOR2X2M U60 ( .A(CARRYB_6__5_), .B(SUMB_6__6_), .Y(A1_10_) );
  CLKXOR2X2M U61 ( .A(CARRYB_6__7_), .B(SUMB_6__8_), .Y(A1_12_) );
  CLKXOR2X2M U62 ( .A(CARRYB_6__3_), .B(SUMB_6__4_), .Y(A1_8_) );
  CLKXOR2X2M U63 ( .A(CARRYB_6__0_), .B(SUMB_6__1_), .Y(A1_5_) );
  CLKXOR2X2M U64 ( .A(CARRYB_6__2_), .B(SUMB_6__3_), .Y(A1_7_) );
  CLKXOR2X2M U65 ( .A(CARRYB_6__6_), .B(SUMB_6__7_), .Y(A1_11_) );
  CLKXOR2X2M U66 ( .A(CARRYB_6__8_), .B(SUMB_6__9_), .Y(A1_13_) );
  CLKXOR2X2M U67 ( .A(CARRYB_6__10_), .B(SUMB_6__11_), .Y(A1_15_) );
  CLKXOR2X2M U68 ( .A(CARRYB_6__12_), .B(SUMB_6__13_), .Y(A1_17_) );
  AND2X2M U69 ( .A(CARRYB_6__11_), .B(SUMB_6__12_), .Y(n33) );
  AND2X2M U70 ( .A(SUMB_3__7_), .B(CARRYB_3__6_), .Y(n34) );
  AND2X2M U71 ( .A(SUMB_3__8_), .B(CARRYB_3__7_), .Y(n35) );
  AND2X2M U72 ( .A(SUMB_3__9_), .B(CARRYB_3__8_), .Y(n36) );
  AND2X2M U73 ( .A(SUMB_3__11_), .B(CARRYB_3__10_), .Y(n37) );
  AND2X2M U74 ( .A(SUMB_3__12_), .B(CARRYB_3__11_), .Y(n38) );
  AND2X2M U75 ( .A(SUMB_3__13_), .B(CARRYB_3__12_), .Y(n39) );
  AND2X2M U76 ( .A(SUMB_3__14_), .B(CARRYB_3__13_), .Y(n40) );
  CLKXOR2X2M U77 ( .A(CARRYB_6__11_), .B(SUMB_6__12_), .Y(A1_16_) );
  CLKXOR2X2M U78 ( .A(CARRYB_3__7_), .B(SUMB_3__8_), .Y(SUMB_4__7_) );
  CLKXOR2X2M U79 ( .A(CARRYB_3__10_), .B(SUMB_3__11_), .Y(SUMB_4__10_) );
  AND2X2M U80 ( .A(CARRYB_6__0_), .B(SUMB_6__1_), .Y(n41) );
  AND2X2M U81 ( .A(CARRYB_6__3_), .B(SUMB_6__4_), .Y(n42) );
  AND2X2M U82 ( .A(CARRYB_6__4_), .B(SUMB_6__5_), .Y(n43) );
  AND2X2M U83 ( .A(CARRYB_6__6_), .B(SUMB_6__7_), .Y(n44) );
  AND2X2M U84 ( .A(CARRYB_6__8_), .B(SUMB_6__9_), .Y(n45) );
  AND2X2M U85 ( .A(CARRYB_6__10_), .B(SUMB_6__11_), .Y(n46) );
  AND2X2M U86 ( .A(CARRYB_6__2_), .B(SUMB_6__3_), .Y(n47) );
  AND2X2M U87 ( .A(CARRYB_6__1_), .B(SUMB_6__2_), .Y(n48) );
  AND2X2M U88 ( .A(CARRYB_6__5_), .B(SUMB_6__6_), .Y(n49) );
  AND2X2M U89 ( .A(CARRYB_6__7_), .B(SUMB_6__8_), .Y(n50) );
  CLKXOR2X2M U90 ( .A(CARRYB_3__1_), .B(SUMB_3__2_), .Y(SUMB_4__1_) );
  CLKXOR2X2M U91 ( .A(CARRYB_3__2_), .B(SUMB_3__3_), .Y(SUMB_4__2_) );
  CLKXOR2X2M U92 ( .A(CARRYB_6__13_), .B(SUMB_6__14_), .Y(A1_18_) );
  CLKXOR2X2M U93 ( .A(CARRYB_6__14_), .B(SUMB_6__15_), .Y(A1_19_) );
  XNOR2X2M U94 ( .A(CARRYB_3__0_), .B(n68), .Y(A1_2_) );
  INVX2M U95 ( .A(SUMB_3__1_), .Y(n68) );
  INVX2M U96 ( .A(SUMB_6__0_), .Y(n99) );
  AND2X2M U97 ( .A(CARRYB_3__0_), .B(SUMB_3__1_), .Y(n51) );
  AND2X2M U98 ( .A(CARRYB_6__12_), .B(SUMB_6__13_), .Y(n52) );
  AND2X2M U99 ( .A(SUMB_3__15_), .B(CARRYB_3__14_), .Y(n53) );
  AND2X2M U100 ( .A(SUMB_3__2_), .B(CARRYB_3__1_), .Y(n54) );
  AND2X2M U101 ( .A(SUMB_3__3_), .B(CARRYB_3__2_), .Y(n55) );
  AND2X2M U102 ( .A(SUMB_3__5_), .B(CARRYB_3__4_), .Y(n56) );
  AND2X2M U103 ( .A(SUMB_3__4_), .B(CARRYB_3__3_), .Y(n57) );
  AND2X2M U104 ( .A(SUMB_3__6_), .B(CARRYB_3__5_), .Y(n58) );
  AND2X2M U105 ( .A(SUMB_3__10_), .B(CARRYB_3__9_), .Y(n59) );
  AND2X2M U106 ( .A(CARRYB_6__14_), .B(SUMB_6__15_), .Y(n60) );
  INVX2M U107 ( .A(n64), .Y(n74) );
  AND2X2M U108 ( .A(CARRYB_6__13_), .B(SUMB_6__14_), .Y(n61) );
  INVX2M U109 ( .A(n65), .Y(n98) );
  CLKXOR2X2M U110 ( .A(B[15]), .B(B[16]), .Y(SUMB_1__15_) );
  XNOR2X2M U111 ( .A(B[14]), .B(n97), .Y(SUMB_2__14_) );
  XNOR2X2M U112 ( .A(n38), .B(n71), .Y(SUMB_5__11_) );
  CLKXOR2X2M U113 ( .A(n62), .B(B[15]), .Y(SUMB_3__15_) );
  INVX2M U114 ( .A(B[1]), .Y(n100) );
  XNOR2X2M U115 ( .A(n55), .B(n76), .Y(SUMB_5__2_) );
  XNOR2X2M U116 ( .A(n56), .B(n78), .Y(SUMB_5__4_) );
  XNOR2X2M U117 ( .A(n57), .B(n77), .Y(SUMB_5__3_) );
  XNOR2X2M U118 ( .A(n58), .B(n79), .Y(SUMB_5__5_) );
  XNOR2X2M U119 ( .A(n34), .B(n80), .Y(SUMB_5__6_) );
  XNOR2X2M U120 ( .A(n35), .B(n81), .Y(SUMB_5__7_) );
  XNOR2X2M U121 ( .A(n36), .B(n82), .Y(SUMB_5__8_) );
  XNOR2X2M U122 ( .A(n37), .B(n70), .Y(SUMB_5__10_) );
  XNOR2X2M U123 ( .A(n59), .B(n83), .Y(SUMB_5__9_) );
  XNOR2X2M U124 ( .A(n39), .B(n72), .Y(SUMB_5__12_) );
  XNOR2X2M U125 ( .A(n40), .B(n73), .Y(SUMB_5__13_) );
  XNOR2X2M U126 ( .A(n53), .B(n74), .Y(SUMB_5__14_) );
  XNOR2X2M U127 ( .A(B[6]), .B(n89), .Y(SUMB_2__6_) );
  XNOR2X2M U128 ( .A(B[5]), .B(n88), .Y(SUMB_2__5_) );
  XNOR2X2M U129 ( .A(B[7]), .B(n90), .Y(SUMB_2__7_) );
  XNOR2X2M U130 ( .A(B[8]), .B(n91), .Y(SUMB_2__8_) );
  XNOR2X2M U131 ( .A(B[9]), .B(n92), .Y(SUMB_2__9_) );
  XNOR2X2M U132 ( .A(B[10]), .B(n93), .Y(SUMB_2__10_) );
  XNOR2X2M U133 ( .A(B[12]), .B(n95), .Y(SUMB_2__12_) );
  XNOR2X2M U134 ( .A(B[11]), .B(n94), .Y(SUMB_2__11_) );
  XNOR2X2M U135 ( .A(B[13]), .B(n96), .Y(SUMB_2__13_) );
  XNOR2X2M U136 ( .A(n63), .B(n67), .Y(SUMB_2__15_) );
  INVX2M U137 ( .A(B[15]), .Y(n67) );
  INVX2M U138 ( .A(B[7]), .Y(n89) );
  INVX2M U139 ( .A(B[6]), .Y(n88) );
  INVX2M U140 ( .A(B[8]), .Y(n90) );
  INVX2M U141 ( .A(B[9]), .Y(n91) );
  INVX2M U142 ( .A(B[10]), .Y(n92) );
  INVX2M U143 ( .A(B[11]), .Y(n93) );
  INVX2M U144 ( .A(B[13]), .Y(n95) );
  INVX2M U145 ( .A(B[12]), .Y(n94) );
  INVX2M U146 ( .A(B[14]), .Y(n96) );
  AND2X2M U147 ( .A(B[15]), .B(n63), .Y(n62) );
  AND2X2M U148 ( .A(B[16]), .B(B[15]), .Y(n63) );
  XNOR2X2M U149 ( .A(B[2]), .B(n85), .Y(SUMB_2__2_) );
  XNOR2X2M U150 ( .A(B[4]), .B(n87), .Y(SUMB_2__4_) );
  XNOR2X2M U151 ( .A(B[3]), .B(n86), .Y(SUMB_2__3_) );
  INVX2M U152 ( .A(B[0]), .Y(n101) );
  XNOR2X2M U153 ( .A(n54), .B(n75), .Y(SUMB_5__1_) );
  INVX2M U154 ( .A(B[5]), .Y(n87) );
  INVX2M U155 ( .A(B[4]), .Y(n86) );
  INVX2M U156 ( .A(B[3]), .Y(n85) );
  AND2X2M U157 ( .A(B[15]), .B(n62), .Y(n64) );
  CLKXOR2X2M U158 ( .A(n67), .B(B[16]), .Y(SUMB_6__15_) );
  XNOR2X2M U159 ( .A(B[1]), .B(n84), .Y(SUMB_2__1_) );
  XNOR2X2M U160 ( .A(B[0]), .B(n100), .Y(A1_0_) );
  INVX2M U161 ( .A(B[2]), .Y(n84) );
  BUFX2M U162 ( .A(B[0]), .Y(PRODUCT[1]) );
  AND2X2M U163 ( .A(B[16]), .B(n67), .Y(n65) );
  hfb_1_1_DW01_add_11 FS_1 ( .A({1'b1, n98, A1_19_, A1_18_, A1_17_, A1_16_, 
        A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, 
        A1_6_, A1_5_, n99, A1_3_, A1_2_, A1_1_, A1_0_}), .B({n65, n60, n61, 
        n52, n33, n46, A2_15_, n45, n50, n44, n49, n43, n42, n47, n48, n41, 
        SUMB_6__0_, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(
        PRODUCT[23:2]) );
endmodule


module hfb_1_1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66;

  OA21X2M U2 ( .A0(n27), .A1(n28), .B0(n29), .Y(n1) );
  AOI2B1X1M U3 ( .A1N(n16), .A0(n13), .B0(n15), .Y(n10) );
  INVX2M U4 ( .A(n65), .Y(n7) );
  INVX2M U5 ( .A(n26), .Y(n8) );
  INVX2M U6 ( .A(n24), .Y(SUM[5]) );
  BUFX2M U7 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U8 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U9 ( .A(A[3]), .Y(SUM[3]) );
  XNOR2X2M U10 ( .A(A[20]), .B(n1), .Y(SUM[20]) );
  BUFX2M U11 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U12 ( .A(A[1]), .Y(SUM[1]) );
  CLKXOR2X2M U13 ( .A(n9), .B(n10), .Y(SUM[9]) );
  NAND2BX1M U14 ( .AN(n11), .B(n12), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n13), .B(n14), .Y(SUM[8]) );
  NOR2X1M U16 ( .A(n15), .B(n16), .Y(n14) );
  CLKXOR2X2M U17 ( .A(n17), .B(n18), .Y(SUM[7]) );
  NAND2BX1M U18 ( .AN(n19), .B(n20), .Y(n17) );
  CLKXOR2X2M U19 ( .A(n8), .B(n21), .Y(SUM[6]) );
  NOR2X1M U20 ( .A(n22), .B(n23), .Y(n21) );
  NAND2BX1M U21 ( .AN(n25), .B(n26), .Y(n24) );
  CLKXOR2X2M U22 ( .A(n30), .B(n28), .Y(SUM[19]) );
  AOI2B1X1M U23 ( .A1N(n31), .A0(n32), .B0(n33), .Y(n28) );
  NAND2BX1M U24 ( .AN(n27), .B(n29), .Y(n30) );
  CLKNAND2X2M U25 ( .A(B[19]), .B(A[19]), .Y(n29) );
  NOR2X1M U26 ( .A(B[19]), .B(A[19]), .Y(n27) );
  CLKXOR2X2M U27 ( .A(n32), .B(n34), .Y(SUM[18]) );
  NOR2X1M U28 ( .A(n33), .B(n31), .Y(n34) );
  NOR2X1M U29 ( .A(B[18]), .B(A[18]), .Y(n31) );
  AND2X1M U30 ( .A(B[18]), .B(A[18]), .Y(n33) );
  OAI21X1M U31 ( .A0(n35), .A1(n36), .B0(n37), .Y(n32) );
  CLKXOR2X2M U32 ( .A(n38), .B(n36), .Y(SUM[17]) );
  AOI2B1X1M U33 ( .A1N(n39), .A0(n40), .B0(n41), .Y(n36) );
  NAND2BX1M U34 ( .AN(n35), .B(n37), .Y(n38) );
  CLKNAND2X2M U35 ( .A(B[17]), .B(A[17]), .Y(n37) );
  NOR2X1M U36 ( .A(B[17]), .B(A[17]), .Y(n35) );
  CLKXOR2X2M U37 ( .A(n40), .B(n42), .Y(SUM[16]) );
  NOR2X1M U38 ( .A(n41), .B(n39), .Y(n42) );
  NOR2X1M U39 ( .A(B[16]), .B(A[16]), .Y(n39) );
  AND2X1M U40 ( .A(B[16]), .B(A[16]), .Y(n41) );
  OAI21X1M U41 ( .A0(n43), .A1(n44), .B0(n45), .Y(n40) );
  CLKXOR2X2M U42 ( .A(n46), .B(n44), .Y(SUM[15]) );
  AOI2B1X1M U43 ( .A1N(n47), .A0(n48), .B0(n49), .Y(n44) );
  NAND2BX1M U44 ( .AN(n43), .B(n45), .Y(n46) );
  CLKNAND2X2M U45 ( .A(B[15]), .B(A[15]), .Y(n45) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n43) );
  CLKXOR2X2M U47 ( .A(n48), .B(n50), .Y(SUM[14]) );
  NOR2X1M U48 ( .A(n49), .B(n47), .Y(n50) );
  NOR2X1M U49 ( .A(B[14]), .B(A[14]), .Y(n47) );
  AND2X1M U50 ( .A(B[14]), .B(A[14]), .Y(n49) );
  OAI21X1M U51 ( .A0(n51), .A1(n52), .B0(n53), .Y(n48) );
  CLKXOR2X2M U52 ( .A(n54), .B(n52), .Y(SUM[13]) );
  AOI2B1X1M U53 ( .A1N(n55), .A0(n56), .B0(n57), .Y(n52) );
  NAND2BX1M U54 ( .AN(n51), .B(n53), .Y(n54) );
  CLKNAND2X2M U55 ( .A(B[13]), .B(A[13]), .Y(n53) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n51) );
  CLKXOR2X2M U57 ( .A(n56), .B(n58), .Y(SUM[12]) );
  NOR2X1M U58 ( .A(n57), .B(n55), .Y(n58) );
  NOR2X1M U59 ( .A(B[12]), .B(A[12]), .Y(n55) );
  AND2X1M U60 ( .A(B[12]), .B(A[12]), .Y(n57) );
  OAI21X1M U61 ( .A0(n59), .A1(n60), .B0(n61), .Y(n56) );
  CLKXOR2X2M U62 ( .A(n62), .B(n60), .Y(SUM[11]) );
  AOI21X1M U63 ( .A0(n63), .A1(n7), .B0(n64), .Y(n60) );
  NAND2BX1M U64 ( .AN(n59), .B(n61), .Y(n62) );
  CLKNAND2X2M U65 ( .A(B[11]), .B(A[11]), .Y(n61) );
  NOR2X1M U66 ( .A(B[11]), .B(A[11]), .Y(n59) );
  CLKXOR2X2M U67 ( .A(n63), .B(n66), .Y(SUM[10]) );
  NOR2X1M U68 ( .A(n64), .B(n65), .Y(n66) );
  NOR2X1M U69 ( .A(B[10]), .B(A[10]), .Y(n65) );
  AND2X1M U70 ( .A(B[10]), .B(A[10]), .Y(n64) );
  OAI21X1M U71 ( .A0(n10), .A1(n11), .B0(n12), .Y(n63) );
  CLKNAND2X2M U72 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U73 ( .A(B[9]), .B(A[9]), .Y(n11) );
  AND2X1M U74 ( .A(B[8]), .B(A[8]), .Y(n15) );
  OAI21X1M U75 ( .A0(n19), .A1(n18), .B0(n20), .Y(n13) );
  CLKNAND2X2M U76 ( .A(B[7]), .B(A[7]), .Y(n20) );
  AOI2B1X1M U77 ( .A1N(n23), .A0(n8), .B0(n22), .Y(n18) );
  AND2X1M U78 ( .A(B[6]), .B(A[6]), .Y(n22) );
  CLKNAND2X2M U79 ( .A(B[5]), .B(A[5]), .Y(n26) );
  NOR2X1M U80 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NOR2X1M U81 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1M U82 ( .A(B[7]), .B(A[7]), .Y(n19) );
  NOR2X1M U83 ( .A(B[8]), .B(A[8]), .Y(n16) );
endmodule


module hfb_1_1_DW02_mult_1 ( A, B, TC, PRODUCT );
  input [5:0] A;
  input [16:0] B;
  output [22:0] PRODUCT;
  input TC;
  wire   CARRYB_4__14_, CARRYB_4__12_, CARRYB_4__11_, CARRYB_4__10_,
         CARRYB_4__9_, CARRYB_4__8_, CARRYB_4__7_, CARRYB_4__6_, CARRYB_4__5_,
         CARRYB_4__4_, CARRYB_4__3_, CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_,
         SUMB_5__14_, SUMB_5__13_, SUMB_5__12_, SUMB_5__11_, SUMB_5__10_,
         SUMB_5__9_, SUMB_5__8_, SUMB_5__7_, SUMB_5__6_, SUMB_5__5_,
         SUMB_5__4_, SUMB_5__3_, SUMB_5__2_, SUMB_5__1_, SUMB_5__0_,
         SUMB_4__15_, SUMB_4__14_, SUMB_4__13_, SUMB_4__12_, SUMB_4__11_,
         SUMB_4__10_, SUMB_4__9_, SUMB_4__8_, SUMB_4__7_, SUMB_4__6_,
         SUMB_4__5_, SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_,
         SUMB_3__15_, SUMB_3__14_, SUMB_3__12_, SUMB_3__11_, SUMB_3__10_,
         SUMB_3__9_, SUMB_3__8_, SUMB_3__7_, SUMB_3__6_, SUMB_3__5_,
         SUMB_3__4_, SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, A1_20_, A1_18_,
         A1_17_, A1_16_, A1_15_, A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_,
         A1_8_, A1_7_, A1_6_, A1_5_, A1_4_, A1_2_, A1_1_, A2_15_, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66;

  ADDFX2M S1_4_0 ( .A(B[0]), .B(n17), .CI(SUMB_3__1_), .CO(CARRYB_4__0_), .S(
        A1_2_) );
  ADDFX2M S2_4_1 ( .A(B[1]), .B(n16), .CI(SUMB_3__2_), .CO(CARRYB_4__1_), .S(
        SUMB_4__1_) );
  ADDFX2M S2_4_14 ( .A(B[14]), .B(n9), .CI(SUMB_3__15_), .CO(CARRYB_4__14_), 
        .S(SUMB_4__14_) );
  ADDFX2M S2_4_11 ( .A(B[11]), .B(n10), .CI(SUMB_3__12_), .CO(CARRYB_4__11_), 
        .S(SUMB_4__11_) );
  ADDFX2M S2_4_12 ( .A(B[12]), .B(n7), .CI(B[13]), .CO(CARRYB_4__12_), .S(
        SUMB_4__12_) );
  ADDFX2M S2_4_9 ( .A(B[9]), .B(n15), .CI(SUMB_3__10_), .CO(CARRYB_4__9_), .S(
        SUMB_4__9_) );
  ADDFX2M S2_4_7 ( .A(B[7]), .B(n14), .CI(SUMB_3__8_), .CO(CARRYB_4__7_), .S(
        SUMB_4__7_) );
  ADDFX2M S2_4_5 ( .A(B[5]), .B(n13), .CI(SUMB_3__6_), .CO(CARRYB_4__5_), .S(
        SUMB_4__5_) );
  ADDFX2M S2_4_6 ( .A(B[6]), .B(n5), .CI(SUMB_3__7_), .CO(CARRYB_4__6_), .S(
        SUMB_4__6_) );
  ADDFX2M S2_4_2 ( .A(B[2]), .B(n12), .CI(SUMB_3__3_), .CO(CARRYB_4__2_), .S(
        SUMB_4__2_) );
  ADDFX2M S2_4_10 ( .A(B[10]), .B(n6), .CI(SUMB_3__11_), .CO(CARRYB_4__10_), 
        .S(SUMB_4__10_) );
  ADDFX2M S2_4_8 ( .A(B[8]), .B(n4), .CI(SUMB_3__9_), .CO(CARRYB_4__8_), .S(
        SUMB_4__8_) );
  ADDFX2M S2_4_4 ( .A(B[4]), .B(n3), .CI(SUMB_3__5_), .CO(CARRYB_4__4_), .S(
        SUMB_4__4_) );
  ADDFX2M S2_4_3 ( .A(B[3]), .B(n11), .CI(SUMB_3__4_), .CO(CARRYB_4__3_), .S(
        SUMB_4__3_) );
  ADDFX2M S14_16_0 ( .A(B[16]), .B(n8), .CI(SUMB_5__11_), .CO(A2_15_), .S(
        A1_14_) );
  AND2X2M U2 ( .A(B[7]), .B(B[4]), .Y(n3) );
  AND2X2M U3 ( .A(B[11]), .B(B[8]), .Y(n4) );
  AND2X2M U4 ( .A(B[9]), .B(B[6]), .Y(n5) );
  AND2X2M U5 ( .A(B[13]), .B(B[10]), .Y(n6) );
  AND2X2M U6 ( .A(B[15]), .B(B[12]), .Y(n7) );
  AND2X2M U7 ( .A(SUMB_4__11_), .B(CARRYB_4__10_), .Y(n8) );
  AND2X2M U8 ( .A(B[16]), .B(B[14]), .Y(n9) );
  AND2X2M U9 ( .A(B[14]), .B(B[11]), .Y(n10) );
  AND2X2M U10 ( .A(B[6]), .B(B[3]), .Y(n11) );
  AND2X2M U11 ( .A(B[5]), .B(B[2]), .Y(n12) );
  AND2X2M U12 ( .A(B[8]), .B(B[5]), .Y(n13) );
  AND2X2M U13 ( .A(B[10]), .B(B[7]), .Y(n14) );
  AND2X2M U14 ( .A(B[12]), .B(B[9]), .Y(n15) );
  AND2X2M U15 ( .A(B[4]), .B(B[1]), .Y(n16) );
  AND2X2M U16 ( .A(B[0]), .B(B[3]), .Y(n17) );
  CLKXOR2X2M U17 ( .A(n37), .B(SUMB_5__2_), .Y(A1_5_) );
  CLKXOR2X2M U18 ( .A(n39), .B(SUMB_5__4_), .Y(A1_7_) );
  CLKXOR2X2M U19 ( .A(n34), .B(SUMB_5__6_), .Y(A1_9_) );
  CLKXOR2X2M U20 ( .A(n40), .B(SUMB_5__8_), .Y(A1_11_) );
  CLKXOR2X2M U21 ( .A(n42), .B(SUMB_5__10_), .Y(A1_13_) );
  CLKXOR2X2M U22 ( .A(n38), .B(SUMB_5__3_), .Y(A1_6_) );
  CLKXOR2X2M U23 ( .A(n32), .B(SUMB_5__5_), .Y(A1_8_) );
  CLKXOR2X2M U24 ( .A(n31), .B(SUMB_5__7_), .Y(A1_10_) );
  CLKXOR2X2M U25 ( .A(n41), .B(SUMB_5__9_), .Y(A1_12_) );
  CLKXOR2X2M U26 ( .A(n33), .B(SUMB_5__13_), .Y(A1_16_) );
  CLKXOR2X2M U27 ( .A(n43), .B(SUMB_5__12_), .Y(A1_15_) );
  AND2X2M U28 ( .A(n36), .B(SUMB_5__1_), .Y(n18) );
  AND2X2M U29 ( .A(n37), .B(SUMB_5__2_), .Y(n19) );
  AND2X2M U30 ( .A(n39), .B(SUMB_5__4_), .Y(n20) );
  AND2X2M U31 ( .A(n34), .B(SUMB_5__6_), .Y(n21) );
  AND2X2M U32 ( .A(n40), .B(SUMB_5__8_), .Y(n22) );
  AND2X2M U33 ( .A(n42), .B(SUMB_5__10_), .Y(n23) );
  CLKXOR2X2M U34 ( .A(n36), .B(SUMB_5__1_), .Y(A1_4_) );
  AND2X2M U35 ( .A(n33), .B(SUMB_5__13_), .Y(n24) );
  CLKXOR2X2M U36 ( .A(n44), .B(SUMB_5__14_), .Y(A1_17_) );
  AND2X2M U37 ( .A(n38), .B(SUMB_5__3_), .Y(n25) );
  AND2X2M U38 ( .A(n32), .B(SUMB_5__5_), .Y(n26) );
  AND2X2M U39 ( .A(n31), .B(SUMB_5__7_), .Y(n27) );
  AND2X2M U40 ( .A(n41), .B(SUMB_5__9_), .Y(n28) );
  AND2X2M U41 ( .A(n43), .B(SUMB_5__12_), .Y(n29) );
  AND2X2M U42 ( .A(n44), .B(SUMB_5__14_), .Y(n30) );
  CLKXOR2X2M U43 ( .A(CARRYB_4__2_), .B(SUMB_4__3_), .Y(SUMB_5__2_) );
  CLKXOR2X2M U44 ( .A(CARRYB_4__4_), .B(SUMB_4__5_), .Y(SUMB_5__4_) );
  CLKXOR2X2M U45 ( .A(CARRYB_4__5_), .B(SUMB_4__6_), .Y(SUMB_5__5_) );
  CLKXOR2X2M U46 ( .A(CARRYB_4__7_), .B(SUMB_4__8_), .Y(SUMB_5__7_) );
  CLKXOR2X2M U47 ( .A(CARRYB_4__9_), .B(SUMB_4__10_), .Y(SUMB_5__9_) );
  CLKXOR2X2M U48 ( .A(CARRYB_4__10_), .B(SUMB_4__11_), .Y(SUMB_5__10_) );
  CLKXOR2X2M U49 ( .A(CARRYB_4__12_), .B(SUMB_4__13_), .Y(SUMB_5__12_) );
  AND2X2M U50 ( .A(SUMB_4__7_), .B(CARRYB_4__6_), .Y(n31) );
  AND2X2M U51 ( .A(SUMB_4__5_), .B(CARRYB_4__4_), .Y(n32) );
  CLKXOR2X2M U52 ( .A(CARRYB_4__1_), .B(SUMB_4__2_), .Y(SUMB_5__1_) );
  CLKXOR2X2M U53 ( .A(CARRYB_4__3_), .B(SUMB_4__4_), .Y(SUMB_5__3_) );
  CLKXOR2X2M U54 ( .A(CARRYB_4__6_), .B(SUMB_4__7_), .Y(SUMB_5__6_) );
  CLKXOR2X2M U55 ( .A(CARRYB_4__8_), .B(SUMB_4__9_), .Y(SUMB_5__8_) );
  INVX2M U56 ( .A(SUMB_4__12_), .Y(n52) );
  CLKXOR2X2M U57 ( .A(n48), .B(SUMB_4__14_), .Y(SUMB_5__13_) );
  CLKXOR2X2M U58 ( .A(CARRYB_4__14_), .B(SUMB_4__15_), .Y(SUMB_5__14_) );
  CLKXOR2X2M U59 ( .A(n35), .B(n46), .Y(A1_18_) );
  AND2X2M U60 ( .A(SUMB_4__13_), .B(CARRYB_4__12_), .Y(n33) );
  XNOR2X2M U61 ( .A(CARRYB_4__0_), .B(n51), .Y(SUMB_5__0_) );
  AND2X2M U62 ( .A(SUMB_4__6_), .B(CARRYB_4__5_), .Y(n34) );
  AND2X2M U63 ( .A(SUMB_4__15_), .B(CARRYB_4__14_), .Y(n35) );
  AND2X2M U64 ( .A(SUMB_4__1_), .B(CARRYB_4__0_), .Y(n36) );
  AND2X2M U65 ( .A(SUMB_4__2_), .B(CARRYB_4__1_), .Y(n37) );
  AND2X2M U66 ( .A(SUMB_4__3_), .B(CARRYB_4__2_), .Y(n38) );
  AND2X2M U67 ( .A(SUMB_4__4_), .B(CARRYB_4__3_), .Y(n39) );
  AND2X2M U68 ( .A(SUMB_4__8_), .B(CARRYB_4__7_), .Y(n40) );
  AND2X2M U69 ( .A(SUMB_4__9_), .B(CARRYB_4__8_), .Y(n41) );
  AND2X2M U70 ( .A(SUMB_4__10_), .B(CARRYB_4__9_), .Y(n42) );
  AND2X2M U71 ( .A(SUMB_4__12_), .B(CARRYB_4__11_), .Y(n43) );
  AND2X2M U72 ( .A(SUMB_4__14_), .B(n48), .Y(n44) );
  INVX2M U73 ( .A(SUMB_4__1_), .Y(n51) );
  AND2X2M U74 ( .A(n35), .B(n46), .Y(n45) );
  CLKXOR2X2M U75 ( .A(B[14]), .B(B[16]), .Y(SUMB_3__14_) );
  CLKXOR2X2M U76 ( .A(B[13]), .B(SUMB_3__14_), .Y(SUMB_4__13_) );
  XNOR2X2M U77 ( .A(CARRYB_4__11_), .B(n52), .Y(SUMB_5__11_) );
  XNOR2X2M U78 ( .A(B[4]), .B(n57), .Y(SUMB_3__4_) );
  XNOR2X2M U79 ( .A(B[5]), .B(n58), .Y(SUMB_3__5_) );
  XNOR2X2M U80 ( .A(B[9]), .B(n62), .Y(SUMB_3__9_) );
  XNOR2X2M U81 ( .A(B[11]), .B(n64), .Y(SUMB_3__11_) );
  XNOR2X2M U82 ( .A(B[3]), .B(n56), .Y(SUMB_3__3_) );
  XNOR2X2M U83 ( .A(B[7]), .B(n60), .Y(SUMB_3__7_) );
  XNOR2X2M U84 ( .A(B[6]), .B(n59), .Y(SUMB_3__6_) );
  XNOR2X2M U85 ( .A(B[8]), .B(n61), .Y(SUMB_3__8_) );
  XNOR2X2M U86 ( .A(B[10]), .B(n63), .Y(SUMB_3__10_) );
  XNOR2X2M U87 ( .A(B[12]), .B(n65), .Y(SUMB_3__12_) );
  XNOR2X2M U88 ( .A(B[15]), .B(n66), .Y(SUMB_3__15_) );
  INVX2M U89 ( .A(B[16]), .Y(n66) );
  INVX2M U90 ( .A(B[15]), .Y(n65) );
  INVX2M U91 ( .A(B[7]), .Y(n57) );
  INVX2M U92 ( .A(B[6]), .Y(n56) );
  INVX2M U93 ( .A(B[8]), .Y(n58) );
  INVX2M U94 ( .A(B[10]), .Y(n60) );
  INVX2M U95 ( .A(B[9]), .Y(n59) );
  INVX2M U96 ( .A(B[12]), .Y(n62) );
  INVX2M U97 ( .A(B[11]), .Y(n61) );
  INVX2M U98 ( .A(B[14]), .Y(n64) );
  INVX2M U99 ( .A(B[13]), .Y(n63) );
  CLKXOR2X2M U100 ( .A(n47), .B(B[15]), .Y(SUMB_4__15_) );
  XNOR2X2M U101 ( .A(B[2]), .B(n55), .Y(SUMB_3__2_) );
  AND2X2M U102 ( .A(B[15]), .B(n47), .Y(n46) );
  XNOR2X2M U103 ( .A(B[1]), .B(n54), .Y(SUMB_3__1_) );
  INVX2M U104 ( .A(B[5]), .Y(n55) );
  INVX2M U105 ( .A(B[4]), .Y(n54) );
  AND2X2M U106 ( .A(B[16]), .B(B[15]), .Y(n47) );
  AND2X2M U107 ( .A(SUMB_3__14_), .B(B[13]), .Y(n48) );
  XNOR2X2M U108 ( .A(B[0]), .B(n53), .Y(A1_1_) );
  INVX2M U109 ( .A(B[3]), .Y(n53) );
  BUFX2M U110 ( .A(B[1]), .Y(PRODUCT[1]) );
  BUFX2M U111 ( .A(B[0]), .Y(PRODUCT[0]) );
  CLKINVX1M U114 ( .A(n66), .Y(A1_20_) );
  hfb_1_1_DW01_add_10 FS_1 ( .A({A1_20_, B[16], A1_18_, A1_17_, A1_16_, A1_15_, 
        A1_14_, A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, 
        A1_5_, A1_4_, SUMB_5__0_, A1_2_, A1_1_, B[2]}), .B({1'b0, n45, n30, 
        n24, n29, A2_15_, n23, n28, n22, n27, n21, n26, n20, n25, n19, n18, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[22:2]) );
endmodule


module hfb_1_1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  INVX2M U2 ( .A(n69), .Y(n7) );
  INVX2M U3 ( .A(n22), .Y(n9) );
  INVX2M U4 ( .A(n29), .Y(n10) );
  INVX2M U5 ( .A(n49), .Y(n6) );
  INVX2M U6 ( .A(n66), .Y(n8) );
  AOI21BX2M U7 ( .A0(n16), .A1(n15), .B0N(n17), .Y(n11) );
  INVX2M U8 ( .A(n55), .Y(n5) );
  CLKXOR2X2M U9 ( .A(B[19]), .B(n1), .Y(SUM[19]) );
  AOI21BX2M U10 ( .A0(n34), .A1(A[18]), .B0N(n35), .Y(n1) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U13 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X1M U14 ( .A(n11), .B(n12), .Y(SUM[9]) );
  NOR2X1M U15 ( .A(n8), .B(n13), .Y(n12) );
  XNOR2X1M U16 ( .A(n14), .B(n15), .Y(SUM[8]) );
  CLKNAND2X2M U17 ( .A(n16), .B(n17), .Y(n14) );
  CLKXOR2X2M U18 ( .A(n18), .B(n19), .Y(SUM[7]) );
  NOR2BX1M U19 ( .AN(n20), .B(n21), .Y(n19) );
  OAI21X1M U20 ( .A0(n22), .A1(n23), .B0(n24), .Y(n18) );
  CLKXOR2X2M U21 ( .A(n25), .B(n23), .Y(SUM[6]) );
  AOI2B1X1M U22 ( .A1N(n26), .A0(n27), .B0(n10), .Y(n23) );
  CLKNAND2X2M U23 ( .A(n9), .B(n24), .Y(n25) );
  CLKXOR2X2M U24 ( .A(n27), .B(n28), .Y(SUM[5]) );
  NOR2X1M U25 ( .A(n10), .B(n26), .Y(n28) );
  OAI21X1M U26 ( .A0(n30), .A1(n31), .B0(n32), .Y(n27) );
  CLKXOR2X2M U27 ( .A(n31), .B(n33), .Y(SUM[4]) );
  NAND2BX1M U28 ( .AN(n30), .B(n32), .Y(n33) );
  OA21X1M U29 ( .A0(B[3]), .A1(A[3]), .B0(n31), .Y(SUM[3]) );
  OAI21X1M U30 ( .A0(A[18]), .A1(n34), .B0(B[18]), .Y(n35) );
  XOR3XLM U31 ( .A(B[18]), .B(A[18]), .C(n34), .Y(SUM[18]) );
  AO22X1M U32 ( .A0(n36), .A1(A[17]), .B0(n37), .B1(B[17]), .Y(n34) );
  OR2X1M U33 ( .A(A[17]), .B(n36), .Y(n37) );
  XOR3XLM U34 ( .A(B[17]), .B(A[17]), .C(n36), .Y(SUM[17]) );
  OAI21X1M U35 ( .A0(n38), .A1(n39), .B0(n40), .Y(n36) );
  CLKXOR2X2M U36 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2BB1X1M U37 ( .A0N(n42), .A1N(n43), .B0(n44), .Y(n39) );
  AOI21BX1M U38 ( .A0(n45), .A1(n5), .B0N(n46), .Y(n43) );
  OAI21X1M U39 ( .A0(n47), .A1(n48), .B0(n49), .Y(n45) );
  OA21X1M U40 ( .A0(n50), .A1(n51), .B0(n52), .Y(n48) );
  NAND2BX1M U41 ( .AN(n38), .B(n40), .Y(n41) );
  CLKNAND2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n40) );
  NOR2X1M U43 ( .A(B[16]), .B(A[16]), .Y(n38) );
  CLKXOR2X2M U44 ( .A(n53), .B(n54), .Y(SUM[15]) );
  NOR2X1M U45 ( .A(n44), .B(n42), .Y(n54) );
  NOR2X1M U46 ( .A(B[15]), .B(A[15]), .Y(n42) );
  AND2X1M U47 ( .A(B[15]), .B(A[15]), .Y(n44) );
  OAI21X1M U48 ( .A0(n55), .A1(n56), .B0(n46), .Y(n53) );
  CLKXOR2X2M U49 ( .A(n57), .B(n56), .Y(SUM[14]) );
  AOI2B1X1M U50 ( .A1N(n47), .A0(n58), .B0(n6), .Y(n56) );
  CLKNAND2X2M U51 ( .A(n5), .B(n46), .Y(n57) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n46) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n55) );
  CLKXOR2X2M U54 ( .A(n58), .B(n59), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n6), .B(n47), .Y(n59) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n47) );
  CLKNAND2X2M U57 ( .A(B[13]), .B(A[13]), .Y(n49) );
  OAI21X1M U58 ( .A0(n51), .A1(n50), .B0(n52), .Y(n58) );
  CLKXOR2X2M U59 ( .A(n60), .B(n50), .Y(SUM[12]) );
  OA21X1M U60 ( .A0(n61), .A1(n62), .B0(n63), .Y(n50) );
  AOI21BX1M U61 ( .A0(n64), .A1(n7), .B0N(n65), .Y(n62) );
  OAI21X1M U62 ( .A0(n13), .A1(n11), .B0(n66), .Y(n64) );
  NAND2BX1M U63 ( .AN(n51), .B(n52), .Y(n60) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n52) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n51) );
  CLKXOR2X2M U66 ( .A(n67), .B(n68), .Y(SUM[11]) );
  NOR2BX1M U67 ( .AN(n63), .B(n61), .Y(n68) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n61) );
  CLKNAND2X2M U69 ( .A(B[11]), .B(A[11]), .Y(n63) );
  OAI21X1M U70 ( .A0(n69), .A1(n70), .B0(n65), .Y(n67) );
  CLKXOR2X2M U71 ( .A(n71), .B(n70), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n11), .A1N(n13), .B0(n8), .Y(n70) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n66) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n13) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n17) );
  OAI21X1M U76 ( .A0(n21), .A1(n72), .B0(n20), .Y(n15) );
  CLKNAND2X2M U77 ( .A(B[7]), .B(A[7]), .Y(n20) );
  AOI21BX1M U78 ( .A0(n73), .A1(n9), .B0N(n24), .Y(n72) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n24) );
  NOR2X1M U80 ( .A(B[6]), .B(A[6]), .Y(n22) );
  OAI21X1M U81 ( .A0(n26), .A1(n74), .B0(n29), .Y(n73) );
  CLKNAND2X2M U82 ( .A(B[5]), .B(A[5]), .Y(n29) );
  OA21X1M U83 ( .A0(n31), .A1(n30), .B0(n32), .Y(n74) );
  CLKNAND2X2M U84 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NOR2X1M U85 ( .A(B[4]), .B(A[4]), .Y(n30) );
  CLKNAND2X2M U86 ( .A(B[3]), .B(A[3]), .Y(n31) );
  NOR2X1M U87 ( .A(B[5]), .B(A[5]), .Y(n26) );
  NOR2X1M U88 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OR2X1M U89 ( .A(B[8]), .B(A[8]), .Y(n16) );
  CLKNAND2X2M U90 ( .A(n7), .B(n65), .Y(n71) );
  CLKNAND2X2M U91 ( .A(B[10]), .B(A[10]), .Y(n65) );
  NOR2X1M U92 ( .A(B[10]), .B(A[10]), .Y(n69) );
endmodule


module hfb_1_1_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [4:0] A;
  input [16:0] B;
  output [21:0] PRODUCT;
  input TC;
  wire   SUMB_4__15_, SUMB_4__14_, SUMB_4__13_, SUMB_4__12_, SUMB_4__11_,
         SUMB_4__10_, SUMB_4__9_, SUMB_4__8_, SUMB_4__7_, SUMB_4__6_,
         SUMB_4__5_, SUMB_4__4_, SUMB_4__3_, SUMB_4__2_, SUMB_4__1_,
         SUMB_4__0_, SUMB_1__15_, A1_17_, A1_16_, A1_15_, A1_14_, A1_13_,
         A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_5_, A1_4_,
         A1_3_, A2_15_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;

  ADDFX2M S14_16_0 ( .A(B[16]), .B(n3), .CI(SUMB_4__12_), .CO(A2_15_), .S(
        A1_14_) );
  AND2X2M U2 ( .A(B[14]), .B(n41), .Y(n3) );
  CLKXOR2X2M U3 ( .A(n5), .B(SUMB_4__13_), .Y(A1_15_) );
  AND2X2M U4 ( .A(n5), .B(SUMB_4__13_), .Y(n4) );
  INVX2M U5 ( .A(SUMB_1__15_), .Y(n35) );
  CLKXOR2X2M U6 ( .A(n39), .B(n20), .Y(SUMB_4__13_) );
  CLKXOR2X2M U7 ( .A(n25), .B(SUMB_4__8_), .Y(A1_10_) );
  AND2X2M U8 ( .A(SUMB_1__15_), .B(n40), .Y(n5) );
  CLKXOR2X2M U9 ( .A(n28), .B(SUMB_4__15_), .Y(A1_17_) );
  CLKXOR2X2M U10 ( .A(n30), .B(SUMB_4__3_), .Y(A1_5_) );
  CLKXOR2X2M U11 ( .A(n22), .B(SUMB_4__4_), .Y(A1_6_) );
  CLKXOR2X2M U12 ( .A(n29), .B(SUMB_4__2_), .Y(A1_4_) );
  CLKXOR2X2M U13 ( .A(n32), .B(SUMB_4__9_), .Y(A1_11_) );
  CLKXOR2X2M U14 ( .A(n26), .B(SUMB_4__10_), .Y(A1_12_) );
  CLKXOR2X2M U15 ( .A(n7), .B(SUMB_4__14_), .Y(A1_16_) );
  AND2X2M U16 ( .A(n27), .B(SUMB_4__11_), .Y(n6) );
  INVX2M U17 ( .A(SUMB_4__0_), .Y(n50) );
  CLKXOR2X2M U18 ( .A(n21), .B(SUMB_4__1_), .Y(A1_3_) );
  CLKXOR2X2M U19 ( .A(n31), .B(SUMB_4__5_), .Y(A1_7_) );
  CLKXOR2X2M U20 ( .A(n24), .B(SUMB_4__7_), .Y(A1_9_) );
  CLKXOR2X2M U21 ( .A(n23), .B(SUMB_4__6_), .Y(A1_8_) );
  CLKXOR2X2M U22 ( .A(n27), .B(SUMB_4__11_), .Y(A1_13_) );
  AND2X2M U23 ( .A(n20), .B(n39), .Y(n7) );
  AND2X2M U24 ( .A(n29), .B(SUMB_4__2_), .Y(n8) );
  AND2X2M U25 ( .A(n30), .B(SUMB_4__3_), .Y(n9) );
  AND2X2M U26 ( .A(n21), .B(SUMB_4__1_), .Y(n10) );
  AND2X2M U27 ( .A(n22), .B(SUMB_4__4_), .Y(n11) );
  AND2X2M U28 ( .A(n23), .B(SUMB_4__6_), .Y(n12) );
  AND2X2M U29 ( .A(n24), .B(SUMB_4__7_), .Y(n13) );
  AND2X2M U30 ( .A(n25), .B(SUMB_4__8_), .Y(n14) );
  AND2X2M U31 ( .A(n26), .B(SUMB_4__10_), .Y(n15) );
  AND2X2M U32 ( .A(n32), .B(SUMB_4__9_), .Y(n16) );
  AND2X2M U33 ( .A(n28), .B(SUMB_4__15_), .Y(n17) );
  AND2X2M U34 ( .A(n31), .B(SUMB_4__5_), .Y(n18) );
  AND2X2M U35 ( .A(n7), .B(SUMB_4__14_), .Y(n19) );
  INVX2M U36 ( .A(n33), .Y(n36) );
  CLKXOR2X2M U37 ( .A(B[15]), .B(B[16]), .Y(SUMB_1__15_) );
  XNOR2X2M U38 ( .A(n40), .B(n35), .Y(SUMB_4__12_) );
  CLKXOR2X2M U39 ( .A(n44), .B(B[11]), .Y(SUMB_4__8_) );
  AND2X2M U40 ( .A(B[16]), .B(B[15]), .Y(n20) );
  CLKXOR2X2M U41 ( .A(n49), .B(B[6]), .Y(SUMB_4__3_) );
  CLKXOR2X2M U42 ( .A(n51), .B(B[5]), .Y(SUMB_4__2_) );
  CLKXOR2X2M U43 ( .A(n48), .B(B[7]), .Y(SUMB_4__4_) );
  CLKXOR2X2M U44 ( .A(n52), .B(B[4]), .Y(SUMB_4__1_) );
  CLKXOR2X2M U45 ( .A(n47), .B(B[8]), .Y(SUMB_4__5_) );
  CLKXOR2X2M U46 ( .A(n45), .B(B[10]), .Y(SUMB_4__7_) );
  CLKXOR2X2M U47 ( .A(n46), .B(B[9]), .Y(SUMB_4__6_) );
  CLKXOR2X2M U48 ( .A(n43), .B(B[12]), .Y(SUMB_4__9_) );
  CLKXOR2X2M U49 ( .A(n41), .B(B[14]), .Y(SUMB_4__11_) );
  CLKXOR2X2M U50 ( .A(n42), .B(B[13]), .Y(SUMB_4__10_) );
  CLKXOR2X2M U51 ( .A(n38), .B(B[16]), .Y(SUMB_4__14_) );
  CLKXOR2X2M U52 ( .A(n37), .B(B[16]), .Y(SUMB_4__15_) );
  CLKXOR2X2M U53 ( .A(n53), .B(B[3]), .Y(SUMB_4__0_) );
  AND2X2M U54 ( .A(B[3]), .B(n53), .Y(n21) );
  AND2X2M U55 ( .A(B[6]), .B(n49), .Y(n22) );
  AND2X2M U56 ( .A(B[8]), .B(n47), .Y(n23) );
  AND2X2M U57 ( .A(B[9]), .B(n46), .Y(n24) );
  AND2X2M U58 ( .A(B[10]), .B(n45), .Y(n25) );
  AND2X2M U59 ( .A(B[12]), .B(n43), .Y(n26) );
  AND2X2M U60 ( .A(B[13]), .B(n42), .Y(n27) );
  INVX2M U61 ( .A(B[3]), .Y(n49) );
  INVX2M U62 ( .A(B[4]), .Y(n48) );
  INVX2M U63 ( .A(B[7]), .Y(n45) );
  INVX2M U64 ( .A(B[6]), .Y(n46) );
  INVX2M U65 ( .A(B[8]), .Y(n44) );
  INVX2M U66 ( .A(B[9]), .Y(n43) );
  INVX2M U67 ( .A(B[10]), .Y(n42) );
  INVX2M U68 ( .A(B[11]), .Y(n41) );
  INVX2M U69 ( .A(B[13]), .Y(n39) );
  INVX2M U70 ( .A(B[12]), .Y(n40) );
  INVX2M U71 ( .A(B[14]), .Y(n38) );
  INVX2M U72 ( .A(B[15]), .Y(n37) );
  AND2X2M U73 ( .A(B[16]), .B(n38), .Y(n28) );
  INVX2M U74 ( .A(B[2]), .Y(n51) );
  AND2X2M U75 ( .A(B[4]), .B(n52), .Y(n29) );
  AND2X2M U76 ( .A(B[5]), .B(n51), .Y(n30) );
  AND2X2M U77 ( .A(B[7]), .B(n48), .Y(n31) );
  AND2X2M U78 ( .A(B[11]), .B(n44), .Y(n32) );
  INVX2M U79 ( .A(B[0]), .Y(n53) );
  INVX2M U80 ( .A(B[5]), .Y(n47) );
  INVX2M U81 ( .A(B[1]), .Y(n52) );
  AND2X2M U82 ( .A(B[16]), .B(n37), .Y(n33) );
  BUFX2M U83 ( .A(B[0]), .Y(PRODUCT[1]) );
  hfb_1_1_DW01_add_9 FS_1 ( .A({1'b1, n36, A1_17_, A1_16_, A1_15_, A1_14_, 
        A1_13_, A1_12_, A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_5_, 
        A1_4_, A1_3_, n50, B[2:1]}), .B({n33, n17, n19, n4, A2_15_, n6, n15, 
        n16, n14, n13, n12, n18, n11, n9, n8, n10, SUMB_4__0_, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM(PRODUCT[21:2]) );
endmodule


module hfb_1_1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2X2M U3 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  INVX2M U4 ( .A(A[3]), .Y(n4) );
  BUFX2M U5 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module hfb_1_1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[2]), .B(n4), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[2]), .Y(n4) );
  BUFX2M U4 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U5 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [24:2] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n21), .CI(n22), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n7), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n5), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_4 ( .A(A[4]), .B(n18), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFX2M U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFX2M U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n3), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n4), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n10), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n11), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n14), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n17), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3XLM U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  INVX2M U1 ( .A(B[5]), .Y(n17) );
  INVX2M U2 ( .A(B[6]), .Y(n16) );
  INVX2M U3 ( .A(B[7]), .Y(n15) );
  INVX2M U4 ( .A(B[8]), .Y(n14) );
  INVX2M U5 ( .A(B[9]), .Y(n13) );
  INVX2M U6 ( .A(B[10]), .Y(n12) );
  INVX2M U7 ( .A(B[11]), .Y(n11) );
  INVX2M U8 ( .A(B[12]), .Y(n10) );
  INVX2M U9 ( .A(B[13]), .Y(n9) );
  INVX2M U10 ( .A(B[16]), .Y(n6) );
  INVX2M U11 ( .A(B[18]), .Y(n4) );
  INVX2M U12 ( .A(B[19]), .Y(n3) );
  INVX2M U13 ( .A(B[4]), .Y(n18) );
  INVX2M U14 ( .A(B[17]), .Y(n5) );
  INVX2M U15 ( .A(B[14]), .Y(n8) );
  INVX2M U16 ( .A(B[15]), .Y(n7) );
  INVX2M U17 ( .A(B[24]), .Y(n2) );
  INVX2M U18 ( .A(B[2]), .Y(n20) );
  INVX2M U19 ( .A(B[3]), .Y(n19) );
  INVX2M U20 ( .A(B[0]), .Y(n22) );
  INVX2M U21 ( .A(B[1]), .Y(n21) );
  BUFX2M U22 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module hfb_1_1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [23:3] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3XLM U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2M U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  INVX2M U2 ( .A(A[1]), .Y(n3) );
  XNOR2X2M U3 ( .A(B[1]), .B(n3), .Y(SUM[1]) );
  BUFX2M U4 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:3] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  AND2X2M U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  BUFX2M U3 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:2] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module hfb_1_1_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [24:9] carry;

  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[8]), .B0(n2), .Y(carry[9]) );
  OAI21X1M U2 ( .A0(A[8]), .A1(n1), .B0(B[8]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[7]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[7]), .A1(n3), .B0(B[7]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[6]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[6]), .A1(n5), .B0(B[6]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[5]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[5]), .A1(n7), .B0(B[5]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(n9), .A1N(A[4]), .B0(n10), .Y(n7) );
  OAI21X1M U10 ( .A0(A[4]), .A1(n9), .B0(B[4]), .Y(n10) );
  OAI2BB1X1M U11 ( .A0N(n11), .A1N(A[3]), .B0(n12), .Y(n9) );
  OAI21X1M U12 ( .A0(A[3]), .A1(n11), .B0(B[3]), .Y(n12) );
  OAI2BB1X1M U13 ( .A0N(n13), .A1N(A[2]), .B0(n14), .Y(n11) );
  OAI21X1M U14 ( .A0(A[2]), .A1(n13), .B0(B[2]), .Y(n14) );
  OAI2BB1X1M U15 ( .A0N(A[1]), .A1N(B[1]), .B0(n15), .Y(n13) );
  OAI211X1M U16 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n15) );
endmodule


module hfb_1_test_1 ( clk, reset, data_in, even_out, odd_out, test_si, test_se
 );
  input [15:0] data_in;
  output [15:0] even_out;
  output [15:0] odd_out;
  input clk, reset, test_si, test_se;
  wire   N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N129, N130, N131, N132, N133, N134,
         N135, N136, N137, N138, N139, N140, N141, N142, N143, N144, N145, N9,
         N8, N7, N6, N5, N401, N400, N4, N399, N398, N397, N396, N395, N394,
         N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, N383,
         N382, N381, N380, N379, N378, N377, N376, N375, N374, N373, N372,
         N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361,
         N360, N334, N333, N332, N331, N330, N329, N328, N327, N326, N325,
         N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314,
         N313, N312, N310, N309, N308, N307, N306, N305, N304, N303, N302,
         N301, N300, N3, N299, N298, N297, N296, N295, N294, N269, N268, N267,
         N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256,
         N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245,
         N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234,
         N233, N232, N231, N230, N206, N205, N204, N203, N202, N201, N200, N2,
         N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189,
         N188, N187, N186, N184, N183, N182, N181, N180, N179, N178, N177,
         N176, N175, N174, N173, N172, N171, N170, N169, N168, N16, N15, N14,
         N13, N128, N127, N126, N125, N124, N123, N122, N121, N120, N12, N119,
         N118, N117, N116, N115, N114, N113, N112, N111, N110, N11, N109, N108,
         N10, N1, N0, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13;
  wire   [24:9] acc;
  wire   [255:0] d;

  SDFFRQX2M d_reg_12__14_ ( .D(d[78]), .SI(d[61]), .SE(n760), .CK(clk), .RN(
        n308), .Q(d[62]) );
  SDFFRQX2M d_reg_12__13_ ( .D(d[77]), .SI(d[60]), .SE(n757), .CK(clk), .RN(
        n308), .Q(d[61]) );
  SDFFRQX2M d_reg_12__12_ ( .D(d[76]), .SI(d[59]), .SE(n758), .CK(clk), .RN(
        n308), .Q(d[60]) );
  SDFFRQX2M d_reg_13__14_ ( .D(d[62]), .SI(d[45]), .SE(n756), .CK(clk), .RN(
        n309), .Q(d[46]) );
  SDFFRQX2M d_reg_13__13_ ( .D(d[61]), .SI(d[44]), .SE(n757), .CK(clk), .RN(
        n309), .Q(d[45]) );
  SDFFRQX2M d_reg_2__14_ ( .D(d[238]), .SI(d[221]), .SE(n763), .CK(clk), .RN(
        n294), .Q(d[222]) );
  SDFFRQX2M d_reg_2__13_ ( .D(d[237]), .SI(d[220]), .SE(n759), .CK(clk), .RN(
        n294), .Q(d[221]) );
  SDFFRQX2M d_reg_3__14_ ( .D(d[222]), .SI(d[205]), .SE(n762), .CK(clk), .RN(
        n296), .Q(d[206]) );
  SDFFRQX2M d_reg_3__13_ ( .D(d[221]), .SI(d[204]), .SE(n763), .CK(clk), .RN(
        n296), .Q(d[205]) );
  SDFFRQX2M d_reg_12__15_ ( .D(d[79]), .SI(d[62]), .SE(n756), .CK(clk), .RN(
        n308), .Q(d[63]) );
  SDFFRQX2M d_reg_13__15_ ( .D(d[63]), .SI(d[46]), .SE(n764), .CK(clk), .RN(
        n309), .Q(d[47]) );
  SDFFRQX2M d_reg_14__15_ ( .D(d[47]), .SI(d[30]), .SE(n759), .CK(clk), .RN(
        n310), .Q(d[31]) );
  SDFFRQX2M d_reg_2__15_ ( .D(d[239]), .SI(d[222]), .SE(n762), .CK(clk), .RN(
        n294), .Q(d[223]) );
  SDFFRQX2M d_reg_3__15_ ( .D(d[223]), .SI(d[206]), .SE(n764), .CK(clk), .RN(
        n296), .Q(d[207]) );
  SDFFRQX2M d_reg_15__14_ ( .D(d[30]), .SI(d[13]), .SE(n760), .CK(clk), .RN(
        n312), .Q(d[14]) );
  SDFFRQX2M d_reg_15__13_ ( .D(d[29]), .SI(d[12]), .SE(n759), .CK(clk), .RN(
        n312), .Q(d[13]) );
  SDFFRQX2M d_reg_15__12_ ( .D(d[28]), .SI(d[11]), .SE(n761), .CK(clk), .RN(
        n312), .Q(d[12]) );
  SDFFRQX2M d_reg_15__11_ ( .D(d[27]), .SI(d[10]), .SE(n763), .CK(clk), .RN(
        n312), .Q(d[11]) );
  SDFFRQX2M d_reg_12__11_ ( .D(d[75]), .SI(d[58]), .SE(n758), .CK(clk), .RN(
        n308), .Q(d[59]) );
  SDFFRQX2M d_reg_12__10_ ( .D(d[74]), .SI(d[57]), .SE(n757), .CK(clk), .RN(
        n308), .Q(d[58]) );
  SDFFRQX2M d_reg_12__9_ ( .D(d[73]), .SI(d[56]), .SE(n759), .CK(clk), .RN(
        n308), .Q(d[57]) );
  SDFFRQX2M d_reg_12__8_ ( .D(d[72]), .SI(d[55]), .SE(n757), .CK(clk), .RN(
        n308), .Q(d[56]) );
  SDFFRQX2M d_reg_13__12_ ( .D(d[60]), .SI(d[43]), .SE(n761), .CK(clk), .RN(
        n309), .Q(d[44]) );
  SDFFRQX2M d_reg_13__11_ ( .D(d[59]), .SI(d[42]), .SE(n756), .CK(clk), .RN(
        n309), .Q(d[43]) );
  SDFFRQX2M d_reg_13__10_ ( .D(d[58]), .SI(d[41]), .SE(n760), .CK(clk), .RN(
        n309), .Q(d[42]) );
  SDFFRQX2M d_reg_13__9_ ( .D(d[57]), .SI(d[40]), .SE(n757), .CK(clk), .RN(
        n309), .Q(d[41]) );
  SDFFRQX2M d_reg_13__8_ ( .D(d[56]), .SI(d[39]), .SE(n759), .CK(clk), .RN(
        n309), .Q(d[40]) );
  SDFFRQX2M d_reg_14__14_ ( .D(d[46]), .SI(d[29]), .SE(n756), .CK(clk), .RN(
        n310), .Q(d[30]) );
  SDFFRQX2M d_reg_14__13_ ( .D(d[45]), .SI(d[28]), .SE(n757), .CK(clk), .RN(
        n310), .Q(d[29]) );
  SDFFRQX2M d_reg_14__12_ ( .D(d[44]), .SI(d[27]), .SE(n763), .CK(clk), .RN(
        n310), .Q(d[28]) );
  SDFFRQX2M d_reg_14__11_ ( .D(d[43]), .SI(d[26]), .SE(n758), .CK(clk), .RN(
        n311), .Q(d[27]) );
  SDFFRQX2M d_reg_14__10_ ( .D(d[42]), .SI(d[25]), .SE(n762), .CK(clk), .RN(
        n311), .Q(d[26]) );
  SDFFRQX2M d_reg_0__14_ ( .D(data_in[14]), .SI(d[253]), .SE(n763), .CK(clk), 
        .RN(n292), .Q(d[254]) );
  SDFFRQX2M d_reg_0__13_ ( .D(data_in[13]), .SI(d[252]), .SE(n756), .CK(clk), 
        .RN(n292), .Q(d[253]) );
  SDFFRQX2M d_reg_0__12_ ( .D(data_in[12]), .SI(d[251]), .SE(n764), .CK(clk), 
        .RN(n292), .Q(d[252]) );
  SDFFRQX2M d_reg_0__11_ ( .D(data_in[11]), .SI(d[250]), .SE(n759), .CK(clk), 
        .RN(n292), .Q(d[251]) );
  SDFFRQX2M d_reg_1__14_ ( .D(d[254]), .SI(d[237]), .SE(n757), .CK(clk), .RN(
        n293), .Q(d[238]) );
  SDFFRQX2M d_reg_1__13_ ( .D(d[253]), .SI(d[236]), .SE(n764), .CK(clk), .RN(
        n293), .Q(d[237]) );
  SDFFRQX2M d_reg_1__12_ ( .D(d[252]), .SI(d[235]), .SE(n763), .CK(clk), .RN(
        n293), .Q(d[236]) );
  SDFFRQX2M d_reg_1__11_ ( .D(d[251]), .SI(d[234]), .SE(n759), .CK(clk), .RN(
        n293), .Q(d[235]) );
  SDFFRQX2M d_reg_2__12_ ( .D(d[236]), .SI(d[219]), .SE(n761), .CK(clk), .RN(
        n294), .Q(d[220]) );
  SDFFRQX2M d_reg_2__11_ ( .D(d[235]), .SI(d[218]), .SE(n760), .CK(clk), .RN(
        n295), .Q(d[219]) );
  SDFFRQX2M d_reg_2__10_ ( .D(d[234]), .SI(d[217]), .SE(n758), .CK(clk), .RN(
        n295), .Q(d[218]) );
  SDFFRQX2M d_reg_2__9_ ( .D(d[233]), .SI(d[216]), .SE(n762), .CK(clk), .RN(
        n295), .Q(d[217]) );
  SDFFRQX2M d_reg_3__12_ ( .D(d[220]), .SI(d[203]), .SE(n759), .CK(clk), .RN(
        n296), .Q(d[204]) );
  SDFFRQX2M d_reg_3__11_ ( .D(d[219]), .SI(d[202]), .SE(n757), .CK(clk), .RN(
        n296), .Q(d[203]) );
  SDFFRQX2M d_reg_3__10_ ( .D(d[218]), .SI(d[201]), .SE(n761), .CK(clk), .RN(
        n296), .Q(d[202]) );
  SDFFRQX2M d_reg_3__9_ ( .D(d[217]), .SI(d[200]), .SE(n756), .CK(clk), .RN(
        n296), .Q(d[201]) );
  SDFFRQX2M d_reg_15__15_ ( .D(d[31]), .SI(d[14]), .SE(n756), .CK(clk), .RN(
        n312), .Q(d[15]) );
  SDFFRQX2M d_reg_0__15_ ( .D(data_in[15]), .SI(d[254]), .SE(n757), .CK(clk), 
        .RN(n292), .Q(d[255]) );
  SDFFRQX2M d_reg_1__15_ ( .D(d[255]), .SI(d[238]), .SE(n761), .CK(clk), .RN(
        n293), .Q(d[239]) );
  SDFFRQX2M d_reg_15__10_ ( .D(d[26]), .SI(d[9]), .SE(n756), .CK(clk), .RN(
        n312), .Q(d[10]) );
  SDFFRQX2M d_reg_15__9_ ( .D(d[25]), .SI(d[8]), .SE(n757), .CK(clk), .RN(n312), .Q(d[9]) );
  SDFFRQX2M d_reg_15__8_ ( .D(d[24]), .SI(d[7]), .SE(n763), .CK(clk), .RN(n312), .Q(d[8]) );
  SDFFRQX2M d_reg_15__7_ ( .D(d[23]), .SI(d[6]), .SE(n758), .CK(clk), .RN(n312), .Q(d[7]) );
  SDFFRQX2M d_reg_9__14_ ( .D(d[126]), .SI(d[109]), .SE(n762), .CK(clk), .RN(
        n304), .Q(d[110]) );
  SDFFRQX2M d_reg_10__14_ ( .D(d[110]), .SI(d[93]), .SE(n763), .CK(clk), .RN(
        n305), .Q(d[94]) );
  SDFFRQX2M d_reg_10__13_ ( .D(d[109]), .SI(d[92]), .SE(n756), .CK(clk), .RN(
        n305), .Q(d[93]) );
  SDFFRQX2M d_reg_10__12_ ( .D(d[108]), .SI(d[91]), .SE(n764), .CK(clk), .RN(
        n305), .Q(d[92]) );
  SDFFRQX2M d_reg_11__14_ ( .D(d[94]), .SI(d[77]), .SE(n759), .CK(clk), .RN(
        n306), .Q(d[78]) );
  SDFFRQX2M d_reg_12__7_ ( .D(d[71]), .SI(d[54]), .SE(n757), .CK(clk), .RN(
        n308), .Q(d[55]) );
  SDFFRQX2M d_reg_12__6_ ( .D(d[70]), .SI(d[53]), .SE(n764), .CK(clk), .RN(
        n308), .Q(d[54]) );
  SDFFRQX2M d_reg_12__5_ ( .D(d[69]), .SI(d[52]), .SE(n763), .CK(clk), .RN(
        n308), .Q(d[53]) );
  SDFFRQX2M d_reg_12__4_ ( .D(d[68]), .SI(d[51]), .SE(n759), .CK(clk), .RN(
        n308), .Q(d[52]) );
  SDFFRQX2M d_reg_13__7_ ( .D(d[55]), .SI(d[38]), .SE(n761), .CK(clk), .RN(
        n310), .Q(d[39]) );
  SDFFRQX2M d_reg_13__6_ ( .D(d[54]), .SI(d[37]), .SE(n757), .CK(clk), .RN(
        n310), .Q(d[38]) );
  SDFFRQX2M d_reg_13__5_ ( .D(d[53]), .SI(d[36]), .SE(n758), .CK(clk), .RN(
        n310), .Q(d[37]) );
  SDFFRQX2M d_reg_13__4_ ( .D(d[52]), .SI(d[35]), .SE(n756), .CK(clk), .RN(
        n310), .Q(d[36]) );
  SDFFRQX2M d_reg_14__9_ ( .D(d[41]), .SI(d[24]), .SE(n759), .CK(clk), .RN(
        n311), .Q(d[25]) );
  SDFFRQX2M d_reg_14__8_ ( .D(d[40]), .SI(d[23]), .SE(n760), .CK(clk), .RN(
        n311), .Q(d[24]) );
  SDFFRQX2M d_reg_14__7_ ( .D(d[39]), .SI(d[22]), .SE(n761), .CK(clk), .RN(
        n311), .Q(d[23]) );
  SDFFRQX2M d_reg_14__6_ ( .D(d[38]), .SI(d[21]), .SE(n762), .CK(clk), .RN(
        n311), .Q(d[22]) );
  SDFFRQX2M d_reg_8__14_ ( .D(d[142]), .SI(d[125]), .SE(n762), .CK(clk), .RN(
        n302), .Q(d[126]) );
  SDFFRQX2M d_reg_8__13_ ( .D(d[141]), .SI(d[124]), .SE(n757), .CK(clk), .RN(
        n302), .Q(d[125]) );
  SDFFRQX2M d_reg_8__12_ ( .D(d[140]), .SI(d[123]), .SE(n761), .CK(clk), .RN(
        n302), .Q(d[124]) );
  SDFFRQX2M d_reg_0__10_ ( .D(data_in[10]), .SI(d[249]), .SE(n756), .CK(clk), 
        .RN(n292), .Q(d[250]) );
  SDFFRQX2M d_reg_0__9_ ( .D(data_in[9]), .SI(d[248]), .SE(n757), .CK(clk), 
        .RN(n292), .Q(d[249]) );
  SDFFRQX2M d_reg_0__8_ ( .D(data_in[8]), .SI(d[247]), .SE(n763), .CK(clk), 
        .RN(n292), .Q(d[248]) );
  SDFFRQX2M d_reg_0__7_ ( .D(data_in[7]), .SI(d[246]), .SE(n758), .CK(clk), 
        .RN(n292), .Q(d[247]) );
  SDFFRQX2M d_reg_1__10_ ( .D(d[250]), .SI(d[233]), .SE(n756), .CK(clk), .RN(
        n293), .Q(d[234]) );
  SDFFRQX2M d_reg_1__9_ ( .D(d[249]), .SI(d[232]), .SE(n762), .CK(clk), .RN(
        n293), .Q(d[233]) );
  SDFFRQX2M d_reg_1__8_ ( .D(d[248]), .SI(d[231]), .SE(n760), .CK(clk), .RN(
        n293), .Q(d[232]) );
  SDFFRQX2M d_reg_1__7_ ( .D(d[247]), .SI(d[230]), .SE(n764), .CK(clk), .RN(
        n294), .Q(d[231]) );
  SDFFRQX2M d_reg_1__6_ ( .D(d[246]), .SI(d[229]), .SE(n759), .CK(clk), .RN(
        n294), .Q(d[230]) );
  SDFFRQX2M d_reg_2__8_ ( .D(d[232]), .SI(d[215]), .SE(n757), .CK(clk), .RN(
        n295), .Q(d[216]) );
  SDFFRQX2M d_reg_2__7_ ( .D(d[231]), .SI(d[214]), .SE(n764), .CK(clk), .RN(
        n295), .Q(d[215]) );
  SDFFRQX2M d_reg_2__6_ ( .D(d[230]), .SI(d[213]), .SE(n763), .CK(clk), .RN(
        n295), .Q(d[214]) );
  SDFFRQX2M d_reg_2__5_ ( .D(d[229]), .SI(d[212]), .SE(n759), .CK(clk), .RN(
        n295), .Q(d[213]) );
  SDFFRQX2M d_reg_2__4_ ( .D(d[228]), .SI(d[211]), .SE(n761), .CK(clk), .RN(
        n295), .Q(d[212]) );
  SDFFRQX2M d_reg_3__8_ ( .D(d[216]), .SI(d[199]), .SE(n757), .CK(clk), .RN(
        n296), .Q(d[200]) );
  SDFFRQX2M d_reg_3__7_ ( .D(d[215]), .SI(d[198]), .SE(n758), .CK(clk), .RN(
        n296), .Q(d[199]) );
  SDFFRQX2M d_reg_3__6_ ( .D(d[214]), .SI(d[197]), .SE(n756), .CK(clk), .RN(
        n296), .Q(d[198]) );
  SDFFRQX2M d_reg_3__5_ ( .D(d[213]), .SI(d[196]), .SE(n759), .CK(clk), .RN(
        n296), .Q(d[197]) );
  SDFFRQX2M d_reg_3__4_ ( .D(d[212]), .SI(d[195]), .SE(n756), .CK(clk), .RN(
        n296), .Q(d[196]) );
  SDFFRQX2M d_reg_5__14_ ( .D(d[190]), .SI(d[173]), .SE(n761), .CK(clk), .RN(
        n298), .Q(d[174]) );
  SDFFRQX2M d_reg_5__13_ ( .D(d[189]), .SI(d[172]), .SE(n763), .CK(clk), .RN(
        n298), .Q(d[173]) );
  SDFFRQX2M d_reg_7__14_ ( .D(d[158]), .SI(d[141]), .SE(n762), .CK(clk), .RN(
        n301), .Q(d[142]) );
  SDFFRQX2M d_reg_7__13_ ( .D(d[157]), .SI(d[140]), .SE(n757), .CK(clk), .RN(
        n301), .Q(d[141]) );
  SDFFRQX2M d_reg_9__15_ ( .D(d[127]), .SI(d[110]), .SE(n764), .CK(clk), .RN(
        n304), .Q(d[111]) );
  SDFFRQX2M d_reg_10__15_ ( .D(d[111]), .SI(d[94]), .SE(n756), .CK(clk), .RN(
        n305), .Q(d[95]) );
  SDFFRQX2M d_reg_11__15_ ( .D(d[95]), .SI(d[78]), .SE(n762), .CK(clk), .RN(
        n306), .Q(d[79]) );
  SDFFRQX2M d_reg_8__15_ ( .D(d[143]), .SI(d[126]), .SE(n760), .CK(clk), .RN(
        n302), .Q(d[127]) );
  SDFFRQX2M d_reg_4__15_ ( .D(d[207]), .SI(d[190]), .SE(n760), .CK(clk), .RN(
        n297), .Q(d[191]) );
  SDFFRQX2M d_reg_5__15_ ( .D(d[191]), .SI(d[174]), .SE(n764), .CK(clk), .RN(
        n298), .Q(d[175]) );
  SDFFRQX2M d_reg_6__15_ ( .D(d[175]), .SI(d[158]), .SE(n757), .CK(clk), .RN(
        n300), .Q(d[159]) );
  SDFFRQX2M d_reg_7__15_ ( .D(d[159]), .SI(d[142]), .SE(n763), .CK(clk), .RN(
        n301), .Q(d[143]) );
  SDFFRQX2M d_reg_15__6_ ( .D(d[22]), .SI(d[5]), .SE(n756), .CK(clk), .RN(n312), .Q(d[6]) );
  SDFFRQX2M d_reg_15__5_ ( .D(d[21]), .SI(d[4]), .SE(n762), .CK(clk), .RN(n312), .Q(d[5]) );
  SDFFRQX2M d_reg_15__4_ ( .D(d[20]), .SI(d[3]), .SE(n757), .CK(clk), .RN(n312), .Q(d[4]) );
  SDFFRQX2M d_reg_15__3_ ( .D(d[19]), .SI(d[2]), .SE(n764), .CK(clk), .RN(n313), .Q(d[3]) );
  SDFFRQX2M d_reg_15__2_ ( .D(d[18]), .SI(d[1]), .SE(n763), .CK(clk), .RN(n313), .Q(d[2]) );
  SDFFRQX2M d_reg_9__13_ ( .D(d[125]), .SI(d[108]), .SE(n763), .CK(clk), .RN(
        n304), .Q(d[109]) );
  SDFFRQX2M d_reg_9__12_ ( .D(d[124]), .SI(d[107]), .SE(n764), .CK(clk), .RN(
        n304), .Q(d[108]) );
  SDFFRQX2M d_reg_9__11_ ( .D(d[123]), .SI(d[106]), .SE(n757), .CK(clk), .RN(
        n304), .Q(d[107]) );
  SDFFRQX2M d_reg_9__10_ ( .D(d[122]), .SI(d[105]), .SE(n760), .CK(clk), .RN(
        n304), .Q(d[106]) );
  SDFFRQX2M d_reg_10__11_ ( .D(d[107]), .SI(d[90]), .SE(n756), .CK(clk), .RN(
        n305), .Q(d[91]) );
  SDFFRQX2M d_reg_10__10_ ( .D(d[106]), .SI(d[89]), .SE(n762), .CK(clk), .RN(
        n305), .Q(d[90]) );
  SDFFRQX2M d_reg_10__9_ ( .D(d[105]), .SI(d[88]), .SE(n756), .CK(clk), .RN(
        n305), .Q(d[89]) );
  SDFFRQX2M d_reg_10__8_ ( .D(d[104]), .SI(d[87]), .SE(n764), .CK(clk), .RN(
        n305), .Q(d[88]) );
  SDFFRQX2M d_reg_11__13_ ( .D(d[93]), .SI(d[76]), .SE(n763), .CK(clk), .RN(
        n306), .Q(d[77]) );
  SDFFRQX2M d_reg_11__12_ ( .D(d[92]), .SI(d[75]), .SE(n762), .CK(clk), .RN(
        n306), .Q(d[76]) );
  SDFFRQX2M d_reg_11__11_ ( .D(d[91]), .SI(d[74]), .SE(n760), .CK(clk), .RN(
        n307), .Q(d[75]) );
  SDFFRQX2M d_reg_11__10_ ( .D(d[90]), .SI(d[73]), .SE(n764), .CK(clk), .RN(
        n307), .Q(d[74]) );
  SDFFRQX2M d_reg_12__3_ ( .D(d[67]), .SI(d[50]), .SE(n762), .CK(clk), .RN(
        n309), .Q(d[51]) );
  SDFFRQX2M d_reg_12__2_ ( .D(d[66]), .SI(d[49]), .SE(n756), .CK(clk), .RN(
        n309), .Q(d[50]) );
  SDFFRQX2M d_reg_12__1_ ( .D(d[65]), .SI(d[48]), .SE(n757), .CK(clk), .RN(
        n309), .Q(d[49]) );
  SDFFRQX2M d_reg_13__3_ ( .D(d[51]), .SI(d[34]), .SE(n760), .CK(clk), .RN(
        n310), .Q(d[35]) );
  SDFFRQX2M d_reg_13__2_ ( .D(d[50]), .SI(d[33]), .SE(n764), .CK(clk), .RN(
        n310), .Q(d[34]) );
  SDFFRQX2M d_reg_13__1_ ( .D(d[49]), .SI(d[32]), .SE(n757), .CK(clk), .RN(
        n310), .Q(d[33]) );
  SDFFRQX2M d_reg_14__5_ ( .D(d[37]), .SI(d[20]), .SE(n763), .CK(clk), .RN(
        n311), .Q(d[21]) );
  SDFFRQX2M d_reg_14__4_ ( .D(d[36]), .SI(d[19]), .SE(n760), .CK(clk), .RN(
        n311), .Q(d[20]) );
  SDFFRQX2M d_reg_14__3_ ( .D(d[35]), .SI(d[18]), .SE(n762), .CK(clk), .RN(
        n311), .Q(d[19]) );
  SDFFRQX2M d_reg_14__2_ ( .D(d[34]), .SI(d[17]), .SE(n757), .CK(clk), .RN(
        n311), .Q(d[18]) );
  SDFFRQX2M d_reg_8__11_ ( .D(d[139]), .SI(d[122]), .SE(n764), .CK(clk), .RN(
        n303), .Q(d[123]) );
  SDFFRQX2M d_reg_8__10_ ( .D(d[138]), .SI(d[121]), .SE(n763), .CK(clk), .RN(
        n303), .Q(d[122]) );
  SDFFRQX2M d_reg_8__9_ ( .D(d[137]), .SI(d[120]), .SE(n760), .CK(clk), .RN(
        n303), .Q(d[121]) );
  SDFFRQX2M d_reg_8__8_ ( .D(d[136]), .SI(d[119]), .SE(n756), .CK(clk), .RN(
        n303), .Q(d[120]) );
  SDFFRQX2M d_reg_0__6_ ( .D(data_in[6]), .SI(d[245]), .SE(n757), .CK(clk), 
        .RN(n292), .Q(d[246]) );
  SDFFRQX2M d_reg_0__5_ ( .D(data_in[5]), .SI(d[244]), .SE(n763), .CK(clk), 
        .RN(n292), .Q(d[245]) );
  SDFFRQX2M d_reg_0__4_ ( .D(data_in[4]), .SI(d[243]), .SE(n756), .CK(clk), 
        .RN(n292), .Q(d[244]) );
  SDFFRQX2M d_reg_0__3_ ( .D(data_in[3]), .SI(d[242]), .SE(n762), .CK(clk), 
        .RN(n293), .Q(d[243]) );
  SDFFRQX2M d_reg_1__5_ ( .D(d[245]), .SI(d[228]), .SE(n756), .CK(clk), .RN(
        n294), .Q(d[229]) );
  SDFFRQX2M d_reg_1__4_ ( .D(d[244]), .SI(d[227]), .SE(n764), .CK(clk), .RN(
        n294), .Q(d[228]) );
  SDFFRQX2M d_reg_1__3_ ( .D(d[243]), .SI(d[226]), .SE(n763), .CK(clk), .RN(
        n294), .Q(d[227]) );
  SDFFRQX2M d_reg_1__2_ ( .D(d[242]), .SI(d[225]), .SE(n762), .CK(clk), .RN(
        n294), .Q(d[226]) );
  SDFFRQX2M d_reg_2__3_ ( .D(d[227]), .SI(d[210]), .SE(n756), .CK(clk), .RN(
        n295), .Q(d[211]) );
  SDFFRQX2M d_reg_2__2_ ( .D(d[226]), .SI(d[209]), .SE(n764), .CK(clk), .RN(
        n295), .Q(d[210]) );
  SDFFRQX2M d_reg_2__1_ ( .D(d[225]), .SI(d[208]), .SE(n763), .CK(clk), .RN(
        n295), .Q(d[209]) );
  SDFFRQX2M d_reg_3__3_ ( .D(d[211]), .SI(d[194]), .SE(n756), .CK(clk), .RN(
        n297), .Q(d[195]) );
  SDFFRQX2M d_reg_3__2_ ( .D(d[210]), .SI(d[193]), .SE(n757), .CK(clk), .RN(
        n297), .Q(d[194]) );
  SDFFRQX2M d_reg_3__1_ ( .D(d[209]), .SI(d[192]), .SE(n760), .CK(clk), .RN(
        n297), .Q(d[193]) );
  SDFFRQX2M d_reg_4__14_ ( .D(d[206]), .SI(d[189]), .SE(n764), .CK(clk), .RN(
        n297), .Q(d[190]) );
  SDFFRQX2M d_reg_4__13_ ( .D(d[205]), .SI(d[188]), .SE(n757), .CK(clk), .RN(
        n297), .Q(d[189]) );
  SDFFRQX2M d_reg_4__12_ ( .D(d[204]), .SI(d[187]), .SE(n763), .CK(clk), .RN(
        n297), .Q(d[188]) );
  SDFFRQX2M d_reg_4__11_ ( .D(d[203]), .SI(d[186]), .SE(n760), .CK(clk), .RN(
        n297), .Q(d[187]) );
  SDFFRQX2M d_reg_4__10_ ( .D(d[202]), .SI(d[185]), .SE(n762), .CK(clk), .RN(
        n297), .Q(d[186]) );
  SDFFRQX2M d_reg_5__12_ ( .D(d[188]), .SI(d[171]), .SE(n757), .CK(clk), .RN(
        n298), .Q(d[172]) );
  SDFFRQX2M d_reg_5__11_ ( .D(d[187]), .SI(d[170]), .SE(n764), .CK(clk), .RN(
        n299), .Q(d[171]) );
  SDFFRQX2M d_reg_5__10_ ( .D(d[186]), .SI(d[169]), .SE(n763), .CK(clk), .RN(
        n299), .Q(d[170]) );
  SDFFRQX2M d_reg_5__9_ ( .D(d[185]), .SI(d[168]), .SE(n760), .CK(clk), .RN(
        n299), .Q(d[169]) );
  SDFFRQX2M d_reg_6__14_ ( .D(d[174]), .SI(d[157]), .SE(n762), .CK(clk), .RN(
        n300), .Q(d[158]) );
  SDFFRQX2M d_reg_6__13_ ( .D(d[173]), .SI(d[156]), .SE(n757), .CK(clk), .RN(
        n300), .Q(d[157]) );
  SDFFRQX2M d_reg_6__12_ ( .D(d[172]), .SI(d[155]), .SE(n764), .CK(clk), .RN(
        n300), .Q(d[156]) );
  SDFFRQX2M d_reg_6__11_ ( .D(d[171]), .SI(d[154]), .SE(n756), .CK(clk), .RN(
        n300), .Q(d[155]) );
  SDFFRQX2M d_reg_6__10_ ( .D(d[170]), .SI(d[153]), .SE(n756), .CK(clk), .RN(
        n300), .Q(d[154]) );
  SDFFRQX2M d_reg_7__12_ ( .D(d[156]), .SI(d[139]), .SE(n756), .CK(clk), .RN(
        n301), .Q(d[140]) );
  SDFFRQX2M d_reg_7__11_ ( .D(d[155]), .SI(d[138]), .SE(n763), .CK(clk), .RN(
        n301), .Q(d[139]) );
  SDFFRQX2M d_reg_7__10_ ( .D(d[154]), .SI(d[137]), .SE(n763), .CK(clk), .RN(
        n301), .Q(d[138]) );
  SDFFRQX2M d_reg_7__9_ ( .D(d[153]), .SI(d[136]), .SE(n762), .CK(clk), .RN(
        n301), .Q(d[137]) );
  SDFFRQX2M d_reg_12__0_ ( .D(d[64]), .SI(d[79]), .SE(n756), .CK(clk), .RN(
        n309), .Q(d[48]) );
  SDFFRQX2M d_reg_13__0_ ( .D(d[48]), .SI(d[63]), .SE(n764), .CK(clk), .RN(
        n310), .Q(d[32]) );
  SDFFRQX2M d_reg_2__0_ ( .D(d[224]), .SI(d[239]), .SE(n763), .CK(clk), .RN(
        n295), .Q(d[208]) );
  SDFFRQX2M d_reg_3__0_ ( .D(d[208]), .SI(d[223]), .SE(n756), .CK(clk), .RN(
        n297), .Q(d[192]) );
  SDFFRQX2M d_reg_15__1_ ( .D(d[17]), .SI(d[0]), .SE(n757), .CK(clk), .RN(n313), .Q(d[1]) );
  SDFFRQX2M d_reg_9__9_ ( .D(d[121]), .SI(d[104]), .SE(n760), .CK(clk), .RN(
        n304), .Q(d[105]) );
  SDFFRQX2M d_reg_9__8_ ( .D(d[120]), .SI(d[103]), .SE(n764), .CK(clk), .RN(
        n304), .Q(d[104]) );
  SDFFRQX2M d_reg_9__7_ ( .D(d[119]), .SI(d[102]), .SE(n757), .CK(clk), .RN(
        n304), .Q(d[103]) );
  SDFFRQX2M d_reg_9__6_ ( .D(d[118]), .SI(d[101]), .SE(n763), .CK(clk), .RN(
        n304), .Q(d[102]) );
  SDFFRQX2M d_reg_10__7_ ( .D(d[103]), .SI(d[86]), .SE(n760), .CK(clk), .RN(
        n306), .Q(d[87]) );
  SDFFRQX2M d_reg_10__6_ ( .D(d[102]), .SI(d[85]), .SE(n763), .CK(clk), .RN(
        n306), .Q(d[86]) );
  SDFFRQX2M d_reg_10__5_ ( .D(d[101]), .SI(d[84]), .SE(n757), .CK(clk), .RN(
        n306), .Q(d[85]) );
  SDFFRQX2M d_reg_10__4_ ( .D(d[100]), .SI(d[83]), .SE(n756), .CK(clk), .RN(
        n306), .Q(d[84]) );
  SDFFRQX2M d_reg_11__9_ ( .D(d[89]), .SI(d[72]), .SE(n763), .CK(clk), .RN(
        n307), .Q(d[73]) );
  SDFFRQX2M d_reg_11__8_ ( .D(d[88]), .SI(d[71]), .SE(n760), .CK(clk), .RN(
        n307), .Q(d[72]) );
  SDFFRQX2M d_reg_11__7_ ( .D(d[87]), .SI(d[70]), .SE(n762), .CK(clk), .RN(
        n307), .Q(d[71]) );
  SDFFRQX2M d_reg_11__6_ ( .D(d[86]), .SI(d[69]), .SE(n757), .CK(clk), .RN(
        n307), .Q(d[70]) );
  SDFFRQX2M d_reg_14__1_ ( .D(d[33]), .SI(d[16]), .SE(n764), .CK(clk), .RN(
        n311), .Q(d[17]) );
  SDFFRQX2M d_reg_8__7_ ( .D(d[135]), .SI(d[118]), .SE(n756), .CK(clk), .RN(
        n303), .Q(d[119]) );
  SDFFRQX2M d_reg_8__6_ ( .D(d[134]), .SI(d[117]), .SE(n760), .CK(clk), .RN(
        n303), .Q(d[118]) );
  SDFFRQX2M d_reg_8__5_ ( .D(d[133]), .SI(d[116]), .SE(n756), .CK(clk), .RN(
        n303), .Q(d[117]) );
  SDFFRQX2M d_reg_8__4_ ( .D(d[132]), .SI(d[115]), .SE(n762), .CK(clk), .RN(
        n303), .Q(d[116]) );
  SDFFRQX2M d_reg_0__2_ ( .D(data_in[2]), .SI(d[241]), .SE(n763), .CK(clk), 
        .RN(n293), .Q(d[242]) );
  SDFFRQX2M d_reg_0__1_ ( .D(data_in[1]), .SI(d[240]), .SE(n759), .CK(clk), 
        .RN(n293), .Q(d[241]) );
  SDFFRQX2M d_reg_1__1_ ( .D(d[241]), .SI(d[224]), .SE(n758), .CK(clk), .RN(
        n294), .Q(d[225]) );
  SDFFRQX2M d_reg_4__9_ ( .D(d[201]), .SI(d[184]), .SE(n764), .CK(clk), .RN(
        n297), .Q(d[185]) );
  SDFFRQX2M d_reg_4__8_ ( .D(d[200]), .SI(d[183]), .SE(n761), .CK(clk), .RN(
        n297), .Q(d[184]) );
  SDFFRQX2M d_reg_4__7_ ( .D(d[199]), .SI(d[182]), .SE(n758), .CK(clk), .RN(
        n298), .Q(d[183]) );
  SDFFRQX2M d_reg_4__6_ ( .D(d[198]), .SI(d[181]), .SE(n759), .CK(clk), .RN(
        n298), .Q(d[182]) );
  SDFFRQX2M d_reg_5__8_ ( .D(d[184]), .SI(d[167]), .SE(n763), .CK(clk), .RN(
        n299), .Q(d[168]) );
  SDFFRQX2M d_reg_5__7_ ( .D(d[183]), .SI(d[166]), .SE(n761), .CK(clk), .RN(
        n299), .Q(d[167]) );
  SDFFRQX2M d_reg_5__6_ ( .D(d[182]), .SI(d[165]), .SE(n759), .CK(clk), .RN(
        n299), .Q(d[166]) );
  SDFFRQX2M d_reg_5__5_ ( .D(d[181]), .SI(d[164]), .SE(n761), .CK(clk), .RN(
        n299), .Q(d[165]) );
  SDFFRQX2M d_reg_5__4_ ( .D(d[180]), .SI(d[163]), .SE(n758), .CK(clk), .RN(
        n299), .Q(d[164]) );
  SDFFRQX2M d_reg_6__9_ ( .D(d[169]), .SI(d[152]), .SE(n760), .CK(clk), .RN(
        n300), .Q(d[153]) );
  SDFFRQX2M d_reg_6__8_ ( .D(d[168]), .SI(d[151]), .SE(n761), .CK(clk), .RN(
        n300), .Q(d[152]) );
  SDFFRQX2M d_reg_6__7_ ( .D(d[167]), .SI(d[150]), .SE(n758), .CK(clk), .RN(
        n300), .Q(d[151]) );
  SDFFRQX2M d_reg_6__6_ ( .D(d[166]), .SI(d[149]), .SE(n759), .CK(clk), .RN(
        n300), .Q(d[150]) );
  SDFFRQX2M d_reg_7__8_ ( .D(d[152]), .SI(d[135]), .SE(n760), .CK(clk), .RN(
        n301), .Q(d[136]) );
  SDFFRQX2M d_reg_7__7_ ( .D(d[151]), .SI(d[134]), .SE(n762), .CK(clk), .RN(
        n302), .Q(d[135]) );
  SDFFRQX2M d_reg_7__6_ ( .D(d[150]), .SI(d[133]), .SE(n759), .CK(clk), .RN(
        n302), .Q(d[134]) );
  SDFFRQX2M d_reg_7__5_ ( .D(d[149]), .SI(d[132]), .SE(n764), .CK(clk), .RN(
        n302), .Q(d[133]) );
  SDFFRQX2M d_reg_7__4_ ( .D(d[148]), .SI(d[131]), .SE(n758), .CK(clk), .RN(
        n302), .Q(d[132]) );
  SDFFRQX2M d_reg_15__0_ ( .D(d[16]), .SI(d[31]), .SE(n760), .CK(clk), .RN(
        n313), .Q(d[0]) );
  SDFFRQX2M d_reg_14__0_ ( .D(d[32]), .SI(d[47]), .SE(n758), .CK(clk), .RN(
        n311), .Q(d[16]) );
  SDFFRQX2M d_reg_0__0_ ( .D(data_in[0]), .SI(test_si), .SE(n762), .CK(clk), 
        .RN(n293), .Q(d[240]) );
  SDFFRQX2M d_reg_1__0_ ( .D(d[240]), .SI(d[255]), .SE(n761), .CK(clk), .RN(
        n294), .Q(d[224]) );
  SDFFRQX2M d_reg_9__5_ ( .D(d[117]), .SI(d[100]), .SE(n759), .CK(clk), .RN(
        n304), .Q(d[101]) );
  SDFFRQX2M d_reg_9__4_ ( .D(d[116]), .SI(d[99]), .SE(n758), .CK(clk), .RN(
        n304), .Q(d[100]) );
  SDFFRQX2M d_reg_9__3_ ( .D(d[115]), .SI(d[98]), .SE(n763), .CK(clk), .RN(
        n305), .Q(d[99]) );
  SDFFRQX2M d_reg_9__2_ ( .D(d[114]), .SI(d[97]), .SE(n761), .CK(clk), .RN(
        n305), .Q(d[98]) );
  SDFFRQX2M d_reg_9__1_ ( .D(d[113]), .SI(d[96]), .SE(n758), .CK(clk), .RN(
        n305), .Q(d[97]) );
  SDFFRQX2M d_reg_10__3_ ( .D(d[99]), .SI(d[82]), .SE(n759), .CK(clk), .RN(
        n306), .Q(d[83]) );
  SDFFRQX2M d_reg_10__2_ ( .D(d[98]), .SI(d[81]), .SE(n764), .CK(clk), .RN(
        n306), .Q(d[82]) );
  SDFFRQX2M d_reg_10__1_ ( .D(d[97]), .SI(d[80]), .SE(n761), .CK(clk), .RN(
        n306), .Q(d[81]) );
  SDFFRQX2M d_reg_11__5_ ( .D(d[85]), .SI(d[68]), .SE(n759), .CK(clk), .RN(
        n307), .Q(d[69]) );
  SDFFRQX2M d_reg_11__4_ ( .D(d[84]), .SI(d[67]), .SE(n761), .CK(clk), .RN(
        n307), .Q(d[68]) );
  SDFFRQX2M d_reg_11__3_ ( .D(d[83]), .SI(d[66]), .SE(n758), .CK(clk), .RN(
        n307), .Q(d[67]) );
  SDFFRQX2M d_reg_11__2_ ( .D(d[82]), .SI(d[65]), .SE(n760), .CK(clk), .RN(
        n307), .Q(d[66]) );
  SDFFRQX2M d_reg_8__3_ ( .D(d[131]), .SI(d[114]), .SE(n758), .CK(clk), .RN(
        n303), .Q(d[115]) );
  SDFFRQX2M d_reg_8__2_ ( .D(d[130]), .SI(d[113]), .SE(n758), .CK(clk), .RN(
        n303), .Q(d[114]) );
  SDFFRQX2M d_reg_8__1_ ( .D(d[129]), .SI(d[112]), .SE(n759), .CK(clk), .RN(
        n303), .Q(d[113]) );
  SDFFRQX2M d_reg_4__5_ ( .D(d[197]), .SI(d[180]), .SE(n760), .CK(clk), .RN(
        n298), .Q(d[181]) );
  SDFFRQX2M d_reg_4__4_ ( .D(d[196]), .SI(d[179]), .SE(n762), .CK(clk), .RN(
        n298), .Q(d[180]) );
  SDFFRQX2M d_reg_4__3_ ( .D(d[195]), .SI(d[178]), .SE(n759), .CK(clk), .RN(
        n298), .Q(d[179]) );
  SDFFRQX2M d_reg_4__2_ ( .D(d[194]), .SI(d[177]), .SE(n764), .CK(clk), .RN(
        n298), .Q(d[178]) );
  SDFFRQX2M d_reg_5__3_ ( .D(d[179]), .SI(d[162]), .SE(n761), .CK(clk), .RN(
        n299), .Q(d[163]) );
  SDFFRQX2M d_reg_5__2_ ( .D(d[178]), .SI(d[161]), .SE(n760), .CK(clk), .RN(
        n299), .Q(d[162]) );
  SDFFRQX2M d_reg_5__1_ ( .D(d[177]), .SI(d[160]), .SE(n758), .CK(clk), .RN(
        n299), .Q(d[161]) );
  SDFFRQX2M d_reg_6__5_ ( .D(d[165]), .SI(d[148]), .SE(n762), .CK(clk), .RN(
        n300), .Q(d[149]) );
  SDFFRQX2M d_reg_6__4_ ( .D(d[164]), .SI(d[147]), .SE(n761), .CK(clk), .RN(
        n300), .Q(d[148]) );
  SDFFRQX2M d_reg_6__3_ ( .D(d[163]), .SI(d[146]), .SE(n761), .CK(clk), .RN(
        n301), .Q(d[147]) );
  SDFFRQX2M d_reg_6__2_ ( .D(d[162]), .SI(d[145]), .SE(n758), .CK(clk), .RN(
        n301), .Q(d[146]) );
  SDFFRQX2M d_reg_7__3_ ( .D(d[147]), .SI(d[130]), .SE(n762), .CK(clk), .RN(
        n302), .Q(d[131]) );
  SDFFRQX2M d_reg_7__2_ ( .D(d[146]), .SI(d[129]), .SE(n761), .CK(clk), .RN(
        n302), .Q(d[130]) );
  SDFFRQX2M d_reg_7__1_ ( .D(d[145]), .SI(d[128]), .SE(n758), .CK(clk), .RN(
        n302), .Q(d[129]) );
  SDFFRQX2M d_reg_8__0_ ( .D(d[128]), .SI(d[143]), .SE(n759), .CK(clk), .RN(
        n303), .Q(d[112]) );
  SDFFRQX2M d_reg_9__0_ ( .D(d[112]), .SI(d[127]), .SE(n764), .CK(clk), .RN(
        n305), .Q(d[96]) );
  SDFFRQX2M d_reg_10__0_ ( .D(d[96]), .SI(d[111]), .SE(n761), .CK(clk), .RN(
        n306), .Q(d[80]) );
  SDFFRQX2M d_reg_5__0_ ( .D(d[176]), .SI(d[191]), .SE(n759), .CK(clk), .RN(
        n299), .Q(d[160]) );
  SDFFRQX2M d_reg_7__0_ ( .D(d[144]), .SI(d[159]), .SE(n761), .CK(clk), .RN(
        n302), .Q(d[128]) );
  SDFFRQX2M d_reg_11__1_ ( .D(d[81]), .SI(d[64]), .SE(n758), .CK(clk), .RN(
        n307), .Q(d[65]) );
  SDFFRQX2M d_reg_4__1_ ( .D(d[193]), .SI(d[176]), .SE(n760), .CK(clk), .RN(
        n298), .Q(d[177]) );
  SDFFRQX2M d_reg_6__1_ ( .D(d[161]), .SI(d[144]), .SE(n758), .CK(clk), .RN(
        n301), .Q(d[145]) );
  SDFFRQX2M d_reg_11__0_ ( .D(d[80]), .SI(d[95]), .SE(n758), .CK(clk), .RN(
        n307), .Q(d[64]) );
  SDFFRQX2M d_reg_4__0_ ( .D(d[192]), .SI(d[207]), .SE(n759), .CK(clk), .RN(
        n298), .Q(d[176]) );
  SDFFRQX2M d_reg_6__0_ ( .D(d[160]), .SI(d[175]), .SE(n760), .CK(clk), .RN(
        n301), .Q(d[144]) );
  SDFFRQX2M odd_out_reg_15_ ( .D(d[127]), .SI(odd_out[14]), .SE(n762), .CK(clk), .RN(n313), .Q(odd_out[15]) );
  SDFFRQX2M odd_out_reg_14_ ( .D(d[127]), .SI(odd_out[13]), .SE(n758), .CK(clk), .RN(n313), .Q(odd_out[14]) );
  SDFFRQX2M odd_out_reg_13_ ( .D(d[126]), .SI(odd_out[12]), .SE(n764), .CK(clk), .RN(n313), .Q(odd_out[13]) );
  SDFFRQX2M odd_out_reg_12_ ( .D(d[125]), .SI(odd_out[11]), .SE(n761), .CK(clk), .RN(n313), .Q(odd_out[12]) );
  SDFFRQX2M even_out_reg_15_ ( .D(acc[24]), .SI(even_out[14]), .SE(n760), .CK(
        clk), .RN(n314), .Q(even_out[15]) );
  SDFFRQX2M even_out_reg_14_ ( .D(acc[23]), .SI(even_out[13]), .SE(n759), .CK(
        clk), .RN(n314), .Q(even_out[14]) );
  SDFFRQX2M even_out_reg_13_ ( .D(acc[22]), .SI(even_out[12]), .SE(n762), .CK(
        clk), .RN(n314), .Q(even_out[13]) );
  SDFFRQX2M even_out_reg_12_ ( .D(acc[21]), .SI(even_out[11]), .SE(n761), .CK(
        clk), .RN(n314), .Q(even_out[12]) );
  SDFFRQX2M odd_out_reg_11_ ( .D(d[124]), .SI(odd_out[10]), .SE(n761), .CK(clk), .RN(n313), .Q(odd_out[11]) );
  SDFFRQX2M odd_out_reg_10_ ( .D(d[123]), .SI(odd_out[9]), .SE(n758), .CK(clk), 
        .RN(n313), .Q(odd_out[10]) );
  SDFFRQX2M odd_out_reg_9_ ( .D(d[122]), .SI(odd_out[8]), .SE(n762), .CK(clk), 
        .RN(n313), .Q(odd_out[9]) );
  SDFFRQX2M odd_out_reg_8_ ( .D(d[121]), .SI(odd_out[7]), .SE(n761), .CK(clk), 
        .RN(n313), .Q(odd_out[8]) );
  SDFFRQX2M even_out_reg_11_ ( .D(acc[20]), .SI(even_out[10]), .SE(n758), .CK(
        clk), .RN(n315), .Q(even_out[11]) );
  SDFFRQX2M even_out_reg_10_ ( .D(acc[19]), .SI(even_out[9]), .SE(n759), .CK(
        clk), .RN(n315), .Q(even_out[10]) );
  SDFFRQX2M even_out_reg_9_ ( .D(acc[18]), .SI(even_out[8]), .SE(n764), .CK(
        clk), .RN(n315), .Q(even_out[9]) );
  SDFFRQX2M even_out_reg_8_ ( .D(acc[17]), .SI(even_out[7]), .SE(n761), .CK(
        clk), .RN(n315), .Q(even_out[8]) );
  SDFFRQX2M odd_out_reg_7_ ( .D(d[120]), .SI(odd_out[6]), .SE(n761), .CK(clk), 
        .RN(n314), .Q(odd_out[7]) );
  SDFFRQX2M odd_out_reg_6_ ( .D(d[119]), .SI(odd_out[5]), .SE(n759), .CK(clk), 
        .RN(n314), .Q(odd_out[6]) );
  SDFFRQX2M odd_out_reg_5_ ( .D(d[118]), .SI(odd_out[4]), .SE(n758), .CK(clk), 
        .RN(n314), .Q(odd_out[5]) );
  SDFFRQX2M odd_out_reg_4_ ( .D(d[117]), .SI(odd_out[3]), .SE(n760), .CK(clk), 
        .RN(n314), .Q(odd_out[4]) );
  SDFFRQX2M even_out_reg_7_ ( .D(acc[16]), .SI(even_out[6]), .SE(n758), .CK(
        clk), .RN(n315), .Q(even_out[7]) );
  SDFFRQX2M even_out_reg_6_ ( .D(acc[15]), .SI(even_out[5]), .SE(n758), .CK(
        clk), .RN(n315), .Q(even_out[6]) );
  SDFFRQX2M even_out_reg_5_ ( .D(acc[14]), .SI(even_out[4]), .SE(n759), .CK(
        clk), .RN(n315), .Q(even_out[5]) );
  SDFFRQX2M even_out_reg_4_ ( .D(acc[13]), .SI(even_out[3]), .SE(n760), .CK(
        clk), .RN(n315), .Q(even_out[4]) );
  SDFFRQX2M odd_out_reg_3_ ( .D(d[116]), .SI(odd_out[2]), .SE(n762), .CK(clk), 
        .RN(n314), .Q(odd_out[3]) );
  SDFFRQX2M odd_out_reg_2_ ( .D(d[115]), .SI(odd_out[1]), .SE(n758), .CK(clk), 
        .RN(n314), .Q(odd_out[2]) );
  SDFFRQX2M odd_out_reg_1_ ( .D(d[114]), .SI(odd_out[0]), .SE(n764), .CK(clk), 
        .RN(n314), .Q(odd_out[1]) );
  SDFFRQX2M odd_out_reg_0_ ( .D(d[113]), .SI(even_out[15]), .SE(n761), .CK(clk), .RN(n314), .Q(odd_out[0]) );
  SDFFRQX2M even_out_reg_3_ ( .D(acc[12]), .SI(even_out[2]), .SE(n760), .CK(
        clk), .RN(n315), .Q(even_out[3]) );
  SDFFRQX2M even_out_reg_2_ ( .D(acc[11]), .SI(even_out[1]), .SE(n761), .CK(
        clk), .RN(n315), .Q(even_out[2]) );
  SDFFRQX2M even_out_reg_1_ ( .D(acc[10]), .SI(even_out[0]), .SE(n762), .CK(
        clk), .RN(n315), .Q(even_out[1]) );
  SDFFRQX2M even_out_reg_0_ ( .D(acc[9]), .SI(d[15]), .SE(n759), .CK(clk), 
        .RN(n315), .Q(even_out[0]) );
  BUFX2M U294 ( .A(n316), .Y(n315) );
  BUFX2M U295 ( .A(n316), .Y(n314) );
  BUFX2M U296 ( .A(n316), .Y(n313) );
  BUFX2M U297 ( .A(n317), .Y(n312) );
  BUFX2M U298 ( .A(n317), .Y(n311) );
  BUFX2M U299 ( .A(n317), .Y(n310) );
  BUFX2M U300 ( .A(n318), .Y(n309) );
  BUFX2M U301 ( .A(n318), .Y(n308) );
  BUFX2M U302 ( .A(n318), .Y(n307) );
  BUFX2M U303 ( .A(n319), .Y(n306) );
  BUFX2M U304 ( .A(n319), .Y(n305) );
  BUFX2M U305 ( .A(n319), .Y(n304) );
  BUFX2M U306 ( .A(n320), .Y(n303) );
  BUFX2M U307 ( .A(n320), .Y(n302) );
  BUFX2M U308 ( .A(n320), .Y(n301) );
  BUFX2M U309 ( .A(n321), .Y(n300) );
  BUFX2M U310 ( .A(n321), .Y(n299) );
  BUFX2M U311 ( .A(n321), .Y(n298) );
  BUFX2M U312 ( .A(n322), .Y(n297) );
  BUFX2M U313 ( .A(n322), .Y(n296) );
  BUFX2M U314 ( .A(n322), .Y(n295) );
  BUFX2M U315 ( .A(n323), .Y(n294) );
  BUFX2M U316 ( .A(n323), .Y(n293) );
  BUFX2M U317 ( .A(n323), .Y(n292) );
  BUFX2M U318 ( .A(n326), .Y(n316) );
  BUFX2M U319 ( .A(n326), .Y(n317) );
  BUFX2M U320 ( .A(n325), .Y(n318) );
  BUFX2M U321 ( .A(n325), .Y(n319) );
  BUFX2M U322 ( .A(n325), .Y(n320) );
  BUFX2M U323 ( .A(n324), .Y(n321) );
  BUFX2M U324 ( .A(n324), .Y(n322) );
  BUFX2M U325 ( .A(n324), .Y(n323) );
  BUFX2M U326 ( .A(reset), .Y(n325) );
  BUFX2M U327 ( .A(reset), .Y(n324) );
  BUFX2M U328 ( .A(reset), .Y(n326) );
  DLY1X1M U348 ( .A(test_se), .Y(n756) );
  DLY1X1M U349 ( .A(test_se), .Y(n757) );
  DLY1X1M U350 ( .A(test_se), .Y(n758) );
  DLY1X1M U351 ( .A(test_se), .Y(n759) );
  DLY1X1M U352 ( .A(test_se), .Y(n760) );
  DLY1X1M U353 ( .A(test_se), .Y(n761) );
  DLY1X1M U354 ( .A(test_se), .Y(n762) );
  DLY1X1M U355 ( .A(test_se), .Y(n763) );
  DLY1X1M U356 ( .A(test_se), .Y(n764) );
  hfb_1_1_DW01_add_0 add_40_I4 ( .A({d[207], d[207:192]}), .B({d[63], d[63:48]}), .CI(1'b0), .SUM({N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, 
        N135, N134, N133, N132, N131, N130, N129}) );
  hfb_1_1_DW01_add_1 add_40_I3 ( .A({d[223], d[223:208]}), .B({d[47], d[47:32]}), .CI(1'b0), .SUM({N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71}) );
  hfb_1_1_DW01_add_2 add_40_I2 ( .A({d[239], d[239:224]}), .B({d[31], d[31:16]}), .CI(1'b0), .SUM({N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, 
        N39, N38, N37, N36, N35}) );
  hfb_1_1_DW01_add_17 add_40_I8 ( .A({d[143], d[143:128]}), .B({d[127], 
        d[127:112]}), .CI(1'b0), .SUM({N376, N375, N374, N373, N372, N371, 
        N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360}) );
  hfb_1_1_DW01_add_16 add_40_I7 ( .A({d[159], d[159:144]}), .B({d[111], 
        d[111:96]}), .CI(1'b0), .SUM({N310, N309, N308, N307, N306, N305, N304, 
        N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}) );
  hfb_1_1_DW01_add_15 add_40_I6 ( .A({d[175], d[175:160]}), .B({d[95], 
        d[95:80]}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230}) );
  hfb_1_1_DW01_add_14 add_40_I5 ( .A({d[191], d[191:176]}), .B({d[79], 
        d[79:64]}), .CI(1'b0), .SUM({N184, N183, N182, N181, N180, N179, N178, 
        N177, N176, N175, N174, N173, N172, N171, N170, N169, N168}) );
  hfb_1_1_DW01_add_13 add_40 ( .A({d[255], d[255:240]}), .B({d[15], d[15:0]}), 
        .CI(1'b0), .SUM({N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1, N0}) );
  hfb_1_1_DW02_mult_3 mult_40_I8 ( .A({1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1}), .B({N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360}), .TC(1'b1), 
        .PRODUCT({SYNOPSYS_UNCONNECTED_1, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377}) );
  hfb_1_1_DW02_mult_2 mult_40_I7 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0}), .B({N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, 
        N300, N299, N298, N297, N296, N295, N294}), .TC(1'b1), .PRODUCT({N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        SYNOPSYS_UNCONNECTED_2}) );
  hfb_1_1_DW02_mult_1 mult_40_I6 ( .A({1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), 
        .B({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230}), .TC(1'b1), .PRODUCT({N269, N268, 
        N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247}) );
  hfb_1_1_DW02_mult_0 mult_40_I5 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b0}), .B({
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, 
        N172, N171, N170, N169, N168}), .TC(1'b1), .PRODUCT({N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, SYNOPSYS_UNCONNECTED_3}) );
  hfb_1_1_DW01_add_8 add_8_root_add_40_2_I8 ( .A({N51, N51, N51, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        1'b0}), .B({N145, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({n327, n359, n370, n381, n392, n403, n414, n425, n436, 
        n328, n339, n350, n352, n353, n354, n355, n356, n357, n358, n360, 
        SYNOPSYS_UNCONNECTED_4}) );
  hfb_1_1_DW01_add_7 add_5_root_add_40_2_I8 ( .A({N16, N16, N16, N16, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        {N87, N87, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, 1'b0, 1'b0}), .CI(1'b0), .SUM({N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108}) );
  hfb_1_1_DW01_sub_0 sub_3_root_add_2_root_add_40_2_I8 ( .A({n327, n327, n327, 
        n327, n327, n359, n370, n381, n392, n403, n414, n425, n436, n328, n339, 
        n350, n352, n353, n354, n355, n356, n357, n358, n360, 1'b0}), .B({N128, 
        N128, N128, N128, N128, N127, N126, N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}), .CI(1'b0), .DIFF({n388, n389, n390, n391, n393, n394, n395, n396, n397, 
        n398, n399, n400, n401, n402, n404, n405, n406, n407, n408, n409, n410, 
        n411, n412, n413, n415}) );
  hfb_1_1_DW01_add_6 add_7_root_add_40_2_I8 ( .A({N206, N206, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, 1'b0}), .B({N269, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({
        n362, n363, n364, n365, n366, n367, n368, n369, n371, n372, n373, n374, 
        n375, n376, n377, n378, n379, n380, n382, n383, n384, n385, n386, n387}) );
  hfb_1_1_DW01_add_5 add_2_root_add_2_root_add_40_2_I8 ( .A({n388, n389, n390, 
        n391, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n404, 
        n405, n406, n407, n408, n409, n410, n411, n412, n413, n415}), .B({N334, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 1'b0}), .CI(1'b0), .SUM({n443, n444, n445, n446, n329, n330, n331, n332, n333, n334, 
        n335, n336, n337, n338, n340, n341, n342, n343, n344, n345, n346, n347, 
        n348, n349, n351}) );
  hfb_1_1_DW01_add_4 add_1_root_add_2_root_add_40_2_I8 ( .A({N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377}), .B({n362, 
        n362, n363, n364, n365, n366, n367, n368, n369, n371, n372, n373, n374, 
        n375, n376, n377, n378, n379, n380, n382, n383, n384, n385, n386, n387}), .CI(1'b0), .SUM({n416, n417, n418, n419, n420, n421, n422, n423, n424, n426, 
        n427, n428, n429, n430, n431, n432, n433, n434, n435, n437, n438, n439, 
        n440, n441, n442}) );
  hfb_1_1_DW01_add_3 add_0_root_add_2_root_add_40_2_I8 ( .A({n443, n444, n445, 
        n446, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n340, 
        n341, n342, n343, n344, n345, n346, n347, n348, n349, n351}), .B({n416, 
        n417, n418, n419, n420, n421, n422, n423, n424, n426, n427, n428, n429, 
        n430, n431, n432, n433, n434, n435, n437, n438, n439, n440, n441, n442}), .CI(1'b0), .SUM({acc, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13}) );
endmodule


module counter_test_1 ( clk, reset, SEL, test_si, test_so, test_se );
  input clk, reset, test_si, test_se;
  output SEL, test_so;


  SDFFRX1M SEL_reg ( .D(test_so), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(SEL), .QN(test_so) );
endmodule


module up4_filter_2_DW01_add_3 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[2]), .B(n2), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[2]), .Y(n2) );
endmodule


module up4_filter_2_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(A[3]), .B(B[3]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n1), .A1N(A[4]), .B0(n4), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n1), .B0(B[4]), .Y(n4) );
endmodule


module up4_filter_2_DW01_add_9 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2X2M U3 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_2_DW01_add_8 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [21:6] carry;

  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  AND2X2M U1 ( .A(A[2]), .B(B[2]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n4), .A1N(A[4]), .B0(n5), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n5) );
  OAI2BB1X1M U6 ( .A0N(n1), .A1N(A[3]), .B0(n6), .Y(n4) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n1), .B0(B[3]), .Y(n6) );
endmodule


module up4_filter_2_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:2] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  INVX2M U2 ( .A(A[0]), .Y(n2) );
  XNOR2X2M U3 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
endmodule


module up4_filter_2_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [21:6] carry;

  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXLM U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(A[1]), .A1N(B[1]), .B0(n9), .Y(n7) );
  OAI211X1M U10 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n9) );
endmodule


module up4_filter_2_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_2_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:4] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_2_DW01_add_12 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[1]), .Y(SUM[1]) );
  INVX2M U4 ( .A(A[3]), .Y(n4) );
  BUFX2M U5 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_2_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X1M U1 ( .A(A[1]), .B(B[1]), .Y(n7) );
  OAI2BB1X1M U2 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U4 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U6 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U8 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U9 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
endmodule


module up4_filter_test_2 ( clk, rst_n, in_data, b0, b1, b2, b3, test_si2, 
        test_si1, test_so2, test_so1, test_se );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   x_n3_14_, x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_,
         x_n3_7_, x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_,
         x_n3_0_, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N99, N98, N97, N96, N95, N94, N93,
         N92, N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144,
         N143, N142, N141, N140, N139, N138, N137, N132, N131, N130, N129,
         N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118,
         N117, N116, N115, N114, N113, N110, N109, N108, N107, N106, N105,
         N104, N103, N102, N101, N100, N327, N326, N325, N324, N323, N322,
         N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311,
         N310, N309, N308, N283, N282, N281, N280, N279, N278, N277, N276,
         N275, N274, N273, N272, N271, N270, N269, N268, N267, N9, N88, N87,
         N86, N85, N84, N83, N82, N81, N80, N8, N79, N78, N77, N76, N75, N74,
         N73, N72, N71, N70, N7, N69, N68, N67, N66, N60, N6, N59, N58, N57,
         N56, N55, N54, N53, N52, N51, N50, N5, N49, N48, N47, N46, N45, N44,
         N42, N41, N40, N4, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30,
         N3, N29, N28, N27, N26, N25, N24, N23, N22, N20, N2, N19, N18, N17,
         N16, N15, N14, N13, N12, N11, N10, N1, N262, N261, N260, N259, N258,
         N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, N247,
         N246, N245, N244, N243, N242, N240, N239, N238, N237, N236, N235,
         N234, N233, N232, N231, N230, N229, N228, N227, N226, N225, N224,
         N223, N222, N221, N220, N218, N217, N216, N215, N214, N213, N212,
         N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, N201,
         N200, N199, N174, N173, N172, N171, N170, N169, N168, N167, N166,
         N165, N164, N163, N162, N161, N160, N159, N158, r116_carry_6_,
         r116_carry_7_, r116_carry_8_, r116_carry_9_, r116_carry_10_,
         r116_carry_11_, r116_carry_12_, r116_carry_13_, r116_carry_14_,
         r116_carry_15_, r116_carry_16_, r116_carry_17_, r116_carry_18_,
         r116_carry_19_, add_2_root_add_0_root_add_34_4_carry_6_,
         add_2_root_add_0_root_add_34_4_carry_7_,
         add_2_root_add_0_root_add_34_4_carry_8_,
         add_2_root_add_0_root_add_34_4_carry_9_,
         add_2_root_add_0_root_add_34_4_carry_10_,
         add_2_root_add_0_root_add_34_4_carry_11_,
         add_2_root_add_0_root_add_34_4_carry_12_,
         add_2_root_add_0_root_add_34_4_carry_13_,
         add_2_root_add_0_root_add_34_4_carry_14_,
         add_2_root_add_0_root_add_34_4_carry_15_,
         add_2_root_add_0_root_add_34_4_carry_16_,
         add_2_root_add_0_root_add_34_4_carry_17_,
         add_2_root_add_0_root_add_34_4_carry_18_,
         add_2_root_add_0_root_add_34_4_carry_19_,
         add_3_root_add_0_root_add_34_4_carry_5_,
         add_3_root_add_0_root_add_34_4_carry_6_,
         add_3_root_add_0_root_add_34_4_carry_7_,
         add_3_root_add_0_root_add_34_4_carry_8_,
         add_3_root_add_0_root_add_34_4_carry_9_,
         add_3_root_add_0_root_add_34_4_carry_10_,
         add_3_root_add_0_root_add_34_4_carry_11_,
         add_3_root_add_0_root_add_34_4_carry_12_,
         add_3_root_add_0_root_add_34_4_carry_13_,
         add_3_root_add_0_root_add_34_4_carry_14_,
         add_3_root_add_0_root_add_34_4_carry_15_,
         add_3_root_add_0_root_add_34_4_carry_16_,
         add_3_root_add_0_root_add_34_4_carry_17_,
         add_3_root_add_0_root_add_34_4_carry_18_,
         add_3_root_add_42_4_carry_5_, add_3_root_add_42_4_carry_6_,
         add_3_root_add_42_4_carry_7_, add_3_root_add_42_4_carry_8_,
         add_3_root_add_42_4_carry_9_, add_3_root_add_42_4_carry_10_,
         add_3_root_add_42_4_carry_11_, add_3_root_add_42_4_carry_12_,
         add_3_root_add_42_4_carry_13_, add_3_root_add_42_4_carry_14_,
         add_3_root_add_42_4_carry_15_, add_3_root_add_42_4_carry_16_,
         add_3_root_add_42_4_carry_17_, add_3_root_add_42_4_carry_18_,
         add_5_root_add_38_6_carry_4_, add_5_root_add_38_6_carry_5_,
         add_5_root_add_38_6_carry_6_, add_5_root_add_38_6_carry_7_,
         add_5_root_add_38_6_carry_8_, add_5_root_add_38_6_carry_9_,
         add_5_root_add_38_6_carry_10_, add_5_root_add_38_6_carry_11_,
         add_5_root_add_38_6_carry_12_, add_5_root_add_38_6_carry_13_,
         add_5_root_add_38_6_carry_14_, add_5_root_add_38_6_carry_15_,
         add_5_root_add_38_6_carry_16_, add_5_root_add_38_6_carry_17_, n49,
         n50, n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n163, n164, n165, n166, n1,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10,
         SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12,
         SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14,
         SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16,
         SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18,
         SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20,
         SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22,
         SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24,
         SYNOPSYS_UNCONNECTED_25, SYNOPSYS_UNCONNECTED_26,
         SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28,
         SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30,
         SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32;
  wire   [15:2] x_n1;
  wire   [15:2] x_n2;
  wire   [20:2] sub_3_root_sub_0_root_add_30_3_carry;
  wire   [15:1] add_4_root_sub_0_root_add_30_3_carry;
  wire   [20:2] sub_2_root_sub_0_root_add_30_3_carry;

  SDFFRQX2M x_n3_reg_15_ ( .D(n51), .SI(x_n3_14_), .SE(n164), .CK(clk), .RN(
        n61), .Q(test_so2) );
  SDFFRQX2M x_n1_reg_15_ ( .D(N283), .SI(x_n1[14]), .SE(n164), .CK(clk), .RN(
        n60), .Q(x_n1[15]) );
  SDFFRQX2M x_n2_reg_15_ ( .D(N154), .SI(x_n2[14]), .SE(n164), .CK(clk), .RN(
        n61), .Q(x_n2[15]) );
  SDFFRQX2M x_n3_reg_14_ ( .D(x_n2[14]), .SI(x_n3_13_), .SE(n164), .CK(clk), 
        .RN(n61), .Q(x_n3_14_) );
  SDFFRQX2M x_n3_reg_13_ ( .D(x_n2[13]), .SI(x_n3_12_), .SE(n164), .CK(clk), 
        .RN(n61), .Q(x_n3_13_) );
  SDFFRQX2M x_n3_reg_12_ ( .D(x_n2[12]), .SI(x_n3_11_), .SE(n164), .CK(clk), 
        .RN(n61), .Q(x_n3_12_) );
  SDFFRQX2M x_n3_reg_11_ ( .D(x_n2[11]), .SI(x_n3_10_), .SE(n164), .CK(clk), 
        .RN(n62), .Q(x_n3_11_) );
  SDFFRQX2M x_n2_reg_12_ ( .D(x_n1[12]), .SI(x_n2[11]), .SE(n164), .CK(clk), 
        .RN(n61), .Q(x_n2[12]) );
  SDFFRQX2M x_n2_reg_11_ ( .D(x_n1[11]), .SI(x_n2[10]), .SE(n164), .CK(clk), 
        .RN(n62), .Q(x_n2[11]) );
  SDFFRQX2M x_n3_reg_10_ ( .D(x_n2[10]), .SI(x_n3_9_), .SE(n164), .CK(clk), 
        .RN(n62), .Q(x_n3_10_) );
  SDFFRQX2M x_n3_reg_9_ ( .D(x_n2[9]), .SI(x_n3_8_), .SE(n164), .CK(clk), .RN(
        n62), .Q(x_n3_9_) );
  SDFFRQX2M x_n3_reg_8_ ( .D(x_n2[8]), .SI(x_n3_7_), .SE(n164), .CK(clk), .RN(
        n62), .Q(x_n3_8_) );
  SDFFRQX2M x_n3_reg_7_ ( .D(x_n2[7]), .SI(x_n3_6_), .SE(n164), .CK(clk), .RN(
        n62), .Q(x_n3_7_) );
  SDFFRQX2M x_n2_reg_7_ ( .D(x_n1[7]), .SI(x_n2[6]), .SE(n164), .CK(clk), .RN(
        n62), .Q(x_n2[7]) );
  SDFFRQX2M x_n1_reg_2_ ( .D(in_data[2]), .SI(n54), .SE(n164), .CK(clk), .RN(
        n61), .Q(x_n1[2]) );
  SDFFRQX2M x_n1_reg_1_ ( .D(in_data[1]), .SI(n53), .SE(test_se), .CK(clk), 
        .RN(n61), .Q(N137) );
  SDFFRQX2M x_n1_reg_0_ ( .D(in_data[0]), .SI(test_si1), .SE(test_se), .CK(clk), .RN(n61), .Q(N1) );
  SDFFRQX2M x_n2_reg_2_ ( .D(n55), .SI(N92), .SE(test_se), .CK(clk), .RN(n63), 
        .Q(x_n2[2]) );
  SDFFRQX2M x_n2_reg_0_ ( .D(n53), .SI(test_si2), .SE(test_se), .CK(clk), .RN(
        n63), .Q(N23) );
  SDFFRQX2M x_n3_reg_6_ ( .D(x_n2[6]), .SI(x_n3_5_), .SE(test_se), .CK(clk), 
        .RN(n62), .Q(x_n3_6_) );
  SDFFRQX2M x_n3_reg_5_ ( .D(x_n2[5]), .SI(x_n3_4_), .SE(test_se), .CK(clk), 
        .RN(n63), .Q(x_n3_5_) );
  SDFFRQX2M x_n3_reg_4_ ( .D(x_n2[4]), .SI(x_n3_3_), .SE(test_se), .CK(clk), 
        .RN(n63), .Q(x_n3_4_) );
  SDFFRQX2M x_n3_reg_3_ ( .D(x_n2[3]), .SI(x_n3_2_), .SE(test_se), .CK(clk), 
        .RN(n63), .Q(x_n3_3_) );
  SDFFRQX2M x_n3_reg_2_ ( .D(n50), .SI(x_n3_1_), .SE(test_se), .CK(clk), .RN(
        n63), .Q(x_n3_2_) );
  SDFFRQX2M x_n2_reg_3_ ( .D(x_n1[3]), .SI(n50), .SE(test_se), .CK(clk), .RN(
        n63), .Q(x_n2[3]) );
  SDFFRQX2M x_n3_reg_0_ ( .D(n49), .SI(n51), .SE(test_se), .CK(clk), .RN(n63), 
        .Q(x_n3_0_) );
  SDFFRQX2M x_n3_reg_1_ ( .D(N92), .SI(x_n3_0_), .SE(test_se), .CK(clk), .RN(
        n63), .Q(x_n3_1_) );
  SDFFRQX2M x_n1_reg_14_ ( .D(in_data[14]), .SI(x_n1[13]), .SE(test_se), .CK(
        clk), .RN(n60), .Q(x_n1[14]) );
  SDFFRQX2M x_n1_reg_13_ ( .D(in_data[13]), .SI(x_n1[12]), .SE(test_se), .CK(
        clk), .RN(n60), .Q(x_n1[13]) );
  SDFFRQX2M x_n1_reg_12_ ( .D(in_data[12]), .SI(x_n1[11]), .SE(test_se), .CK(
        clk), .RN(n60), .Q(x_n1[12]) );
  SDFFRQX2M x_n2_reg_14_ ( .D(x_n1[14]), .SI(x_n2[13]), .SE(test_se), .CK(clk), 
        .RN(n61), .Q(x_n2[14]) );
  SDFFRQX2M x_n2_reg_13_ ( .D(x_n1[13]), .SI(x_n2[12]), .SE(test_se), .CK(clk), 
        .RN(n61), .Q(x_n2[13]) );
  SDFFRQX2M x_n1_reg_11_ ( .D(in_data[11]), .SI(x_n1[10]), .SE(test_se), .CK(
        clk), .RN(n60), .Q(x_n1[11]) );
  SDFFRQX2M x_n1_reg_10_ ( .D(in_data[10]), .SI(x_n1[9]), .SE(test_se), .CK(
        clk), .RN(n60), .Q(x_n1[10]) );
  SDFFRQX2M x_n1_reg_9_ ( .D(in_data[9]), .SI(x_n1[8]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[9]) );
  SDFFRQX2M x_n1_reg_8_ ( .D(in_data[8]), .SI(x_n1[7]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[8]) );
  SDFFRQX2M x_n2_reg_10_ ( .D(x_n1[10]), .SI(x_n2[9]), .SE(test_se), .CK(clk), 
        .RN(n62), .Q(x_n2[10]) );
  SDFFRQX2M x_n2_reg_9_ ( .D(x_n1[9]), .SI(x_n2[8]), .SE(test_se), .CK(clk), 
        .RN(n62), .Q(x_n2[9]) );
  SDFFRQX2M x_n2_reg_8_ ( .D(x_n1[8]), .SI(x_n2[7]), .SE(test_se), .CK(clk), 
        .RN(n62), .Q(x_n2[8]) );
  SDFFRQX2M x_n1_reg_7_ ( .D(in_data[7]), .SI(x_n1[6]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[7]) );
  SDFFRQX2M x_n1_reg_6_ ( .D(in_data[6]), .SI(x_n1[5]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[6]) );
  SDFFRQX2M x_n1_reg_5_ ( .D(in_data[5]), .SI(x_n1[4]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[5]) );
  SDFFRQX2M x_n1_reg_4_ ( .D(in_data[4]), .SI(x_n1[3]), .SE(test_se), .CK(clk), 
        .RN(n60), .Q(x_n1[4]) );
  SDFFRQX2M x_n2_reg_6_ ( .D(x_n1[6]), .SI(x_n2[5]), .SE(test_se), .CK(clk), 
        .RN(n62), .Q(x_n2[6]) );
  SDFFRQX2M x_n2_reg_5_ ( .D(x_n1[5]), .SI(x_n2[4]), .SE(test_se), .CK(clk), 
        .RN(n63), .Q(x_n2[5]) );
  SDFFRQX2M x_n2_reg_4_ ( .D(x_n1[4]), .SI(x_n2[3]), .SE(test_se), .CK(clk), 
        .RN(n63), .Q(x_n2[4]) );
  SDFFRQX2M x_n1_reg_3_ ( .D(in_data[3]), .SI(n55), .SE(test_se), .CK(clk), 
        .RN(n61), .Q(x_n1[3]) );
  SDFFRQX2M x_n2_reg_1_ ( .D(n54), .SI(n49), .SE(test_se), .CK(clk), .RN(n63), 
        .Q(N92) );
  XOR3XLM U51 ( .A(n80), .B(test_so2), .C(n81), .Y(N66) );
  ADDFX1M U52 ( .A(x_n3_1_), .B(in_data[1]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[1]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[2]), .S(N46) );
  BUFX2M U53 ( .A(x_n2[15]), .Y(n52) );
  BUFX2M U54 ( .A(x_n2[15]), .Y(n51) );
  BUFX2M U55 ( .A(n59), .Y(n63) );
  BUFX2M U56 ( .A(n59), .Y(n62) );
  BUFX2M U57 ( .A(n58), .Y(n61) );
  BUFX2M U58 ( .A(n58), .Y(n60) );
  ADDFX2M U59 ( .A(n57), .B(N283), .CI(N173), .CO(N174) );
  BUFX2M U60 ( .A(rst_n), .Y(n59) );
  BUFX2M U61 ( .A(rst_n), .Y(n58) );
  ADDFX2M U62 ( .A(in_data[13]), .B(N283), .CI(add_5_root_add_38_6_carry_16_), 
        .CO(add_5_root_add_38_6_carry_17_), .S(N171) );
  ADDFX2M U63 ( .A(in_data[14]), .B(N283), .CI(add_5_root_add_38_6_carry_17_), 
        .CO(N173), .S(N172) );
  ADDFX2M U64 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_5_root_add_38_6_carry_4_), .CO(add_5_root_add_38_6_carry_5_), .S(
        N159) );
  ADDFX2M U65 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_5_root_add_38_6_carry_5_), .CO(add_5_root_add_38_6_carry_6_), .S(
        N160) );
  ADDFX2M U66 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_5_root_add_38_6_carry_11_), .CO(add_5_root_add_38_6_carry_12_), 
        .S(N166) );
  ADDFX2M U67 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_5_root_add_38_6_carry_12_), .CO(add_5_root_add_38_6_carry_13_), 
        .S(N167) );
  ADDFX2M U68 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_5_root_add_38_6_carry_13_), .CO(add_5_root_add_38_6_carry_14_), 
        .S(N168) );
  ADDFX2M U69 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_5_root_add_38_6_carry_15_), .CO(add_5_root_add_38_6_carry_16_), 
        .S(N170) );
  ADDFX2M U70 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_5_root_add_38_6_carry_6_), .CO(add_5_root_add_38_6_carry_7_), .S(
        N161) );
  ADDFX2M U71 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_5_root_add_38_6_carry_7_), .CO(add_5_root_add_38_6_carry_8_), .S(
        N162) );
  ADDFX2M U72 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_5_root_add_38_6_carry_8_), .CO(add_5_root_add_38_6_carry_9_), .S(
        N163) );
  ADDFX2M U73 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_5_root_add_38_6_carry_9_), .CO(add_5_root_add_38_6_carry_10_), .S(
        N164) );
  ADDFX2M U74 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_5_root_add_38_6_carry_10_), .CO(add_5_root_add_38_6_carry_11_), 
        .S(N165) );
  ADDFX2M U75 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_5_root_add_38_6_carry_14_), .CO(add_5_root_add_38_6_carry_15_), 
        .S(N169) );
  ADDFX2M U77 ( .A(n52), .B(n51), .CI(N109), .CO(N110) );
  INVX2M U78 ( .A(sub_3_root_sub_0_root_add_30_3_carry[20]), .Y(N44) );
  INVX2M U79 ( .A(n54), .Y(n65) );
  INVX2M U80 ( .A(n49), .Y(n82) );
  INVX2M U81 ( .A(n50), .Y(n84) );
  INVX2M U82 ( .A(n53), .Y(n64) );
  INVX2M U83 ( .A(n55), .Y(n66) );
  ADDFX2M U84 ( .A(n51), .B(n52), .CI(N108), .CO(N109) );
  ADDFX2M U85 ( .A(in_data[13]), .B(N283), .CI(add_3_root_add_42_4_carry_17_), 
        .CO(add_3_root_add_42_4_carry_18_), .S(N280) );
  ADDFX2M U86 ( .A(in_data[14]), .B(N283), .CI(add_3_root_add_42_4_carry_18_), 
        .CO(N282), .S(N281) );
  ADDFX2M U87 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_3_root_add_42_4_carry_12_), .CO(add_3_root_add_42_4_carry_13_), 
        .S(N275) );
  ADDFX2M U88 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_3_root_add_42_4_carry_13_), .CO(add_3_root_add_42_4_carry_14_), 
        .S(N276) );
  ADDFX2M U89 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_3_root_add_42_4_carry_14_), .CO(add_3_root_add_42_4_carry_15_), 
        .S(N277) );
  ADDFX2M U90 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_3_root_add_42_4_carry_16_), .CO(add_3_root_add_42_4_carry_17_), 
        .S(N279) );
  ADDFX2M U91 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_3_root_add_42_4_carry_5_), .CO(add_3_root_add_42_4_carry_6_), .S(
        N268) );
  ADDFX2M U92 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_3_root_add_42_4_carry_6_), .CO(add_3_root_add_42_4_carry_7_), .S(
        N269) );
  ADDFX2M U93 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_3_root_add_42_4_carry_7_), .CO(add_3_root_add_42_4_carry_8_), .S(
        N270) );
  ADDFX2M U94 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_3_root_add_42_4_carry_8_), .CO(add_3_root_add_42_4_carry_9_), .S(
        N271) );
  ADDFX2M U95 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_3_root_add_42_4_carry_9_), .CO(add_3_root_add_42_4_carry_10_), .S(
        N272) );
  ADDFX2M U96 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_3_root_add_42_4_carry_10_), .CO(add_3_root_add_42_4_carry_11_), 
        .S(N273) );
  ADDFX2M U97 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_3_root_add_42_4_carry_11_), .CO(add_3_root_add_42_4_carry_12_), 
        .S(N274) );
  ADDFX2M U98 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_3_root_add_42_4_carry_15_), .CO(add_3_root_add_42_4_carry_16_), 
        .S(N278) );
  INVX2M U99 ( .A(sub_2_root_sub_0_root_add_30_3_carry[20]), .Y(N22) );
  BUFX2M U100 ( .A(in_data[15]), .Y(N283) );
  INVX2M U101 ( .A(n52), .Y(n97) );
  INVX2M U102 ( .A(N154), .Y(n79) );
  BUFX2M U103 ( .A(in_data[15]), .Y(n57) );
  ADDFX2M U104 ( .A(x_n3_2_), .B(in_data[2]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[2]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[3]), .S(N47) );
  ADDFX2M U105 ( .A(x_n3_3_), .B(in_data[3]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[3]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[4]), .S(N48) );
  ADDFX2M U106 ( .A(x_n3_4_), .B(in_data[4]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[4]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[5]), .S(N49) );
  ADDFX2M U107 ( .A(x_n3_5_), .B(in_data[5]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[5]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[6]), .S(N50) );
  ADDFX2M U108 ( .A(x_n3_6_), .B(in_data[6]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[6]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[7]), .S(N51) );
  ADDFX2M U109 ( .A(x_n3_7_), .B(in_data[7]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[7]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[8]), .S(N52) );
  ADDFX2M U110 ( .A(x_n3_8_), .B(in_data[8]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[8]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[9]), .S(N53) );
  ADDFX2M U111 ( .A(x_n3_9_), .B(in_data[9]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[9]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[10]), .S(N54) );
  ADDFX2M U112 ( .A(x_n3_10_), .B(in_data[10]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[10]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[11]), .S(N55) );
  ADDFX2M U113 ( .A(x_n3_11_), .B(in_data[11]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[11]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[12]), .S(N56) );
  ADDFX2M U114 ( .A(x_n3_12_), .B(in_data[12]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[12]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[13]), .S(N57) );
  ADDFX2M U115 ( .A(x_n3_13_), .B(in_data[13]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[13]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[14]), .S(N58) );
  ADDFX2M U116 ( .A(x_n3_14_), .B(in_data[14]), .CI(
        add_4_root_sub_0_root_add_30_3_carry[14]), .CO(
        add_4_root_sub_0_root_add_30_3_carry[15]), .S(N59) );
  ADDFX2M U117 ( .A(n49), .B(n87), .CI(sub_3_root_sub_0_root_add_30_3_carry[5]), .CO(sub_3_root_sub_0_root_add_30_3_carry[6]), .S(N28) );
  INVX2M U118 ( .A(x_n2[5]), .Y(n87) );
  BUFX2M U119 ( .A(N23), .Y(n49) );
  BUFX2M U120 ( .A(N137), .Y(n54) );
  ADDFX2M U121 ( .A(x_n2[8]), .B(n95), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[13]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[14]), .S(N36) );
  INVX2M U122 ( .A(x_n2[13]), .Y(n95) );
  ADDFX2M U123 ( .A(x_n2[14]), .B(n97), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[19]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[20]), .S(N42) );
  BUFX2M U124 ( .A(N1), .Y(n53) );
  BUFX2M U125 ( .A(x_n2[2]), .Y(n50) );
  ADDFX2M U126 ( .A(n53), .B(n69), .CI(sub_2_root_sub_0_root_add_30_3_carry[5]), .CO(sub_2_root_sub_0_root_add_30_3_carry[6]), .S(N6) );
  INVX2M U127 ( .A(x_n1[5]), .Y(n69) );
  ADDFX2M U128 ( .A(n54), .B(n70), .CI(sub_2_root_sub_0_root_add_30_3_carry[6]), .CO(sub_2_root_sub_0_root_add_30_3_carry[7]), .S(N7) );
  INVX2M U129 ( .A(x_n1[6]), .Y(n70) );
  ADDFX2M U130 ( .A(n55), .B(n71), .CI(sub_2_root_sub_0_root_add_30_3_carry[7]), .CO(sub_2_root_sub_0_root_add_30_3_carry[8]), .S(N8) );
  INVX2M U131 ( .A(x_n1[7]), .Y(n71) );
  ADDFX2M U132 ( .A(x_n1[4]), .B(n73), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[9]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[10]), .S(N10) );
  INVX2M U133 ( .A(x_n1[9]), .Y(n73) );
  ADDFX2M U134 ( .A(x_n1[5]), .B(n74), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[10]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[11]), .S(N11) );
  INVX2M U135 ( .A(x_n1[10]), .Y(n74) );
  ADDFX2M U136 ( .A(x_n1[8]), .B(n77), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[13]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[14]), .S(N14) );
  INVX2M U137 ( .A(x_n1[13]), .Y(n77) );
  ADDFX2M U138 ( .A(x_n1[9]), .B(n78), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[14]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[15]), .S(N15) );
  INVX2M U139 ( .A(x_n1[14]), .Y(n78) );
  ADDFX2M U140 ( .A(x_n1[14]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[19]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[20]), .S(N20) );
  BUFX2M U141 ( .A(x_n1[2]), .Y(n55) );
  ADDFX2M U142 ( .A(N92), .B(n88), .CI(sub_3_root_sub_0_root_add_30_3_carry[6]), .CO(sub_3_root_sub_0_root_add_30_3_carry[7]), .S(N29) );
  INVX2M U143 ( .A(x_n2[6]), .Y(n88) );
  ADDFX2M U144 ( .A(n50), .B(n89), .CI(sub_3_root_sub_0_root_add_30_3_carry[7]), .CO(sub_3_root_sub_0_root_add_30_3_carry[8]), .S(N30) );
  INVX2M U145 ( .A(x_n2[7]), .Y(n89) );
  ADDFX2M U146 ( .A(x_n2[3]), .B(n90), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[8]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[9]), .S(N31) );
  INVX2M U147 ( .A(x_n2[8]), .Y(n90) );
  ADDFX2M U148 ( .A(x_n1[3]), .B(n72), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[8]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[9]), .S(N9) );
  INVX2M U149 ( .A(x_n1[8]), .Y(n72) );
  ADDFX2M U150 ( .A(x_n2[4]), .B(n91), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[9]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[10]), .S(N32) );
  INVX2M U151 ( .A(x_n2[9]), .Y(n91) );
  ADDFX2M U152 ( .A(x_n2[5]), .B(n92), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[10]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[11]), .S(N33) );
  INVX2M U153 ( .A(x_n2[10]), .Y(n92) );
  ADDFX2M U154 ( .A(x_n2[6]), .B(n93), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[11]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[12]), .S(N34) );
  INVX2M U155 ( .A(x_n2[11]), .Y(n93) );
  ADDFX2M U156 ( .A(x_n1[6]), .B(n75), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[11]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[12]), .S(N12) );
  INVX2M U157 ( .A(x_n1[11]), .Y(n75) );
  ADDFX2M U158 ( .A(x_n2[7]), .B(n94), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[12]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[13]), .S(N35) );
  INVX2M U159 ( .A(x_n2[12]), .Y(n94) );
  ADDFX2M U160 ( .A(x_n1[7]), .B(n76), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[12]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[13]), .S(N13) );
  INVX2M U161 ( .A(x_n1[12]), .Y(n76) );
  ADDFX2M U162 ( .A(x_n2[9]), .B(n96), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[14]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[15]), .S(N37) );
  INVX2M U163 ( .A(x_n2[14]), .Y(n96) );
  ADDFX2M U164 ( .A(x_n2[10]), .B(n97), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[15]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[16]), .S(N38) );
  ADDFX2M U165 ( .A(x_n1[10]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[15]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[16]), .S(N16) );
  ADDFX2M U166 ( .A(x_n2[11]), .B(n97), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[16]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[17]), .S(N39) );
  ADDFX2M U167 ( .A(x_n1[11]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[16]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[17]), .S(N17) );
  ADDFX2M U168 ( .A(x_n2[12]), .B(n97), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[17]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[18]), .S(N40) );
  ADDFX2M U169 ( .A(x_n1[12]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[17]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[18]), .S(N18) );
  ADDFX2M U170 ( .A(x_n2[13]), .B(n97), .CI(
        sub_3_root_sub_0_root_add_30_3_carry[18]), .CO(
        sub_3_root_sub_0_root_add_30_3_carry[19]), .S(N41) );
  ADDFX2M U171 ( .A(x_n1[13]), .B(n79), .CI(
        sub_2_root_sub_0_root_add_30_3_carry[18]), .CO(
        sub_2_root_sub_0_root_add_30_3_carry[19]), .S(N19) );
  INVX2M U172 ( .A(N92), .Y(n83) );
  INVX2M U173 ( .A(x_n2[3]), .Y(n85) );
  INVX2M U174 ( .A(x_n1[3]), .Y(n67) );
  ADDFX2M U175 ( .A(n54), .B(x_n1[3]), .CI(r116_carry_6_), .CO(r116_carry_7_), 
        .S(N181) );
  ADDFX2M U176 ( .A(n55), .B(x_n1[4]), .CI(r116_carry_7_), .CO(r116_carry_8_), 
        .S(N182) );
  ADDFX2M U177 ( .A(x_n1[3]), .B(x_n1[5]), .CI(r116_carry_8_), .CO(
        r116_carry_9_), .S(N183) );
  ADDFX2M U178 ( .A(x_n1[4]), .B(x_n1[6]), .CI(r116_carry_9_), .CO(
        r116_carry_10_), .S(N184) );
  ADDFX2M U179 ( .A(x_n1[13]), .B(N154), .CI(r116_carry_18_), .CO(
        r116_carry_19_), .S(N193) );
  ADDFX2M U180 ( .A(x_n1[14]), .B(N154), .CI(r116_carry_19_), .CO(N195), .S(
        N194) );
  ADDFX2M U181 ( .A(x_n2[13]), .B(n52), .CI(
        add_3_root_add_0_root_add_34_4_carry_17_), .CO(
        add_3_root_add_0_root_add_34_4_carry_18_), .S(N106) );
  ADDFX2M U182 ( .A(x_n2[14]), .B(n51), .CI(
        add_3_root_add_0_root_add_34_4_carry_18_), .CO(N108), .S(N107) );
  ADDFX2M U183 ( .A(N92), .B(x_n2[3]), .CI(
        add_3_root_add_0_root_add_34_4_carry_5_), .CO(
        add_3_root_add_0_root_add_34_4_carry_6_), .S(N94) );
  ADDFX2M U184 ( .A(n50), .B(x_n2[4]), .CI(
        add_3_root_add_0_root_add_34_4_carry_6_), .CO(
        add_3_root_add_0_root_add_34_4_carry_7_), .S(N95) );
  ADDFX2M U185 ( .A(x_n2[3]), .B(x_n2[5]), .CI(
        add_3_root_add_0_root_add_34_4_carry_7_), .CO(
        add_3_root_add_0_root_add_34_4_carry_8_), .S(N96) );
  ADDFX2M U186 ( .A(x_n2[8]), .B(x_n2[10]), .CI(
        add_3_root_add_0_root_add_34_4_carry_12_), .CO(
        add_3_root_add_0_root_add_34_4_carry_13_), .S(N101) );
  ADDFX2M U187 ( .A(x_n2[9]), .B(x_n2[11]), .CI(
        add_3_root_add_0_root_add_34_4_carry_13_), .CO(
        add_3_root_add_0_root_add_34_4_carry_14_), .S(N102) );
  ADDFX2M U188 ( .A(x_n2[10]), .B(x_n2[12]), .CI(
        add_3_root_add_0_root_add_34_4_carry_14_), .CO(
        add_3_root_add_0_root_add_34_4_carry_15_), .S(N103) );
  ADDFX2M U189 ( .A(x_n2[12]), .B(x_n2[14]), .CI(
        add_3_root_add_0_root_add_34_4_carry_16_), .CO(
        add_3_root_add_0_root_add_34_4_carry_17_), .S(N105) );
  ADDFX2M U190 ( .A(x_n2[4]), .B(x_n2[6]), .CI(
        add_3_root_add_0_root_add_34_4_carry_8_), .CO(
        add_3_root_add_0_root_add_34_4_carry_9_), .S(N97) );
  ADDFX2M U191 ( .A(x_n2[5]), .B(x_n2[7]), .CI(
        add_3_root_add_0_root_add_34_4_carry_9_), .CO(
        add_3_root_add_0_root_add_34_4_carry_10_), .S(N98) );
  ADDFX2M U192 ( .A(x_n2[6]), .B(x_n2[8]), .CI(
        add_3_root_add_0_root_add_34_4_carry_10_), .CO(
        add_3_root_add_0_root_add_34_4_carry_11_), .S(N99) );
  ADDFX2M U193 ( .A(x_n1[5]), .B(x_n1[7]), .CI(r116_carry_10_), .CO(
        r116_carry_11_), .S(N185) );
  ADDFX2M U194 ( .A(x_n2[7]), .B(x_n2[9]), .CI(
        add_3_root_add_0_root_add_34_4_carry_11_), .CO(
        add_3_root_add_0_root_add_34_4_carry_12_), .S(N100) );
  ADDFX2M U195 ( .A(x_n1[6]), .B(x_n1[8]), .CI(r116_carry_11_), .CO(
        r116_carry_12_), .S(N186) );
  ADDFX2M U196 ( .A(x_n1[7]), .B(x_n1[9]), .CI(r116_carry_12_), .CO(
        r116_carry_13_), .S(N187) );
  ADDFX2M U197 ( .A(x_n1[8]), .B(x_n1[10]), .CI(r116_carry_13_), .CO(
        r116_carry_14_), .S(N188) );
  ADDFX2M U198 ( .A(x_n1[9]), .B(x_n1[11]), .CI(r116_carry_14_), .CO(
        r116_carry_15_), .S(N189) );
  ADDFX2M U199 ( .A(x_n2[11]), .B(x_n2[13]), .CI(
        add_3_root_add_0_root_add_34_4_carry_15_), .CO(
        add_3_root_add_0_root_add_34_4_carry_16_), .S(N104) );
  ADDFX2M U200 ( .A(x_n1[10]), .B(x_n1[12]), .CI(r116_carry_15_), .CO(
        r116_carry_16_), .S(N190) );
  ADDFX2M U201 ( .A(x_n1[11]), .B(x_n1[13]), .CI(r116_carry_16_), .CO(
        r116_carry_17_), .S(N191) );
  ADDFX2M U202 ( .A(x_n1[12]), .B(x_n1[14]), .CI(r116_carry_17_), .CO(
        r116_carry_18_), .S(N192) );
  INVX2M U203 ( .A(x_n2[4]), .Y(n86) );
  INVX2M U204 ( .A(x_n1[4]), .Y(n68) );
  ADDFX2M U205 ( .A(x_n1[14]), .B(N154), .CI(
        add_2_root_add_0_root_add_34_4_carry_19_), .CO(N153), .S(N152) );
  ADDFX2M U206 ( .A(n54), .B(x_n1[3]), .CI(
        add_2_root_add_0_root_add_34_4_carry_6_), .CO(
        add_2_root_add_0_root_add_34_4_carry_7_), .S(N139) );
  ADDFX2M U207 ( .A(n55), .B(x_n1[4]), .CI(
        add_2_root_add_0_root_add_34_4_carry_7_), .CO(
        add_2_root_add_0_root_add_34_4_carry_8_), .S(N140) );
  ADDFX2M U208 ( .A(x_n1[3]), .B(x_n1[5]), .CI(
        add_2_root_add_0_root_add_34_4_carry_8_), .CO(
        add_2_root_add_0_root_add_34_4_carry_9_), .S(N141) );
  ADDFX2M U209 ( .A(x_n1[4]), .B(x_n1[6]), .CI(
        add_2_root_add_0_root_add_34_4_carry_9_), .CO(
        add_2_root_add_0_root_add_34_4_carry_10_), .S(N142) );
  ADDFX2M U210 ( .A(x_n1[5]), .B(x_n1[7]), .CI(
        add_2_root_add_0_root_add_34_4_carry_10_), .CO(
        add_2_root_add_0_root_add_34_4_carry_11_), .S(N143) );
  ADDFX2M U211 ( .A(x_n1[6]), .B(x_n1[8]), .CI(
        add_2_root_add_0_root_add_34_4_carry_11_), .CO(
        add_2_root_add_0_root_add_34_4_carry_12_), .S(N144) );
  ADDFX2M U212 ( .A(x_n1[7]), .B(x_n1[9]), .CI(
        add_2_root_add_0_root_add_34_4_carry_12_), .CO(
        add_2_root_add_0_root_add_34_4_carry_13_), .S(N145) );
  ADDFX2M U213 ( .A(x_n1[8]), .B(x_n1[10]), .CI(
        add_2_root_add_0_root_add_34_4_carry_13_), .CO(
        add_2_root_add_0_root_add_34_4_carry_14_), .S(N146) );
  ADDFX2M U214 ( .A(x_n1[9]), .B(x_n1[11]), .CI(
        add_2_root_add_0_root_add_34_4_carry_14_), .CO(
        add_2_root_add_0_root_add_34_4_carry_15_), .S(N147) );
  ADDFX2M U215 ( .A(x_n1[10]), .B(x_n1[12]), .CI(
        add_2_root_add_0_root_add_34_4_carry_15_), .CO(
        add_2_root_add_0_root_add_34_4_carry_16_), .S(N148) );
  ADDFX2M U216 ( .A(x_n1[11]), .B(x_n1[13]), .CI(
        add_2_root_add_0_root_add_34_4_carry_16_), .CO(
        add_2_root_add_0_root_add_34_4_carry_17_), .S(N149) );
  ADDFX2M U217 ( .A(x_n1[12]), .B(x_n1[14]), .CI(
        add_2_root_add_0_root_add_34_4_carry_17_), .CO(
        add_2_root_add_0_root_add_34_4_carry_18_), .S(N150) );
  ADDFX2M U218 ( .A(x_n1[13]), .B(N154), .CI(
        add_2_root_add_0_root_add_34_4_carry_18_), .CO(
        add_2_root_add_0_root_add_34_4_carry_19_), .S(N151) );
  BUFX2M U219 ( .A(n166), .Y(N154) );
  AND2X1M U221 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_5_root_add_38_6_carry_4_) );
  CLKXOR2X2M U222 ( .A(in_data[2]), .B(in_data[0]), .Y(N158) );
  AND2X1M U223 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_3_root_add_42_4_carry_5_) );
  CLKXOR2X2M U224 ( .A(in_data[2]), .B(in_data[0]), .Y(N267) );
  AND2X1M U225 ( .A(n53), .B(n55), .Y(r116_carry_6_) );
  CLKXOR2X2M U226 ( .A(n55), .B(n53), .Y(N180) );
  AND2X1M U227 ( .A(x_n3_0_), .B(in_data[0]), .Y(
        add_4_root_sub_0_root_add_30_3_carry[1]) );
  CLKXOR2X2M U228 ( .A(in_data[0]), .B(x_n3_0_), .Y(N45) );
  AND2X1M U229 ( .A(sub_2_root_sub_0_root_add_30_3_carry[4]), .B(n68), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[5]) );
  CLKXOR2X2M U230 ( .A(n68), .B(sub_2_root_sub_0_root_add_30_3_carry[4]), .Y(
        N5) );
  AND2X1M U231 ( .A(sub_2_root_sub_0_root_add_30_3_carry[3]), .B(n67), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[4]) );
  CLKXOR2X2M U232 ( .A(n67), .B(sub_2_root_sub_0_root_add_30_3_carry[3]), .Y(
        N4) );
  AND2X1M U233 ( .A(sub_2_root_sub_0_root_add_30_3_carry[2]), .B(n66), .Y(
        sub_2_root_sub_0_root_add_30_3_carry[3]) );
  CLKXOR2X2M U234 ( .A(n66), .B(sub_2_root_sub_0_root_add_30_3_carry[2]), .Y(
        N3) );
  AND2X1M U235 ( .A(n64), .B(n65), .Y(sub_2_root_sub_0_root_add_30_3_carry[2])
         );
  CLKXOR2X2M U236 ( .A(n65), .B(n64), .Y(N2) );
  AND2X1M U237 ( .A(sub_3_root_sub_0_root_add_30_3_carry[4]), .B(n86), .Y(
        sub_3_root_sub_0_root_add_30_3_carry[5]) );
  CLKXOR2X2M U238 ( .A(n86), .B(sub_3_root_sub_0_root_add_30_3_carry[4]), .Y(
        N27) );
  AND2X1M U239 ( .A(sub_3_root_sub_0_root_add_30_3_carry[3]), .B(n85), .Y(
        sub_3_root_sub_0_root_add_30_3_carry[4]) );
  CLKXOR2X2M U240 ( .A(n85), .B(sub_3_root_sub_0_root_add_30_3_carry[3]), .Y(
        N26) );
  AND2X1M U241 ( .A(sub_3_root_sub_0_root_add_30_3_carry[2]), .B(n84), .Y(
        sub_3_root_sub_0_root_add_30_3_carry[3]) );
  CLKXOR2X2M U242 ( .A(n84), .B(sub_3_root_sub_0_root_add_30_3_carry[2]), .Y(
        N25) );
  AND2X1M U243 ( .A(n82), .B(n83), .Y(sub_3_root_sub_0_root_add_30_3_carry[2])
         );
  CLKXOR2X2M U244 ( .A(n83), .B(n82), .Y(N24) );
  AND2X1M U245 ( .A(n49), .B(n50), .Y(add_3_root_add_0_root_add_34_4_carry_5_)
         );
  CLKXOR2X2M U246 ( .A(n50), .B(n49), .Y(N93) );
  AND2X1M U247 ( .A(n53), .B(n55), .Y(add_2_root_add_0_root_add_34_4_carry_6_)
         );
  CLKXOR2X2M U248 ( .A(n55), .B(n53), .Y(N138) );
  XOR3XLM U249 ( .A(add_4_root_sub_0_root_add_30_3_carry[15]), .B(N283), .C(
        test_so2), .Y(N60) );
  AOI222X1M U250 ( .A0(add_4_root_sub_0_root_add_30_3_carry[15]), .A1(test_so2), .B0(add_4_root_sub_0_root_add_30_3_carry[15]), .B1(N283), .C0(N283), .C1(
        test_so2), .Y(n81) );
  CLKINVX1M U251 ( .A(N283), .Y(n80) );
  INVXLM U220 ( .A(test_se), .Y(n163) );
  INVXLM U282 ( .A(n163), .Y(n164) );
  INVXLM U283 ( .A(test_so1), .Y(n165) );
  INVXLM U284 ( .A(n165), .Y(n166) );
  up4_filter_2_DW01_add_3 add_1_root_add_0_root_add_34_4 ( .A({n57, n57, n57, 
        n57, n57, in_data[14:0], 1'b0, 1'b0}), .B({N110, N109, N108, N107, 
        N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, 
        N93, N92, n49, 1'b0, 1'b0}), .CI(1'b0), .SUM({N132, N131, N130, N129, 
        N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, 
        N116, N115, N114, N113, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  up4_filter_2_DW01_add_1 add_0_root_add_0_root_add_34_4 ( .A({N154, N153, 
        N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, 
        N140, N139, N138, n54, n53, 1'b0, 1'b0, 1'b0}), .B({N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  up4_filter_2_DW01_add_9 add_1_root_add_0_root_add_42_4 ( .A({n51, n52, n51, 
        n52, n51, x_n2[14:3], n50, N92, n49, 1'b0, 1'b0}), .B({N154, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, n54, n53, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N327, 
        N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, 
        N314, N313, N312, N311, N310, N309, N308, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10}) );
  up4_filter_2_DW01_add_8 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({N283, N283, N282, 
        N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, N268, N267, in_data[1:0], 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}) );
  up4_filter_2_DW01_add_6 add_1_root_sub_0_root_add_30_3 ( .A({N44, N44, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, n49}), .B({N22, N22, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, n53}), .CI(
        1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_2_DW01_add_5 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({N66, N66, N66, N66, N66, N66, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45}), 
        .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22}) );
  up4_filter_2_DW01_add_14 add_3_root_add_0_root_add_38_6 ( .A({N154, N154, 
        N154, N154, N154, x_n1[14:3], n55, n54, n53, 1'b0, 1'b0}), .B({n51, 
        n52, n51, n52, x_n2[14:3], n50, N92, n49, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24}) );
  up4_filter_2_DW01_add_13 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N174, N174, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, in_data[1:0], 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED_25}) );
  up4_filter_2_DW01_add_12 add_2_root_add_0_root_add_38_6 ( .A({n51, n52, n51, 
        n52, n51, n52, x_n2[14:3], n50, N92, n49, 1'b0}), .B({N154, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        N181, N180, n54, n53, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245, N244, N243, N242, SYNOPSYS_UNCONNECTED_26}) );
  up4_filter_2_DW01_add_11 add_0_root_add_0_root_add_38_6 ( .A({N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245, N244, N243, N242, 1'b0}), .B({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}) );
  INVXLM U3 ( .A(x_n1[15]), .Y(n1) );
  INVX12M U4 ( .A(n1), .Y(test_so1) );
endmodule


module counter2bit_test_2 ( clk, reset, count, test_si, test_se );
  output [1:0] count;
  input clk, reset, test_si, test_se;
  wire   N2, n3;

  SDFFRQX2M count_reg_1_ ( .D(N2), .SI(n3), .SE(test_se), .CK(clk), .RN(reset), 
        .Q(count[1]) );
  SDFFRQX2M count_reg_0_ ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(count[0]) );
  INVX2M U5 ( .A(count[0]), .Y(n3) );
  CLKXOR2X2M U6 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_2 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  NAND2X2M U1 ( .A(n53), .B(n52), .Y(Y[15]) );
  NAND2X2M U2 ( .A(n45), .B(n44), .Y(Y[11]) );
  AOI22X1M U3 ( .A0(I3[11]), .A1(n73), .B0(I2[11]), .B1(n72), .Y(n44) );
  AOI22X1M U4 ( .A0(I1[11]), .A1(n1), .B0(I0[11]), .B1(n38), .Y(n45) );
  NAND2X2M U5 ( .A(n47), .B(n46), .Y(Y[12]) );
  AOI22X1M U6 ( .A0(I3[12]), .A1(n73), .B0(I2[12]), .B1(n72), .Y(n46) );
  AOI22X1M U7 ( .A0(I1[12]), .A1(n1), .B0(I0[12]), .B1(n38), .Y(n47) );
  NAND2X2M U8 ( .A(n75), .B(n74), .Y(Y[9]) );
  AOI22X1M U9 ( .A0(I3[9]), .A1(n73), .B0(I2[9]), .B1(n72), .Y(n74) );
  AOI22X1M U10 ( .A0(I1[9]), .A1(n1), .B0(I0[9]), .B1(n38), .Y(n75) );
  NAND2X2M U11 ( .A(n43), .B(n42), .Y(Y[10]) );
  AOI22X1M U12 ( .A0(I3[10]), .A1(n73), .B0(I2[10]), .B1(n72), .Y(n42) );
  AOI22X1M U13 ( .A0(I1[10]), .A1(n1), .B0(I0[10]), .B1(n38), .Y(n43) );
  NAND2X2M U14 ( .A(n49), .B(n48), .Y(Y[13]) );
  AOI22X1M U15 ( .A0(I3[13]), .A1(n73), .B0(I2[13]), .B1(n72), .Y(n48) );
  AOI22X1M U16 ( .A0(I1[13]), .A1(n1), .B0(I0[13]), .B1(n38), .Y(n49) );
  NAND2X2M U17 ( .A(n51), .B(n50), .Y(Y[14]) );
  AOI22X1M U18 ( .A0(I3[14]), .A1(n73), .B0(I2[14]), .B1(n72), .Y(n50) );
  AOI22X1M U19 ( .A0(I1[14]), .A1(n1), .B0(I0[14]), .B1(n38), .Y(n51) );
  AOI22X1M U20 ( .A0(I3[15]), .A1(n73), .B0(I2[15]), .B1(n72), .Y(n52) );
  AOI22X1M U21 ( .A0(I1[15]), .A1(n1), .B0(I0[15]), .B1(n38), .Y(n53) );
  NAND2X2M U22 ( .A(n61), .B(n60), .Y(Y[4]) );
  AOI22X1M U23 ( .A0(I3[4]), .A1(n73), .B0(I2[4]), .B1(n72), .Y(n60) );
  AOI22X1M U24 ( .A0(I1[4]), .A1(n1), .B0(I0[4]), .B1(n38), .Y(n61) );
  NAND2X2M U25 ( .A(n63), .B(n62), .Y(Y[5]) );
  AOI22X1M U26 ( .A0(I3[5]), .A1(n73), .B0(I2[5]), .B1(n72), .Y(n62) );
  AOI22X1M U27 ( .A0(I1[5]), .A1(n1), .B0(I0[5]), .B1(n38), .Y(n63) );
  NAND2X2M U28 ( .A(n65), .B(n64), .Y(Y[6]) );
  AOI22X1M U29 ( .A0(I3[6]), .A1(n73), .B0(I2[6]), .B1(n72), .Y(n64) );
  AOI22X1M U30 ( .A0(I1[6]), .A1(n1), .B0(I0[6]), .B1(n38), .Y(n65) );
  NAND2X2M U31 ( .A(n67), .B(n66), .Y(Y[7]) );
  AOI22X1M U32 ( .A0(I3[7]), .A1(n73), .B0(I2[7]), .B1(n72), .Y(n66) );
  AOI22X1M U33 ( .A0(I1[7]), .A1(n1), .B0(I0[7]), .B1(n38), .Y(n67) );
  NAND2X2M U34 ( .A(n69), .B(n68), .Y(Y[8]) );
  AOI22X1M U35 ( .A0(I3[8]), .A1(n73), .B0(I2[8]), .B1(n72), .Y(n68) );
  AOI22X1M U36 ( .A0(I1[8]), .A1(n1), .B0(I0[8]), .B1(n38), .Y(n69) );
  NAND2X2M U37 ( .A(n59), .B(n58), .Y(Y[3]) );
  AOI22X1M U38 ( .A0(I3[3]), .A1(n73), .B0(I2[3]), .B1(n72), .Y(n58) );
  AOI22X1M U39 ( .A0(I1[3]), .A1(n1), .B0(I0[3]), .B1(n38), .Y(n59) );
  NAND2X2M U40 ( .A(n57), .B(n56), .Y(Y[2]) );
  AOI22X1M U41 ( .A0(I3[2]), .A1(n73), .B0(I2[2]), .B1(n72), .Y(n56) );
  AOI22X1M U42 ( .A0(I1[2]), .A1(n1), .B0(I0[2]), .B1(n38), .Y(n57) );
  NAND2X2M U43 ( .A(n55), .B(n54), .Y(Y[1]) );
  AOI22X1M U44 ( .A0(I3[1]), .A1(n73), .B0(I2[1]), .B1(n72), .Y(n54) );
  AOI22X1M U45 ( .A0(I1[1]), .A1(n1), .B0(I0[1]), .B1(n38), .Y(n55) );
  NAND2X2M U46 ( .A(n41), .B(n40), .Y(Y[0]) );
  AOI22X1M U47 ( .A0(I3[0]), .A1(n73), .B0(I2[0]), .B1(n72), .Y(n40) );
  AOI22X1M U48 ( .A0(I1[0]), .A1(n1), .B0(I0[0]), .B1(n38), .Y(n41) );
  AND2X2M U49 ( .A(S[1]), .B(S[0]), .Y(n73) );
  AND2X2M U50 ( .A(S[1]), .B(n39), .Y(n72) );
  INVX2M U51 ( .A(S[0]), .Y(n39) );
  BUFX2M U52 ( .A(n71), .Y(n1) );
  NOR2X2M U53 ( .A(n39), .B(S[1]), .Y(n71) );
  BUFX2M U54 ( .A(n70), .Y(n38) );
  NOR2X2M U55 ( .A(S[0]), .B(S[1]), .Y(n70) );
endmodule


module up4_filter_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2X2M U3 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_1_DW01_add_1 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [21:6] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(A[3]), .A1N(B[3]), .B0(n5), .Y(n3) );
  OAI211X1M U6 ( .A0(A[3]), .A1(B[3]), .B0(A[2]), .C0(B[2]), .Y(n5) );
endmodule


module up4_filter_1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_1_DW01_add_5 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6;
  wire   [21:6] carry;

  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  AND2X2M U1 ( .A(A[2]), .B(B[2]), .Y(n1) );
  OAI2BB1X1M U2 ( .A0N(n2), .A1N(A[5]), .B0(n3), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n2), .B0(B[5]), .Y(n3) );
  OAI2BB1X1M U4 ( .A0N(n4), .A1N(A[4]), .B0(n5), .Y(n2) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n4), .B0(B[4]), .Y(n5) );
  OAI2BB1X1M U6 ( .A0N(n1), .A1N(A[3]), .B0(n6), .Y(n4) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n1), .B0(B[3]), .Y(n6) );
endmodule


module up4_filter_1_DW01_add_11 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:7] carry;

  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U4 ( .A(A[4]), .Y(SUM[4]) );
  CLKXOR2X2M U5 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
  BUFX2M U6 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U7 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module up4_filter_1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n7;
  wire   [21:7] carry;

  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  BUFX2M U2 ( .A(B[1]), .Y(SUM[1]) );
  BUFX2M U3 ( .A(B[2]), .Y(SUM[2]) );
  BUFX2M U4 ( .A(B[3]), .Y(SUM[3]) );
  BUFX2M U5 ( .A(B[4]), .Y(SUM[4]) );
  XNOR2X2M U6 ( .A(B[5]), .B(n7), .Y(SUM[5]) );
  INVX2M U7 ( .A(A[5]), .Y(n7) );
  BUFX2M U8 ( .A(B[0]), .Y(SUM[0]) );
endmodule


module up4_filter_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [21:1] carry;

  ADDFX2M U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n17), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_14 ( .A(A[14]), .B(n4), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n5), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n8), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n9), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n3), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n2), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n2), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n2), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XNOR3X2M U1 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(DIFF[21]) );
  XNOR2X2M U2 ( .A(n18), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U3 ( .A(B[17]), .Y(n2) );
  INVX2M U4 ( .A(B[15]), .Y(n3) );
  INVX2M U5 ( .A(B[6]), .Y(n12) );
  INVX2M U6 ( .A(B[7]), .Y(n11) );
  INVX2M U7 ( .A(B[8]), .Y(n10) );
  INVX2M U8 ( .A(B[9]), .Y(n9) );
  INVX2M U9 ( .A(B[10]), .Y(n8) );
  INVX2M U10 ( .A(B[11]), .Y(n7) );
  INVX2M U11 ( .A(B[12]), .Y(n6) );
  INVX2M U12 ( .A(B[13]), .Y(n5) );
  INVX2M U13 ( .A(B[14]), .Y(n4) );
  NAND2X2M U14 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U15 ( .A(B[1]), .Y(n17) );
  INVX2M U16 ( .A(A[0]), .Y(n1) );
  INVX2M U17 ( .A(B[2]), .Y(n16) );
  INVX2M U18 ( .A(B[3]), .Y(n15) );
  INVX2M U19 ( .A(B[4]), .Y(n14) );
  INVX2M U20 ( .A(B[5]), .Y(n13) );
  INVX2M U21 ( .A(B[0]), .Y(n18) );
endmodule


module up4_filter_1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [21:6] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  OAI2BB1X1M U1 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U2 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U3 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U4 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U5 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U6 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U7 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U8 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
  OAI2BB1X1M U9 ( .A0N(A[1]), .A1N(B[1]), .B0(n9), .Y(n7) );
  OAI211X1M U10 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n9) );
endmodule


module up4_filter_1_DW01_add_15 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:5] carry;

  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U2 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[3]), .Y(n3) );
  XNOR2X2M U4 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
endmodule


module up4_filter_1_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:5] carry;

  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  AND2X2M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  INVX2M U2 ( .A(A[3]), .Y(n4) );
  BUFX2M U3 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X2M U4 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  BUFX2M U5 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_1_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:4] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_1_DW01_add_12 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [21:6] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXLM U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  AND2X1M U1 ( .A(A[1]), .B(B[1]), .Y(n7) );
  OAI2BB1X1M U2 ( .A0N(n1), .A1N(A[5]), .B0(n2), .Y(carry[6]) );
  OAI21X1M U3 ( .A0(A[5]), .A1(n1), .B0(B[5]), .Y(n2) );
  OAI2BB1X1M U4 ( .A0N(n3), .A1N(A[4]), .B0(n4), .Y(n1) );
  OAI21X1M U5 ( .A0(A[4]), .A1(n3), .B0(B[4]), .Y(n4) );
  OAI2BB1X1M U6 ( .A0N(n5), .A1N(A[3]), .B0(n6), .Y(n3) );
  OAI21X1M U7 ( .A0(A[3]), .A1(n5), .B0(B[3]), .Y(n6) );
  OAI2BB1X1M U8 ( .A0N(n7), .A1N(A[2]), .B0(n8), .Y(n5) );
  OAI21X1M U9 ( .A0(A[2]), .A1(n7), .B0(B[2]), .Y(n8) );
endmodule


module up4_filter_test_3 ( clk, rst_n, in_data, b0, b1, b2, b3, test_si, 
        test_so, test_se );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n, test_si, test_se;
  output test_so;
  wire   x_n3_14_, x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_,
         x_n3_7_, x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_,
         x_n3_0_, N180, N181, N182, N183, N184, N185, N186, N187, N188, N189,
         N190, N191, N192, N193, N194, N195, N196, N99, N98, N97, N96, N95,
         N94, N93, N92, N91, N154, N153, N152, N151, N150, N149, N148, N147,
         N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136,
         N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122,
         N121, N120, N119, N118, N117, N116, N115, N114, N113, N110, N109,
         N108, N107, N106, N105, N104, N103, N102, N101, N100, N327, N326,
         N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315,
         N314, N313, N312, N311, N310, N309, N308, N283, N282, N281, N280,
         N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, N269,
         N268, N267, N9, N88, N87, N86, N85, N84, N83, N82, N81, N80, N8, N79,
         N78, N77, N76, N75, N74, N73, N72, N71, N70, N7, N69, N68, N67, N66,
         N65, N64, N63, N62, N61, N60, N6, N59, N58, N57, N56, N55, N54, N53,
         N52, N51, N50, N5, N49, N48, N47, N46, N45, N44, N4, N38, N37, N36,
         N35, N34, N33, N32, N31, N30, N3, N29, N28, N27, N26, N25, N24, N23,
         N22, N21, N20, N2, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10,
         N1, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252,
         N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N240,
         N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N174, N173, N172, N171,
         N170, N169, N168, N167, N166, N165, N164, N163, N162, N161, N160,
         N159, N158, r116_carry_6_, r116_carry_7_, r116_carry_8_,
         r116_carry_9_, r116_carry_10_, r116_carry_11_, r116_carry_12_,
         r116_carry_13_, r116_carry_14_, r116_carry_15_, r116_carry_16_,
         r116_carry_17_, r116_carry_18_, r116_carry_19_,
         add_2_root_add_0_root_add_34_4_carry_6_,
         add_2_root_add_0_root_add_34_4_carry_7_,
         add_2_root_add_0_root_add_34_4_carry_8_,
         add_2_root_add_0_root_add_34_4_carry_9_,
         add_2_root_add_0_root_add_34_4_carry_10_,
         add_2_root_add_0_root_add_34_4_carry_11_,
         add_2_root_add_0_root_add_34_4_carry_12_,
         add_2_root_add_0_root_add_34_4_carry_13_,
         add_2_root_add_0_root_add_34_4_carry_14_,
         add_2_root_add_0_root_add_34_4_carry_15_,
         add_2_root_add_0_root_add_34_4_carry_16_,
         add_2_root_add_0_root_add_34_4_carry_17_,
         add_2_root_add_0_root_add_34_4_carry_18_,
         add_2_root_add_0_root_add_34_4_carry_19_,
         add_3_root_add_0_root_add_34_4_carry_5_,
         add_3_root_add_0_root_add_34_4_carry_6_,
         add_3_root_add_0_root_add_34_4_carry_7_,
         add_3_root_add_0_root_add_34_4_carry_8_,
         add_3_root_add_0_root_add_34_4_carry_9_,
         add_3_root_add_0_root_add_34_4_carry_10_,
         add_3_root_add_0_root_add_34_4_carry_11_,
         add_3_root_add_0_root_add_34_4_carry_12_,
         add_3_root_add_0_root_add_34_4_carry_13_,
         add_3_root_add_0_root_add_34_4_carry_14_,
         add_3_root_add_0_root_add_34_4_carry_15_,
         add_3_root_add_0_root_add_34_4_carry_16_,
         add_3_root_add_0_root_add_34_4_carry_17_,
         add_3_root_add_0_root_add_34_4_carry_18_,
         add_3_root_add_42_4_carry_5_, add_3_root_add_42_4_carry_6_,
         add_3_root_add_42_4_carry_7_, add_3_root_add_42_4_carry_8_,
         add_3_root_add_42_4_carry_9_, add_3_root_add_42_4_carry_10_,
         add_3_root_add_42_4_carry_11_, add_3_root_add_42_4_carry_12_,
         add_3_root_add_42_4_carry_13_, add_3_root_add_42_4_carry_14_,
         add_3_root_add_42_4_carry_15_, add_3_root_add_42_4_carry_16_,
         add_3_root_add_42_4_carry_17_, add_3_root_add_42_4_carry_18_,
         add_5_root_add_38_6_carry_4_, add_5_root_add_38_6_carry_5_,
         add_5_root_add_38_6_carry_6_, add_5_root_add_38_6_carry_7_,
         add_5_root_add_38_6_carry_8_, add_5_root_add_38_6_carry_9_,
         add_5_root_add_38_6_carry_10_, add_5_root_add_38_6_carry_11_,
         add_5_root_add_38_6_carry_12_, add_5_root_add_38_6_carry_13_,
         add_5_root_add_38_6_carry_14_, add_5_root_add_38_6_carry_15_,
         add_5_root_add_38_6_carry_16_, add_5_root_add_38_6_carry_17_, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n131, n132, n133, n134, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32;
  wire   [15:2] x_n1;
  wire   [15:2] x_n2;
  wire   [15:1] add_3_root_sub_0_root_add_30_3_carry;

  SDFFRQX2M x_n3_reg_14_ ( .D(x_n2[14]), .SI(x_n3_13_), .SE(n134), .CK(clk), 
        .RN(n60), .Q(x_n3_14_) );
  SDFFRQX2M x_n3_reg_13_ ( .D(x_n2[13]), .SI(x_n3_12_), .SE(n133), .CK(clk), 
        .RN(n60), .Q(x_n3_13_) );
  SDFFRQX2M x_n3_reg_12_ ( .D(x_n2[12]), .SI(x_n3_11_), .SE(n132), .CK(clk), 
        .RN(n60), .Q(x_n3_12_) );
  SDFFRQX2M x_n3_reg_11_ ( .D(x_n2[11]), .SI(x_n3_10_), .SE(n134), .CK(clk), 
        .RN(n61), .Q(x_n3_11_) );
  SDFFRQX2M x_n3_reg_4_ ( .D(x_n2[4]), .SI(x_n3_3_), .SE(n133), .CK(clk), .RN(
        n62), .Q(x_n3_4_) );
  SDFFRQX2M x_n3_reg_10_ ( .D(x_n2[10]), .SI(x_n3_9_), .SE(n132), .CK(clk), 
        .RN(n61), .Q(x_n3_10_) );
  SDFFRQX2M x_n3_reg_9_ ( .D(x_n2[9]), .SI(x_n3_8_), .SE(n134), .CK(clk), .RN(
        n61), .Q(x_n3_9_) );
  SDFFRQX2M x_n3_reg_8_ ( .D(x_n2[8]), .SI(x_n3_7_), .SE(n133), .CK(clk), .RN(
        n61), .Q(x_n3_8_) );
  SDFFRQX2M x_n3_reg_7_ ( .D(x_n2[7]), .SI(x_n3_6_), .SE(n132), .CK(clk), .RN(
        n61), .Q(x_n3_7_) );
  SDFFRQX2M x_n1_reg_15_ ( .D(N283), .SI(x_n1[14]), .SE(n134), .CK(clk), .RN(
        n59), .Q(x_n1[15]) );
  SDFFRQX2M x_n2_reg_15_ ( .D(N196), .SI(x_n2[14]), .SE(n133), .CK(clk), .RN(
        n60), .Q(x_n2[15]) );
  SDFFRQX2M x_n1_reg_14_ ( .D(in_data[14]), .SI(x_n1[13]), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n1[14]) );
  SDFFRQX2M x_n1_reg_13_ ( .D(in_data[13]), .SI(x_n1[12]), .SE(n134), .CK(clk), 
        .RN(n59), .Q(x_n1[13]) );
  SDFFRQX2M x_n2_reg_14_ ( .D(x_n1[14]), .SI(x_n2[13]), .SE(n133), .CK(clk), 
        .RN(n60), .Q(x_n2[14]) );
  SDFFRQX2M x_n2_reg_13_ ( .D(x_n1[13]), .SI(x_n2[12]), .SE(n132), .CK(clk), 
        .RN(n60), .Q(x_n2[13]) );
  SDFFRQX2M x_n3_reg_3_ ( .D(x_n2[3]), .SI(x_n3_2_), .SE(n134), .CK(clk), .RN(
        n62), .Q(x_n3_3_) );
  SDFFRQX2M x_n3_reg_2_ ( .D(n51), .SI(x_n3_1_), .SE(n133), .CK(clk), .RN(n62), 
        .Q(x_n3_2_) );
  SDFFRQX2M x_n3_reg_1_ ( .D(N92), .SI(x_n3_0_), .SE(n132), .CK(clk), .RN(n62), 
        .Q(x_n3_1_) );
  SDFFRQX2M x_n3_reg_0_ ( .D(N91), .SI(n55), .SE(n134), .CK(clk), .RN(n62), 
        .Q(x_n3_0_) );
  SDFFRQX2M x_n3_reg_6_ ( .D(x_n2[6]), .SI(x_n3_5_), .SE(n133), .CK(clk), .RN(
        n61), .Q(x_n3_6_) );
  SDFFRQX2M x_n3_reg_5_ ( .D(x_n2[5]), .SI(x_n3_4_), .SE(n132), .CK(clk), .RN(
        n62), .Q(x_n3_5_) );
  SDFFRQX2M x_n1_reg_12_ ( .D(in_data[12]), .SI(x_n1[11]), .SE(n134), .CK(clk), 
        .RN(n59), .Q(x_n1[12]) );
  SDFFRQX2M x_n1_reg_11_ ( .D(in_data[11]), .SI(x_n1[10]), .SE(n133), .CK(clk), 
        .RN(n59), .Q(x_n1[11]) );
  SDFFRQX2M x_n1_reg_10_ ( .D(in_data[10]), .SI(x_n1[9]), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n1[10]) );
  SDFFRQX2M x_n1_reg_9_ ( .D(in_data[9]), .SI(x_n1[8]), .SE(n134), .CK(clk), 
        .RN(n59), .Q(x_n1[9]) );
  SDFFRQX2M x_n2_reg_12_ ( .D(x_n1[12]), .SI(x_n2[11]), .SE(n133), .CK(clk), 
        .RN(n60), .Q(x_n2[12]) );
  SDFFRQX2M x_n2_reg_11_ ( .D(x_n1[11]), .SI(x_n2[10]), .SE(n132), .CK(clk), 
        .RN(n61), .Q(x_n2[11]) );
  SDFFRQX2M x_n2_reg_10_ ( .D(x_n1[10]), .SI(x_n2[9]), .SE(n134), .CK(clk), 
        .RN(n61), .Q(x_n2[10]) );
  SDFFRQX2M x_n2_reg_9_ ( .D(x_n1[9]), .SI(x_n2[8]), .SE(n133), .CK(clk), .RN(
        n61), .Q(x_n2[9]) );
  SDFFRQX2M x_n1_reg_8_ ( .D(in_data[8]), .SI(x_n1[7]), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n1[8]) );
  SDFFRQX2M x_n1_reg_7_ ( .D(in_data[7]), .SI(x_n1[6]), .SE(n134), .CK(clk), 
        .RN(n59), .Q(x_n1[7]) );
  SDFFRQX2M x_n1_reg_6_ ( .D(in_data[6]), .SI(x_n1[5]), .SE(n133), .CK(clk), 
        .RN(n59), .Q(x_n1[6]) );
  SDFFRQX2M x_n1_reg_5_ ( .D(in_data[5]), .SI(x_n1[4]), .SE(n132), .CK(clk), 
        .RN(n59), .Q(x_n1[5]) );
  SDFFRQX2M x_n2_reg_8_ ( .D(x_n1[8]), .SI(x_n2[7]), .SE(n134), .CK(clk), .RN(
        n61), .Q(x_n2[8]) );
  SDFFRQX2M x_n2_reg_7_ ( .D(x_n1[7]), .SI(x_n2[6]), .SE(n133), .CK(clk), .RN(
        n61), .Q(x_n2[7]) );
  SDFFRQX2M x_n2_reg_6_ ( .D(x_n1[6]), .SI(x_n2[5]), .SE(n132), .CK(clk), .RN(
        n61), .Q(x_n2[6]) );
  SDFFRQX2M x_n2_reg_5_ ( .D(x_n1[5]), .SI(x_n2[4]), .SE(n134), .CK(clk), .RN(
        n62), .Q(x_n2[5]) );
  SDFFRQX2M x_n1_reg_2_ ( .D(in_data[2]), .SI(n53), .SE(n133), .CK(clk), .RN(
        n60), .Q(x_n1[2]) );
  SDFFRQX2M x_n1_reg_1_ ( .D(in_data[1]), .SI(n52), .SE(n132), .CK(clk), .RN(
        n60), .Q(N137) );
  SDFFRQX2M x_n1_reg_0_ ( .D(in_data[0]), .SI(test_si), .SE(n134), .CK(clk), 
        .RN(n60), .Q(N136) );
  SDFFRQX2M x_n2_reg_2_ ( .D(n54), .SI(N92), .SE(n133), .CK(clk), .RN(n62), 
        .Q(x_n2[2]) );
  SDFFRQX2M x_n2_reg_0_ ( .D(n52), .SI(N196), .SE(n132), .CK(clk), .RN(n62), 
        .Q(N91) );
  SDFFRQX2M x_n1_reg_4_ ( .D(in_data[4]), .SI(x_n1[3]), .SE(n134), .CK(clk), 
        .RN(n59), .Q(x_n1[4]) );
  SDFFRQX2M x_n1_reg_3_ ( .D(in_data[3]), .SI(n54), .SE(n133), .CK(clk), .RN(
        n60), .Q(x_n1[3]) );
  SDFFRQX2M x_n2_reg_4_ ( .D(x_n1[4]), .SI(x_n2[3]), .SE(n132), .CK(clk), .RN(
        n62), .Q(x_n2[4]) );
  SDFFRQX2M x_n2_reg_3_ ( .D(x_n1[3]), .SI(n51), .SE(n134), .CK(clk), .RN(n62), 
        .Q(x_n2[3]) );
  SDFFRQX2M x_n3_reg_15_ ( .D(n55), .SI(x_n3_14_), .SE(n133), .CK(clk), .RN(
        n60), .Q(test_so) );
  SDFFRQX2M x_n2_reg_1_ ( .D(n53), .SI(N91), .SE(n132), .CK(clk), .RN(n62), 
        .Q(N92) );
  BUFX2M U51 ( .A(in_data[15]), .Y(n49) );
  BUFX2M U52 ( .A(in_data[15]), .Y(n50) );
  ADDFX1M U53 ( .A(in_data[14]), .B(n49), .CI(add_5_root_add_38_6_carry_17_), 
        .CO(N173), .S(N172) );
  INVX2M U54 ( .A(n56), .Y(n55) );
  BUFX2M U55 ( .A(n58), .Y(n62) );
  BUFX2M U56 ( .A(n58), .Y(n61) );
  BUFX2M U57 ( .A(n57), .Y(n60) );
  BUFX2M U58 ( .A(n57), .Y(n59) );
  ADDFX2M U59 ( .A(in_data[13]), .B(N174), .CI(add_5_root_add_38_6_carry_16_), 
        .CO(add_5_root_add_38_6_carry_17_), .S(N171) );
  ADDFX2M U60 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_5_root_add_38_6_carry_12_), .CO(add_5_root_add_38_6_carry_13_), 
        .S(N167) );
  ADDFX2M U61 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_5_root_add_38_6_carry_13_), .CO(add_5_root_add_38_6_carry_14_), 
        .S(N168) );
  ADDFX2M U62 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_5_root_add_38_6_carry_14_), .CO(add_5_root_add_38_6_carry_15_), 
        .S(N169) );
  ADDFX2M U63 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_5_root_add_38_6_carry_15_), .CO(add_5_root_add_38_6_carry_16_), 
        .S(N170) );
  BUFX2M U64 ( .A(in_data[15]), .Y(N174) );
  BUFX2M U65 ( .A(in_data[15]), .Y(N283) );
  ADDFX2M U66 ( .A(in_data[13]), .B(n50), .CI(add_3_root_add_42_4_carry_17_), 
        .CO(add_3_root_add_42_4_carry_18_), .S(N280) );
  ADDFX2M U67 ( .A(in_data[14]), .B(N283), .CI(add_3_root_add_42_4_carry_18_), 
        .CO(N282), .S(N281) );
  ADDFX2M U68 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_5_root_add_38_6_carry_10_), .CO(add_5_root_add_38_6_carry_11_), 
        .S(N165) );
  ADDFX2M U69 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_5_root_add_38_6_carry_11_), .CO(add_5_root_add_38_6_carry_12_), 
        .S(N166) );
  ADDFX2M U70 ( .A(in_data[8]), .B(in_data[10]), .CI(
        add_3_root_add_42_4_carry_12_), .CO(add_3_root_add_42_4_carry_13_), 
        .S(N275) );
  ADDFX2M U71 ( .A(in_data[9]), .B(in_data[11]), .CI(
        add_3_root_add_42_4_carry_13_), .CO(add_3_root_add_42_4_carry_14_), 
        .S(N276) );
  ADDFX2M U72 ( .A(in_data[10]), .B(in_data[12]), .CI(
        add_3_root_add_42_4_carry_14_), .CO(add_3_root_add_42_4_carry_15_), 
        .S(N277) );
  ADDFX2M U73 ( .A(in_data[11]), .B(in_data[13]), .CI(
        add_3_root_add_42_4_carry_15_), .CO(add_3_root_add_42_4_carry_16_), 
        .S(N278) );
  ADDFX2M U74 ( .A(in_data[12]), .B(in_data[14]), .CI(
        add_3_root_add_42_4_carry_16_), .CO(add_3_root_add_42_4_carry_17_), 
        .S(N279) );
  ADDFX2M U75 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_5_root_add_38_6_carry_4_), .CO(add_5_root_add_38_6_carry_5_), .S(
        N159) );
  ADDFX2M U76 ( .A(in_data[1]), .B(in_data[3]), .CI(
        add_3_root_add_42_4_carry_5_), .CO(add_3_root_add_42_4_carry_6_), .S(
        N268) );
  ADDFX2M U77 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_5_root_add_38_6_carry_5_), .CO(add_5_root_add_38_6_carry_6_), .S(
        N160) );
  ADDFX2M U78 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_5_root_add_38_6_carry_6_), .CO(add_5_root_add_38_6_carry_7_), .S(
        N161) );
  ADDFX2M U79 ( .A(in_data[2]), .B(in_data[4]), .CI(
        add_3_root_add_42_4_carry_6_), .CO(add_3_root_add_42_4_carry_7_), .S(
        N269) );
  ADDFX2M U80 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_5_root_add_38_6_carry_7_), .CO(add_5_root_add_38_6_carry_8_), .S(
        N162) );
  ADDFX2M U81 ( .A(in_data[3]), .B(in_data[5]), .CI(
        add_3_root_add_42_4_carry_7_), .CO(add_3_root_add_42_4_carry_8_), .S(
        N270) );
  ADDFX2M U82 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_5_root_add_38_6_carry_8_), .CO(add_5_root_add_38_6_carry_9_), .S(
        N163) );
  ADDFX2M U83 ( .A(in_data[4]), .B(in_data[6]), .CI(
        add_3_root_add_42_4_carry_8_), .CO(add_3_root_add_42_4_carry_9_), .S(
        N271) );
  ADDFX2M U84 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_5_root_add_38_6_carry_9_), .CO(add_5_root_add_38_6_carry_10_), .S(
        N164) );
  ADDFX2M U85 ( .A(in_data[5]), .B(in_data[7]), .CI(
        add_3_root_add_42_4_carry_9_), .CO(add_3_root_add_42_4_carry_10_), .S(
        N272) );
  ADDFX2M U86 ( .A(in_data[6]), .B(in_data[8]), .CI(
        add_3_root_add_42_4_carry_10_), .CO(add_3_root_add_42_4_carry_11_), 
        .S(N273) );
  ADDFX2M U87 ( .A(in_data[7]), .B(in_data[9]), .CI(
        add_3_root_add_42_4_carry_11_), .CO(add_3_root_add_42_4_carry_12_), 
        .S(N274) );
  BUFX2M U88 ( .A(rst_n), .Y(n58) );
  BUFX2M U89 ( .A(rst_n), .Y(n57) );
  ADDFX2M U90 ( .A(n54), .B(n51), .CI(add_3_root_sub_0_root_add_30_3_carry[2]), 
        .CO(add_3_root_sub_0_root_add_30_3_carry[3]), .S(N25) );
  ADDFX2M U91 ( .A(x_n2[15]), .B(n55), .CI(N109), .CO(N110) );
  ADDFX2M U92 ( .A(x_n2[15]), .B(n55), .CI(N108), .CO(N109) );
  BUFX2M U93 ( .A(N137), .Y(n53) );
  BUFX2M U94 ( .A(x_n2[2]), .Y(n51) );
  BUFX2M U95 ( .A(N136), .Y(n52) );
  BUFX2M U96 ( .A(x_n1[2]), .Y(n54) );
  ADDFX2M U97 ( .A(n53), .B(N92), .CI(add_3_root_sub_0_root_add_30_3_carry[1]), 
        .CO(add_3_root_sub_0_root_add_30_3_carry[2]), .S(N24) );
  ADDFX2M U98 ( .A(x_n1[3]), .B(x_n2[3]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[3]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[4]), .S(N26) );
  ADDFX2M U99 ( .A(x_n1[4]), .B(x_n2[4]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[4]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[5]), .S(N27) );
  ADDFX2M U100 ( .A(x_n1[5]), .B(x_n2[5]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[5]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[6]), .S(N28) );
  ADDFX2M U101 ( .A(x_n1[6]), .B(x_n2[6]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[6]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[7]), .S(N29) );
  ADDFX2M U102 ( .A(x_n1[7]), .B(x_n2[7]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[7]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[8]), .S(N30) );
  ADDFX2M U103 ( .A(x_n1[8]), .B(x_n2[8]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[8]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[9]), .S(N31) );
  ADDFX2M U104 ( .A(x_n1[9]), .B(x_n2[9]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[9]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[10]), .S(N32) );
  ADDFX2M U105 ( .A(x_n1[10]), .B(x_n2[10]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[10]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[11]), .S(N33) );
  ADDFX2M U106 ( .A(x_n1[11]), .B(x_n2[11]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[11]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[12]), .S(N34) );
  ADDFX2M U107 ( .A(x_n1[12]), .B(x_n2[12]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[12]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[13]), .S(N35) );
  ADDFX2M U108 ( .A(x_n1[13]), .B(x_n2[13]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[13]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[14]), .S(N36) );
  ADDFX2M U109 ( .A(x_n1[14]), .B(x_n2[14]), .CI(
        add_3_root_sub_0_root_add_30_3_carry[14]), .CO(
        add_3_root_sub_0_root_add_30_3_carry[15]), .S(N37) );
  ADDFX2M U110 ( .A(N92), .B(x_n2[3]), .CI(
        add_3_root_add_0_root_add_34_4_carry_5_), .CO(
        add_3_root_add_0_root_add_34_4_carry_6_), .S(N94) );
  ADDFX2M U111 ( .A(n54), .B(x_n1[4]), .CI(r116_carry_7_), .CO(r116_carry_8_), 
        .S(N182) );
  ADDFX2M U112 ( .A(x_n1[10]), .B(x_n1[12]), .CI(r116_carry_15_), .CO(
        r116_carry_16_), .S(N190) );
  ADDFX2M U113 ( .A(x_n1[13]), .B(N196), .CI(r116_carry_18_), .CO(
        r116_carry_19_), .S(N193) );
  ADDFX2M U114 ( .A(x_n1[14]), .B(N154), .CI(r116_carry_19_), .CO(N195), .S(
        N194) );
  ADDFX2M U115 ( .A(n53), .B(x_n1[3]), .CI(r116_carry_6_), .CO(r116_carry_7_), 
        .S(N181) );
  ADDFX2M U116 ( .A(n51), .B(x_n2[4]), .CI(
        add_3_root_add_0_root_add_34_4_carry_6_), .CO(
        add_3_root_add_0_root_add_34_4_carry_7_), .S(N95) );
  ADDFX2M U117 ( .A(x_n2[3]), .B(x_n2[5]), .CI(
        add_3_root_add_0_root_add_34_4_carry_7_), .CO(
        add_3_root_add_0_root_add_34_4_carry_8_), .S(N96) );
  ADDFX2M U118 ( .A(x_n2[4]), .B(x_n2[6]), .CI(
        add_3_root_add_0_root_add_34_4_carry_8_), .CO(
        add_3_root_add_0_root_add_34_4_carry_9_), .S(N97) );
  ADDFX2M U119 ( .A(x_n2[14]), .B(n55), .CI(
        add_3_root_add_0_root_add_34_4_carry_18_), .CO(N108), .S(N107) );
  ADDFX2M U120 ( .A(x_n1[3]), .B(x_n1[5]), .CI(r116_carry_8_), .CO(
        r116_carry_9_), .S(N183) );
  ADDFX2M U121 ( .A(x_n1[4]), .B(x_n1[6]), .CI(r116_carry_9_), .CO(
        r116_carry_10_), .S(N184) );
  ADDFX2M U122 ( .A(x_n2[5]), .B(x_n2[7]), .CI(
        add_3_root_add_0_root_add_34_4_carry_9_), .CO(
        add_3_root_add_0_root_add_34_4_carry_10_), .S(N98) );
  ADDFX2M U123 ( .A(x_n1[5]), .B(x_n1[7]), .CI(r116_carry_10_), .CO(
        r116_carry_11_), .S(N185) );
  ADDFX2M U124 ( .A(x_n2[6]), .B(x_n2[8]), .CI(
        add_3_root_add_0_root_add_34_4_carry_10_), .CO(
        add_3_root_add_0_root_add_34_4_carry_11_), .S(N99) );
  ADDFX2M U125 ( .A(x_n1[6]), .B(x_n1[8]), .CI(r116_carry_11_), .CO(
        r116_carry_12_), .S(N186) );
  ADDFX2M U126 ( .A(x_n2[7]), .B(x_n2[9]), .CI(
        add_3_root_add_0_root_add_34_4_carry_11_), .CO(
        add_3_root_add_0_root_add_34_4_carry_12_), .S(N100) );
  ADDFX2M U127 ( .A(x_n1[7]), .B(x_n1[9]), .CI(r116_carry_12_), .CO(
        r116_carry_13_), .S(N187) );
  ADDFX2M U128 ( .A(x_n2[8]), .B(x_n2[10]), .CI(
        add_3_root_add_0_root_add_34_4_carry_12_), .CO(
        add_3_root_add_0_root_add_34_4_carry_13_), .S(N101) );
  ADDFX2M U129 ( .A(x_n1[8]), .B(x_n1[10]), .CI(r116_carry_13_), .CO(
        r116_carry_14_), .S(N188) );
  ADDFX2M U130 ( .A(x_n2[9]), .B(x_n2[11]), .CI(
        add_3_root_add_0_root_add_34_4_carry_13_), .CO(
        add_3_root_add_0_root_add_34_4_carry_14_), .S(N102) );
  ADDFX2M U131 ( .A(x_n1[9]), .B(x_n1[11]), .CI(r116_carry_14_), .CO(
        r116_carry_15_), .S(N189) );
  ADDFX2M U132 ( .A(x_n2[10]), .B(x_n2[12]), .CI(
        add_3_root_add_0_root_add_34_4_carry_14_), .CO(
        add_3_root_add_0_root_add_34_4_carry_15_), .S(N103) );
  ADDFX2M U133 ( .A(x_n2[11]), .B(x_n2[13]), .CI(
        add_3_root_add_0_root_add_34_4_carry_15_), .CO(
        add_3_root_add_0_root_add_34_4_carry_16_), .S(N104) );
  ADDFX2M U134 ( .A(x_n1[11]), .B(x_n1[13]), .CI(r116_carry_16_), .CO(
        r116_carry_17_), .S(N191) );
  ADDFX2M U135 ( .A(x_n2[12]), .B(x_n2[14]), .CI(
        add_3_root_add_0_root_add_34_4_carry_16_), .CO(
        add_3_root_add_0_root_add_34_4_carry_17_), .S(N105) );
  ADDFX2M U136 ( .A(x_n1[12]), .B(x_n1[14]), .CI(r116_carry_17_), .CO(
        r116_carry_18_), .S(N192) );
  ADDFX2M U137 ( .A(x_n2[13]), .B(n55), .CI(
        add_3_root_add_0_root_add_34_4_carry_17_), .CO(
        add_3_root_add_0_root_add_34_4_carry_18_), .S(N106) );
  BUFX2M U138 ( .A(x_n1[15]), .Y(N196) );
  ADDFX2M U139 ( .A(x_n1[13]), .B(N154), .CI(
        add_2_root_add_0_root_add_34_4_carry_18_), .CO(
        add_2_root_add_0_root_add_34_4_carry_19_), .S(N151) );
  ADDFX2M U140 ( .A(x_n1[14]), .B(N196), .CI(
        add_2_root_add_0_root_add_34_4_carry_19_), .CO(N153), .S(N152) );
  ADDFX2M U141 ( .A(n53), .B(x_n1[3]), .CI(
        add_2_root_add_0_root_add_34_4_carry_6_), .CO(
        add_2_root_add_0_root_add_34_4_carry_7_), .S(N139) );
  ADDFX2M U142 ( .A(n54), .B(x_n1[4]), .CI(
        add_2_root_add_0_root_add_34_4_carry_7_), .CO(
        add_2_root_add_0_root_add_34_4_carry_8_), .S(N140) );
  ADDFX2M U143 ( .A(x_n1[3]), .B(x_n1[5]), .CI(
        add_2_root_add_0_root_add_34_4_carry_8_), .CO(
        add_2_root_add_0_root_add_34_4_carry_9_), .S(N141) );
  BUFX2M U144 ( .A(x_n1[15]), .Y(N154) );
  ADDFX2M U145 ( .A(x_n1[4]), .B(x_n1[6]), .CI(
        add_2_root_add_0_root_add_34_4_carry_9_), .CO(
        add_2_root_add_0_root_add_34_4_carry_10_), .S(N142) );
  ADDFX2M U146 ( .A(x_n1[5]), .B(x_n1[7]), .CI(
        add_2_root_add_0_root_add_34_4_carry_10_), .CO(
        add_2_root_add_0_root_add_34_4_carry_11_), .S(N143) );
  ADDFX2M U147 ( .A(x_n1[6]), .B(x_n1[8]), .CI(
        add_2_root_add_0_root_add_34_4_carry_11_), .CO(
        add_2_root_add_0_root_add_34_4_carry_12_), .S(N144) );
  ADDFX2M U148 ( .A(x_n1[7]), .B(x_n1[9]), .CI(
        add_2_root_add_0_root_add_34_4_carry_12_), .CO(
        add_2_root_add_0_root_add_34_4_carry_13_), .S(N145) );
  ADDFX2M U149 ( .A(x_n1[8]), .B(x_n1[10]), .CI(
        add_2_root_add_0_root_add_34_4_carry_13_), .CO(
        add_2_root_add_0_root_add_34_4_carry_14_), .S(N146) );
  ADDFX2M U150 ( .A(x_n1[9]), .B(x_n1[11]), .CI(
        add_2_root_add_0_root_add_34_4_carry_14_), .CO(
        add_2_root_add_0_root_add_34_4_carry_15_), .S(N147) );
  ADDFX2M U151 ( .A(x_n1[10]), .B(x_n1[12]), .CI(
        add_2_root_add_0_root_add_34_4_carry_15_), .CO(
        add_2_root_add_0_root_add_34_4_carry_16_), .S(N148) );
  ADDFX2M U152 ( .A(x_n1[11]), .B(x_n1[13]), .CI(
        add_2_root_add_0_root_add_34_4_carry_16_), .CO(
        add_2_root_add_0_root_add_34_4_carry_17_), .S(N149) );
  ADDFX2M U153 ( .A(x_n1[12]), .B(x_n1[14]), .CI(
        add_2_root_add_0_root_add_34_4_carry_17_), .CO(
        add_2_root_add_0_root_add_34_4_carry_18_), .S(N150) );
  INVX2M U154 ( .A(x_n2[15]), .Y(n56) );
  AND2X1M U155 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_5_root_add_38_6_carry_4_) );
  CLKXOR2X2M U156 ( .A(in_data[2]), .B(in_data[0]), .Y(N158) );
  AND2X1M U157 ( .A(in_data[0]), .B(in_data[2]), .Y(
        add_3_root_add_42_4_carry_5_) );
  CLKXOR2X2M U158 ( .A(in_data[2]), .B(in_data[0]), .Y(N267) );
  AND2X1M U159 ( .A(n52), .B(n54), .Y(r116_carry_6_) );
  CLKXOR2X2M U160 ( .A(n54), .B(n52), .Y(N180) );
  AND2X1M U161 ( .A(n52), .B(N91), .Y(add_3_root_sub_0_root_add_30_3_carry[1])
         );
  CLKXOR2X2M U162 ( .A(N91), .B(n52), .Y(N23) );
  AND2X1M U163 ( .A(n52), .B(n54), .Y(add_2_root_add_0_root_add_34_4_carry_6_)
         );
  CLKXOR2X2M U164 ( .A(n54), .B(n52), .Y(N138) );
  AND2X1M U165 ( .A(N91), .B(n51), .Y(add_3_root_add_0_root_add_34_4_carry_5_)
         );
  CLKXOR2X2M U166 ( .A(n51), .B(N91), .Y(N93) );
  XOR3XLM U167 ( .A(add_3_root_sub_0_root_add_30_3_carry[15]), .B(n55), .C(
        N154), .Y(N38) );
  XOR3XLM U168 ( .A(n56), .B(N154), .C(n63), .Y(N44) );
  AOI222X1M U169 ( .A0(add_3_root_sub_0_root_add_30_3_carry[15]), .A1(N196), 
        .B0(add_3_root_sub_0_root_add_30_3_carry[15]), .B1(n55), .C0(n55), 
        .C1(N154), .Y(n63) );
  INVXLM U202 ( .A(test_se), .Y(n131) );
  INVXLM U203 ( .A(n131), .Y(n132) );
  INVXLM U204 ( .A(n131), .Y(n133) );
  INVXLM U205 ( .A(n131), .Y(n134) );
  up4_filter_1_DW01_add_2 add_1_root_add_0_root_add_34_4 ( .A({N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, 1'b0, 1'b0}), .B({N154, N153, N152, N151, 
        N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, N140, N139, 
        N138, n53, n52, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}) );
  up4_filter_1_DW01_add_1 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({n50, n50, N174, 
        N283, n50, in_data[14:0], 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  up4_filter_1_DW01_add_6 add_1_root_add_0_root_add_42_4 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], x_n2[15:3], n51, N92, N91, 1'b0, 1'b0}), 
        .B({N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, n53, n52, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({N327, N326, N325, N324, N323, N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, 
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10}) );
  up4_filter_1_DW01_add_5 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({N174, N174, N282, 
        N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, N268, N267, in_data[1:0], 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16}) );
  up4_filter_1_DW01_add_11 add_4_root_sub_0_root_add_30_3 ( .A({test_so, 
        test_so, test_so, test_so, test_so, test_so, test_so, x_n3_14_, 
        x_n3_13_, x_n3_12_, x_n3_11_, x_n3_10_, x_n3_9_, x_n3_8_, x_n3_7_, 
        x_n3_6_, x_n3_5_, x_n3_4_, x_n3_3_, x_n3_2_, x_n3_1_, x_n3_0_}), .B({
        N154, N196, x_n1[14:3], n54, n53, n52, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45}) );
  up4_filter_1_DW01_add_10 add_2_root_sub_0_root_add_30_3 ( .A({x_n2[15], 
        x_n2[15:3], n51, N92, N91, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N66, 
        N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, 
        N51, N50, N49, N48, N47, N46, N45}), .CI(1'b0), .SUM({N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1}) );
  up4_filter_1_DW01_sub_0 sub_1_root_sub_0_root_add_30_3 ( .A({N22, N21, N20, 
        N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, 
        N4, N3, N2, N1}), .B({N44, N44, N44, N44, N44, N44, N38, N37, N36, N35, 
        N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), .CI(1'b0), .DIFF({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, 
        N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_1_DW01_add_8 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({N283, n49, n49, N174, n49, N174, N283, 
        in_data[14:0]}), .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22}) );
  up4_filter_1_DW01_add_15 add_3_root_add_0_root_add_38_6 ( .A({N196, N154, 
        N196, N154, N196, x_n1[14:3], n54, n53, n52, 1'b0, 1'b0}), .B({n55, 
        n55, n55, n55, x_n2[14:3], n51, N92, N91, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED_23, SYNOPSYS_UNCONNECTED_24}) );
  up4_filter_1_DW01_add_14 add_2_root_add_0_root_add_38_6 ( .A({x_n2[15], 
        x_n2[15], n55, n55, n55, n55, x_n2[14:3], n51, N92, N91, 1'b0}), .B({
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, n53, n52, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, 
        N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        SYNOPSYS_UNCONNECTED_25}) );
  up4_filter_1_DW01_add_13 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED_26}) );
  up4_filter_1_DW01_add_12 add_0_root_add_0_root_add_38_6 ( .A({N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, 1'b0}), .B({n49, N283, n50, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, in_data[1:0], 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED_27, SYNOPSYS_UNCONNECTED_28, 
        SYNOPSYS_UNCONNECTED_29, SYNOPSYS_UNCONNECTED_30, 
        SYNOPSYS_UNCONNECTED_31, SYNOPSYS_UNCONNECTED_32}) );
endmodule


module counter2bit_test_3 ( clk, reset, count, test_si, test_se );
  output [1:0] count;
  input clk, reset, test_si, test_se;
  wire   N2, n3;

  SDFFRQX2M count_reg_1_ ( .D(N2), .SI(n3), .SE(test_se), .CK(clk), .RN(reset), 
        .Q(count[1]) );
  SDFFRQX2M count_reg_0_ ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        reset), .Q(count[0]) );
  INVX2M U5 ( .A(count[0]), .Y(n3) );
  CLKXOR2X2M U6 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_1 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75;

  NAND2X2M U1 ( .A(n53), .B(n52), .Y(Y[15]) );
  AOI22X1M U2 ( .A0(I1[15]), .A1(n1), .B0(I0[15]), .B1(n38), .Y(n53) );
  AOI22X1M U3 ( .A0(I3[15]), .A1(n73), .B0(I2[15]), .B1(n72), .Y(n52) );
  NAND2X2M U4 ( .A(n65), .B(n64), .Y(Y[6]) );
  AOI22X1M U5 ( .A0(I1[6]), .A1(n1), .B0(I0[6]), .B1(n38), .Y(n65) );
  AOI22X1M U6 ( .A0(I3[6]), .A1(n73), .B0(I2[6]), .B1(n72), .Y(n64) );
  NAND2X2M U7 ( .A(n67), .B(n66), .Y(Y[7]) );
  AOI22X1M U8 ( .A0(I1[7]), .A1(n1), .B0(I0[7]), .B1(n38), .Y(n67) );
  AOI22X1M U9 ( .A0(I3[7]), .A1(n73), .B0(I2[7]), .B1(n72), .Y(n66) );
  NAND2X2M U10 ( .A(n69), .B(n68), .Y(Y[8]) );
  AOI22X1M U11 ( .A0(I1[8]), .A1(n1), .B0(I0[8]), .B1(n38), .Y(n69) );
  AOI22X1M U12 ( .A0(I3[8]), .A1(n73), .B0(I2[8]), .B1(n72), .Y(n68) );
  NAND2X2M U13 ( .A(n75), .B(n74), .Y(Y[9]) );
  AOI22X1M U14 ( .A0(I1[9]), .A1(n1), .B0(I0[9]), .B1(n38), .Y(n75) );
  AOI22X1M U15 ( .A0(I3[9]), .A1(n73), .B0(I2[9]), .B1(n72), .Y(n74) );
  NAND2X2M U16 ( .A(n43), .B(n42), .Y(Y[10]) );
  AOI22X1M U17 ( .A0(I1[10]), .A1(n1), .B0(I0[10]), .B1(n38), .Y(n43) );
  AOI22X1M U18 ( .A0(I3[10]), .A1(n73), .B0(I2[10]), .B1(n72), .Y(n42) );
  NAND2X2M U19 ( .A(n45), .B(n44), .Y(Y[11]) );
  AOI22X1M U20 ( .A0(I1[11]), .A1(n1), .B0(I0[11]), .B1(n38), .Y(n45) );
  AOI22X1M U21 ( .A0(I3[11]), .A1(n73), .B0(I2[11]), .B1(n72), .Y(n44) );
  NAND2X2M U22 ( .A(n47), .B(n46), .Y(Y[12]) );
  AOI22X1M U23 ( .A0(I1[12]), .A1(n1), .B0(I0[12]), .B1(n38), .Y(n47) );
  AOI22X1M U24 ( .A0(I3[12]), .A1(n73), .B0(I2[12]), .B1(n72), .Y(n46) );
  NAND2X2M U25 ( .A(n49), .B(n48), .Y(Y[13]) );
  AOI22X1M U26 ( .A0(I1[13]), .A1(n1), .B0(I0[13]), .B1(n38), .Y(n49) );
  AOI22X1M U27 ( .A0(I3[13]), .A1(n73), .B0(I2[13]), .B1(n72), .Y(n48) );
  NAND2X2M U28 ( .A(n51), .B(n50), .Y(Y[14]) );
  AOI22X1M U29 ( .A0(I1[14]), .A1(n1), .B0(I0[14]), .B1(n38), .Y(n51) );
  AOI22X1M U30 ( .A0(I3[14]), .A1(n73), .B0(I2[14]), .B1(n72), .Y(n50) );
  NAND2X2M U31 ( .A(n61), .B(n60), .Y(Y[4]) );
  AOI22X1M U32 ( .A0(I3[4]), .A1(n73), .B0(I2[4]), .B1(n72), .Y(n60) );
  AOI22X1M U33 ( .A0(I1[4]), .A1(n1), .B0(I0[4]), .B1(n38), .Y(n61) );
  NAND2X2M U34 ( .A(n63), .B(n62), .Y(Y[5]) );
  AOI22X1M U35 ( .A0(I3[5]), .A1(n73), .B0(I2[5]), .B1(n72), .Y(n62) );
  AOI22X1M U36 ( .A0(I1[5]), .A1(n1), .B0(I0[5]), .B1(n38), .Y(n63) );
  AOI22X1M U37 ( .A0(I3[1]), .A1(n73), .B0(I2[1]), .B1(n72), .Y(n54) );
  AOI22X1M U38 ( .A0(I1[1]), .A1(n1), .B0(I0[1]), .B1(n38), .Y(n55) );
  NAND2X2M U39 ( .A(n41), .B(n40), .Y(Y[0]) );
  AOI22X1M U40 ( .A0(I1[0]), .A1(n1), .B0(I0[0]), .B1(n38), .Y(n41) );
  AOI22X1M U41 ( .A0(I3[0]), .A1(n73), .B0(I2[0]), .B1(n72), .Y(n40) );
  NAND2X2M U42 ( .A(n57), .B(n56), .Y(Y[2]) );
  AOI22X1M U43 ( .A0(I1[2]), .A1(n1), .B0(I0[2]), .B1(n38), .Y(n57) );
  AOI22X1M U44 ( .A0(I3[2]), .A1(n73), .B0(I2[2]), .B1(n72), .Y(n56) );
  NAND2X2M U45 ( .A(n59), .B(n58), .Y(Y[3]) );
  AOI22X1M U46 ( .A0(I3[3]), .A1(n73), .B0(I2[3]), .B1(n72), .Y(n58) );
  AOI22X1M U47 ( .A0(I1[3]), .A1(n1), .B0(I0[3]), .B1(n38), .Y(n59) );
  NAND2X2M U48 ( .A(n55), .B(n54), .Y(Y[1]) );
  AND2X2M U49 ( .A(S[1]), .B(S[0]), .Y(n73) );
  AND2X2M U50 ( .A(S[1]), .B(n39), .Y(n72) );
  INVX2M U51 ( .A(S[0]), .Y(n39) );
  BUFX2M U52 ( .A(n71), .Y(n1) );
  NOR2X2M U53 ( .A(n39), .B(S[1]), .Y(n71) );
  BUFX2M U54 ( .A(n70), .Y(n38) );
  NOR2X2M U55 ( .A(S[0]), .B(S[1]), .Y(n70) );
endmodule


module FIR_test_1 ( clk, clk_3, clk_2, clk_1, clk_4, reset, data_in, out, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [15:0] data_in;
  output [15:0] out;
  input clk, clk_3, clk_2, clk_1, clk_4, reset, test_si2, test_si1, test_se;
  output test_so2, test_so1;
  wire   SEL, odd_14_, odd_13_, odd_12_, odd_11_, odd_10_, odd_9_, odd_8_,
         odd_7_, odd_6_, odd_5_, odd_4_, odd_3_, odd_2_, odd_1_, odd_0_, n1,
         n2, n3, n4, n5, n6, n8;
  wire   [15:0] mux_out;
  wire   [15:0] even;
  wire   [15:0] b0;
  wire   [15:0] b1;
  wire   [15:0] b2;
  wire   [15:0] b3;
  wire   [1:0] count;
  wire   [15:0] out_comb4;
  wire   [15:0] B0;
  wire   [15:0] B1;
  wire   [15:0] B2;
  wire   [15:0] B3;
  wire   [1:0] Count;

  AO22XLM U1 ( .A0(even[2]), .A1(n1), .B0(odd_2_), .B1(n4), .Y(mux_out[2]) );
  AO22XLM U2 ( .A0(even[3]), .A1(n1), .B0(odd_3_), .B1(n4), .Y(mux_out[3]) );
  AO2B2X2M U3 ( .B0(odd_0_), .B1(n4), .A0(even[0]), .A1N(n4), .Y(mux_out[0])
         );
  AO22XLM U4 ( .A0(even[4]), .A1(n1), .B0(odd_4_), .B1(n4), .Y(mux_out[4]) );
  AO22XLM U5 ( .A0(even[5]), .A1(n1), .B0(odd_5_), .B1(n4), .Y(mux_out[5]) );
  AO22XLM U6 ( .A0(even[6]), .A1(n1), .B0(odd_6_), .B1(n4), .Y(mux_out[6]) );
  AO22XLM U7 ( .A0(even[7]), .A1(n1), .B0(odd_7_), .B1(n4), .Y(mux_out[7]) );
  AO22XLM U8 ( .A0(even[8]), .A1(n1), .B0(odd_8_), .B1(n4), .Y(mux_out[8]) );
  AO22XLM U9 ( .A0(even[9]), .A1(n1), .B0(odd_9_), .B1(n4), .Y(mux_out[9]) );
  AO22XLM U10 ( .A0(even[10]), .A1(n1), .B0(odd_10_), .B1(n4), .Y(mux_out[10])
         );
  AO22XLM U11 ( .A0(even[11]), .A1(n1), .B0(odd_11_), .B1(n4), .Y(mux_out[11])
         );
  AO22XLM U12 ( .A0(even[12]), .A1(n1), .B0(odd_12_), .B1(n4), .Y(mux_out[12])
         );
  AO22XLM U13 ( .A0(even[13]), .A1(n1), .B0(odd_13_), .B1(n4), .Y(mux_out[13])
         );
  AO22XLM U14 ( .A0(even[14]), .A1(n1), .B0(odd_14_), .B1(n4), .Y(mux_out[14])
         );
  AO22X1M U15 ( .A0(even[1]), .A1(n1), .B0(odd_1_), .B1(n4), .Y(mux_out[1]) );
  INVX2M U16 ( .A(n1), .Y(n4) );
  INVX2M U17 ( .A(n3), .Y(n2) );
  INVX2M U18 ( .A(reset), .Y(n3) );
  BUFX2M U19 ( .A(SEL), .Y(n1) );
  AO22X1M U20 ( .A0(even[15]), .A1(n1), .B0(test_so2), .B1(n4), .Y(mux_out[15]) );
  hfb_1_test_1 uut ( .clk(clk_1), .reset(n2), .data_in(data_in), .even_out(
        even), .odd_out({test_so2, odd_14_, odd_13_, odd_12_, odd_11_, odd_10_, 
        odd_9_, odd_8_, odd_7_, odd_6_, odd_5_, odd_4_, odd_3_, odd_2_, odd_1_, 
        odd_0_}), .test_si(Count[1]), .test_se(test_se) );
  counter_test_1 uut1 ( .clk(clk_2), .reset(n2), .SEL(SEL), .test_si(test_si1), 
        .test_so(n8), .test_se(test_se) );
  up4_filter_test_2 uut2 ( .clk(clk_2), .rst_n(n2), .in_data(mux_out), .b0(b0), 
        .b1(b1), .b2(b2), .b3(b3), .test_si2(test_si2), .test_si1(n8), 
        .test_so2(n6), .test_so1(test_so1), .test_se(test_se) );
  counter2bit_test_2 uut3 ( .clk(clk_3), .reset(n2), .count(count), .test_si(
        n6), .test_se(test_se) );
  mux4to1_2 uut4 ( .I0(b0), .I1(b1), .I2(b2), .I3(b3), .S(count), .Y(out_comb4) );
  up4_filter_test_3 uut5 ( .clk(clk_3), .rst_n(n2), .in_data(out_comb4), .b0(
        B0), .b1(B1), .b2(B2), .b3(B3), .test_si(count[1]), .test_so(n5), 
        .test_se(test_se) );
  counter2bit_test_3 uut6 ( .clk(clk_4), .reset(n2), .count(Count), .test_si(
        n5), .test_se(test_se) );
  mux4to1_1 uut7 ( .I0(B0), .I1(B1), .I2(B2), .I3(B3), .S(Count), .Y(out) );
endmodule


module segma_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [17:2] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n17), .CI(n18), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_15 ( .A(A[15]), .B(n3), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_14 ( .A(A[14]), .B(n4), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n5), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n8), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n9), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR3X2M U1 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(DIFF[17]) );
  INVX2M U2 ( .A(B[2]), .Y(n16) );
  INVX2M U3 ( .A(B[3]), .Y(n15) );
  INVX2M U4 ( .A(B[4]), .Y(n14) );
  INVX2M U5 ( .A(B[5]), .Y(n13) );
  INVX2M U6 ( .A(B[6]), .Y(n12) );
  INVX2M U7 ( .A(B[7]), .Y(n11) );
  INVX2M U8 ( .A(B[8]), .Y(n10) );
  INVX2M U9 ( .A(B[9]), .Y(n9) );
  INVX2M U10 ( .A(B[10]), .Y(n8) );
  INVX2M U11 ( .A(B[11]), .Y(n7) );
  INVX2M U12 ( .A(B[12]), .Y(n6) );
  INVX2M U13 ( .A(B[13]), .Y(n5) );
  INVX2M U14 ( .A(B[14]), .Y(n4) );
  INVX2M U15 ( .A(B[15]), .Y(n3) );
  INVX2M U16 ( .A(B[16]), .Y(n2) );
  INVX2M U17 ( .A(B[0]), .Y(n18) );
  INVX2M U18 ( .A(B[1]), .Y(n17) );
  BUFX2M U19 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module segma_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:2] carry;

  XOR3XLM U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXLM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXLM U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXLM U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module segma_test_0 ( input_data, clk, reset, out_1bit, test_si, test_se );
  input [15:0] input_data;
  input clk, reset, test_si, test_se;
  output out_1bit;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11,
         N10, N1, N0, sub_20_carry_2_, sub_20_carry_3_, sub_20_carry_4_,
         sub_20_carry_5_, sub_20_carry_6_, sub_20_carry_7_, sub_20_carry_8_,
         sub_20_carry_9_, sub_20_carry_10_, sub_20_carry_11_, sub_20_carry_12_,
         sub_20_carry_13_, sub_20_carry_14_, sub_20_carry_15_,
         sub_20_carry_16_, sub_20_B_17_, n40, n41, n42, n43, n44, n45, n51,
         n52;
  wire   [17:0] acc2;
  wire   [17:0] acc1;
  wire   [17:0] sum_top;
  wire   [17:0] diff_bottom;

  SDFFRQX2M out_1bit_reg ( .D(sum_top[17]), .SI(acc2[17]), .SE(n52), .CK(clk), 
        .RN(n43), .Q(out_1bit) );
  SDFFRQX2M acc1_reg_16_ ( .D(acc2[16]), .SI(acc1[15]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[16]) );
  SDFFRQX2M acc1_reg_15_ ( .D(acc2[15]), .SI(acc1[14]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[15]) );
  SDFFRQX2M acc2_reg_16_ ( .D(diff_bottom[16]), .SI(acc2[15]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[16]) );
  SDFFRQX2M acc2_reg_15_ ( .D(diff_bottom[15]), .SI(acc2[14]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[15]) );
  SDFFRQX2M acc1_reg_14_ ( .D(acc2[14]), .SI(acc1[13]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[14]) );
  SDFFRQX2M acc1_reg_13_ ( .D(acc2[13]), .SI(acc1[12]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[13]) );
  SDFFRQX2M acc1_reg_12_ ( .D(acc2[12]), .SI(acc1[11]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[12]) );
  SDFFRQX2M acc1_reg_11_ ( .D(acc2[11]), .SI(acc1[10]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[11]) );
  SDFFRQX2M acc2_reg_14_ ( .D(diff_bottom[14]), .SI(acc2[13]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[14]) );
  SDFFRQX2M acc2_reg_13_ ( .D(diff_bottom[13]), .SI(acc2[12]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[13]) );
  SDFFRQX2M acc2_reg_12_ ( .D(diff_bottom[12]), .SI(acc2[11]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[12]) );
  SDFFRQX2M acc2_reg_11_ ( .D(diff_bottom[11]), .SI(acc2[10]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[11]) );
  SDFFRQX2M acc2_reg_10_ ( .D(diff_bottom[10]), .SI(acc2[9]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[10]) );
  SDFFRQX2M acc1_reg_10_ ( .D(acc2[10]), .SI(acc1[9]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[10]) );
  SDFFRQX2M acc1_reg_9_ ( .D(acc2[9]), .SI(acc1[8]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[9]) );
  SDFFRQX2M acc1_reg_8_ ( .D(acc2[8]), .SI(acc1[7]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[8]) );
  SDFFRQX2M acc1_reg_7_ ( .D(acc2[7]), .SI(acc1[6]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[7]) );
  SDFFRQX2M acc2_reg_9_ ( .D(diff_bottom[9]), .SI(acc2[8]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[9]) );
  SDFFRQX2M acc2_reg_8_ ( .D(diff_bottom[8]), .SI(acc2[7]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[8]) );
  SDFFRQX2M acc2_reg_7_ ( .D(diff_bottom[7]), .SI(acc2[6]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[7]) );
  SDFFRQX2M acc2_reg_6_ ( .D(diff_bottom[6]), .SI(acc2[5]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[6]) );
  SDFFRQX2M acc1_reg_6_ ( .D(acc2[6]), .SI(acc1[5]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[6]) );
  SDFFRQX2M acc1_reg_5_ ( .D(acc2[5]), .SI(acc1[4]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[5]) );
  SDFFRQX2M acc1_reg_4_ ( .D(acc2[4]), .SI(acc1[3]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[4]) );
  SDFFRQX2M acc1_reg_3_ ( .D(acc2[3]), .SI(acc1[2]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[3]) );
  SDFFRQX2M acc1_reg_2_ ( .D(acc2[2]), .SI(acc1[1]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[2]) );
  SDFFRQX2M acc2_reg_5_ ( .D(diff_bottom[5]), .SI(acc2[4]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[5]) );
  SDFFRQX2M acc2_reg_4_ ( .D(diff_bottom[4]), .SI(acc2[3]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[4]) );
  SDFFRQX2M acc2_reg_3_ ( .D(diff_bottom[3]), .SI(acc2[2]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[3]) );
  SDFFRQX2M acc2_reg_2_ ( .D(diff_bottom[2]), .SI(acc2[1]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[2]) );
  SDFFRQX2M acc1_reg_1_ ( .D(acc2[1]), .SI(acc1[0]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[1]) );
  SDFFRQX2M acc1_reg_0_ ( .D(acc2[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n41), .Q(acc1[0]) );
  SDFFRQX2M acc2_reg_1_ ( .D(diff_bottom[1]), .SI(acc2[0]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[1]) );
  SDFFRQX2M acc2_reg_0_ ( .D(diff_bottom[0]), .SI(acc1[17]), .SE(test_se), 
        .CK(clk), .RN(n43), .Q(acc2[0]) );
  SDFFRQX1M acc1_reg_17_ ( .D(acc2[17]), .SI(acc1[16]), .SE(n52), .CK(clk), 
        .RN(reset), .Q(acc1[17]) );
  SDFFRQX1M acc2_reg_17_ ( .D(diff_bottom[17]), .SI(acc2[16]), .SE(n52), .CK(
        clk), .RN(reset), .Q(acc2[17]) );
  INVX2M U42 ( .A(sum_top[17]), .Y(sub_20_B_17_) );
  ADDFX2M U43 ( .A(sum_top[1]), .B(sub_20_B_17_), .CI(sum_top[0]), .CO(
        sub_20_carry_2_), .S(diff_bottom[1]) );
  ADDFX2M U44 ( .A(sum_top[2]), .B(sub_20_B_17_), .CI(sub_20_carry_2_), .CO(
        sub_20_carry_3_), .S(diff_bottom[2]) );
  ADDFX2M U45 ( .A(sum_top[3]), .B(sub_20_B_17_), .CI(sub_20_carry_3_), .CO(
        sub_20_carry_4_), .S(diff_bottom[3]) );
  ADDFX2M U46 ( .A(sum_top[4]), .B(sub_20_B_17_), .CI(sub_20_carry_4_), .CO(
        sub_20_carry_5_), .S(diff_bottom[4]) );
  ADDFX2M U47 ( .A(sum_top[5]), .B(sub_20_B_17_), .CI(sub_20_carry_5_), .CO(
        sub_20_carry_6_), .S(diff_bottom[5]) );
  ADDFX2M U48 ( .A(sum_top[6]), .B(sub_20_B_17_), .CI(sub_20_carry_6_), .CO(
        sub_20_carry_7_), .S(diff_bottom[6]) );
  ADDFX2M U49 ( .A(sum_top[7]), .B(sub_20_B_17_), .CI(sub_20_carry_7_), .CO(
        sub_20_carry_8_), .S(diff_bottom[7]) );
  ADDFX2M U50 ( .A(sum_top[8]), .B(sub_20_B_17_), .CI(sub_20_carry_8_), .CO(
        sub_20_carry_9_), .S(diff_bottom[8]) );
  ADDFX2M U51 ( .A(sum_top[9]), .B(sub_20_B_17_), .CI(sub_20_carry_9_), .CO(
        sub_20_carry_10_), .S(diff_bottom[9]) );
  ADDFX2M U52 ( .A(sum_top[10]), .B(sub_20_B_17_), .CI(sub_20_carry_10_), .CO(
        sub_20_carry_11_), .S(diff_bottom[10]) );
  ADDFX2M U53 ( .A(sum_top[11]), .B(sub_20_B_17_), .CI(sub_20_carry_11_), .CO(
        sub_20_carry_12_), .S(diff_bottom[11]) );
  ADDFX2M U54 ( .A(sum_top[12]), .B(sub_20_B_17_), .CI(sub_20_carry_12_), .CO(
        sub_20_carry_13_), .S(diff_bottom[12]) );
  ADDFX2M U55 ( .A(sum_top[13]), .B(sub_20_B_17_), .CI(sub_20_carry_13_), .CO(
        sub_20_carry_14_), .S(diff_bottom[13]) );
  ADDFX2M U56 ( .A(sum_top[14]), .B(sub_20_B_17_), .CI(sub_20_carry_14_), .CO(
        sub_20_carry_15_), .S(diff_bottom[14]) );
  ADDFX2M U57 ( .A(sum_top[15]), .B(n45), .CI(sub_20_carry_15_), .CO(
        sub_20_carry_16_), .S(diff_bottom[15]) );
  ADDFX2M U58 ( .A(sum_top[16]), .B(n45), .CI(sub_20_carry_16_), .CO(
        diff_bottom[17]), .S(diff_bottom[16]) );
  INVX2M U59 ( .A(sub_20_B_17_), .Y(n45) );
  BUFX2M U60 ( .A(n41), .Y(n44) );
  BUFX2M U61 ( .A(n40), .Y(n43) );
  BUFX2M U62 ( .A(n40), .Y(n42) );
  BUFX2M U63 ( .A(reset), .Y(n41) );
  BUFX2M U64 ( .A(reset), .Y(n40) );
  CLKINVX1M U65 ( .A(sum_top[0]), .Y(diff_bottom[0]) );
  INVXLM U69 ( .A(test_se), .Y(n51) );
  INVXLM U70 ( .A(n51), .Y(n52) );
  segma_0_DW01_sub_1 sub_1_root_sub_0_root_sub_16 ( .A({acc2[16:0], 1'b0}), 
        .B(acc1), .CI(1'b0), .DIFF({N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  segma_0_DW01_add_0 add_0_root_sub_0_root_sub_16 ( .A({N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B({
        input_data[15], input_data[15], input_data}), .CI(1'b0), .SUM(sum_top)
         );
endmodule


module segma_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [17:2] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n17), .CI(n18), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_15 ( .A(A[15]), .B(n3), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_14 ( .A(A[14]), .B(n4), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n5), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n6), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n8), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n9), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n11), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n12), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n13), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n14), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n15), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  XNOR3X2M U1 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(DIFF[17]) );
  INVX2M U2 ( .A(B[2]), .Y(n16) );
  INVX2M U3 ( .A(B[3]), .Y(n15) );
  INVX2M U4 ( .A(B[4]), .Y(n14) );
  INVX2M U5 ( .A(B[5]), .Y(n13) );
  INVX2M U6 ( .A(B[6]), .Y(n12) );
  INVX2M U7 ( .A(B[7]), .Y(n11) );
  INVX2M U8 ( .A(B[8]), .Y(n10) );
  INVX2M U9 ( .A(B[9]), .Y(n9) );
  INVX2M U10 ( .A(B[10]), .Y(n8) );
  INVX2M U11 ( .A(B[11]), .Y(n7) );
  INVX2M U12 ( .A(B[12]), .Y(n6) );
  INVX2M U13 ( .A(B[13]), .Y(n5) );
  INVX2M U14 ( .A(B[14]), .Y(n4) );
  INVX2M U15 ( .A(B[15]), .Y(n3) );
  INVX2M U16 ( .A(B[16]), .Y(n2) );
  INVX2M U17 ( .A(B[0]), .Y(n18) );
  INVX2M U18 ( .A(B[1]), .Y(n17) );
  BUFX2M U19 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module segma_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [17:2] carry;

  XOR3XLM U1_17 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(SUM[17]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXLM U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXLM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXLM U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module segma_test_1 ( input_data, clk, reset, out_1bit, test_si, test_se );
  input [15:0] input_data;
  input clk, reset, test_si, test_se;
  output out_1bit;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11,
         N10, N1, N0, sub_20_carry_2_, sub_20_carry_3_, sub_20_carry_4_,
         sub_20_carry_5_, sub_20_carry_6_, sub_20_carry_7_, sub_20_carry_8_,
         sub_20_carry_9_, sub_20_carry_10_, sub_20_carry_11_, sub_20_carry_12_,
         sub_20_carry_13_, sub_20_carry_14_, sub_20_carry_15_,
         sub_20_carry_16_, sub_20_B_17_, n40, n41, n42, n43, n44, n45, n88,
         n89;
  wire   [17:0] acc2;
  wire   [17:0] acc1;
  wire   [17:0] sum_top;
  wire   [17:0] diff_bottom;

  SDFFRQX2M acc1_reg_16_ ( .D(acc2[16]), .SI(acc1[15]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[16]) );
  SDFFRQX2M acc1_reg_15_ ( .D(acc2[15]), .SI(acc1[14]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[15]) );
  SDFFRQX2M acc2_reg_16_ ( .D(diff_bottom[16]), .SI(acc2[15]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[16]) );
  SDFFRQX2M acc2_reg_15_ ( .D(diff_bottom[15]), .SI(acc2[14]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[15]) );
  SDFFRQX2M acc1_reg_14_ ( .D(acc2[14]), .SI(acc1[13]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[14]) );
  SDFFRQX2M acc1_reg_13_ ( .D(acc2[13]), .SI(acc1[12]), .SE(test_se), .CK(clk), 
        .RN(n43), .Q(acc1[13]) );
  SDFFRQX2M acc1_reg_12_ ( .D(acc2[12]), .SI(acc1[11]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[12]) );
  SDFFRQX2M acc1_reg_11_ ( .D(acc2[11]), .SI(acc1[10]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[11]) );
  SDFFRQX2M acc2_reg_14_ ( .D(diff_bottom[14]), .SI(acc2[13]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[14]) );
  SDFFRQX2M acc2_reg_13_ ( .D(diff_bottom[13]), .SI(acc2[12]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[13]) );
  SDFFRQX2M acc2_reg_12_ ( .D(diff_bottom[12]), .SI(acc2[11]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[12]) );
  SDFFRQX2M acc2_reg_11_ ( .D(diff_bottom[11]), .SI(acc2[10]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[11]) );
  SDFFRQX2M acc2_reg_10_ ( .D(diff_bottom[10]), .SI(acc2[9]), .SE(test_se), 
        .CK(clk), .RN(n42), .Q(acc2[10]) );
  SDFFRQX2M acc1_reg_10_ ( .D(acc2[10]), .SI(acc1[9]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[10]) );
  SDFFRQX2M acc1_reg_9_ ( .D(acc2[9]), .SI(acc1[8]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[9]) );
  SDFFRQX2M acc1_reg_8_ ( .D(acc2[8]), .SI(acc1[7]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[8]) );
  SDFFRQX2M acc1_reg_7_ ( .D(acc2[7]), .SI(acc1[6]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[7]) );
  SDFFRQX2M acc2_reg_9_ ( .D(diff_bottom[9]), .SI(acc2[8]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[9]) );
  SDFFRQX2M acc2_reg_8_ ( .D(diff_bottom[8]), .SI(acc2[7]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[8]) );
  SDFFRQX2M acc2_reg_7_ ( .D(diff_bottom[7]), .SI(acc2[6]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[7]) );
  SDFFRQX2M acc2_reg_6_ ( .D(diff_bottom[6]), .SI(acc2[5]), .SE(test_se), .CK(
        clk), .RN(n42), .Q(acc2[6]) );
  SDFFRQX2M acc1_reg_6_ ( .D(acc2[6]), .SI(acc1[5]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[6]) );
  SDFFRQX2M acc1_reg_5_ ( .D(acc2[5]), .SI(acc1[4]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[5]) );
  SDFFRQX2M acc1_reg_4_ ( .D(acc2[4]), .SI(acc1[3]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[4]) );
  SDFFRQX2M acc1_reg_3_ ( .D(acc2[3]), .SI(acc1[2]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[3]) );
  SDFFRQX2M acc1_reg_2_ ( .D(acc2[2]), .SI(acc1[1]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[2]) );
  SDFFRQX2M acc2_reg_5_ ( .D(diff_bottom[5]), .SI(acc2[4]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[5]) );
  SDFFRQX2M acc2_reg_4_ ( .D(diff_bottom[4]), .SI(acc2[3]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[4]) );
  SDFFRQX2M acc2_reg_3_ ( .D(diff_bottom[3]), .SI(acc2[2]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[3]) );
  SDFFRQX2M acc2_reg_2_ ( .D(diff_bottom[2]), .SI(acc2[1]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[2]) );
  SDFFRQX2M acc1_reg_1_ ( .D(acc2[1]), .SI(acc1[0]), .SE(test_se), .CK(clk), 
        .RN(n44), .Q(acc1[1]) );
  SDFFRQX2M acc2_reg_1_ ( .D(diff_bottom[1]), .SI(acc2[0]), .SE(test_se), .CK(
        clk), .RN(n43), .Q(acc2[1]) );
  SDFFRQX2M acc2_reg_0_ ( .D(diff_bottom[0]), .SI(acc1[17]), .SE(test_se), 
        .CK(clk), .RN(n43), .Q(acc2[0]) );
  SDFFRQX2M acc1_reg_0_ ( .D(acc2[0]), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(n41), .Q(acc1[0]) );
  SDFFRQX1M acc2_reg_17_ ( .D(diff_bottom[17]), .SI(acc2[16]), .SE(n89), .CK(
        clk), .RN(n42), .Q(acc2[17]) );
  SDFFRQX1M acc1_reg_17_ ( .D(acc2[17]), .SI(acc1[16]), .SE(n89), .CK(clk), 
        .RN(reset), .Q(acc1[17]) );
  SDFFRQX1M out_1bit_reg ( .D(sum_top[17]), .SI(acc2[17]), .SE(n89), .CK(clk), 
        .RN(reset), .Q(out_1bit) );
  INVX2M U42 ( .A(sum_top[17]), .Y(sub_20_B_17_) );
  ADDFX2M U43 ( .A(sum_top[1]), .B(sub_20_B_17_), .CI(sum_top[0]), .CO(
        sub_20_carry_2_), .S(diff_bottom[1]) );
  ADDFX2M U44 ( .A(sum_top[2]), .B(sub_20_B_17_), .CI(sub_20_carry_2_), .CO(
        sub_20_carry_3_), .S(diff_bottom[2]) );
  ADDFX2M U45 ( .A(sum_top[3]), .B(sub_20_B_17_), .CI(sub_20_carry_3_), .CO(
        sub_20_carry_4_), .S(diff_bottom[3]) );
  ADDFX2M U46 ( .A(sum_top[4]), .B(sub_20_B_17_), .CI(sub_20_carry_4_), .CO(
        sub_20_carry_5_), .S(diff_bottom[4]) );
  ADDFX2M U47 ( .A(sum_top[5]), .B(sub_20_B_17_), .CI(sub_20_carry_5_), .CO(
        sub_20_carry_6_), .S(diff_bottom[5]) );
  ADDFX2M U48 ( .A(sum_top[6]), .B(sub_20_B_17_), .CI(sub_20_carry_6_), .CO(
        sub_20_carry_7_), .S(diff_bottom[6]) );
  ADDFX2M U49 ( .A(sum_top[7]), .B(sub_20_B_17_), .CI(sub_20_carry_7_), .CO(
        sub_20_carry_8_), .S(diff_bottom[7]) );
  ADDFX2M U50 ( .A(sum_top[8]), .B(sub_20_B_17_), .CI(sub_20_carry_8_), .CO(
        sub_20_carry_9_), .S(diff_bottom[8]) );
  ADDFX2M U51 ( .A(sum_top[9]), .B(sub_20_B_17_), .CI(sub_20_carry_9_), .CO(
        sub_20_carry_10_), .S(diff_bottom[9]) );
  ADDFX2M U52 ( .A(sum_top[10]), .B(sub_20_B_17_), .CI(sub_20_carry_10_), .CO(
        sub_20_carry_11_), .S(diff_bottom[10]) );
  ADDFX2M U53 ( .A(sum_top[11]), .B(sub_20_B_17_), .CI(sub_20_carry_11_), .CO(
        sub_20_carry_12_), .S(diff_bottom[11]) );
  ADDFX2M U54 ( .A(sum_top[12]), .B(sub_20_B_17_), .CI(sub_20_carry_12_), .CO(
        sub_20_carry_13_), .S(diff_bottom[12]) );
  ADDFX2M U55 ( .A(sum_top[13]), .B(sub_20_B_17_), .CI(sub_20_carry_13_), .CO(
        sub_20_carry_14_), .S(diff_bottom[13]) );
  ADDFX2M U56 ( .A(sum_top[14]), .B(sub_20_B_17_), .CI(sub_20_carry_14_), .CO(
        sub_20_carry_15_), .S(diff_bottom[14]) );
  ADDFX2M U57 ( .A(sum_top[15]), .B(n45), .CI(sub_20_carry_15_), .CO(
        sub_20_carry_16_), .S(diff_bottom[15]) );
  ADDFX2M U58 ( .A(sum_top[16]), .B(n45), .CI(sub_20_carry_16_), .CO(
        diff_bottom[17]), .S(diff_bottom[16]) );
  INVX2M U59 ( .A(sub_20_B_17_), .Y(n45) );
  BUFX2M U60 ( .A(n41), .Y(n44) );
  BUFX2M U61 ( .A(n40), .Y(n43) );
  BUFX2M U62 ( .A(n40), .Y(n42) );
  BUFX2M U63 ( .A(reset), .Y(n41) );
  BUFX2M U64 ( .A(reset), .Y(n40) );
  CLKINVX1M U65 ( .A(sum_top[0]), .Y(diff_bottom[0]) );
  INVXLM U69 ( .A(test_se), .Y(n88) );
  INVXLM U70 ( .A(n88), .Y(n89) );
  segma_1_DW01_sub_1 sub_1_root_sub_0_root_sub_16 ( .A({acc2[16:0], 1'b0}), 
        .B(acc1), .CI(1'b0), .DIFF({N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  segma_1_DW01_add_0 add_0_root_sub_0_root_sub_16 ( .A({N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B({
        input_data[15], input_data[15], input_data}), .CI(1'b0), .SUM(sum_top)
         );
endmodule


module DUC_test_1 ( I_in_DUC, Q_in_DUC, clk, rst, SYS_out, test_so, test_se );
  input I_in_DUC, Q_in_DUC, clk, rst, test_se;
  output SYS_out, test_so;
  wire   n15, I_reg, Q_reg, N6, N17, n1, n3, n5, n8, n10, n4, n14;
  wire   [1:0] counter;

  SDFFRQX2M I_reg_reg ( .D(n10), .SI(Q_in_DUC), .SE(test_se), .CK(clk), .RN(
        rst), .Q(I_reg) );
  SDFFRQX2M Q_reg_reg ( .D(n8), .SI(I_reg), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(Q_reg) );
  SDFFRQX2M counter_reg_1_ ( .D(N6), .SI(n4), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(counter[1]) );
  SDFFRQX2M counter_reg_0_ ( .D(n4), .SI(n15), .SE(test_se), .CK(clk), .RN(rst), .Q(counter[0]) );
  SDFFRQX2M SYS_out_reg ( .D(N17), .SI(n14), .SE(test_se), .CK(clk), .RN(rst), 
        .Q(n15) );
  CLKBUFX12M U3 ( .A(n15), .Y(SYS_out) );
  OAI2BB1X2M U4 ( .A0N(n1), .A1N(I_reg), .B0(n3), .Y(N17) );
  AOI32X1M U5 ( .A0(n14), .A1(test_so), .A2(counter[0]), .B0(counter[1]), .B1(
        n5), .Y(n3) );
  INVX2M U6 ( .A(counter[1]), .Y(test_so) );
  OAI22X1M U7 ( .A0(n4), .A1(n14), .B0(counter[0]), .B1(I_reg), .Y(n5) );
  NOR2X2M U8 ( .A(counter[1]), .B(counter[0]), .Y(n1) );
  INVX2M U9 ( .A(counter[0]), .Y(n4) );
  AO2B2X2M U10 ( .B0(I_in_DUC), .B1(n1), .A0(I_reg), .A1N(n1), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n14), .A0N(Q_in_DUC), .A1N(n1), .Y(n8) );
  INVX2M U12 ( .A(Q_reg), .Y(n14) );
  CLKXOR2X2M U18 ( .A(counter[1]), .B(counter[0]), .Y(N6) );
endmodule


module MIMO ( clk, SI, SE, scan_clk, scan_rst, test_mode, rest_n, I, Q, out, 
        SO, test_si2, test_so2 );
  input [15:0] I;
  input [15:0] Q;
  input clk, SI, SE, scan_clk, scan_rst, test_mode, rest_n, test_si2;
  output out, SO, test_so2;
  wire   CLKM0, clk_segma, CLKM5, clk4, CLKM4, clk3, CLKM3, clk2, CLKM2, clk1,
         CLKM1, RSTM0, segma_1, segma_2, n1, n2, n3, n6, n9, n10, n11, n12,
         n13, n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30;
  wire   [15:0] filter1_out;
  wire   [15:0] filter2_out;

  INVX4M U3 ( .A(n3), .Y(n2) );
  INVX2M U4 ( .A(RSTM0), .Y(n3) );
  BUFX2M U5 ( .A(test_mode), .Y(n1) );
  INVXLM U6 ( .A(n18), .Y(n16) );
  INVXLM U7 ( .A(n16), .Y(n17) );
  DLY1X1M U8 ( .A(SE), .Y(n27) );
  INVXLM U9 ( .A(n27), .Y(n18) );
  DLY1X1M U10 ( .A(n20), .Y(n19) );
  INVXLM U11 ( .A(n17), .Y(n20) );
  DLY1X1M U12 ( .A(n23), .Y(n21) );
  INVXLM U13 ( .A(n28), .Y(n22) );
  INVXLM U14 ( .A(n22), .Y(n23) );
  INVXLM U15 ( .A(n29), .Y(n24) );
  INVXLM U16 ( .A(n24), .Y(n25) );
  INVXLM U17 ( .A(n24), .Y(n26) );
  INVXLM U18 ( .A(n17), .Y(n28) );
  INVXLM U19 ( .A(n17), .Y(n29) );
  INVXLM U20 ( .A(n17), .Y(n30) );
  mux2X1_1 U0_clk_mux ( .IN_0(clk), .IN_1(scan_clk), .SEL(n1), .OUT(CLKM0) );
  mux2X1_6 U1_clk_mux ( .IN_0(clk_segma), .IN_1(scan_clk), .SEL(n1), .OUT(
        CLKM5) );
  mux2X1_5 U2_clk_mux ( .IN_0(clk4), .IN_1(scan_clk), .SEL(n1), .OUT(CLKM4) );
  mux2X1_4 U3_clk_mux ( .IN_0(clk3), .IN_1(scan_clk), .SEL(n1), .OUT(CLKM3) );
  mux2X1_3 U4_clk_mux ( .IN_0(clk2), .IN_1(scan_clk), .SEL(n1), .OUT(CLKM2) );
  mux2X1_2 U5_clk_mux ( .IN_0(clk1), .IN_1(scan_clk), .SEL(n1), .OUT(CLKM1) );
  mux2X1_0 U6_clk_mux ( .IN_0(rest_n), .IN_1(scan_rst), .SEL(n1), .OUT(RSTM0)
         );
  ClkDiv_test_4 gen4 ( .i_ref_clk(CLKM0), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .o_div_clk(clk_segma), .test_si(SI), .test_so(n14), .test_se(n29) );
  ClkDiv_test_2 gen128 ( .i_ref_clk(CLKM0), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk1), .test_si(n12), .test_so(n11), .test_se(n26) );
  ClkDiv_test_0 gen16 ( .i_ref_clk(CLKM0), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk2), .test_si(n14), .test_so(n13), .test_se(n30) );
  ClkDiv_test_1 gen64 ( .i_ref_clk(CLKM0), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk3), .test_si(n13), .test_so(n12), .test_se(n25) );
  ClkDiv_test_3 gen_4 ( .i_ref_clk(CLKM0), .i_rst(n2), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .o_div_clk(clk4), .test_si(n11), .test_so(n10), .test_se(n26) );
  FIR_test_0 uut1 ( .clk(CLKM0), .clk_3(CLKM3), .clk_2(CLKM2), .clk_1(CLKM1), 
        .clk_4(CLKM4), .reset(n2), .data_in(I), .out(filter1_out), .test_si(
        n10), .test_so(n9), .test_se(SE) );
  FIR_test_1 uut2 ( .clk(CLKM0), .clk_3(CLKM3), .clk_2(CLKM2), .clk_1(CLKM1), 
        .clk_4(CLKM4), .reset(n2), .data_in(Q), .out(filter2_out), .test_si2(
        test_si2), .test_si1(n9), .test_so2(n6), .test_so1(SO), .test_se(SE)
         );
  segma_test_0 uut3 ( .input_data(filter1_out), .clk(CLKM5), .reset(n2), 
        .out_1bit(segma_1), .test_si(n6), .test_se(n19) );
  segma_test_1 uut4 ( .input_data(filter2_out), .clk(CLKM5), .reset(n2), 
        .out_1bit(segma_2), .test_si(segma_1), .test_se(n21) );
  DUC_test_1 uut5 ( .I_in_DUC(segma_1), .Q_in_DUC(segma_2), .clk(CLKM0), .rst(
        n2), .SYS_out(out), .test_so(test_so2), .test_se(n30) );
endmodule

