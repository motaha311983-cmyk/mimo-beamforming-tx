/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri Jul  3 00:12:09 2026
/////////////////////////////////////////////////////////////


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


module ClkDiv_0 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_0_DW01_inc_0 add_54 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSQX2M odd_edge_tog_reg ( .D(n17), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M div_clk_reg ( .D(n18), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \count_reg[6]  ( .D(n19), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n25), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[5]  ( .D(n20), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n21), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n22), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[2]  ( .D(n23), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n24), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U4 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n25) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n24) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n23) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n22) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n21) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n20) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n19) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n18) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n17) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
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


module ClkDiv_4 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_4_DW01_inc_0 add_54 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  NAND2BX2M U3 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U4 ( .A(i_div_ratio[5]), .Y(n6) );
  OR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  AO22XLM U6 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  XNOR2X2M U7 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2XLM U8 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  CLKINVX1M U9 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U10 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U11 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U12 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U13 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U14 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U15 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U16 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U17 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U18 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U19 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  MX2X8M U20 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  AO22X1M U21 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U22 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U23 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U24 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U25 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U26 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U27 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U28 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U29 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U30 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U31 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U32 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U33 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U34 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U35 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U36 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U39 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U40 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U41 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U42 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U43 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U44 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U48 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U49 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
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


module ClkDiv_3 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_3_DW01_inc_0 add_54 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U4 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
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


module ClkDiv_2 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_2_DW01_inc_0 add_54 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U4 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
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


module ClkDiv_1 ( i_ref_clk, i_rst, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, odd_edge_tog, N16, N17, N18, N19, N20, N21, N22, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [6:0] count;
  wire   [6:0] edge_flip_half;

  ClkDiv_1_DW01_inc_0 add_54 ( .A(count), .SUM({N22, N21, N20, N19, N18, N17, 
        N16}) );
  DFFSQX2M odd_edge_tog_reg ( .D(n51), .CK(i_ref_clk), .SN(i_rst), .Q(
        odd_edge_tog) );
  DFFRQX2M div_clk_reg ( .D(n50), .CK(i_ref_clk), .RN(i_rst), .Q(div_clk) );
  DFFRQX2M \count_reg[6]  ( .D(n49), .CK(i_ref_clk), .RN(i_rst), .Q(count[6])
         );
  DFFRQX2M \count_reg[0]  ( .D(n43), .CK(i_ref_clk), .RN(i_rst), .Q(count[0])
         );
  DFFRQX2M \count_reg[5]  ( .D(n48), .CK(i_ref_clk), .RN(i_rst), .Q(count[5])
         );
  DFFRQX2M \count_reg[4]  ( .D(n47), .CK(i_ref_clk), .RN(i_rst), .Q(count[4])
         );
  DFFRQX2M \count_reg[3]  ( .D(n46), .CK(i_ref_clk), .RN(i_rst), .Q(count[3])
         );
  DFFRQX2M \count_reg[2]  ( .D(n45), .CK(i_ref_clk), .RN(i_rst), .Q(count[2])
         );
  DFFRQX2M \count_reg[1]  ( .D(n44), .CK(i_ref_clk), .RN(i_rst), .Q(count[1])
         );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  NAND2BX2M U4 ( .AN(n41), .B(i_clk_en), .Y(n7) );
  INVX2M U5 ( .A(i_div_ratio[5]), .Y(n6) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  CLKINVX1M U7 ( .A(i_div_ratio[1]), .Y(edge_flip_half[0]) );
  OAI2BB1X1M U8 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(
        edge_flip_half[1]) );
  OR2X1M U9 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U10 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(
        edge_flip_half[2]) );
  NOR2X1M U11 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  AO21XLM U12 ( .A0(n2), .A1(i_div_ratio[4]), .B0(n3), .Y(edge_flip_half[3])
         );
  CLKNAND2X2M U13 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U14 ( .A0(n3), .A1(n6), .B0(n4), .Y(edge_flip_half[4]) );
  XNOR2X1M U15 ( .A(i_div_ratio[6]), .B(n4), .Y(edge_flip_half[5]) );
  NOR2X1M U16 ( .A(i_div_ratio[6]), .B(n4), .Y(n5) );
  CLKXOR2X2M U17 ( .A(i_div_ratio[7]), .B(n5), .Y(edge_flip_half[6]) );
  AO22X1M U18 ( .A0(n7), .A1(count[0]), .B0(N16), .B1(n8), .Y(n43) );
  AO22X1M U19 ( .A0(n7), .A1(count[1]), .B0(N17), .B1(n8), .Y(n44) );
  AO22X1M U20 ( .A0(n7), .A1(count[2]), .B0(N18), .B1(n8), .Y(n45) );
  AO22X1M U21 ( .A0(n7), .A1(count[3]), .B0(N19), .B1(n8), .Y(n46) );
  AO22X1M U22 ( .A0(n7), .A1(count[4]), .B0(N20), .B1(n8), .Y(n47) );
  AO22X1M U23 ( .A0(n7), .A1(count[5]), .B0(N21), .B1(n8), .Y(n48) );
  AO22X1M U24 ( .A0(n7), .A1(count[6]), .B0(N22), .B1(n8), .Y(n49) );
  AND3X1M U25 ( .A(n9), .B(n10), .C(N2), .Y(n8) );
  CLKXOR2X2M U26 ( .A(div_clk), .B(n11), .Y(n50) );
  AOI21X1M U27 ( .A0(n10), .A1(n9), .B0(n7), .Y(n11) );
  OR2X1M U28 ( .A(n12), .B(i_div_ratio[0]), .Y(n9) );
  XNOR2X1M U29 ( .A(odd_edge_tog), .B(n13), .Y(n51) );
  OR2X1M U30 ( .A(n10), .B(n7), .Y(n13) );
  CLKNAND2X2M U31 ( .A(n14), .B(i_div_ratio[0]), .Y(n10) );
  MXI2X1M U32 ( .A(n15), .B(n12), .S0(odd_edge_tog), .Y(n14) );
  NAND4X1M U33 ( .A(n16), .B(n26), .C(n27), .D(n28), .Y(n12) );
  NOR4X1M U34 ( .A(n29), .B(n30), .C(n31), .D(n32), .Y(n28) );
  CLKXOR2X2M U35 ( .A(edge_flip_half[2]), .B(count[2]), .Y(n32) );
  CLKXOR2X2M U36 ( .A(edge_flip_half[1]), .B(count[1]), .Y(n31) );
  CLKXOR2X2M U37 ( .A(edge_flip_half[0]), .B(count[0]), .Y(n30) );
  CLKXOR2X2M U38 ( .A(edge_flip_half[6]), .B(count[6]), .Y(n29) );
  XNOR2X1M U39 ( .A(count[4]), .B(edge_flip_half[4]), .Y(n27) );
  XNOR2X1M U40 ( .A(count[5]), .B(edge_flip_half[5]), .Y(n26) );
  XNOR2X1M U41 ( .A(count[3]), .B(edge_flip_half[3]), .Y(n16) );
  NAND4X1M U42 ( .A(n33), .B(n34), .C(n35), .D(n36), .Y(n15) );
  NOR4X1M U43 ( .A(n37), .B(n38), .C(n39), .D(n40), .Y(n36) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[3]), .B(count[2]), .Y(n40) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[2]), .B(count[1]), .Y(n39) );
  CLKXOR2X2M U46 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n38) );
  CLKXOR2X2M U47 ( .A(i_div_ratio[7]), .B(count[6]), .Y(n37) );
  XNOR2X1M U48 ( .A(count[4]), .B(i_div_ratio[5]), .Y(n35) );
  XNOR2X1M U49 ( .A(count[5]), .B(i_div_ratio[6]), .Y(n34) );
  XNOR2X1M U50 ( .A(count[3]), .B(i_div_ratio[4]), .Y(n33) );
  CLKINVX1M U51 ( .A(n7), .Y(N2) );
  NOR4BX1M U52 ( .AN(n42), .B(i_div_ratio[2]), .C(i_div_ratio[3]), .D(
        i_div_ratio[1]), .Y(n41) );
  NOR4X1M U53 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n42) );
endmodule


module hfb_1_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
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
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
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
  wire   [16:1] carry;

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
  wire   n1, n2;
  wire   [16:1] carry;

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
  BUFX2M U7 ( .A(A[5]), .Y(SUM[5]) );
  BUFX2M U8 ( .A(A[6]), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
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
  wire   \ab[7][15] , \ab[7][14] , \ab[7][13] , \ab[7][12] , \ab[7][11] ,
         \ab[7][10] , \ab[7][9] , \ab[7][8] , \ab[7][7] , \ab[7][6] ,
         \ab[7][5] , \ab[7][4] , \ab[7][3] , \ab[7][2] , \ab[7][1] ,
         \ab[7][0] , \ab[6][16] , \CARRYB[7][14] , \CARRYB[7][13] ,
         \CARRYB[7][12] , \CARRYB[7][10] , \CARRYB[7][9] , \CARRYB[7][8] ,
         \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] , \CARRYB[7][4] ,
         \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] , \CARRYB[7][0] ,
         \CARRYB[5][15] , \SUMB[8][14] , \SUMB[8][13] , \SUMB[8][12] ,
         \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] , \SUMB[8][8] ,
         \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] , \SUMB[8][3] ,
         \SUMB[8][2] , \SUMB[8][1] , \SUMB[8][0] , \SUMB[7][15] ,
         \SUMB[7][14] , \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] ,
         \SUMB[7][10] , \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][6] ,
         \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] ,
         \SUMB[6][14] , \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] ,
         \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][15] ,
         \SUMB[5][14] , \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \A1[21] ,
         \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] ,
         \A1[5] , \A1[4] , \A1[3] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign \ab[7][15]  = B[15];
  assign \ab[7][14]  = B[14];
  assign \ab[7][13]  = B[13];
  assign \ab[7][12]  = B[12];
  assign \ab[7][11]  = B[11];
  assign \ab[7][10]  = B[10];
  assign \ab[7][9]  = B[9];
  assign \ab[7][8]  = B[8];
  assign \ab[7][7]  = B[7];
  assign \ab[7][6]  = B[6];
  assign \ab[7][5]  = B[5];
  assign \ab[7][4]  = B[4];
  assign \ab[7][3]  = B[3];
  assign \ab[7][2]  = B[2];
  assign \ab[7][1]  = B[1];
  assign \ab[7][0]  = B[0];
  assign \ab[6][16]  = B[16];

  hfb_1_0_DW01_add_12 FS_1 ( .A({\ab[6][16] , \ab[6][16] , \A1[21] , \A1[20] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \SUMB[8][0] , 
        \A1[5] , \A1[4] , \A1[3] , \ab[7][4] , \ab[7][3] , \ab[7][2] }), .B({
        1'b0, n18, n31, n25, n30, n24, n29, n23, \A2[15] , n22, n28, n21, n27, 
        n20, n19, n26, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, PRODUCT[24:2]}) );
  ADDFX2M S14_16_0 ( .A(\ab[6][16] ), .B(n4), .CI(\SUMB[8][8] ), .CO(\A2[15] ), 
        .S(\A1[14] ) );
  ADDFX2M S2_7_1 ( .A(\ab[7][1] ), .B(n16), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_7_14 ( .A(\ab[7][14] ), .B(n15), .CI(\CARRYB[5][15] ), .CO(
        \CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  ADDFX2M S2_7_13 ( .A(\ab[7][13] ), .B(n14), .CI(\SUMB[6][14] ), .CO(
        \CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  ADDFX2M S2_7_12 ( .A(\ab[7][12] ), .B(n5), .CI(\SUMB[6][13] ), .CO(
        \CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  ADDFX2M S2_7_9 ( .A(\ab[7][9] ), .B(n7), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  ADDFX2M S2_7_2 ( .A(\ab[7][2] ), .B(n13), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S1_7_0 ( .A(\ab[7][0] ), .B(n17), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  ADDFX2M S2_7_10 ( .A(\ab[7][10] ), .B(n3), .CI(\SUMB[5][12] ), .CO(
        \CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  ADDFX2M S2_7_6 ( .A(\ab[7][6] ), .B(n12), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S2_7_4 ( .A(\ab[7][4] ), .B(n11), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_7_8 ( .A(\ab[7][8] ), .B(n10), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  ADDFX2M S2_7_7 ( .A(\ab[7][7] ), .B(n9), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  ADDFX2M S2_7_5 ( .A(\ab[7][5] ), .B(n6), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_7_3 ( .A(\ab[7][3] ), .B(n8), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  AND2X2M U2 ( .A(\ab[7][11] ), .B(n52), .Y(n3) );
  AND2X2M U3 ( .A(\SUMB[7][8] ), .B(\CARRYB[7][7] ), .Y(n4) );
  AND2X2M U4 ( .A(\SUMB[5][13] ), .B(n48), .Y(n5) );
  AND2X2M U5 ( .A(\SUMB[5][6] ), .B(n47), .Y(n6) );
  AND2X2M U6 ( .A(\SUMB[5][10] ), .B(n57), .Y(n7) );
  AND2X2M U7 ( .A(\SUMB[5][4] ), .B(n53), .Y(n8) );
  AND2X2M U8 ( .A(\SUMB[5][8] ), .B(n55), .Y(n9) );
  AND2X2M U9 ( .A(\SUMB[5][9] ), .B(n56), .Y(n10) );
  AND2X2M U10 ( .A(\SUMB[5][5] ), .B(n54), .Y(n11) );
  AND2X2M U11 ( .A(\SUMB[5][7] ), .B(n46), .Y(n12) );
  AND2X2M U12 ( .A(\SUMB[5][3] ), .B(n58), .Y(n13) );
  AND2X2M U13 ( .A(\SUMB[5][14] ), .B(n49), .Y(n14) );
  AND2X2M U14 ( .A(\SUMB[5][15] ), .B(n50), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[5][2] ), .B(n61), .Y(n16) );
  AND2X2M U16 ( .A(n60), .B(\SUMB[5][1] ), .Y(n17) );
  AND2X2M U17 ( .A(n44), .B(n59), .Y(n18) );
  CLKXOR2X2M U18 ( .A(n32), .B(\SUMB[8][3] ), .Y(\A1[9] ) );
  CLKXOR2X2M U19 ( .A(n36), .B(\SUMB[8][2] ), .Y(\A1[8] ) );
  CLKXOR2X2M U20 ( .A(n37), .B(\SUMB[8][5] ), .Y(\A1[11] ) );
  CLKXOR2X2M U21 ( .A(n39), .B(\SUMB[8][7] ), .Y(\A1[13] ) );
  CLKXOR2X2M U22 ( .A(n40), .B(\SUMB[8][9] ), .Y(\A1[15] ) );
  XNOR2X2M U23 ( .A(n35), .B(n64), .Y(\A1[7] ) );
  CLKXOR2X2M U24 ( .A(n33), .B(\SUMB[8][4] ), .Y(\A1[10] ) );
  CLKXOR2X2M U25 ( .A(n38), .B(\SUMB[8][6] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(n41), .B(\SUMB[8][10] ), .Y(\A1[16] ) );
  AND2X2M U27 ( .A(n36), .B(\SUMB[8][2] ), .Y(n19) );
  AND2X2M U28 ( .A(n32), .B(\SUMB[8][3] ), .Y(n20) );
  CLKXOR2X2M U29 ( .A(n42), .B(\SUMB[8][12] ), .Y(\A1[18] ) );
  CLKXOR2X2M U30 ( .A(n34), .B(\SUMB[8][11] ), .Y(\A1[17] ) );
  CLKXOR2X2M U31 ( .A(n43), .B(\SUMB[8][13] ), .Y(\A1[19] ) );
  INVX2M U32 ( .A(\SUMB[8][1] ), .Y(n64) );
  AND2X2M U33 ( .A(n37), .B(\SUMB[8][5] ), .Y(n21) );
  AND2X2M U34 ( .A(n39), .B(\SUMB[8][7] ), .Y(n22) );
  AND2X2M U35 ( .A(n40), .B(\SUMB[8][9] ), .Y(n23) );
  AND2X2M U36 ( .A(n34), .B(\SUMB[8][11] ), .Y(n24) );
  AND2X2M U37 ( .A(n43), .B(\SUMB[8][13] ), .Y(n25) );
  AND2X2M U38 ( .A(n35), .B(\SUMB[8][1] ), .Y(n26) );
  AND2X2M U39 ( .A(n33), .B(\SUMB[8][4] ), .Y(n27) );
  AND2X2M U40 ( .A(n38), .B(\SUMB[8][6] ), .Y(n28) );
  AND2X2M U41 ( .A(n41), .B(\SUMB[8][10] ), .Y(n29) );
  AND2X2M U42 ( .A(n42), .B(\SUMB[8][12] ), .Y(n30) );
  CLKXOR2X2M U43 ( .A(n45), .B(\SUMB[8][14] ), .Y(\A1[20] ) );
  AND2X2M U44 ( .A(n45), .B(\SUMB[8][14] ), .Y(n31) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\SUMB[8][3] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\SUMB[8][2] ) );
  CLKXOR2X2M U47 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\SUMB[8][5] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\SUMB[8][4] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[7][6] ), .B(\SUMB[7][7] ), .Y(\SUMB[8][6] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][7] ), .B(\SUMB[7][8] ), .Y(\SUMB[8][7] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[7][9] ), .B(\SUMB[7][10] ), .Y(\SUMB[8][9] ) );
  CLKXOR2X2M U52 ( .A(\CARRYB[7][10] ), .B(\SUMB[7][11] ), .Y(\SUMB[8][10] )
         );
  CLKXOR2X2M U53 ( .A(n48), .B(\SUMB[5][13] ), .Y(\SUMB[6][12] ) );
  XNOR2X2M U54 ( .A(\CARRYB[7][0] ), .B(n78), .Y(\SUMB[8][0] ) );
  INVX2M U55 ( .A(\SUMB[7][1] ), .Y(n78) );
  INVX2M U56 ( .A(\SUMB[5][5] ), .Y(n72) );
  INVX2M U57 ( .A(\SUMB[5][7] ), .Y(n74) );
  INVX2M U58 ( .A(\SUMB[5][6] ), .Y(n73) );
  INVX2M U59 ( .A(\SUMB[5][8] ), .Y(n75) );
  INVX2M U60 ( .A(\SUMB[5][9] ), .Y(n76) );
  INVX2M U61 ( .A(\SUMB[5][10] ), .Y(n77) );
  AND2X2M U62 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n32) );
  AND2X2M U63 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n33) );
  CLKXOR2X2M U64 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\SUMB[8][1] ) );
  CLKXOR2X2M U65 ( .A(n51), .B(\SUMB[7][12] ), .Y(\SUMB[8][11] ) );
  CLKXOR2X2M U66 ( .A(\CARRYB[7][12] ), .B(\SUMB[7][13] ), .Y(\SUMB[8][12] )
         );
  CLKXOR2X2M U67 ( .A(\CARRYB[7][13] ), .B(\SUMB[7][14] ), .Y(\SUMB[8][13] )
         );
  XNOR2X2M U68 ( .A(n60), .B(n65), .Y(\A1[4] ) );
  INVX2M U69 ( .A(\SUMB[5][1] ), .Y(n65) );
  INVX2M U70 ( .A(\SUMB[5][14] ), .Y(n67) );
  INVX2M U71 ( .A(\SUMB[5][15] ), .Y(n68) );
  INVX2M U72 ( .A(\SUMB[5][4] ), .Y(n71) );
  INVX2M U73 ( .A(\SUMB[5][3] ), .Y(n70) );
  INVX2M U74 ( .A(\SUMB[5][2] ), .Y(n69) );
  AND2X2M U75 ( .A(\SUMB[7][11] ), .B(\CARRYB[7][10] ), .Y(n34) );
  AND2X2M U76 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n35) );
  AND2X2M U77 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n36) );
  AND2X2M U78 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n37) );
  AND2X2M U79 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n38) );
  AND2X2M U80 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n39) );
  AND2X2M U81 ( .A(\SUMB[7][9] ), .B(\CARRYB[7][8] ), .Y(n40) );
  AND2X2M U82 ( .A(\SUMB[7][10] ), .B(\CARRYB[7][9] ), .Y(n41) );
  AND2X2M U83 ( .A(\SUMB[7][12] ), .B(n51), .Y(n42) );
  AND2X2M U84 ( .A(\SUMB[7][13] ), .B(\CARRYB[7][12] ), .Y(n43) );
  INVX2M U85 ( .A(\SUMB[7][9] ), .Y(n79) );
  CLKXOR2X2M U86 ( .A(\CARRYB[7][14] ), .B(\SUMB[7][15] ), .Y(\SUMB[8][14] )
         );
  CLKXOR2X2M U87 ( .A(n44), .B(n59), .Y(\A1[21] ) );
  AND2X2M U88 ( .A(\SUMB[7][15] ), .B(\CARRYB[7][14] ), .Y(n44) );
  AND2X2M U89 ( .A(\SUMB[7][14] ), .B(\CARRYB[7][13] ), .Y(n45) );
  CLKXOR2X2M U90 ( .A(\ab[7][13] ), .B(\ab[6][16] ), .Y(\SUMB[5][13] ) );
  CLKXOR2X2M U91 ( .A(\ab[7][6] ), .B(\ab[7][11] ), .Y(\SUMB[5][6] ) );
  CLKXOR2X2M U92 ( .A(\ab[7][5] ), .B(\ab[7][10] ), .Y(\SUMB[5][5] ) );
  CLKXOR2X2M U93 ( .A(\ab[7][7] ), .B(\ab[7][12] ), .Y(\SUMB[5][7] ) );
  CLKXOR2X2M U94 ( .A(\ab[7][8] ), .B(\ab[7][13] ), .Y(\SUMB[5][8] ) );
  CLKXOR2X2M U95 ( .A(\ab[7][9] ), .B(\ab[7][14] ), .Y(\SUMB[5][9] ) );
  CLKXOR2X2M U96 ( .A(\ab[7][11] ), .B(\SUMB[6][12] ), .Y(\SUMB[7][11] ) );
  XNOR2X2M U97 ( .A(n54), .B(n72), .Y(\SUMB[6][4] ) );
  XNOR2X2M U98 ( .A(n46), .B(n74), .Y(\SUMB[6][6] ) );
  XNOR2X2M U99 ( .A(n56), .B(n76), .Y(\SUMB[6][8] ) );
  XNOR2X2M U100 ( .A(n57), .B(n77), .Y(\SUMB[6][9] ) );
  XNOR2X2M U101 ( .A(n47), .B(n73), .Y(\SUMB[6][5] ) );
  XNOR2X2M U102 ( .A(n55), .B(n75), .Y(\SUMB[6][7] ) );
  XNOR2X2M U103 ( .A(\ab[7][12] ), .B(n81), .Y(\SUMB[5][12] ) );
  INVX2M U104 ( .A(\ab[6][16] ), .Y(n81) );
  CLKXOR2X2M U105 ( .A(\ab[7][10] ), .B(\ab[7][15] ), .Y(\SUMB[5][10] ) );
  AND2X2M U106 ( .A(\ab[7][11] ), .B(\ab[7][6] ), .Y(n46) );
  AND2X2M U107 ( .A(\ab[7][10] ), .B(\ab[7][5] ), .Y(n47) );
  CLKXOR2X2M U108 ( .A(\ab[7][15] ), .B(\ab[6][16] ), .Y(\SUMB[5][15] ) );
  CLKXOR2X2M U109 ( .A(\ab[7][14] ), .B(\ab[6][16] ), .Y(\SUMB[5][14] ) );
  CLKXOR2X2M U110 ( .A(\ab[7][4] ), .B(\ab[7][9] ), .Y(\SUMB[5][4] ) );
  CLKXOR2X2M U111 ( .A(\ab[7][2] ), .B(\ab[7][7] ), .Y(\SUMB[5][2] ) );
  XNOR2X2M U112 ( .A(n61), .B(n69), .Y(\SUMB[6][1] ) );
  XNOR2X2M U113 ( .A(n53), .B(n71), .Y(\SUMB[6][3] ) );
  XNOR2X2M U114 ( .A(n52), .B(n66), .Y(\SUMB[6][10] ) );
  INVX2M U115 ( .A(\ab[7][11] ), .Y(n66) );
  XNOR2X2M U116 ( .A(n49), .B(n67), .Y(\SUMB[6][13] ) );
  XNOR2X2M U117 ( .A(n50), .B(n68), .Y(\SUMB[6][14] ) );
  INVX2M U118 ( .A(n82), .Y(\CARRYB[5][15] ) );
  NAND2X2M U119 ( .A(\ab[6][16] ), .B(\ab[7][15] ), .Y(n82) );
  XNOR2X2M U120 ( .A(n58), .B(n70), .Y(\SUMB[6][2] ) );
  XNOR2X2M U121 ( .A(\CARRYB[7][8] ), .B(n79), .Y(\SUMB[8][8] ) );
  XNOR2X2M U122 ( .A(\ab[7][0] ), .B(n80), .Y(\A1[3] ) );
  INVX2M U123 ( .A(\ab[7][5] ), .Y(n80) );
  CLKXOR2X2M U124 ( .A(\ab[7][3] ), .B(\ab[7][8] ), .Y(\SUMB[5][3] ) );
  AND2X2M U125 ( .A(\ab[6][16] ), .B(\ab[7][12] ), .Y(n48) );
  AND2X2M U126 ( .A(\ab[6][16] ), .B(\ab[7][13] ), .Y(n49) );
  AND2X2M U127 ( .A(\ab[6][16] ), .B(\ab[7][14] ), .Y(n50) );
  AND2X2M U128 ( .A(\SUMB[6][12] ), .B(\ab[7][11] ), .Y(n51) );
  AND2X2M U129 ( .A(\ab[7][15] ), .B(\ab[7][10] ), .Y(n52) );
  AND2X2M U130 ( .A(\ab[7][8] ), .B(\ab[7][3] ), .Y(n53) );
  AND2X2M U131 ( .A(\ab[7][9] ), .B(\ab[7][4] ), .Y(n54) );
  AND2X2M U132 ( .A(\ab[7][12] ), .B(\ab[7][7] ), .Y(n55) );
  AND2X2M U133 ( .A(\ab[7][13] ), .B(\ab[7][8] ), .Y(n56) );
  AND2X2M U134 ( .A(\ab[7][14] ), .B(\ab[7][9] ), .Y(n57) );
  AND2X2M U135 ( .A(\ab[7][7] ), .B(\ab[7][2] ), .Y(n58) );
  CLKXOR2X2M U136 ( .A(\ab[7][1] ), .B(\ab[7][6] ), .Y(\SUMB[5][1] ) );
  CLKXOR2X2M U137 ( .A(\ab[7][15] ), .B(\ab[6][16] ), .Y(\SUMB[7][15] ) );
  BUFX2M U138 ( .A(\ab[7][1] ), .Y(PRODUCT[1]) );
  AND2X2M U139 ( .A(\ab[6][16] ), .B(\ab[7][15] ), .Y(n59) );
  BUFX2M U140 ( .A(\ab[7][0] ), .Y(PRODUCT[0]) );
  AND2X2M U141 ( .A(\ab[7][0] ), .B(\ab[7][5] ), .Y(n60) );
  AND2X2M U142 ( .A(\ab[7][6] ), .B(\ab[7][1] ), .Y(n61) );
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


module hfb_1_0_DW02_mult_2 ( A, B, TC, PRODUCT );
  input [6:0] A;
  input [16:0] B;
  output [23:0] PRODUCT;
  input TC;
  wire   \ab[6][16] , \ab[3][15] , \ab[3][14] , \ab[3][13] , \ab[3][12] ,
         \ab[3][11] , \ab[3][10] , \ab[3][9] , \ab[3][8] , \ab[3][7] ,
         \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] , \ab[3][2] ,
         \ab[3][1] , \ab[3][0] , \CARRYB[6][14] , \CARRYB[6][13] ,
         \CARRYB[6][12] , \CARRYB[6][11] , \CARRYB[6][10] , \CARRYB[6][9] ,
         \CARRYB[6][8] , \CARRYB[6][7] , \CARRYB[6][6] , \CARRYB[6][5] ,
         \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] ,
         \CARRYB[6][0] , \CARRYB[3][14] , \CARRYB[3][13] , \CARRYB[3][12] ,
         \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] , \CARRYB[3][8] ,
         \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] , \CARRYB[3][4] ,
         \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] , \CARRYB[3][0] ,
         \SUMB[6][15] , \SUMB[6][14] , \SUMB[6][13] , \SUMB[6][12] ,
         \SUMB[6][11] , \SUMB[6][10] , \SUMB[6][9] , \SUMB[6][8] ,
         \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] ,
         \SUMB[6][2] , \SUMB[6][1] , \SUMB[6][0] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] ,
         \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][15] ,
         \SUMB[3][14] , \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] ,
         \SUMB[3][10] , \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] ,
         \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[2][15] , \SUMB[2][14] , \SUMB[2][13] , \SUMB[2][12] ,
         \SUMB[2][11] , \SUMB[2][10] , \SUMB[2][9] , \SUMB[2][8] ,
         \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][15] , \A1[19] , \A1[18] ,
         \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101;
  assign \ab[6][16]  = B[16];
  assign \ab[3][15]  = B[15];
  assign \ab[3][14]  = B[14];
  assign \ab[3][13]  = B[13];
  assign \ab[3][12]  = B[12];
  assign \ab[3][11]  = B[11];
  assign \ab[3][10]  = B[10];
  assign \ab[3][9]  = B[9];
  assign \ab[3][8]  = B[8];
  assign \ab[3][7]  = B[7];
  assign \ab[3][6]  = B[6];
  assign \ab[3][5]  = B[5];
  assign \ab[3][4]  = B[4];
  assign \ab[3][3]  = B[3];
  assign \ab[3][2]  = B[2];
  assign \ab[3][1]  = B[1];
  assign \ab[3][0]  = B[0];

  hfb_1_0_DW01_add_11 FS_1 ( .A({1'b1, n98, \A1[19] , \A1[18] , \A1[17] , 
        \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , n99, \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n65, n61, n60, n59, n49, n44, \A2[15] , n43, 
        n48, n42, n47, n41, n40, n45, n46, n39, \SUMB[6][0] , 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[23:2]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(n32), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S4_14 ( .A(n96), .B(n15), .CI(\ab[6][16] ), .CO(\CARRYB[6][14] ), 
        .S(\SUMB[6][14] ) );
  ADDFX2M S4_0 ( .A(n101), .B(n31), .CI(\SUMB[5][1] ), .CO(\CARRYB[6][0] ), 
        .S(\SUMB[6][0] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(n30), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S4_13 ( .A(n95), .B(n14), .CI(\SUMB[5][14] ), .CO(\CARRYB[6][13] ), 
        .S(\SUMB[6][13] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(n29), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(n27), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S14_16_0 ( .A(\ab[6][16] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), 
        .CO(\A2[15] ), .S(\A1[14] ) );
  ADDFX2M S2_3_14 ( .A(\ab[3][14] ), .B(n16), .CI(\SUMB[2][15] ), .CO(
        \CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  ADDFX2M S2_3_13 ( .A(\ab[3][13] ), .B(n26), .CI(\SUMB[2][14] ), .CO(
        \CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  ADDFX2M S2_3_12 ( .A(\ab[3][12] ), .B(n25), .CI(\SUMB[2][13] ), .CO(
        \CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  ADDFX2M S2_3_11 ( .A(\ab[3][11] ), .B(n24), .CI(\SUMB[2][12] ), .CO(
        \CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  ADDFX2M S2_3_9 ( .A(\ab[3][9] ), .B(n23), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  ADDFX2M S2_3_7 ( .A(\ab[3][7] ), .B(n22), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  ADDFX2M S2_3_6 ( .A(\ab[3][6] ), .B(n21), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(n20), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(n19), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S4_12 ( .A(n94), .B(n4), .CI(\SUMB[5][13] ), .CO(\CARRYB[6][12] ), 
        .S(\SUMB[6][12] ) );
  ADDFX2M S4_11 ( .A(n93), .B(n3), .CI(\SUMB[5][12] ), .CO(\CARRYB[6][11] ), 
        .S(\SUMB[6][11] ) );
  ADDFX2M S4_8 ( .A(n90), .B(n13), .CI(\SUMB[5][9] ), .CO(\CARRYB[6][8] ), .S(
        \SUMB[6][8] ) );
  ADDFX2M S4_7 ( .A(n89), .B(n12), .CI(\SUMB[5][8] ), .CO(\CARRYB[6][7] ), .S(
        \SUMB[6][7] ) );
  ADDFX2M S4_5 ( .A(n87), .B(n11), .CI(\SUMB[5][6] ), .CO(\CARRYB[6][5] ), .S(
        \SUMB[6][5] ) );
  ADDFX2M S4_4 ( .A(n86), .B(n10), .CI(\SUMB[5][5] ), .CO(\CARRYB[6][4] ), .S(
        \SUMB[6][4] ) );
  ADDFX2M S4_2 ( .A(n84), .B(n9), .CI(\SUMB[5][3] ), .CO(\CARRYB[6][2] ), .S(
        \SUMB[6][2] ) );
  ADDFX2M S4_3 ( .A(n85), .B(n8), .CI(\SUMB[5][4] ), .CO(\CARRYB[6][3] ), .S(
        \SUMB[6][3] ) );
  ADDFX2M S4_1 ( .A(n100), .B(n28), .CI(\SUMB[5][2] ), .CO(\CARRYB[6][1] ), 
        .S(\SUMB[6][1] ) );
  ADDFX2M S4_10 ( .A(n92), .B(n7), .CI(\SUMB[5][11] ), .CO(\CARRYB[6][10] ), 
        .S(\SUMB[6][10] ) );
  ADDFX2M S4_9 ( .A(n91), .B(n6), .CI(\SUMB[5][10] ), .CO(\CARRYB[6][9] ), .S(
        \SUMB[6][9] ) );
  ADDFX2M S4_6 ( .A(n88), .B(n5), .CI(\SUMB[5][7] ), .CO(\CARRYB[6][6] ), .S(
        \SUMB[6][6] ) );
  ADDFX2M S2_3_10 ( .A(\ab[3][10] ), .B(n18), .CI(\SUMB[2][11] ), .CO(
        \CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  ADDFX2M S2_3_8 ( .A(\ab[3][8] ), .B(n17), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  AND2X2M U2 ( .A(\SUMB[4][12] ), .B(n57), .Y(n3) );
  AND2X2M U3 ( .A(\SUMB[4][13] ), .B(n37), .Y(n4) );
  AND2X2M U4 ( .A(\SUMB[4][7] ), .B(n35), .Y(n5) );
  AND2X2M U5 ( .A(\SUMB[4][10] ), .B(n56), .Y(n6) );
  AND2X2M U6 ( .A(\SUMB[4][11] ), .B(n55), .Y(n7) );
  AND2X2M U7 ( .A(\SUMB[4][4] ), .B(n53), .Y(n8) );
  AND2X2M U8 ( .A(\SUMB[4][3] ), .B(n52), .Y(n9) );
  AND2X2M U9 ( .A(\SUMB[4][5] ), .B(n33), .Y(n10) );
  AND2X2M U10 ( .A(\SUMB[4][6] ), .B(n34), .Y(n11) );
  AND2X2M U11 ( .A(\SUMB[4][8] ), .B(n36), .Y(n12) );
  AND2X2M U12 ( .A(\SUMB[4][9] ), .B(n54), .Y(n13) );
  AND2X2M U13 ( .A(\SUMB[4][14] ), .B(n38), .Y(n14) );
  AND2X2M U14 ( .A(n64), .B(n50), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[1][15] ), .B(\ab[3][14] ), .Y(n16) );
  AND2X2M U16 ( .A(\ab[3][9] ), .B(\ab[3][8] ), .Y(n17) );
  AND2X2M U17 ( .A(\ab[3][11] ), .B(\ab[3][10] ), .Y(n18) );
  AND2X2M U18 ( .A(\ab[3][6] ), .B(\ab[3][5] ), .Y(n19) );
  AND2X2M U19 ( .A(\ab[3][5] ), .B(\ab[3][4] ), .Y(n20) );
  AND2X2M U20 ( .A(\ab[3][7] ), .B(\ab[3][6] ), .Y(n21) );
  AND2X2M U21 ( .A(\ab[3][8] ), .B(\ab[3][7] ), .Y(n22) );
  AND2X2M U22 ( .A(\ab[3][10] ), .B(\ab[3][9] ), .Y(n23) );
  AND2X2M U23 ( .A(\ab[3][12] ), .B(\ab[3][11] ), .Y(n24) );
  AND2X2M U24 ( .A(\ab[3][13] ), .B(\ab[3][12] ), .Y(n25) );
  AND2X2M U25 ( .A(\ab[3][14] ), .B(\ab[3][13] ), .Y(n26) );
  AND2X2M U26 ( .A(\ab[3][4] ), .B(\ab[3][3] ), .Y(n27) );
  AND2X2M U27 ( .A(\SUMB[4][2] ), .B(n51), .Y(n28) );
  AND2X2M U28 ( .A(\ab[3][2] ), .B(\ab[3][1] ), .Y(n29) );
  AND2X2M U29 ( .A(\ab[3][3] ), .B(\ab[3][2] ), .Y(n30) );
  AND2X2M U30 ( .A(n58), .B(\SUMB[4][1] ), .Y(n31) );
  AND2X2M U31 ( .A(\ab[3][0] ), .B(\ab[3][1] ), .Y(n32) );
  INVX2M U32 ( .A(\SUMB[4][3] ), .Y(n76) );
  INVX2M U33 ( .A(\SUMB[4][5] ), .Y(n78) );
  INVX2M U34 ( .A(\SUMB[4][4] ), .Y(n77) );
  INVX2M U35 ( .A(\SUMB[4][6] ), .Y(n79) );
  INVX2M U36 ( .A(\SUMB[4][7] ), .Y(n80) );
  INVX2M U37 ( .A(\SUMB[4][8] ), .Y(n81) );
  INVX2M U38 ( .A(\SUMB[4][9] ), .Y(n82) );
  INVX2M U39 ( .A(\SUMB[4][11] ), .Y(n70) );
  INVX2M U40 ( .A(\SUMB[4][10] ), .Y(n83) );
  INVX2M U41 ( .A(\SUMB[4][12] ), .Y(n71) );
  INVX2M U42 ( .A(\SUMB[4][13] ), .Y(n72) );
  INVX2M U43 ( .A(\SUMB[4][14] ), .Y(n73) );
  XNOR2X2M U44 ( .A(n58), .B(n69), .Y(\A1[3] ) );
  INVX2M U45 ( .A(\SUMB[4][1] ), .Y(n69) );
  INVX2M U46 ( .A(\SUMB[4][2] ), .Y(n75) );
  CLKXOR2X2M U47 ( .A(\CARRYB[3][3] ), .B(\SUMB[3][4] ), .Y(\SUMB[4][3] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[3][5] ), .B(\SUMB[3][6] ), .Y(\SUMB[4][5] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[3][4] ), .B(\SUMB[3][5] ), .Y(\SUMB[4][4] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[3][6] ), .B(\SUMB[3][7] ), .Y(\SUMB[4][6] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[3][7] ), .B(\SUMB[3][8] ), .Y(\SUMB[4][7] ) );
  CLKXOR2X2M U52 ( .A(\CARRYB[3][8] ), .B(\SUMB[3][9] ), .Y(\SUMB[4][8] ) );
  CLKXOR2X2M U53 ( .A(\CARRYB[3][9] ), .B(\SUMB[3][10] ), .Y(\SUMB[4][9] ) );
  CLKXOR2X2M U54 ( .A(\CARRYB[3][11] ), .B(\SUMB[3][12] ), .Y(\SUMB[4][11] )
         );
  CLKXOR2X2M U55 ( .A(\CARRYB[3][10] ), .B(\SUMB[3][11] ), .Y(\SUMB[4][10] )
         );
  CLKXOR2X2M U56 ( .A(\CARRYB[3][12] ), .B(\SUMB[3][13] ), .Y(\SUMB[4][12] )
         );
  CLKXOR2X2M U57 ( .A(\CARRYB[3][13] ), .B(\SUMB[3][14] ), .Y(\SUMB[4][13] )
         );
  CLKXOR2X2M U58 ( .A(\CARRYB[3][14] ), .B(\SUMB[3][15] ), .Y(\SUMB[4][14] )
         );
  CLKXOR2X2M U59 ( .A(\CARRYB[6][1] ), .B(\SUMB[6][2] ), .Y(\A1[6] ) );
  CLKXOR2X2M U60 ( .A(\CARRYB[6][4] ), .B(\SUMB[6][5] ), .Y(\A1[9] ) );
  CLKXOR2X2M U61 ( .A(\CARRYB[6][5] ), .B(\SUMB[6][6] ), .Y(\A1[10] ) );
  CLKXOR2X2M U62 ( .A(\CARRYB[6][7] ), .B(\SUMB[6][8] ), .Y(\A1[12] ) );
  CLKXOR2X2M U63 ( .A(\CARRYB[6][11] ), .B(\SUMB[6][12] ), .Y(\A1[16] ) );
  CLKXOR2X2M U64 ( .A(\CARRYB[6][3] ), .B(\SUMB[6][4] ), .Y(\A1[8] ) );
  CLKXOR2X2M U65 ( .A(\CARRYB[6][0] ), .B(\SUMB[6][1] ), .Y(\A1[5] ) );
  CLKXOR2X2M U66 ( .A(\CARRYB[6][2] ), .B(\SUMB[6][3] ), .Y(\A1[7] ) );
  CLKXOR2X2M U67 ( .A(\CARRYB[6][10] ), .B(\SUMB[6][11] ), .Y(\A1[15] ) );
  INVX2M U68 ( .A(\SUMB[1][15] ), .Y(n97) );
  AND2X2M U69 ( .A(\SUMB[3][5] ), .B(\CARRYB[3][4] ), .Y(n33) );
  AND2X2M U70 ( .A(\SUMB[3][6] ), .B(\CARRYB[3][5] ), .Y(n34) );
  AND2X2M U71 ( .A(\SUMB[3][7] ), .B(\CARRYB[3][6] ), .Y(n35) );
  AND2X2M U72 ( .A(\SUMB[3][8] ), .B(\CARRYB[3][7] ), .Y(n36) );
  AND2X2M U73 ( .A(\SUMB[3][13] ), .B(\CARRYB[3][12] ), .Y(n37) );
  AND2X2M U74 ( .A(\SUMB[3][14] ), .B(\CARRYB[3][13] ), .Y(n38) );
  CLKXOR2X2M U75 ( .A(\CARRYB[6][6] ), .B(\SUMB[6][7] ), .Y(\A1[11] ) );
  CLKXOR2X2M U76 ( .A(\CARRYB[6][8] ), .B(\SUMB[6][9] ), .Y(\A1[13] ) );
  AND2X2M U77 ( .A(\CARRYB[6][0] ), .B(\SUMB[6][1] ), .Y(n39) );
  AND2X2M U78 ( .A(\CARRYB[6][3] ), .B(\SUMB[6][4] ), .Y(n40) );
  AND2X2M U79 ( .A(\CARRYB[6][4] ), .B(\SUMB[6][5] ), .Y(n41) );
  AND2X2M U80 ( .A(\CARRYB[6][6] ), .B(\SUMB[6][7] ), .Y(n42) );
  AND2X2M U81 ( .A(\CARRYB[6][8] ), .B(\SUMB[6][9] ), .Y(n43) );
  AND2X2M U82 ( .A(\CARRYB[6][10] ), .B(\SUMB[6][11] ), .Y(n44) );
  AND2X2M U83 ( .A(\CARRYB[6][2] ), .B(\SUMB[6][3] ), .Y(n45) );
  AND2X2M U84 ( .A(\CARRYB[6][1] ), .B(\SUMB[6][2] ), .Y(n46) );
  AND2X2M U85 ( .A(\CARRYB[6][5] ), .B(\SUMB[6][6] ), .Y(n47) );
  AND2X2M U86 ( .A(\CARRYB[6][7] ), .B(\SUMB[6][8] ), .Y(n48) );
  AND2X2M U87 ( .A(\CARRYB[6][11] ), .B(\SUMB[6][12] ), .Y(n49) );
  CLKXOR2X2M U88 ( .A(\CARRYB[3][1] ), .B(\SUMB[3][2] ), .Y(\SUMB[4][1] ) );
  CLKXOR2X2M U89 ( .A(\CARRYB[3][2] ), .B(\SUMB[3][3] ), .Y(\SUMB[4][2] ) );
  CLKXOR2X2M U90 ( .A(\CARRYB[6][12] ), .B(\SUMB[6][13] ), .Y(\A1[17] ) );
  CLKXOR2X2M U91 ( .A(\CARRYB[6][14] ), .B(\SUMB[6][15] ), .Y(\A1[19] ) );
  XNOR2X2M U92 ( .A(\CARRYB[3][0] ), .B(n68), .Y(\A1[2] ) );
  INVX2M U93 ( .A(\SUMB[3][1] ), .Y(n68) );
  INVX2M U94 ( .A(\SUMB[6][0] ), .Y(n99) );
  AND2X2M U95 ( .A(\SUMB[3][15] ), .B(\CARRYB[3][14] ), .Y(n50) );
  AND2X2M U96 ( .A(\SUMB[3][2] ), .B(\CARRYB[3][1] ), .Y(n51) );
  AND2X2M U97 ( .A(\SUMB[3][3] ), .B(\CARRYB[3][2] ), .Y(n52) );
  AND2X2M U98 ( .A(\SUMB[3][4] ), .B(\CARRYB[3][3] ), .Y(n53) );
  AND2X2M U99 ( .A(\SUMB[3][9] ), .B(\CARRYB[3][8] ), .Y(n54) );
  AND2X2M U100 ( .A(\SUMB[3][11] ), .B(\CARRYB[3][10] ), .Y(n55) );
  AND2X2M U101 ( .A(\SUMB[3][10] ), .B(\CARRYB[3][9] ), .Y(n56) );
  AND2X2M U102 ( .A(\SUMB[3][12] ), .B(\CARRYB[3][11] ), .Y(n57) );
  AND2X2M U103 ( .A(\CARRYB[3][0] ), .B(\SUMB[3][1] ), .Y(n58) );
  CLKXOR2X2M U104 ( .A(\CARRYB[6][13] ), .B(\SUMB[6][14] ), .Y(\A1[18] ) );
  INVX2M U105 ( .A(n64), .Y(n74) );
  AND2X2M U106 ( .A(\CARRYB[6][12] ), .B(\SUMB[6][13] ), .Y(n59) );
  AND2X2M U107 ( .A(\CARRYB[6][13] ), .B(\SUMB[6][14] ), .Y(n60) );
  AND2X2M U108 ( .A(\CARRYB[6][14] ), .B(\SUMB[6][15] ), .Y(n61) );
  INVX2M U109 ( .A(n65), .Y(n98) );
  CLKXOR2X2M U110 ( .A(\ab[3][15] ), .B(\ab[6][16] ), .Y(\SUMB[1][15] ) );
  CLKXOR2X2M U111 ( .A(n62), .B(\ab[3][15] ), .Y(\SUMB[3][15] ) );
  XNOR2X2M U112 ( .A(\ab[3][9] ), .B(n92), .Y(\SUMB[2][9] ) );
  XNOR2X2M U113 ( .A(\ab[3][11] ), .B(n94), .Y(\SUMB[2][11] ) );
  XNOR2X2M U114 ( .A(n36), .B(n81), .Y(\SUMB[5][7] ) );
  XNOR2X2M U115 ( .A(n55), .B(n70), .Y(\SUMB[5][10] ) );
  XNOR2X2M U116 ( .A(n57), .B(n71), .Y(\SUMB[5][11] ) );
  INVX2M U117 ( .A(\ab[3][1] ), .Y(n100) );
  XNOR2X2M U118 ( .A(n52), .B(n76), .Y(\SUMB[5][2] ) );
  XNOR2X2M U119 ( .A(n33), .B(n78), .Y(\SUMB[5][4] ) );
  XNOR2X2M U120 ( .A(n53), .B(n77), .Y(\SUMB[5][3] ) );
  XNOR2X2M U121 ( .A(n34), .B(n79), .Y(\SUMB[5][5] ) );
  XNOR2X2M U122 ( .A(n35), .B(n80), .Y(\SUMB[5][6] ) );
  XNOR2X2M U123 ( .A(n54), .B(n82), .Y(\SUMB[5][8] ) );
  XNOR2X2M U124 ( .A(n56), .B(n83), .Y(\SUMB[5][9] ) );
  XNOR2X2M U125 ( .A(n37), .B(n72), .Y(\SUMB[5][12] ) );
  XNOR2X2M U126 ( .A(n38), .B(n73), .Y(\SUMB[5][13] ) );
  XNOR2X2M U127 ( .A(\ab[3][6] ), .B(n89), .Y(\SUMB[2][6] ) );
  XNOR2X2M U128 ( .A(\ab[3][5] ), .B(n88), .Y(\SUMB[2][5] ) );
  XNOR2X2M U129 ( .A(\ab[3][7] ), .B(n90), .Y(\SUMB[2][7] ) );
  XNOR2X2M U130 ( .A(\ab[3][8] ), .B(n91), .Y(\SUMB[2][8] ) );
  XNOR2X2M U131 ( .A(\ab[3][10] ), .B(n93), .Y(\SUMB[2][10] ) );
  XNOR2X2M U132 ( .A(\ab[3][12] ), .B(n95), .Y(\SUMB[2][12] ) );
  XNOR2X2M U133 ( .A(\ab[3][13] ), .B(n96), .Y(\SUMB[2][13] ) );
  XNOR2X2M U134 ( .A(\ab[3][14] ), .B(n97), .Y(\SUMB[2][14] ) );
  XNOR2X2M U135 ( .A(n63), .B(n67), .Y(\SUMB[2][15] ) );
  INVX2M U136 ( .A(\ab[3][15] ), .Y(n67) );
  INVX2M U137 ( .A(\ab[3][7] ), .Y(n89) );
  INVX2M U138 ( .A(\ab[3][6] ), .Y(n88) );
  INVX2M U139 ( .A(\ab[3][8] ), .Y(n90) );
  INVX2M U140 ( .A(\ab[3][9] ), .Y(n91) );
  INVX2M U141 ( .A(\ab[3][10] ), .Y(n92) );
  INVX2M U142 ( .A(\ab[3][11] ), .Y(n93) );
  INVX2M U143 ( .A(\ab[3][13] ), .Y(n95) );
  INVX2M U144 ( .A(\ab[3][12] ), .Y(n94) );
  INVX2M U145 ( .A(\ab[3][14] ), .Y(n96) );
  AND2X2M U146 ( .A(\ab[3][15] ), .B(n63), .Y(n62) );
  AND2X2M U147 ( .A(\ab[6][16] ), .B(\ab[3][15] ), .Y(n63) );
  XNOR2X2M U148 ( .A(\ab[3][4] ), .B(n87), .Y(\SUMB[2][4] ) );
  XNOR2X2M U149 ( .A(\ab[3][2] ), .B(n85), .Y(\SUMB[2][2] ) );
  XNOR2X2M U150 ( .A(n50), .B(n74), .Y(\SUMB[5][14] ) );
  XNOR2X2M U151 ( .A(\ab[3][3] ), .B(n86), .Y(\SUMB[2][3] ) );
  INVX2M U152 ( .A(\ab[3][0] ), .Y(n101) );
  XNOR2X2M U153 ( .A(n51), .B(n75), .Y(\SUMB[5][1] ) );
  XNOR2X2M U154 ( .A(\ab[3][0] ), .B(n100), .Y(\A1[0] ) );
  INVX2M U155 ( .A(\ab[3][5] ), .Y(n87) );
  INVX2M U156 ( .A(\ab[3][4] ), .Y(n86) );
  INVX2M U157 ( .A(\ab[3][3] ), .Y(n85) );
  AND2X2M U158 ( .A(\ab[3][15] ), .B(n62), .Y(n64) );
  CLKXOR2X2M U159 ( .A(n67), .B(\ab[6][16] ), .Y(\SUMB[6][15] ) );
  XNOR2X2M U160 ( .A(\ab[3][1] ), .B(n84), .Y(\SUMB[2][1] ) );
  INVX2M U161 ( .A(\ab[3][2] ), .Y(n84) );
  BUFX2M U162 ( .A(\ab[3][0] ), .Y(PRODUCT[1]) );
  AND2X2M U163 ( .A(\ab[6][16] ), .B(n67), .Y(n65) );
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
  INVX2M U3 ( .A(n65), .Y(n7) );
  AOI2B1X1M U4 ( .A1N(n16), .A0(n13), .B0(n15), .Y(n10) );
  INVX2M U5 ( .A(n26), .Y(n8) );
  INVX2M U6 ( .A(n24), .Y(SUM[5]) );
  BUFX2M U7 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U8 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U9 ( .A(A[3]), .Y(SUM[3]) );
  XNOR2X2M U10 ( .A(A[20]), .B(n1), .Y(SUM[20]) );
  BUFX2M U11 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
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
  wire   \ab[4][15] , \ab[4][14] , \ab[4][13] , \ab[4][12] , \ab[4][11] ,
         \ab[4][10] , \ab[4][9] , \ab[4][8] , \ab[4][7] , \ab[4][6] ,
         \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] , \ab[4][1] ,
         \ab[4][0] , \ab[2][16] , \CARRYB[4][14] , \CARRYB[4][12] ,
         \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] , \CARRYB[4][8] ,
         \CARRYB[4][7] , \CARRYB[4][6] , \CARRYB[4][5] , \CARRYB[4][4] ,
         \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] , \CARRYB[4][0] ,
         \SUMB[5][14] , \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] ,
         \SUMB[5][10] , \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] ,
         \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] ,
         \SUMB[5][0] , \SUMB[4][15] , \SUMB[4][14] , \SUMB[4][13] ,
         \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] , \SUMB[4][9] ,
         \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][15] ,
         \SUMB[3][14] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \A1[20] ,
         \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] ,
         \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] ,
         \A1[4] , \A1[2] , \A1[1] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  assign \ab[4][15]  = B[15];
  assign \ab[4][14]  = B[14];
  assign \ab[4][13]  = B[13];
  assign \ab[4][12]  = B[12];
  assign \ab[4][11]  = B[11];
  assign \ab[4][10]  = B[10];
  assign \ab[4][9]  = B[9];
  assign \ab[4][8]  = B[8];
  assign \ab[4][7]  = B[7];
  assign \ab[4][6]  = B[6];
  assign \ab[4][5]  = B[5];
  assign \ab[4][4]  = B[4];
  assign \ab[4][3]  = B[3];
  assign \ab[4][2]  = B[2];
  assign \ab[4][1]  = B[1];
  assign \ab[4][0]  = B[0];
  assign \ab[2][16]  = B[16];

  hfb_1_0_DW01_add_10 FS_1 ( .A({\A1[20] , \ab[2][16] , \A1[18] , \A1[17] , 
        \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \SUMB[5][0] , 
        \A1[2] , \A1[1] , \ab[4][2] }), .B({1'b0, n45, n30, n26, n29, \A2[15] , 
        n28, n25, n27, n24, n23, n20, n22, n19, n21, n18, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[22:2]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(n17), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_14 ( .A(\ab[4][14] ), .B(n3), .CI(\SUMB[3][15] ), .CO(
        \CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(n13), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S14_16_0 ( .A(\ab[2][16] ), .B(n16), .CI(\SUMB[5][11] ), .CO(
        \A2[15] ), .S(\A1[14] ) );
  ADDFX2M S2_4_11 ( .A(\ab[4][11] ), .B(n4), .CI(\SUMB[3][12] ), .CO(
        \CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  ADDFX2M S2_4_12 ( .A(\ab[4][12] ), .B(n15), .CI(\ab[4][13] ), .CO(
        \CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  ADDFX2M S2_4_10 ( .A(\ab[4][10] ), .B(n14), .CI(\SUMB[3][11] ), .CO(
        \CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  ADDFX2M S2_4_9 ( .A(\ab[4][9] ), .B(n12), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  ADDFX2M S2_4_7 ( .A(\ab[4][7] ), .B(n11), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  ADDFX2M S2_4_8 ( .A(\ab[4][8] ), .B(n10), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(n9), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(n8), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_6 ( .A(\ab[4][6] ), .B(n7), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(n6), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(n5), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  AND2X2M U2 ( .A(\ab[2][16] ), .B(\ab[4][14] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[4][14] ), .B(\ab[4][11] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[4][5] ), .B(\ab[4][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[4][7] ), .B(\ab[4][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[4][9] ), .B(\ab[4][6] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[4][6] ), .B(\ab[4][3] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[4][8] ), .B(\ab[4][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\ab[4][11] ), .B(\ab[4][8] ), .Y(n10) );
  AND2X2M U10 ( .A(\ab[4][10] ), .B(\ab[4][7] ), .Y(n11) );
  AND2X2M U11 ( .A(\ab[4][12] ), .B(\ab[4][9] ), .Y(n12) );
  AND2X2M U12 ( .A(\ab[4][4] ), .B(\ab[4][1] ), .Y(n13) );
  AND2X2M U13 ( .A(\ab[4][13] ), .B(\ab[4][10] ), .Y(n14) );
  AND2X2M U14 ( .A(\ab[4][15] ), .B(\ab[4][12] ), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[4][11] ), .B(\CARRYB[4][10] ), .Y(n16) );
  AND2X2M U16 ( .A(\ab[4][0] ), .B(\ab[4][3] ), .Y(n17) );
  CLKXOR2X2M U17 ( .A(n37), .B(\SUMB[5][2] ), .Y(\A1[5] ) );
  CLKXOR2X2M U18 ( .A(n38), .B(\SUMB[5][4] ), .Y(\A1[7] ) );
  CLKXOR2X2M U19 ( .A(n39), .B(\SUMB[5][6] ), .Y(\A1[9] ) );
  CLKXOR2X2M U20 ( .A(n40), .B(\SUMB[5][8] ), .Y(\A1[11] ) );
  CLKXOR2X2M U21 ( .A(n42), .B(\SUMB[5][10] ), .Y(\A1[13] ) );
  CLKXOR2X2M U22 ( .A(n43), .B(\SUMB[5][12] ), .Y(\A1[15] ) );
  CLKXOR2X2M U23 ( .A(n31), .B(\SUMB[5][3] ), .Y(\A1[6] ) );
  CLKXOR2X2M U24 ( .A(n32), .B(\SUMB[5][5] ), .Y(\A1[8] ) );
  CLKXOR2X2M U25 ( .A(n33), .B(\SUMB[5][7] ), .Y(\A1[10] ) );
  CLKXOR2X2M U26 ( .A(n41), .B(\SUMB[5][9] ), .Y(\A1[12] ) );
  AND2X2M U27 ( .A(n36), .B(\SUMB[5][1] ), .Y(n18) );
  AND2X2M U28 ( .A(n31), .B(\SUMB[5][3] ), .Y(n19) );
  AND2X2M U29 ( .A(n32), .B(\SUMB[5][5] ), .Y(n20) );
  AND2X2M U30 ( .A(n37), .B(\SUMB[5][2] ), .Y(n21) );
  AND2X2M U31 ( .A(n38), .B(\SUMB[5][4] ), .Y(n22) );
  AND2X2M U32 ( .A(n39), .B(\SUMB[5][6] ), .Y(n23) );
  CLKXOR2X2M U33 ( .A(n36), .B(\SUMB[5][1] ), .Y(\A1[4] ) );
  CLKXOR2X2M U34 ( .A(n44), .B(\SUMB[5][14] ), .Y(\A1[17] ) );
  CLKXOR2X2M U35 ( .A(n34), .B(\SUMB[5][13] ), .Y(\A1[16] ) );
  AND2X2M U36 ( .A(n33), .B(\SUMB[5][7] ), .Y(n24) );
  AND2X2M U37 ( .A(n41), .B(\SUMB[5][9] ), .Y(n25) );
  AND2X2M U38 ( .A(n34), .B(\SUMB[5][13] ), .Y(n26) );
  AND2X2M U39 ( .A(n40), .B(\SUMB[5][8] ), .Y(n27) );
  AND2X2M U40 ( .A(n42), .B(\SUMB[5][10] ), .Y(n28) );
  AND2X2M U41 ( .A(n43), .B(\SUMB[5][12] ), .Y(n29) );
  AND2X2M U42 ( .A(n44), .B(\SUMB[5][14] ), .Y(n30) );
  CLKXOR2X2M U43 ( .A(\CARRYB[4][1] ), .B(\SUMB[4][2] ), .Y(\SUMB[5][1] ) );
  CLKXOR2X2M U44 ( .A(\CARRYB[4][3] ), .B(\SUMB[4][4] ), .Y(\SUMB[5][3] ) );
  CLKXOR2X2M U45 ( .A(\CARRYB[4][2] ), .B(\SUMB[4][3] ), .Y(\SUMB[5][2] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[4][4] ), .B(\SUMB[4][5] ), .Y(\SUMB[5][4] ) );
  CLKXOR2X2M U47 ( .A(\CARRYB[4][6] ), .B(\SUMB[4][7] ), .Y(\SUMB[5][6] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[4][5] ), .B(\SUMB[4][6] ), .Y(\SUMB[5][5] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[4][8] ), .B(\SUMB[4][9] ), .Y(\SUMB[5][8] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[4][7] ), .B(\SUMB[4][8] ), .Y(\SUMB[5][7] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[4][9] ), .B(\SUMB[4][10] ), .Y(\SUMB[5][9] ) );
  CLKXOR2X2M U52 ( .A(\CARRYB[4][10] ), .B(\SUMB[4][11] ), .Y(\SUMB[5][10] )
         );
  CLKXOR2X2M U53 ( .A(\CARRYB[4][12] ), .B(\SUMB[4][13] ), .Y(\SUMB[5][12] )
         );
  AND2X2M U54 ( .A(\SUMB[4][3] ), .B(\CARRYB[4][2] ), .Y(n31) );
  AND2X2M U55 ( .A(\SUMB[4][5] ), .B(\CARRYB[4][4] ), .Y(n32) );
  AND2X2M U56 ( .A(\SUMB[4][7] ), .B(\CARRYB[4][6] ), .Y(n33) );
  INVX2M U57 ( .A(\SUMB[4][12] ), .Y(n52) );
  CLKXOR2X2M U58 ( .A(n47), .B(\SUMB[4][14] ), .Y(\SUMB[5][13] ) );
  CLKXOR2X2M U59 ( .A(\CARRYB[4][14] ), .B(\SUMB[4][15] ), .Y(\SUMB[5][14] )
         );
  CLKXOR2X2M U60 ( .A(n35), .B(n48), .Y(\A1[18] ) );
  XNOR2X2M U61 ( .A(\CARRYB[4][0] ), .B(n51), .Y(\SUMB[5][0] ) );
  AND2X2M U62 ( .A(\SUMB[4][13] ), .B(\CARRYB[4][12] ), .Y(n34) );
  AND2X2M U63 ( .A(\SUMB[4][15] ), .B(\CARRYB[4][14] ), .Y(n35) );
  AND2X2M U64 ( .A(\SUMB[4][1] ), .B(\CARRYB[4][0] ), .Y(n36) );
  AND2X2M U65 ( .A(\SUMB[4][2] ), .B(\CARRYB[4][1] ), .Y(n37) );
  AND2X2M U66 ( .A(\SUMB[4][4] ), .B(\CARRYB[4][3] ), .Y(n38) );
  AND2X2M U67 ( .A(\SUMB[4][6] ), .B(\CARRYB[4][5] ), .Y(n39) );
  AND2X2M U68 ( .A(\SUMB[4][8] ), .B(\CARRYB[4][7] ), .Y(n40) );
  AND2X2M U69 ( .A(\SUMB[4][9] ), .B(\CARRYB[4][8] ), .Y(n41) );
  AND2X2M U70 ( .A(\SUMB[4][10] ), .B(\CARRYB[4][9] ), .Y(n42) );
  AND2X2M U71 ( .A(\SUMB[4][12] ), .B(\CARRYB[4][11] ), .Y(n43) );
  AND2X2M U72 ( .A(\SUMB[4][14] ), .B(n47), .Y(n44) );
  INVX2M U73 ( .A(\SUMB[4][1] ), .Y(n51) );
  AND2X2M U74 ( .A(n35), .B(n48), .Y(n45) );
  CLKXOR2X2M U75 ( .A(\ab[4][14] ), .B(\ab[2][16] ), .Y(\SUMB[3][14] ) );
  CLKXOR2X2M U76 ( .A(\ab[4][13] ), .B(\SUMB[3][14] ), .Y(\SUMB[4][13] ) );
  XNOR2X2M U77 ( .A(\ab[4][3] ), .B(n56), .Y(\SUMB[3][3] ) );
  XNOR2X2M U78 ( .A(\ab[4][5] ), .B(n58), .Y(\SUMB[3][5] ) );
  XNOR2X2M U79 ( .A(\ab[4][7] ), .B(n60), .Y(\SUMB[3][7] ) );
  XNOR2X2M U80 ( .A(\ab[4][4] ), .B(n57), .Y(\SUMB[3][4] ) );
  XNOR2X2M U81 ( .A(\ab[4][6] ), .B(n59), .Y(\SUMB[3][6] ) );
  XNOR2X2M U82 ( .A(\ab[4][9] ), .B(n62), .Y(\SUMB[3][9] ) );
  XNOR2X2M U83 ( .A(\ab[4][8] ), .B(n61), .Y(\SUMB[3][8] ) );
  XNOR2X2M U84 ( .A(\ab[4][10] ), .B(n63), .Y(\SUMB[3][10] ) );
  XNOR2X2M U85 ( .A(\ab[4][11] ), .B(n64), .Y(\SUMB[3][11] ) );
  XNOR2X2M U86 ( .A(\ab[4][12] ), .B(n65), .Y(\SUMB[3][12] ) );
  XNOR2X2M U87 ( .A(\CARRYB[4][11] ), .B(n52), .Y(\SUMB[5][11] ) );
  INVX2M U88 ( .A(\ab[4][15] ), .Y(n65) );
  INVX2M U89 ( .A(\ab[4][7] ), .Y(n57) );
  INVX2M U90 ( .A(\ab[4][6] ), .Y(n56) );
  INVX2M U91 ( .A(\ab[4][8] ), .Y(n58) );
  INVX2M U92 ( .A(\ab[4][10] ), .Y(n60) );
  INVX2M U93 ( .A(\ab[4][9] ), .Y(n59) );
  INVX2M U94 ( .A(\ab[4][12] ), .Y(n62) );
  INVX2M U95 ( .A(\ab[4][11] ), .Y(n61) );
  INVX2M U96 ( .A(\ab[4][14] ), .Y(n64) );
  INVX2M U97 ( .A(\ab[4][13] ), .Y(n63) );
  CLKXOR2X2M U98 ( .A(n46), .B(\ab[4][15] ), .Y(\SUMB[4][15] ) );
  XNOR2X2M U99 ( .A(\ab[4][2] ), .B(n55), .Y(\SUMB[3][2] ) );
  XNOR2X2M U100 ( .A(\ab[4][15] ), .B(n66), .Y(\SUMB[3][15] ) );
  XNOR2X2M U101 ( .A(\ab[4][1] ), .B(n54), .Y(\SUMB[3][1] ) );
  XNOR2X2M U102 ( .A(\ab[4][0] ), .B(n53), .Y(\A1[1] ) );
  INVX2M U103 ( .A(\ab[2][16] ), .Y(n66) );
  INVX2M U104 ( .A(\ab[4][3] ), .Y(n53) );
  INVX2M U105 ( .A(\ab[4][5] ), .Y(n55) );
  INVX2M U106 ( .A(\ab[4][4] ), .Y(n54) );
  AND2X2M U107 ( .A(\ab[2][16] ), .B(\ab[4][15] ), .Y(n46) );
  AND2X2M U108 ( .A(\SUMB[3][14] ), .B(\ab[4][13] ), .Y(n47) );
  AND2X2M U109 ( .A(\ab[4][15] ), .B(n46), .Y(n48) );
  BUFX2M U110 ( .A(\ab[4][1] ), .Y(PRODUCT[1]) );
  BUFX2M U111 ( .A(\ab[4][0] ), .Y(PRODUCT[0]) );
  CLKINVX1M U114 ( .A(n66), .Y(\A1[20] ) );
endmodule


module hfb_1_0_DW01_add_9 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  AOI21BX2M U2 ( .A0(n15), .A1(n14), .B0N(n16), .Y(n10) );
  INVX2M U3 ( .A(n21), .Y(n8) );
  INVX2M U4 ( .A(n69), .Y(n6) );
  INVX2M U5 ( .A(n28), .Y(n9) );
  INVX2M U6 ( .A(n49), .Y(n5) );
  INVX2M U7 ( .A(n66), .Y(n7) );
  INVX2M U8 ( .A(n55), .Y(n4) );
  XNOR2X2M U9 ( .A(B[19]), .B(n33), .Y(SUM[19]) );
  BUFX2M U10 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U11 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2X1M U13 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n7), .B(n12), .Y(n11) );
  XNOR2X1M U15 ( .A(n13), .B(n14), .Y(SUM[8]) );
  CLKNAND2X2M U16 ( .A(n15), .B(n16), .Y(n13) );
  CLKXOR2X2M U17 ( .A(n17), .B(n18), .Y(SUM[7]) );
  NOR2BX1M U18 ( .AN(n19), .B(n20), .Y(n18) );
  OAI21X1M U19 ( .A0(n21), .A1(n22), .B0(n23), .Y(n17) );
  CLKXOR2X2M U20 ( .A(n24), .B(n22), .Y(SUM[6]) );
  AOI2B1X1M U21 ( .A1N(n25), .A0(n26), .B0(n9), .Y(n22) );
  CLKNAND2X2M U22 ( .A(n8), .B(n23), .Y(n24) );
  CLKXOR2X2M U23 ( .A(n26), .B(n27), .Y(SUM[5]) );
  NOR2X1M U24 ( .A(n9), .B(n25), .Y(n27) );
  OAI21X1M U25 ( .A0(n29), .A1(n30), .B0(n31), .Y(n26) );
  CLKXOR2X2M U26 ( .A(n30), .B(n32), .Y(SUM[4]) );
  NAND2BX1M U27 ( .AN(n29), .B(n31), .Y(n32) );
  OA21X1M U28 ( .A0(B[3]), .A1(A[3]), .B0(n30), .Y(SUM[3]) );
  OAI2BB1X1M U29 ( .A0N(n34), .A1N(A[18]), .B0(n35), .Y(n33) );
  OAI21X1M U30 ( .A0(A[18]), .A1(n34), .B0(B[18]), .Y(n35) );
  XOR3XLM U31 ( .A(B[18]), .B(A[18]), .C(n34), .Y(SUM[18]) );
  AO22X1M U32 ( .A0(n36), .A1(A[17]), .B0(n37), .B1(B[17]), .Y(n34) );
  OR2X1M U33 ( .A(A[17]), .B(n36), .Y(n37) );
  XOR3XLM U34 ( .A(B[17]), .B(A[17]), .C(n36), .Y(SUM[17]) );
  OAI21X1M U35 ( .A0(n38), .A1(n39), .B0(n40), .Y(n36) );
  CLKXOR2X2M U36 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2BB1X1M U37 ( .A0N(n42), .A1N(n43), .B0(n44), .Y(n39) );
  AOI21BX1M U38 ( .A0(n45), .A1(n4), .B0N(n46), .Y(n43) );
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
  AOI2B1X1M U50 ( .A1N(n47), .A0(n58), .B0(n5), .Y(n56) );
  CLKNAND2X2M U51 ( .A(n4), .B(n46), .Y(n57) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n46) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n55) );
  CLKXOR2X2M U54 ( .A(n58), .B(n59), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n5), .B(n47), .Y(n59) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n47) );
  CLKNAND2X2M U57 ( .A(B[13]), .B(A[13]), .Y(n49) );
  OAI21X1M U58 ( .A0(n51), .A1(n50), .B0(n52), .Y(n58) );
  CLKXOR2X2M U59 ( .A(n60), .B(n50), .Y(SUM[12]) );
  OA21X1M U60 ( .A0(n61), .A1(n62), .B0(n63), .Y(n50) );
  AOI21BX1M U61 ( .A0(n64), .A1(n6), .B0N(n65), .Y(n62) );
  OAI21X1M U62 ( .A0(n12), .A1(n10), .B0(n66), .Y(n64) );
  NAND2BX1M U63 ( .AN(n51), .B(n52), .Y(n60) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n52) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n51) );
  CLKXOR2X2M U66 ( .A(n67), .B(n68), .Y(SUM[11]) );
  NOR2BX1M U67 ( .AN(n63), .B(n61), .Y(n68) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n61) );
  CLKNAND2X2M U69 ( .A(B[11]), .B(A[11]), .Y(n63) );
  OAI21X1M U70 ( .A0(n69), .A1(n70), .B0(n65), .Y(n67) );
  CLKXOR2X2M U71 ( .A(n71), .B(n70), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n10), .A1N(n12), .B0(n7), .Y(n70) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n66) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n12) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n16) );
  OAI21X1M U76 ( .A0(n20), .A1(n72), .B0(n19), .Y(n14) );
  CLKNAND2X2M U77 ( .A(B[7]), .B(A[7]), .Y(n19) );
  AOI21BX1M U78 ( .A0(n73), .A1(n8), .B0N(n23), .Y(n72) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1M U80 ( .A(B[6]), .B(A[6]), .Y(n21) );
  OAI21X1M U81 ( .A0(n25), .A1(n74), .B0(n28), .Y(n73) );
  CLKNAND2X2M U82 ( .A(B[5]), .B(A[5]), .Y(n28) );
  OA21X1M U83 ( .A0(n30), .A1(n29), .B0(n31), .Y(n74) );
  CLKNAND2X2M U84 ( .A(B[4]), .B(A[4]), .Y(n31) );
  NOR2X1M U85 ( .A(B[4]), .B(A[4]), .Y(n29) );
  CLKNAND2X2M U86 ( .A(B[3]), .B(A[3]), .Y(n30) );
  NOR2X1M U87 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NOR2X1M U88 ( .A(B[7]), .B(A[7]), .Y(n20) );
  OR2X1M U89 ( .A(B[8]), .B(A[8]), .Y(n15) );
  CLKNAND2X2M U90 ( .A(n6), .B(n65), .Y(n71) );
  CLKNAND2X2M U91 ( .A(B[10]), .B(A[10]), .Y(n65) );
  NOR2X1M U92 ( .A(B[10]), .B(A[10]), .Y(n69) );
endmodule


module hfb_1_0_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [4:0] A;
  input [16:0] B;
  output [21:0] PRODUCT;
  input TC;
  wire   \ab[4][16] , \ab[1][15] , \ab[1][14] , \ab[1][13] , \ab[1][12] ,
         \ab[1][11] , \ab[1][10] , \ab[1][9] , \ab[1][8] , \ab[1][7] ,
         \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] ,
         \ab[1][1] , \ab[1][0] , \SUMB[4][15] , \SUMB[4][14] , \SUMB[4][13] ,
         \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] , \SUMB[4][9] ,
         \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[4][0] , \SUMB[1][15] ,
         \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] ,
         \A1[3] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  assign \ab[4][16]  = B[16];
  assign \ab[1][15]  = B[15];
  assign \ab[1][14]  = B[14];
  assign \ab[1][13]  = B[13];
  assign \ab[1][12]  = B[12];
  assign \ab[1][11]  = B[11];
  assign \ab[1][10]  = B[10];
  assign \ab[1][9]  = B[9];
  assign \ab[1][8]  = B[8];
  assign \ab[1][7]  = B[7];
  assign \ab[1][6]  = B[6];
  assign \ab[1][5]  = B[5];
  assign \ab[1][4]  = B[4];
  assign \ab[1][3]  = B[3];
  assign \ab[1][2]  = B[2];
  assign \ab[1][1]  = B[1];
  assign \ab[1][0]  = B[0];

  hfb_1_0_DW01_add_9 FS_1 ( .A({1'b1, n36, \A1[17] , \A1[16] , \A1[15] , 
        \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , 
        \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , n50, \ab[1][2] , 
        \ab[1][1] }), .B({n33, n19, n18, n4, \A2[15] , n15, n14, n16, n13, n12, 
        n11, n17, n10, n7, n9, n8, \SUMB[4][0] , 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[21:2]) );
  ADDFX2M S14_16_0 ( .A(\ab[4][16] ), .B(n3), .CI(\SUMB[4][12] ), .CO(\A2[15] ), .S(\A1[14] ) );
  AND2X2M U2 ( .A(\ab[1][14] ), .B(n41), .Y(n3) );
  CLKXOR2X2M U3 ( .A(n5), .B(\SUMB[4][13] ), .Y(\A1[15] ) );
  AND2X2M U4 ( .A(n5), .B(\SUMB[4][13] ), .Y(n4) );
  CLKXOR2X2M U5 ( .A(n39), .B(n20), .Y(\SUMB[4][13] ) );
  AND2X2M U6 ( .A(\SUMB[1][15] ), .B(n40), .Y(n5) );
  INVX2M U7 ( .A(\SUMB[1][15] ), .Y(n35) );
  CLKXOR2X2M U8 ( .A(n21), .B(\SUMB[4][15] ), .Y(\A1[17] ) );
  CLKXOR2X2M U9 ( .A(n24), .B(\SUMB[4][4] ), .Y(\A1[6] ) );
  CLKXOR2X2M U10 ( .A(n25), .B(\SUMB[4][2] ), .Y(\A1[4] ) );
  CLKXOR2X2M U11 ( .A(n28), .B(\SUMB[4][7] ), .Y(\A1[9] ) );
  CLKXOR2X2M U12 ( .A(n29), .B(\SUMB[4][8] ), .Y(\A1[10] ) );
  CLKXOR2X2M U13 ( .A(n30), .B(\SUMB[4][9] ), .Y(\A1[11] ) );
  CLKXOR2X2M U14 ( .A(n32), .B(\SUMB[4][11] ), .Y(\A1[13] ) );
  CLKXOR2X2M U15 ( .A(n6), .B(\SUMB[4][14] ), .Y(\A1[16] ) );
  INVX2M U16 ( .A(\SUMB[4][0] ), .Y(n50) );
  CLKXOR2X2M U17 ( .A(n23), .B(\SUMB[4][1] ), .Y(\A1[3] ) );
  CLKXOR2X2M U18 ( .A(n22), .B(\SUMB[4][3] ), .Y(\A1[5] ) );
  CLKXOR2X2M U19 ( .A(n27), .B(\SUMB[4][5] ), .Y(\A1[7] ) );
  CLKXOR2X2M U20 ( .A(n26), .B(\SUMB[4][6] ), .Y(\A1[8] ) );
  CLKXOR2X2M U21 ( .A(n31), .B(\SUMB[4][10] ), .Y(\A1[12] ) );
  AND2X2M U22 ( .A(n20), .B(n39), .Y(n6) );
  AND2X2M U23 ( .A(n22), .B(\SUMB[4][3] ), .Y(n7) );
  AND2X2M U24 ( .A(n23), .B(\SUMB[4][1] ), .Y(n8) );
  AND2X2M U25 ( .A(n25), .B(\SUMB[4][2] ), .Y(n9) );
  AND2X2M U26 ( .A(n24), .B(\SUMB[4][4] ), .Y(n10) );
  AND2X2M U27 ( .A(n26), .B(\SUMB[4][6] ), .Y(n11) );
  AND2X2M U28 ( .A(n28), .B(\SUMB[4][7] ), .Y(n12) );
  AND2X2M U29 ( .A(n29), .B(\SUMB[4][8] ), .Y(n13) );
  AND2X2M U30 ( .A(n31), .B(\SUMB[4][10] ), .Y(n14) );
  AND2X2M U31 ( .A(n32), .B(\SUMB[4][11] ), .Y(n15) );
  AND2X2M U32 ( .A(n30), .B(\SUMB[4][9] ), .Y(n16) );
  AND2X2M U33 ( .A(n27), .B(\SUMB[4][5] ), .Y(n17) );
  AND2X2M U34 ( .A(n6), .B(\SUMB[4][14] ), .Y(n18) );
  AND2X2M U35 ( .A(n21), .B(\SUMB[4][15] ), .Y(n19) );
  INVX2M U36 ( .A(n33), .Y(n36) );
  CLKXOR2X2M U37 ( .A(\ab[1][15] ), .B(\ab[4][16] ), .Y(\SUMB[1][15] ) );
  XNOR2X2M U38 ( .A(n40), .B(n35), .Y(\SUMB[4][12] ) );
  AND2X2M U39 ( .A(\ab[4][16] ), .B(\ab[1][15] ), .Y(n20) );
  CLKXOR2X2M U40 ( .A(n48), .B(\ab[1][7] ), .Y(\SUMB[4][4] ) );
  CLKXOR2X2M U41 ( .A(n51), .B(\ab[1][5] ), .Y(\SUMB[4][2] ) );
  CLKXOR2X2M U42 ( .A(n47), .B(\ab[1][8] ), .Y(\SUMB[4][5] ) );
  CLKXOR2X2M U43 ( .A(n45), .B(\ab[1][10] ), .Y(\SUMB[4][7] ) );
  CLKXOR2X2M U44 ( .A(n46), .B(\ab[1][9] ), .Y(\SUMB[4][6] ) );
  CLKXOR2X2M U45 ( .A(n43), .B(\ab[1][12] ), .Y(\SUMB[4][9] ) );
  CLKXOR2X2M U46 ( .A(n41), .B(\ab[1][14] ), .Y(\SUMB[4][11] ) );
  CLKXOR2X2M U47 ( .A(n38), .B(\ab[4][16] ), .Y(\SUMB[4][14] ) );
  CLKXOR2X2M U48 ( .A(n37), .B(\ab[4][16] ), .Y(\SUMB[4][15] ) );
  CLKXOR2X2M U49 ( .A(n53), .B(\ab[1][3] ), .Y(\SUMB[4][0] ) );
  INVX2M U50 ( .A(\ab[1][4] ), .Y(n48) );
  INVX2M U51 ( .A(\ab[1][3] ), .Y(n49) );
  INVX2M U52 ( .A(\ab[1][7] ), .Y(n45) );
  INVX2M U53 ( .A(\ab[1][6] ), .Y(n46) );
  INVX2M U54 ( .A(\ab[1][8] ), .Y(n44) );
  INVX2M U55 ( .A(\ab[1][9] ), .Y(n43) );
  INVX2M U56 ( .A(\ab[1][11] ), .Y(n41) );
  INVX2M U57 ( .A(\ab[1][13] ), .Y(n39) );
  INVX2M U58 ( .A(\ab[1][12] ), .Y(n40) );
  INVX2M U59 ( .A(\ab[1][14] ), .Y(n38) );
  INVX2M U60 ( .A(\ab[1][15] ), .Y(n37) );
  AND2X2M U61 ( .A(\ab[4][16] ), .B(n38), .Y(n21) );
  CLKXOR2X2M U62 ( .A(n49), .B(\ab[1][6] ), .Y(\SUMB[4][3] ) );
  CLKXOR2X2M U63 ( .A(n52), .B(\ab[1][4] ), .Y(\SUMB[4][1] ) );
  CLKXOR2X2M U64 ( .A(n44), .B(\ab[1][11] ), .Y(\SUMB[4][8] ) );
  CLKXOR2X2M U65 ( .A(n42), .B(\ab[1][13] ), .Y(\SUMB[4][10] ) );
  AND2X2M U66 ( .A(\ab[1][5] ), .B(n51), .Y(n22) );
  AND2X2M U67 ( .A(\ab[1][3] ), .B(n53), .Y(n23) );
  AND2X2M U68 ( .A(\ab[1][6] ), .B(n49), .Y(n24) );
  AND2X2M U69 ( .A(\ab[1][4] ), .B(n52), .Y(n25) );
  AND2X2M U70 ( .A(\ab[1][8] ), .B(n47), .Y(n26) );
  AND2X2M U71 ( .A(\ab[1][7] ), .B(n48), .Y(n27) );
  AND2X2M U72 ( .A(\ab[1][9] ), .B(n46), .Y(n28) );
  AND2X2M U73 ( .A(\ab[1][10] ), .B(n45), .Y(n29) );
  AND2X2M U74 ( .A(\ab[1][11] ), .B(n44), .Y(n30) );
  AND2X2M U75 ( .A(\ab[1][12] ), .B(n43), .Y(n31) );
  AND2X2M U76 ( .A(\ab[1][13] ), .B(n42), .Y(n32) );
  INVX2M U77 ( .A(\ab[1][0] ), .Y(n53) );
  INVX2M U78 ( .A(\ab[1][5] ), .Y(n47) );
  INVX2M U79 ( .A(\ab[1][10] ), .Y(n42) );
  INVX2M U80 ( .A(\ab[1][2] ), .Y(n51) );
  INVX2M U81 ( .A(\ab[1][1] ), .Y(n52) );
  AND2X2M U82 ( .A(\ab[4][16] ), .B(n37), .Y(n33) );
  BUFX2M U83 ( .A(\ab[1][0] ), .Y(PRODUCT[1]) );
endmodule


module hfb_1_0_DW01_add_8 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:1] carry;

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
  BUFX2M U4 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U5 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module hfb_1_0_DW01_add_7 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:1] carry;

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
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
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
  wire   [25:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n21), .CI(n22), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n7), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n10), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n3), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n5), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_8 ( .A(A[8]), .B(n14), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n18), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFX2M U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFX2M U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n4), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFX2M U2_11 ( .A(A[11]), .B(n11), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n17), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3XLM U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  INVX2M U1 ( .A(B[5]), .Y(n17) );
  INVX2M U2 ( .A(B[9]), .Y(n13) );
  INVX2M U3 ( .A(B[10]), .Y(n12) );
  INVX2M U4 ( .A(B[11]), .Y(n11) );
  INVX2M U5 ( .A(B[18]), .Y(n4) );
  INVX2M U6 ( .A(B[4]), .Y(n18) );
  INVX2M U7 ( .A(B[6]), .Y(n16) );
  INVX2M U8 ( .A(B[7]), .Y(n15) );
  INVX2M U9 ( .A(B[8]), .Y(n14) );
  INVX2M U10 ( .A(B[16]), .Y(n6) );
  INVX2M U11 ( .A(B[17]), .Y(n5) );
  INVX2M U12 ( .A(B[19]), .Y(n3) );
  INVX2M U13 ( .A(B[12]), .Y(n10) );
  INVX2M U14 ( .A(B[13]), .Y(n9) );
  INVX2M U15 ( .A(B[14]), .Y(n8) );
  INVX2M U16 ( .A(B[15]), .Y(n7) );
  INVX2M U17 ( .A(B[24]), .Y(n2) );
  INVX2M U18 ( .A(B[3]), .Y(n19) );
  INVX2M U19 ( .A(B[2]), .Y(n20) );
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
  wire   [23:1] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
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
  wire   [24:1] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
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
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
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
  wire   [24:1] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
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
  wire   [24:1] carry;

  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
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
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
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


module hfb_1_0 ( clk, reset, data_in, even_out, odd_out );
  input [15:0] data_in;
  output [15:0] even_out;
  output [15:0] odd_out;
  input clk, reset;
  wire   \d[0][15] , \d[0][14] , \d[0][13] , \d[0][12] , \d[0][11] ,
         \d[0][10] , \d[0][9] , \d[0][8] , \d[0][7] , \d[0][6] , \d[0][5] ,
         \d[0][4] , \d[0][3] , \d[0][2] , \d[0][1] , \d[0][0] , \d[1][15] ,
         \d[1][14] , \d[1][13] , \d[1][12] , \d[1][11] , \d[1][10] , \d[1][9] ,
         \d[1][8] , \d[1][7] , \d[1][6] , \d[1][5] , \d[1][4] , \d[1][3] ,
         \d[1][2] , \d[1][1] , \d[1][0] , \d[2][15] , \d[2][14] , \d[2][13] ,
         \d[2][12] , \d[2][11] , \d[2][10] , \d[2][9] , \d[2][8] , \d[2][7] ,
         \d[2][6] , \d[2][5] , \d[2][4] , \d[2][3] , \d[2][2] , \d[2][1] ,
         \d[2][0] , \d[3][15] , \d[3][14] , \d[3][13] , \d[3][12] , \d[3][11] ,
         \d[3][10] , \d[3][9] , \d[3][8] , \d[3][7] , \d[3][6] , \d[3][5] ,
         \d[3][4] , \d[3][3] , \d[3][2] , \d[3][1] , \d[3][0] , \d[4][15] ,
         \d[4][14] , \d[4][13] , \d[4][12] , \d[4][11] , \d[4][10] , \d[4][9] ,
         \d[4][8] , \d[4][7] , \d[4][6] , \d[4][5] , \d[4][4] , \d[4][3] ,
         \d[4][2] , \d[4][1] , \d[4][0] , \d[5][15] , \d[5][14] , \d[5][13] ,
         \d[5][12] , \d[5][11] , \d[5][10] , \d[5][9] , \d[5][8] , \d[5][7] ,
         \d[5][6] , \d[5][5] , \d[5][4] , \d[5][3] , \d[5][2] , \d[5][1] ,
         \d[5][0] , \d[6][15] , \d[6][14] , \d[6][13] , \d[6][12] , \d[6][11] ,
         \d[6][10] , \d[6][9] , \d[6][8] , \d[6][7] , \d[6][6] , \d[6][5] ,
         \d[6][4] , \d[6][3] , \d[6][2] , \d[6][1] , \d[6][0] , \d[7][15] ,
         \d[7][14] , \d[7][13] , \d[7][12] , \d[7][11] , \d[7][10] , \d[7][9] ,
         \d[7][8] , \d[7][7] , \d[7][6] , \d[7][5] , \d[7][4] , \d[7][3] ,
         \d[7][2] , \d[7][1] , \d[7][0] , \d[8][15] , \d[8][14] , \d[8][13] ,
         \d[8][12] , \d[8][11] , \d[8][10] , \d[8][9] , \d[8][8] , \d[8][7] ,
         \d[8][6] , \d[8][5] , \d[8][4] , \d[8][3] , \d[8][2] , \d[8][1] ,
         \d[8][0] , \d[9][15] , \d[9][14] , \d[9][13] , \d[9][12] , \d[9][11] ,
         \d[9][10] , \d[9][9] , \d[9][8] , \d[9][7] , \d[9][6] , \d[9][5] ,
         \d[9][4] , \d[9][3] , \d[9][2] , \d[9][1] , \d[9][0] , \d[10][15] ,
         \d[10][14] , \d[10][13] , \d[10][12] , \d[10][11] , \d[10][10] ,
         \d[10][9] , \d[10][8] , \d[10][7] , \d[10][6] , \d[10][5] ,
         \d[10][4] , \d[10][3] , \d[10][2] , \d[10][1] , \d[10][0] ,
         \d[11][15] , \d[11][14] , \d[11][13] , \d[11][12] , \d[11][11] ,
         \d[11][10] , \d[11][9] , \d[11][8] , \d[11][7] , \d[11][6] ,
         \d[11][5] , \d[11][4] , \d[11][3] , \d[11][2] , \d[11][1] ,
         \d[11][0] , \d[12][15] , \d[12][14] , \d[12][13] , \d[12][12] ,
         \d[12][11] , \d[12][10] , \d[12][9] , \d[12][8] , \d[12][7] ,
         \d[12][6] , \d[12][5] , \d[12][4] , \d[12][3] , \d[12][2] ,
         \d[12][1] , \d[12][0] , \d[13][15] , \d[13][14] , \d[13][13] ,
         \d[13][12] , \d[13][11] , \d[13][10] , \d[13][9] , \d[13][8] ,
         \d[13][7] , \d[13][6] , \d[13][5] , \d[13][4] , \d[13][3] ,
         \d[13][2] , \d[13][1] , \d[13][0] , \d[14][15] , \d[14][14] ,
         \d[14][13] , \d[14][12] , \d[14][11] , \d[14][10] , \d[14][9] ,
         \d[14][8] , \d[14][7] , \d[14][6] , \d[14][5] , \d[14][4] ,
         \d[14][3] , \d[14][2] , \d[14][1] , \d[14][0] , \d[15][15] ,
         \d[15][14] , \d[15][13] , \d[15][12] , \d[15][11] , \d[15][10] ,
         \d[15][9] , \d[15][8] , \d[15][7] , \d[15][6] , \d[15][5] ,
         \d[15][4] , \d[15][3] , \d[15][2] , \d[15][1] , \d[15][0] , N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N9, N8, N7, N6,
         N5, N401, N400, N4, N399, N398, N397, N396, N395, N394, N393, N392,
         N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381,
         N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370,
         N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N334,
         N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323,
         N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312,
         N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N3,
         N299, N298, N297, N296, N295, N294, N269, N268, N267, N266, N265,
         N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232,
         N231, N230, N206, N205, N204, N203, N202, N201, N200, N2, N199, N198,
         N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187,
         N186, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175,
         N174, N173, N172, N171, N170, N169, N168, N16, N15, N14, N13, N128,
         N127, N126, N125, N124, N123, N122, N121, N120, N12, N119, N118, N117,
         N116, N115, N114, N113, N112, N111, N110, N11, N109, N108, N10, N1,
         N0, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157;
  wire   [24:9] acc;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  hfb_1_0_DW01_add_0 add_40_I4 ( .A({\d[3][15] , \d[3][15] , \d[3][14] , 
        \d[3][13] , \d[3][12] , \d[3][11] , \d[3][10] , \d[3][9] , \d[3][8] , 
        \d[3][7] , \d[3][6] , \d[3][5] , \d[3][4] , \d[3][3] , \d[3][2] , 
        \d[3][1] , \d[3][0] }), .B({\d[12][15] , \d[12][15] , \d[12][14] , 
        \d[12][13] , \d[12][12] , \d[12][11] , \d[12][10] , \d[12][9] , 
        \d[12][8] , \d[12][7] , \d[12][6] , \d[12][5] , \d[12][4] , \d[12][3] , 
        \d[12][2] , \d[12][1] , \d[12][0] }), .CI(1'b0), .SUM({N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129}) );
  hfb_1_0_DW01_add_1 add_40_I3 ( .A({\d[2][15] , \d[2][15] , \d[2][14] , 
        \d[2][13] , \d[2][12] , \d[2][11] , \d[2][10] , \d[2][9] , \d[2][8] , 
        \d[2][7] , \d[2][6] , \d[2][5] , \d[2][4] , \d[2][3] , \d[2][2] , 
        \d[2][1] , \d[2][0] }), .B({\d[13][15] , \d[13][15] , \d[13][14] , 
        \d[13][13] , \d[13][12] , \d[13][11] , \d[13][10] , \d[13][9] , 
        \d[13][8] , \d[13][7] , \d[13][6] , \d[13][5] , \d[13][4] , \d[13][3] , 
        \d[13][2] , \d[13][1] , \d[13][0] }), .CI(1'b0), .SUM({N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71})
         );
  hfb_1_0_DW01_add_2 add_40_I2 ( .A({\d[1][15] , \d[1][15] , \d[1][14] , 
        \d[1][13] , \d[1][12] , \d[1][11] , \d[1][10] , \d[1][9] , \d[1][8] , 
        \d[1][7] , \d[1][6] , \d[1][5] , \d[1][4] , \d[1][3] , \d[1][2] , 
        \d[1][1] , \d[1][0] }), .B({\d[14][15] , \d[14][15] , \d[14][14] , 
        \d[14][13] , \d[14][12] , \d[14][11] , \d[14][10] , \d[14][9] , 
        \d[14][8] , \d[14][7] , \d[14][6] , \d[14][5] , \d[14][4] , \d[14][3] , 
        \d[14][2] , \d[14][1] , \d[14][0] }), .CI(1'b0), .SUM({N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35})
         );
  hfb_1_0_DW01_add_17 add_40_I8 ( .A({\d[7][15] , \d[7][15] , \d[7][14] , 
        \d[7][13] , \d[7][12] , \d[7][11] , \d[7][10] , \d[7][9] , \d[7][8] , 
        \d[7][7] , \d[7][6] , \d[7][5] , \d[7][4] , \d[7][3] , \d[7][2] , 
        \d[7][1] , \d[7][0] }), .B({\d[8][15] , \d[8][15] , \d[8][14] , 
        \d[8][13] , \d[8][12] , \d[8][11] , \d[8][10] , \d[8][9] , \d[8][8] , 
        \d[8][7] , \d[8][6] , \d[8][5] , \d[8][4] , \d[8][3] , \d[8][2] , 
        \d[8][1] , \d[8][0] }), .CI(1'b0), .SUM({N376, N375, N374, N373, N372, 
        N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360}) );
  hfb_1_0_DW01_add_16 add_40_I7 ( .A({\d[6][15] , \d[6][15] , \d[6][14] , 
        \d[6][13] , \d[6][12] , \d[6][11] , \d[6][10] , \d[6][9] , \d[6][8] , 
        \d[6][7] , \d[6][6] , \d[6][5] , \d[6][4] , \d[6][3] , \d[6][2] , 
        \d[6][1] , \d[6][0] }), .B({\d[9][15] , \d[9][15] , \d[9][14] , 
        \d[9][13] , \d[9][12] , \d[9][11] , \d[9][10] , \d[9][9] , \d[9][8] , 
        \d[9][7] , \d[9][6] , \d[9][5] , \d[9][4] , \d[9][3] , \d[9][2] , 
        \d[9][1] , \d[9][0] }), .CI(1'b0), .SUM({N310, N309, N308, N307, N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}) );
  hfb_1_0_DW01_add_15 add_40_I6 ( .A({\d[5][15] , \d[5][15] , \d[5][14] , 
        \d[5][13] , \d[5][12] , \d[5][11] , \d[5][10] , \d[5][9] , \d[5][8] , 
        \d[5][7] , \d[5][6] , \d[5][5] , \d[5][4] , \d[5][3] , \d[5][2] , 
        \d[5][1] , \d[5][0] }), .B({\d[10][15] , \d[10][15] , \d[10][14] , 
        \d[10][13] , \d[10][12] , \d[10][11] , \d[10][10] , \d[10][9] , 
        \d[10][8] , \d[10][7] , \d[10][6] , \d[10][5] , \d[10][4] , \d[10][3] , 
        \d[10][2] , \d[10][1] , \d[10][0] }), .CI(1'b0), .SUM({N246, N245, 
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, 
        N232, N231, N230}) );
  hfb_1_0_DW01_add_14 add_40_I5 ( .A({\d[4][15] , \d[4][15] , \d[4][14] , 
        \d[4][13] , \d[4][12] , \d[4][11] , \d[4][10] , \d[4][9] , \d[4][8] , 
        \d[4][7] , \d[4][6] , \d[4][5] , \d[4][4] , \d[4][3] , \d[4][2] , 
        \d[4][1] , \d[4][0] }), .B({\d[11][15] , \d[11][15] , \d[11][14] , 
        \d[11][13] , \d[11][12] , \d[11][11] , \d[11][10] , \d[11][9] , 
        \d[11][8] , \d[11][7] , \d[11][6] , \d[11][5] , \d[11][4] , \d[11][3] , 
        \d[11][2] , \d[11][1] , \d[11][0] }), .CI(1'b0), .SUM({N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168}) );
  hfb_1_0_DW01_add_13 add_40 ( .A({\d[0][15] , \d[0][15] , \d[0][14] , 
        \d[0][13] , \d[0][12] , \d[0][11] , \d[0][10] , \d[0][9] , \d[0][8] , 
        \d[0][7] , \d[0][6] , \d[0][5] , \d[0][4] , \d[0][3] , \d[0][2] , 
        \d[0][1] , \d[0][0] }), .B({\d[15][15] , \d[15][15] , \d[15][14] , 
        \d[15][13] , \d[15][12] , \d[15][11] , \d[15][10] , \d[15][9] , 
        \d[15][8] , \d[15][7] , \d[15][6] , \d[15][5] , \d[15][4] , \d[15][3] , 
        \d[15][2] , \d[15][1] , \d[15][0] }), .CI(1'b0), .SUM({N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  hfb_1_0_DW02_mult_3 mult_40_I8 ( .A({1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1}), .B({N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360}), .TC(1'b1), 
        .PRODUCT({SYNOPSYS_UNCONNECTED__0, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377}) );
  hfb_1_0_DW02_mult_2 mult_40_I7 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0}), .B({N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, 
        N300, N299, N298, N297, N296, N295, N294}), .TC(1'b1), .PRODUCT({N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        SYNOPSYS_UNCONNECTED__1}) );
  hfb_1_0_DW02_mult_1 mult_40_I6 ( .A({1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), 
        .B({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230}), .TC(1'b1), .PRODUCT({N269, N268, 
        N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247}) );
  hfb_1_0_DW02_mult_0 mult_40_I5 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b0}), .B({
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, 
        N172, N171, N170, N169, N168}), .TC(1'b1), .PRODUCT({N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, SYNOPSYS_UNCONNECTED__2}) );
  hfb_1_0_DW01_add_8 add_8_root_add_40_2_I8 ( .A({N51, N51, N51, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        1'b0}), .B({N145, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({n38, n70, n81, n92, n103, n114, n125, n136, n147, n39, 
        n50, n61, n63, n64, n65, n66, n67, n68, n69, n71, 
        SYNOPSYS_UNCONNECTED__3}) );
  hfb_1_0_DW01_add_7 add_5_root_add_40_2_I8 ( .A({N16, N16, N16, N16, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        {N87, N87, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, 1'b0, 1'b0}), .CI(1'b0), .SUM({N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108}) );
  hfb_1_0_DW01_sub_0 sub_3_root_add_2_root_add_40_2_I8 ( .A({n38, n38, n38, 
        n38, n38, n70, n81, n92, n103, n114, n125, n136, n147, n39, n50, n61, 
        n63, n64, n65, n66, n67, n68, n69, n71, 1'b0}), .B({N128, N128, N128, 
        N128, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}), .CI(1'b0), .DIFF({n99, n100, n101, n102, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
        n126}) );
  hfb_1_0_DW01_add_6 add_7_root_add_40_2_I8 ( .A({N206, N206, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, 1'b0}), .B({N269, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({n73, 
        n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, 
        n89, n90, n91, n93, n94, n95, n96, n97, n98}) );
  hfb_1_0_DW01_add_5 add_2_root_add_2_root_add_40_2_I8 ( .A({n99, n100, n101, 
        n102, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n115, 
        n116, n117, n118, n119, n120, n121, n122, n123, n124, n126}), .B({N334, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 1'b0}), .CI(1'b0), .SUM({n154, n155, n156, n157, n40, n41, n42, n43, n44, n45, n46, 
        n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62})
         );
  hfb_1_0_DW01_add_4 add_1_root_add_2_root_add_40_2_I8 ( .A({N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377}), .B({n73, 
        n73, n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, 
        n88, n89, n90, n91, n93, n94, n95, n96, n97, n98}), .CI(1'b0), .SUM({
        n127, n128, n129, n130, n131, n132, n133, n134, n135, n137, n138, n139, 
        n140, n141, n142, n143, n144, n145, n146, n148, n149, n150, n151, n152, 
        n153}) );
  hfb_1_0_DW01_add_3 add_0_root_add_2_root_add_40_2_I8 ( .A({n154, n155, n156, 
        n157, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, 
        n54, n55, n56, n57, n58, n59, n60, n62}), .B({n127, n128, n129, n130, 
        n131, n132, n133, n134, n135, n137, n138, n139, n140, n141, n142, n143, 
        n144, n145, n146, n148, n149, n150, n151, n152, n153}), .CI(1'b0), 
        .SUM({acc, SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
  DFFRQX2M \d_reg[12][14]  ( .D(\d[11][14] ), .CK(clk), .RN(n18), .Q(
        \d[12][14] ) );
  DFFRQX2M \d_reg[12][13]  ( .D(\d[11][13] ), .CK(clk), .RN(n18), .Q(
        \d[12][13] ) );
  DFFRQX2M \d_reg[12][12]  ( .D(\d[11][12] ), .CK(clk), .RN(n19), .Q(
        \d[12][12] ) );
  DFFRQX2M \d_reg[13][14]  ( .D(\d[12][14] ), .CK(clk), .RN(n20), .Q(
        \d[13][14] ) );
  DFFRQX2M \d_reg[13][13]  ( .D(\d[12][13] ), .CK(clk), .RN(n20), .Q(
        \d[13][13] ) );
  DFFRQX2M \d_reg[13][12]  ( .D(\d[12][12] ), .CK(clk), .RN(n20), .Q(
        \d[13][12] ) );
  DFFRQX2M \d_reg[2][14]  ( .D(\d[1][14] ), .CK(clk), .RN(n6), .Q(\d[2][14] )
         );
  DFFRQX2M \d_reg[2][13]  ( .D(\d[1][13] ), .CK(clk), .RN(n6), .Q(\d[2][13] )
         );
  DFFRQX2M \d_reg[3][14]  ( .D(\d[2][14] ), .CK(clk), .RN(n7), .Q(\d[3][14] )
         );
  DFFRQX2M \d_reg[3][13]  ( .D(\d[2][13] ), .CK(clk), .RN(n7), .Q(\d[3][13] )
         );
  DFFRQX2M \d_reg[3][12]  ( .D(\d[2][12] ), .CK(clk), .RN(n7), .Q(\d[3][12] )
         );
  DFFRQX2M \d_reg[15][15]  ( .D(\d[14][15] ), .CK(clk), .RN(n22), .Q(
        \d[15][15] ) );
  DFFRQX2M \d_reg[12][15]  ( .D(\d[11][15] ), .CK(clk), .RN(n18), .Q(
        \d[12][15] ) );
  DFFRQX2M \d_reg[13][15]  ( .D(\d[12][15] ), .CK(clk), .RN(n20), .Q(
        \d[13][15] ) );
  DFFRQX2M \d_reg[14][15]  ( .D(\d[13][15] ), .CK(clk), .RN(n21), .Q(
        \d[14][15] ) );
  DFFRQX2M \d_reg[1][15]  ( .D(\d[0][15] ), .CK(clk), .RN(n5), .Q(\d[1][15] )
         );
  DFFRQX2M \d_reg[2][15]  ( .D(\d[1][15] ), .CK(clk), .RN(n6), .Q(\d[2][15] )
         );
  DFFRQX2M \d_reg[3][15]  ( .D(\d[2][15] ), .CK(clk), .RN(n7), .Q(\d[3][15] )
         );
  DFFRQX2M \d_reg[15][14]  ( .D(\d[14][14] ), .CK(clk), .RN(n22), .Q(
        \d[15][14] ) );
  DFFRQX2M \d_reg[15][13]  ( .D(\d[14][13] ), .CK(clk), .RN(n22), .Q(
        \d[15][13] ) );
  DFFRQX2M \d_reg[15][12]  ( .D(\d[14][12] ), .CK(clk), .RN(n22), .Q(
        \d[15][12] ) );
  DFFRQX2M \d_reg[15][11]  ( .D(\d[14][11] ), .CK(clk), .RN(n22), .Q(
        \d[15][11] ) );
  DFFRQX2M \d_reg[12][11]  ( .D(\d[11][11] ), .CK(clk), .RN(n19), .Q(
        \d[12][11] ) );
  DFFRQX2M \d_reg[12][10]  ( .D(\d[11][10] ), .CK(clk), .RN(n19), .Q(
        \d[12][10] ) );
  DFFRQX2M \d_reg[12][9]  ( .D(\d[11][9] ), .CK(clk), .RN(n19), .Q(\d[12][9] )
         );
  DFFRQX2M \d_reg[12][8]  ( .D(\d[11][8] ), .CK(clk), .RN(n19), .Q(\d[12][8] )
         );
  DFFRQX2M \d_reg[13][11]  ( .D(\d[12][11] ), .CK(clk), .RN(n20), .Q(
        \d[13][11] ) );
  DFFRQX2M \d_reg[13][10]  ( .D(\d[12][10] ), .CK(clk), .RN(n20), .Q(
        \d[13][10] ) );
  DFFRQX2M \d_reg[13][9]  ( .D(\d[12][9] ), .CK(clk), .RN(n20), .Q(\d[13][9] )
         );
  DFFRQX2M \d_reg[13][8]  ( .D(\d[12][8] ), .CK(clk), .RN(n20), .Q(\d[13][8] )
         );
  DFFRQX2M \d_reg[14][14]  ( .D(\d[13][14] ), .CK(clk), .RN(n21), .Q(
        \d[14][14] ) );
  DFFRQX2M \d_reg[14][13]  ( .D(\d[13][13] ), .CK(clk), .RN(n21), .Q(
        \d[14][13] ) );
  DFFRQX2M \d_reg[14][12]  ( .D(\d[13][12] ), .CK(clk), .RN(n21), .Q(
        \d[14][12] ) );
  DFFRQX2M \d_reg[14][11]  ( .D(\d[13][11] ), .CK(clk), .RN(n21), .Q(
        \d[14][11] ) );
  DFFRQX2M \d_reg[14][10]  ( .D(\d[13][10] ), .CK(clk), .RN(n21), .Q(
        \d[14][10] ) );
  DFFRQX2M \d_reg[0][14]  ( .D(data_in[14]), .CK(clk), .RN(n4), .Q(\d[0][14] )
         );
  DFFRQX2M \d_reg[0][13]  ( .D(data_in[13]), .CK(clk), .RN(n4), .Q(\d[0][13] )
         );
  DFFRQX2M \d_reg[0][12]  ( .D(data_in[12]), .CK(clk), .RN(n4), .Q(\d[0][12] )
         );
  DFFRQX2M \d_reg[0][11]  ( .D(data_in[11]), .CK(clk), .RN(n4), .Q(\d[0][11] )
         );
  DFFRQX2M \d_reg[1][14]  ( .D(\d[0][14] ), .CK(clk), .RN(n5), .Q(\d[1][14] )
         );
  DFFRQX2M \d_reg[1][13]  ( .D(\d[0][13] ), .CK(clk), .RN(n5), .Q(\d[1][13] )
         );
  DFFRQX2M \d_reg[1][12]  ( .D(\d[0][12] ), .CK(clk), .RN(n5), .Q(\d[1][12] )
         );
  DFFRQX2M \d_reg[1][11]  ( .D(\d[0][11] ), .CK(clk), .RN(n5), .Q(\d[1][11] )
         );
  DFFRQX2M \d_reg[1][10]  ( .D(\d[0][10] ), .CK(clk), .RN(n5), .Q(\d[1][10] )
         );
  DFFRQX2M \d_reg[2][12]  ( .D(\d[1][12] ), .CK(clk), .RN(n6), .Q(\d[2][12] )
         );
  DFFRQX2M \d_reg[2][11]  ( .D(\d[1][11] ), .CK(clk), .RN(n6), .Q(\d[2][11] )
         );
  DFFRQX2M \d_reg[2][10]  ( .D(\d[1][10] ), .CK(clk), .RN(n6), .Q(\d[2][10] )
         );
  DFFRQX2M \d_reg[2][9]  ( .D(\d[1][9] ), .CK(clk), .RN(n6), .Q(\d[2][9] ) );
  DFFRQX2M \d_reg[2][8]  ( .D(\d[1][8] ), .CK(clk), .RN(n7), .Q(\d[2][8] ) );
  DFFRQX2M \d_reg[3][11]  ( .D(\d[2][11] ), .CK(clk), .RN(n8), .Q(\d[3][11] )
         );
  DFFRQX2M \d_reg[3][10]  ( .D(\d[2][10] ), .CK(clk), .RN(n8), .Q(\d[3][10] )
         );
  DFFRQX2M \d_reg[3][9]  ( .D(\d[2][9] ), .CK(clk), .RN(n8), .Q(\d[3][9] ) );
  DFFRQX2M \d_reg[3][8]  ( .D(\d[2][8] ), .CK(clk), .RN(n8), .Q(\d[3][8] ) );
  DFFRQX2M \d_reg[10][15]  ( .D(\d[9][15] ), .CK(clk), .RN(n16), .Q(
        \d[10][15] ) );
  DFFRQX2M \d_reg[0][15]  ( .D(data_in[15]), .CK(clk), .RN(n4), .Q(\d[0][15] )
         );
  DFFRQX2M \d_reg[15][10]  ( .D(\d[14][10] ), .CK(clk), .RN(n22), .Q(
        \d[15][10] ) );
  DFFRQX2M \d_reg[15][9]  ( .D(\d[14][9] ), .CK(clk), .RN(n22), .Q(\d[15][9] )
         );
  DFFRQX2M \d_reg[15][8]  ( .D(\d[14][8] ), .CK(clk), .RN(n23), .Q(\d[15][8] )
         );
  DFFRQX2M \d_reg[15][7]  ( .D(\d[14][7] ), .CK(clk), .RN(n23), .Q(\d[15][7] )
         );
  DFFRQX2M \d_reg[15][6]  ( .D(\d[14][6] ), .CK(clk), .RN(n23), .Q(\d[15][6] )
         );
  DFFRQX2M \d_reg[9][14]  ( .D(\d[8][14] ), .CK(clk), .RN(n15), .Q(\d[9][14] )
         );
  DFFRQX2M \d_reg[10][14]  ( .D(\d[9][14] ), .CK(clk), .RN(n16), .Q(
        \d[10][14] ) );
  DFFRQX2M \d_reg[10][13]  ( .D(\d[9][13] ), .CK(clk), .RN(n16), .Q(
        \d[10][13] ) );
  DFFRQX2M \d_reg[10][12]  ( .D(\d[9][12] ), .CK(clk), .RN(n16), .Q(
        \d[10][12] ) );
  DFFRQX2M \d_reg[11][14]  ( .D(\d[10][14] ), .CK(clk), .RN(n17), .Q(
        \d[11][14] ) );
  DFFRQX2M \d_reg[12][7]  ( .D(\d[11][7] ), .CK(clk), .RN(n19), .Q(\d[12][7] )
         );
  DFFRQX2M \d_reg[12][6]  ( .D(\d[11][6] ), .CK(clk), .RN(n19), .Q(\d[12][6] )
         );
  DFFRQX2M \d_reg[12][5]  ( .D(\d[11][5] ), .CK(clk), .RN(n19), .Q(\d[12][5] )
         );
  DFFRQX2M \d_reg[12][4]  ( .D(\d[11][4] ), .CK(clk), .RN(n19), .Q(\d[12][4] )
         );
  DFFRQX2M \d_reg[12][3]  ( .D(\d[11][3] ), .CK(clk), .RN(n19), .Q(\d[12][3] )
         );
  DFFRQX2M \d_reg[13][7]  ( .D(\d[12][7] ), .CK(clk), .RN(n20), .Q(\d[13][7] )
         );
  DFFRQX2M \d_reg[13][6]  ( .D(\d[12][6] ), .CK(clk), .RN(n20), .Q(\d[13][6] )
         );
  DFFRQX2M \d_reg[13][5]  ( .D(\d[12][5] ), .CK(clk), .RN(n20), .Q(\d[13][5] )
         );
  DFFRQX2M \d_reg[13][4]  ( .D(\d[12][4] ), .CK(clk), .RN(n20), .Q(\d[13][4] )
         );
  DFFRQX2M \d_reg[14][9]  ( .D(\d[13][9] ), .CK(clk), .RN(n21), .Q(\d[14][9] )
         );
  DFFRQX2M \d_reg[14][8]  ( .D(\d[13][8] ), .CK(clk), .RN(n21), .Q(\d[14][8] )
         );
  DFFRQX2M \d_reg[14][7]  ( .D(\d[13][7] ), .CK(clk), .RN(n21), .Q(\d[14][7] )
         );
  DFFRQX2M \d_reg[14][6]  ( .D(\d[13][6] ), .CK(clk), .RN(n21), .Q(\d[14][6] )
         );
  DFFRQX2M \d_reg[8][14]  ( .D(\d[7][14] ), .CK(clk), .RN(n13), .Q(\d[8][14] )
         );
  DFFRQX2M \d_reg[8][13]  ( .D(\d[7][13] ), .CK(clk), .RN(n14), .Q(\d[8][13] )
         );
  DFFRQX2M \d_reg[8][12]  ( .D(\d[7][12] ), .CK(clk), .RN(n14), .Q(\d[8][12] )
         );
  DFFRQX2M \d_reg[0][10]  ( .D(data_in[10]), .CK(clk), .RN(n4), .Q(\d[0][10] )
         );
  DFFRQX2M \d_reg[0][9]  ( .D(data_in[9]), .CK(clk), .RN(n4), .Q(\d[0][9] ) );
  DFFRQX2M \d_reg[0][8]  ( .D(data_in[8]), .CK(clk), .RN(n4), .Q(\d[0][8] ) );
  DFFRQX2M \d_reg[0][7]  ( .D(data_in[7]), .CK(clk), .RN(n4), .Q(\d[0][7] ) );
  DFFRQX2M \d_reg[1][9]  ( .D(\d[0][9] ), .CK(clk), .RN(n5), .Q(\d[1][9] ) );
  DFFRQX2M \d_reg[1][8]  ( .D(\d[0][8] ), .CK(clk), .RN(n5), .Q(\d[1][8] ) );
  DFFRQX2M \d_reg[1][7]  ( .D(\d[0][7] ), .CK(clk), .RN(n5), .Q(\d[1][7] ) );
  DFFRQX2M \d_reg[1][6]  ( .D(\d[0][6] ), .CK(clk), .RN(n5), .Q(\d[1][6] ) );
  DFFRQX2M \d_reg[2][7]  ( .D(\d[1][7] ), .CK(clk), .RN(n7), .Q(\d[2][7] ) );
  DFFRQX2M \d_reg[2][6]  ( .D(\d[1][6] ), .CK(clk), .RN(n7), .Q(\d[2][6] ) );
  DFFRQX2M \d_reg[2][5]  ( .D(\d[1][5] ), .CK(clk), .RN(n7), .Q(\d[2][5] ) );
  DFFRQX2M \d_reg[2][4]  ( .D(\d[1][4] ), .CK(clk), .RN(n7), .Q(\d[2][4] ) );
  DFFRQX2M \d_reg[3][7]  ( .D(\d[2][7] ), .CK(clk), .RN(n8), .Q(\d[3][7] ) );
  DFFRQX2M \d_reg[3][6]  ( .D(\d[2][6] ), .CK(clk), .RN(n8), .Q(\d[3][6] ) );
  DFFRQX2M \d_reg[3][5]  ( .D(\d[2][5] ), .CK(clk), .RN(n8), .Q(\d[3][5] ) );
  DFFRQX2M \d_reg[3][4]  ( .D(\d[2][4] ), .CK(clk), .RN(n8), .Q(\d[3][4] ) );
  DFFRQX2M \d_reg[4][14]  ( .D(\d[3][14] ), .CK(clk), .RN(n9), .Q(\d[4][14] )
         );
  DFFRQX2M \d_reg[5][14]  ( .D(\d[4][14] ), .CK(clk), .RN(n10), .Q(\d[5][14] )
         );
  DFFRQX2M \d_reg[5][13]  ( .D(\d[4][13] ), .CK(clk), .RN(n10), .Q(\d[5][13] )
         );
  DFFRQX2M \d_reg[5][12]  ( .D(\d[4][12] ), .CK(clk), .RN(n10), .Q(\d[5][12] )
         );
  DFFRQX2M \d_reg[6][14]  ( .D(\d[5][14] ), .CK(clk), .RN(n11), .Q(\d[6][14] )
         );
  DFFRQX2M \d_reg[7][14]  ( .D(\d[6][14] ), .CK(clk), .RN(n12), .Q(\d[7][14] )
         );
  DFFRQX2M \d_reg[7][13]  ( .D(\d[6][13] ), .CK(clk), .RN(n12), .Q(\d[7][13] )
         );
  DFFRQX2M \d_reg[7][12]  ( .D(\d[6][12] ), .CK(clk), .RN(n12), .Q(\d[7][12] )
         );
  DFFRQX2M \d_reg[9][15]  ( .D(\d[8][15] ), .CK(clk), .RN(n15), .Q(\d[9][15] )
         );
  DFFRQX2M \d_reg[11][15]  ( .D(\d[10][15] ), .CK(clk), .RN(n17), .Q(
        \d[11][15] ) );
  DFFRQX2M \d_reg[8][15]  ( .D(\d[7][15] ), .CK(clk), .RN(n13), .Q(\d[8][15] )
         );
  DFFRQX2M \d_reg[4][15]  ( .D(\d[3][15] ), .CK(clk), .RN(n8), .Q(\d[4][15] )
         );
  DFFRQX2M \d_reg[5][15]  ( .D(\d[4][15] ), .CK(clk), .RN(n10), .Q(\d[5][15] )
         );
  DFFRQX2M \d_reg[6][15]  ( .D(\d[5][15] ), .CK(clk), .RN(n11), .Q(\d[6][15] )
         );
  DFFRQX2M \d_reg[7][15]  ( .D(\d[6][15] ), .CK(clk), .RN(n12), .Q(\d[7][15] )
         );
  DFFRQX2M \d_reg[15][5]  ( .D(\d[14][5] ), .CK(clk), .RN(n23), .Q(\d[15][5] )
         );
  DFFRQX2M \d_reg[15][4]  ( .D(\d[14][4] ), .CK(clk), .RN(n23), .Q(\d[15][4] )
         );
  DFFRQX2M \d_reg[15][3]  ( .D(\d[14][3] ), .CK(clk), .RN(n23), .Q(\d[15][3] )
         );
  DFFRQX2M \d_reg[15][2]  ( .D(\d[14][2] ), .CK(clk), .RN(n23), .Q(\d[15][2] )
         );
  DFFRQX2M \d_reg[9][13]  ( .D(\d[8][13] ), .CK(clk), .RN(n15), .Q(\d[9][13] )
         );
  DFFRQX2M \d_reg[9][12]  ( .D(\d[8][12] ), .CK(clk), .RN(n15), .Q(\d[9][12] )
         );
  DFFRQX2M \d_reg[9][11]  ( .D(\d[8][11] ), .CK(clk), .RN(n15), .Q(\d[9][11] )
         );
  DFFRQX2M \d_reg[9][10]  ( .D(\d[8][10] ), .CK(clk), .RN(n15), .Q(\d[9][10] )
         );
  DFFRQX2M \d_reg[10][11]  ( .D(\d[9][11] ), .CK(clk), .RN(n16), .Q(
        \d[10][11] ) );
  DFFRQX2M \d_reg[10][10]  ( .D(\d[9][10] ), .CK(clk), .RN(n16), .Q(
        \d[10][10] ) );
  DFFRQX2M \d_reg[10][9]  ( .D(\d[9][9] ), .CK(clk), .RN(n16), .Q(\d[10][9] )
         );
  DFFRQX2M \d_reg[11][13]  ( .D(\d[10][13] ), .CK(clk), .RN(n17), .Q(
        \d[11][13] ) );
  DFFRQX2M \d_reg[11][12]  ( .D(\d[10][12] ), .CK(clk), .RN(n17), .Q(
        \d[11][12] ) );
  DFFRQX2M \d_reg[11][11]  ( .D(\d[10][11] ), .CK(clk), .RN(n17), .Q(
        \d[11][11] ) );
  DFFRQX2M \d_reg[11][10]  ( .D(\d[10][10] ), .CK(clk), .RN(n17), .Q(
        \d[11][10] ) );
  DFFRQX2M \d_reg[12][2]  ( .D(\d[11][2] ), .CK(clk), .RN(n19), .Q(\d[12][2] )
         );
  DFFRQX2M \d_reg[12][1]  ( .D(\d[11][1] ), .CK(clk), .RN(n19), .Q(\d[12][1] )
         );
  DFFRQX2M \d_reg[13][3]  ( .D(\d[12][3] ), .CK(clk), .RN(n20), .Q(\d[13][3] )
         );
  DFFRQX2M \d_reg[13][2]  ( .D(\d[12][2] ), .CK(clk), .RN(n21), .Q(\d[13][2] )
         );
  DFFRQX2M \d_reg[13][1]  ( .D(\d[12][1] ), .CK(clk), .RN(n21), .Q(\d[13][1] )
         );
  DFFRQX2M \d_reg[14][5]  ( .D(\d[13][5] ), .CK(clk), .RN(n22), .Q(\d[14][5] )
         );
  DFFRQX2M \d_reg[14][4]  ( .D(\d[13][4] ), .CK(clk), .RN(n22), .Q(\d[14][4] )
         );
  DFFRQX2M \d_reg[14][3]  ( .D(\d[13][3] ), .CK(clk), .RN(n22), .Q(\d[14][3] )
         );
  DFFRQX2M \d_reg[14][2]  ( .D(\d[13][2] ), .CK(clk), .RN(n22), .Q(\d[14][2] )
         );
  DFFRQX2M \d_reg[14][1]  ( .D(\d[13][1] ), .CK(clk), .RN(n22), .Q(\d[14][1] )
         );
  DFFRQX2M \d_reg[8][11]  ( .D(\d[7][11] ), .CK(clk), .RN(n14), .Q(\d[8][11] )
         );
  DFFRQX2M \d_reg[8][10]  ( .D(\d[7][10] ), .CK(clk), .RN(n14), .Q(\d[8][10] )
         );
  DFFRQX2M \d_reg[8][9]  ( .D(\d[7][9] ), .CK(clk), .RN(n14), .Q(\d[8][9] ) );
  DFFRQX2M \d_reg[8][8]  ( .D(\d[7][8] ), .CK(clk), .RN(n14), .Q(\d[8][8] ) );
  DFFRQX2M \d_reg[0][6]  ( .D(data_in[6]), .CK(clk), .RN(n4), .Q(\d[0][6] ) );
  DFFRQX2M \d_reg[0][5]  ( .D(data_in[5]), .CK(clk), .RN(n4), .Q(\d[0][5] ) );
  DFFRQX2M \d_reg[0][4]  ( .D(data_in[4]), .CK(clk), .RN(n4), .Q(\d[0][4] ) );
  DFFRQX2M \d_reg[0][3]  ( .D(data_in[3]), .CK(clk), .RN(n4), .Q(\d[0][3] ) );
  DFFRQX2M \d_reg[0][2]  ( .D(data_in[2]), .CK(clk), .RN(n5), .Q(\d[0][2] ) );
  DFFRQX2M \d_reg[1][5]  ( .D(\d[0][5] ), .CK(clk), .RN(n6), .Q(\d[1][5] ) );
  DFFRQX2M \d_reg[1][4]  ( .D(\d[0][4] ), .CK(clk), .RN(n6), .Q(\d[1][4] ) );
  DFFRQX2M \d_reg[1][3]  ( .D(\d[0][3] ), .CK(clk), .RN(n6), .Q(\d[1][3] ) );
  DFFRQX2M \d_reg[1][2]  ( .D(\d[0][2] ), .CK(clk), .RN(n6), .Q(\d[1][2] ) );
  DFFRQX2M \d_reg[1][1]  ( .D(\d[0][1] ), .CK(clk), .RN(n6), .Q(\d[1][1] ) );
  DFFRQX2M \d_reg[2][3]  ( .D(\d[1][3] ), .CK(clk), .RN(n7), .Q(\d[2][3] ) );
  DFFRQX2M \d_reg[2][2]  ( .D(\d[1][2] ), .CK(clk), .RN(n7), .Q(\d[2][2] ) );
  DFFRQX2M \d_reg[2][1]  ( .D(\d[1][1] ), .CK(clk), .RN(n7), .Q(\d[2][1] ) );
  DFFRQX2M \d_reg[3][3]  ( .D(\d[2][3] ), .CK(clk), .RN(n8), .Q(\d[3][3] ) );
  DFFRQX2M \d_reg[3][2]  ( .D(\d[2][2] ), .CK(clk), .RN(n8), .Q(\d[3][2] ) );
  DFFRQX2M \d_reg[3][1]  ( .D(\d[2][1] ), .CK(clk), .RN(n8), .Q(\d[3][1] ) );
  DFFRQX2M \d_reg[4][13]  ( .D(\d[3][13] ), .CK(clk), .RN(n9), .Q(\d[4][13] )
         );
  DFFRQX2M \d_reg[4][12]  ( .D(\d[3][12] ), .CK(clk), .RN(n9), .Q(\d[4][12] )
         );
  DFFRQX2M \d_reg[4][11]  ( .D(\d[3][11] ), .CK(clk), .RN(n9), .Q(\d[4][11] )
         );
  DFFRQX2M \d_reg[4][10]  ( .D(\d[3][10] ), .CK(clk), .RN(n9), .Q(\d[4][10] )
         );
  DFFRQX2M \d_reg[5][11]  ( .D(\d[4][11] ), .CK(clk), .RN(n10), .Q(\d[5][11] )
         );
  DFFRQX2M \d_reg[5][10]  ( .D(\d[4][10] ), .CK(clk), .RN(n10), .Q(\d[5][10] )
         );
  DFFRQX2M \d_reg[5][9]  ( .D(\d[4][9] ), .CK(clk), .RN(n10), .Q(\d[5][9] ) );
  DFFRQX2M \d_reg[6][13]  ( .D(\d[5][13] ), .CK(clk), .RN(n11), .Q(\d[6][13] )
         );
  DFFRQX2M \d_reg[6][12]  ( .D(\d[5][12] ), .CK(clk), .RN(n11), .Q(\d[6][12] )
         );
  DFFRQX2M \d_reg[6][11]  ( .D(\d[5][11] ), .CK(clk), .RN(n11), .Q(\d[6][11] )
         );
  DFFRQX2M \d_reg[6][10]  ( .D(\d[5][10] ), .CK(clk), .RN(n11), .Q(\d[6][10] )
         );
  DFFRQX2M \d_reg[7][11]  ( .D(\d[6][11] ), .CK(clk), .RN(n12), .Q(\d[7][11] )
         );
  DFFRQX2M \d_reg[7][10]  ( .D(\d[6][10] ), .CK(clk), .RN(n13), .Q(\d[7][10] )
         );
  DFFRQX2M \d_reg[7][9]  ( .D(\d[6][9] ), .CK(clk), .RN(n13), .Q(\d[7][9] ) );
  DFFRQX2M \d_reg[7][8]  ( .D(\d[6][8] ), .CK(clk), .RN(n13), .Q(\d[7][8] ) );
  DFFRQX2M \d_reg[12][0]  ( .D(\d[11][0] ), .CK(clk), .RN(n19), .Q(\d[12][0] )
         );
  DFFRQX2M \d_reg[13][0]  ( .D(\d[12][0] ), .CK(clk), .RN(n21), .Q(\d[13][0] )
         );
  DFFRQX2M \d_reg[14][0]  ( .D(\d[13][0] ), .CK(clk), .RN(n22), .Q(\d[14][0] )
         );
  DFFRQX2M \d_reg[1][0]  ( .D(\d[0][0] ), .CK(clk), .RN(n6), .Q(\d[1][0] ) );
  DFFRQX2M \d_reg[2][0]  ( .D(\d[1][0] ), .CK(clk), .RN(n7), .Q(\d[2][0] ) );
  DFFRQX2M \d_reg[3][0]  ( .D(\d[2][0] ), .CK(clk), .RN(n8), .Q(\d[3][0] ) );
  DFFRQX2M \d_reg[15][1]  ( .D(\d[14][1] ), .CK(clk), .RN(n23), .Q(\d[15][1] )
         );
  DFFRQX2M \d_reg[9][9]  ( .D(\d[8][9] ), .CK(clk), .RN(n15), .Q(\d[9][9] ) );
  DFFRQX2M \d_reg[9][8]  ( .D(\d[8][8] ), .CK(clk), .RN(n15), .Q(\d[9][8] ) );
  DFFRQX2M \d_reg[9][7]  ( .D(\d[8][7] ), .CK(clk), .RN(n15), .Q(\d[9][7] ) );
  DFFRQX2M \d_reg[9][6]  ( .D(\d[8][6] ), .CK(clk), .RN(n15), .Q(\d[9][6] ) );
  DFFRQX2M \d_reg[9][5]  ( .D(\d[8][5] ), .CK(clk), .RN(n15), .Q(\d[9][5] ) );
  DFFRQX2M \d_reg[10][8]  ( .D(\d[9][8] ), .CK(clk), .RN(n16), .Q(\d[10][8] )
         );
  DFFRQX2M \d_reg[10][7]  ( .D(\d[9][7] ), .CK(clk), .RN(n16), .Q(\d[10][7] )
         );
  DFFRQX2M \d_reg[10][6]  ( .D(\d[9][6] ), .CK(clk), .RN(n17), .Q(\d[10][6] )
         );
  DFFRQX2M \d_reg[10][5]  ( .D(\d[9][5] ), .CK(clk), .RN(n17), .Q(\d[10][5] )
         );
  DFFRQX2M \d_reg[10][4]  ( .D(\d[9][4] ), .CK(clk), .RN(n17), .Q(\d[10][4] )
         );
  DFFRQX2M \d_reg[11][9]  ( .D(\d[10][9] ), .CK(clk), .RN(n18), .Q(\d[11][9] )
         );
  DFFRQX2M \d_reg[11][8]  ( .D(\d[10][8] ), .CK(clk), .RN(n18), .Q(\d[11][8] )
         );
  DFFRQX2M \d_reg[11][7]  ( .D(\d[10][7] ), .CK(clk), .RN(n18), .Q(\d[11][7] )
         );
  DFFRQX2M \d_reg[11][6]  ( .D(\d[10][6] ), .CK(clk), .RN(n18), .Q(\d[11][6] )
         );
  DFFRQX2M \d_reg[11][5]  ( .D(\d[10][5] ), .CK(clk), .RN(n18), .Q(\d[11][5] )
         );
  DFFRQX2M \d_reg[8][7]  ( .D(\d[7][7] ), .CK(clk), .RN(n14), .Q(\d[8][7] ) );
  DFFRQX2M \d_reg[8][6]  ( .D(\d[7][6] ), .CK(clk), .RN(n14), .Q(\d[8][6] ) );
  DFFRQX2M \d_reg[8][5]  ( .D(\d[7][5] ), .CK(clk), .RN(n14), .Q(\d[8][5] ) );
  DFFRQX2M \d_reg[8][4]  ( .D(\d[7][4] ), .CK(clk), .RN(n14), .Q(\d[8][4] ) );
  DFFRQX2M \d_reg[0][1]  ( .D(data_in[1]), .CK(clk), .RN(n5), .Q(\d[0][1] ) );
  DFFRQX2M \d_reg[4][9]  ( .D(\d[3][9] ), .CK(clk), .RN(n9), .Q(\d[4][9] ) );
  DFFRQX2M \d_reg[4][8]  ( .D(\d[3][8] ), .CK(clk), .RN(n9), .Q(\d[4][8] ) );
  DFFRQX2M \d_reg[4][7]  ( .D(\d[3][7] ), .CK(clk), .RN(n9), .Q(\d[4][7] ) );
  DFFRQX2M \d_reg[4][6]  ( .D(\d[3][6] ), .CK(clk), .RN(n9), .Q(\d[4][6] ) );
  DFFRQX2M \d_reg[5][8]  ( .D(\d[4][8] ), .CK(clk), .RN(n10), .Q(\d[5][8] ) );
  DFFRQX2M \d_reg[5][7]  ( .D(\d[4][7] ), .CK(clk), .RN(n10), .Q(\d[5][7] ) );
  DFFRQX2M \d_reg[5][6]  ( .D(\d[4][6] ), .CK(clk), .RN(n10), .Q(\d[5][6] ) );
  DFFRQX2M \d_reg[5][5]  ( .D(\d[4][5] ), .CK(clk), .RN(n10), .Q(\d[5][5] ) );
  DFFRQX2M \d_reg[6][9]  ( .D(\d[5][9] ), .CK(clk), .RN(n11), .Q(\d[6][9] ) );
  DFFRQX2M \d_reg[6][8]  ( .D(\d[5][8] ), .CK(clk), .RN(n11), .Q(\d[6][8] ) );
  DFFRQX2M \d_reg[6][7]  ( .D(\d[5][7] ), .CK(clk), .RN(n12), .Q(\d[6][7] ) );
  DFFRQX2M \d_reg[6][6]  ( .D(\d[5][6] ), .CK(clk), .RN(n12), .Q(\d[6][6] ) );
  DFFRQX2M \d_reg[6][5]  ( .D(\d[5][5] ), .CK(clk), .RN(n12), .Q(\d[6][5] ) );
  DFFRQX2M \d_reg[7][7]  ( .D(\d[6][7] ), .CK(clk), .RN(n13), .Q(\d[7][7] ) );
  DFFRQX2M \d_reg[7][6]  ( .D(\d[6][6] ), .CK(clk), .RN(n13), .Q(\d[7][6] ) );
  DFFRQX2M \d_reg[7][5]  ( .D(\d[6][5] ), .CK(clk), .RN(n13), .Q(\d[7][5] ) );
  DFFRQX2M \d_reg[7][4]  ( .D(\d[6][4] ), .CK(clk), .RN(n13), .Q(\d[7][4] ) );
  DFFRQX2M \d_reg[15][0]  ( .D(\d[14][0] ), .CK(clk), .RN(n23), .Q(\d[15][0] )
         );
  DFFRQX2M \d_reg[0][0]  ( .D(data_in[0]), .CK(clk), .RN(n5), .Q(\d[0][0] ) );
  DFFRQX2M \d_reg[9][4]  ( .D(\d[8][4] ), .CK(clk), .RN(n15), .Q(\d[9][4] ) );
  DFFRQX2M \d_reg[9][3]  ( .D(\d[8][3] ), .CK(clk), .RN(n16), .Q(\d[9][3] ) );
  DFFRQX2M \d_reg[9][2]  ( .D(\d[8][2] ), .CK(clk), .RN(n16), .Q(\d[9][2] ) );
  DFFRQX2M \d_reg[9][1]  ( .D(\d[8][1] ), .CK(clk), .RN(n16), .Q(\d[9][1] ) );
  DFFRQX2M \d_reg[10][3]  ( .D(\d[9][3] ), .CK(clk), .RN(n17), .Q(\d[10][3] )
         );
  DFFRQX2M \d_reg[10][2]  ( .D(\d[9][2] ), .CK(clk), .RN(n17), .Q(\d[10][2] )
         );
  DFFRQX2M \d_reg[10][1]  ( .D(\d[9][1] ), .CK(clk), .RN(n17), .Q(\d[10][1] )
         );
  DFFRQX2M \d_reg[11][4]  ( .D(\d[10][4] ), .CK(clk), .RN(n18), .Q(\d[11][4] )
         );
  DFFRQX2M \d_reg[11][3]  ( .D(\d[10][3] ), .CK(clk), .RN(n18), .Q(\d[11][3] )
         );
  DFFRQX2M \d_reg[11][2]  ( .D(\d[10][2] ), .CK(clk), .RN(n18), .Q(\d[11][2] )
         );
  DFFRQX2M \d_reg[11][1]  ( .D(\d[10][1] ), .CK(clk), .RN(n18), .Q(\d[11][1] )
         );
  DFFRQX2M \d_reg[8][3]  ( .D(\d[7][3] ), .CK(clk), .RN(n14), .Q(\d[8][3] ) );
  DFFRQX2M \d_reg[8][2]  ( .D(\d[7][2] ), .CK(clk), .RN(n14), .Q(\d[8][2] ) );
  DFFRQX2M \d_reg[8][1]  ( .D(\d[7][1] ), .CK(clk), .RN(n14), .Q(\d[8][1] ) );
  DFFRQX2M \d_reg[4][5]  ( .D(\d[3][5] ), .CK(clk), .RN(n9), .Q(\d[4][5] ) );
  DFFRQX2M \d_reg[4][4]  ( .D(\d[3][4] ), .CK(clk), .RN(n9), .Q(\d[4][4] ) );
  DFFRQX2M \d_reg[4][3]  ( .D(\d[3][3] ), .CK(clk), .RN(n9), .Q(\d[4][3] ) );
  DFFRQX2M \d_reg[4][2]  ( .D(\d[3][2] ), .CK(clk), .RN(n9), .Q(\d[4][2] ) );
  DFFRQX2M \d_reg[4][1]  ( .D(\d[3][1] ), .CK(clk), .RN(n10), .Q(\d[4][1] ) );
  DFFRQX2M \d_reg[5][4]  ( .D(\d[4][4] ), .CK(clk), .RN(n11), .Q(\d[5][4] ) );
  DFFRQX2M \d_reg[5][3]  ( .D(\d[4][3] ), .CK(clk), .RN(n11), .Q(\d[5][3] ) );
  DFFRQX2M \d_reg[5][2]  ( .D(\d[4][2] ), .CK(clk), .RN(n11), .Q(\d[5][2] ) );
  DFFRQX2M \d_reg[5][1]  ( .D(\d[4][1] ), .CK(clk), .RN(n11), .Q(\d[5][1] ) );
  DFFRQX2M \d_reg[6][4]  ( .D(\d[5][4] ), .CK(clk), .RN(n12), .Q(\d[6][4] ) );
  DFFRQX2M \d_reg[6][3]  ( .D(\d[5][3] ), .CK(clk), .RN(n12), .Q(\d[6][3] ) );
  DFFRQX2M \d_reg[6][2]  ( .D(\d[5][2] ), .CK(clk), .RN(n12), .Q(\d[6][2] ) );
  DFFRQX2M \d_reg[6][1]  ( .D(\d[5][1] ), .CK(clk), .RN(n12), .Q(\d[6][1] ) );
  DFFRQX2M \d_reg[7][3]  ( .D(\d[6][3] ), .CK(clk), .RN(n13), .Q(\d[7][3] ) );
  DFFRQX2M \d_reg[7][2]  ( .D(\d[6][2] ), .CK(clk), .RN(n13), .Q(\d[7][2] ) );
  DFFRQX2M \d_reg[7][1]  ( .D(\d[6][1] ), .CK(clk), .RN(n13), .Q(\d[7][1] ) );
  DFFRQX2M \d_reg[8][0]  ( .D(\d[7][0] ), .CK(clk), .RN(n15), .Q(\d[8][0] ) );
  DFFRQX2M \d_reg[9][0]  ( .D(\d[8][0] ), .CK(clk), .RN(n16), .Q(\d[9][0] ) );
  DFFRQX2M \d_reg[10][0]  ( .D(\d[9][0] ), .CK(clk), .RN(n17), .Q(\d[10][0] )
         );
  DFFRQX2M \d_reg[11][0]  ( .D(\d[10][0] ), .CK(clk), .RN(n18), .Q(\d[11][0] )
         );
  DFFRQX2M \d_reg[4][0]  ( .D(\d[3][0] ), .CK(clk), .RN(n10), .Q(\d[4][0] ) );
  DFFRQX2M \d_reg[5][0]  ( .D(\d[4][0] ), .CK(clk), .RN(n11), .Q(\d[5][0] ) );
  DFFRQX2M \d_reg[6][0]  ( .D(\d[5][0] ), .CK(clk), .RN(n12), .Q(\d[6][0] ) );
  DFFRQX2M \d_reg[7][0]  ( .D(\d[6][0] ), .CK(clk), .RN(n13), .Q(\d[7][0] ) );
  DFFRQX2M \even_out_reg[15]  ( .D(acc[24]), .CK(clk), .RN(n24), .Q(
        even_out[15]) );
  DFFRQX2M \odd_out_reg[15]  ( .D(\d[8][15] ), .CK(clk), .RN(n23), .Q(
        odd_out[15]) );
  DFFRQX2M \even_out_reg[14]  ( .D(acc[23]), .CK(clk), .RN(n25), .Q(
        even_out[14]) );
  DFFRQX2M \even_out_reg[13]  ( .D(acc[22]), .CK(clk), .RN(n25), .Q(
        even_out[13]) );
  DFFRQX2M \even_out_reg[12]  ( .D(acc[21]), .CK(clk), .RN(n25), .Q(
        even_out[12]) );
  DFFRQX2M \odd_out_reg[14]  ( .D(\d[8][15] ), .CK(clk), .RN(n23), .Q(
        odd_out[14]) );
  DFFRQX2M \odd_out_reg[13]  ( .D(\d[8][14] ), .CK(clk), .RN(n23), .Q(
        odd_out[13]) );
  DFFRQX2M \odd_out_reg[12]  ( .D(\d[8][13] ), .CK(clk), .RN(n23), .Q(
        odd_out[12]) );
  DFFRQX2M \even_out_reg[11]  ( .D(acc[20]), .CK(clk), .RN(n25), .Q(
        even_out[11]) );
  DFFRQX2M \even_out_reg[10]  ( .D(acc[19]), .CK(clk), .RN(n25), .Q(
        even_out[10]) );
  DFFRQX2M \even_out_reg[8]  ( .D(acc[17]), .CK(clk), .RN(n25), .Q(even_out[8]) );
  DFFRQX2M \odd_out_reg[11]  ( .D(\d[8][12] ), .CK(clk), .RN(n24), .Q(
        odd_out[11]) );
  DFFRQX2M \odd_out_reg[10]  ( .D(\d[8][11] ), .CK(clk), .RN(n24), .Q(
        odd_out[10]) );
  DFFRQX2M \odd_out_reg[8]  ( .D(\d[8][9] ), .CK(clk), .RN(n24), .Q(odd_out[8]) );
  DFFRQX2M \even_out_reg[9]  ( .D(acc[18]), .CK(clk), .RN(n25), .Q(even_out[9]) );
  DFFRQX2M \odd_out_reg[9]  ( .D(\d[8][10] ), .CK(clk), .RN(n24), .Q(
        odd_out[9]) );
  DFFRQX2M \even_out_reg[7]  ( .D(acc[16]), .CK(clk), .RN(n25), .Q(even_out[7]) );
  DFFRQX2M \even_out_reg[6]  ( .D(acc[15]), .CK(clk), .RN(n25), .Q(even_out[6]) );
  DFFRQX2M \odd_out_reg[7]  ( .D(\d[8][8] ), .CK(clk), .RN(n24), .Q(odd_out[7]) );
  DFFRQX2M \odd_out_reg[6]  ( .D(\d[8][7] ), .CK(clk), .RN(n24), .Q(odd_out[6]) );
  DFFRQX2M \even_out_reg[4]  ( .D(acc[13]), .CK(clk), .RN(n25), .Q(even_out[4]) );
  DFFRQX2M \odd_out_reg[4]  ( .D(\d[8][5] ), .CK(clk), .RN(n24), .Q(odd_out[4]) );
  DFFRHQX1M \even_out_reg[1]  ( .D(acc[10]), .CK(clk), .RN(n26), .Q(
        even_out[1]) );
  DFFRHQX1M \odd_out_reg[1]  ( .D(\d[8][2] ), .CK(clk), .RN(n24), .Q(
        odd_out[1]) );
  DFFRHQX1M \even_out_reg[3]  ( .D(acc[12]), .CK(clk), .RN(n25), .Q(
        even_out[3]) );
  DFFRHQX1M \odd_out_reg[3]  ( .D(\d[8][4] ), .CK(clk), .RN(n24), .Q(
        odd_out[3]) );
  DFFRQX1M \odd_out_reg[2]  ( .D(\d[8][3] ), .CK(clk), .RN(reset), .Q(
        odd_out[2]) );
  DFFRQX1M \odd_out_reg[0]  ( .D(\d[8][1] ), .CK(clk), .RN(n24), .Q(odd_out[0]) );
  DFFRQX1M \even_out_reg[2]  ( .D(acc[11]), .CK(clk), .RN(n25), .Q(even_out[2]) );
  DFFRQX1M \odd_out_reg[5]  ( .D(\d[8][6] ), .CK(clk), .RN(reset), .Q(
        odd_out[5]) );
  DFFRQX2M \even_out_reg[0]  ( .D(acc[9]), .CK(clk), .RN(n26), .Q(even_out[0])
         );
  DFFRQX2M \even_out_reg[5]  ( .D(acc[14]), .CK(clk), .RN(n25), .Q(even_out[5]) );
  BUFX2M U6 ( .A(n27), .Y(n25) );
  BUFX2M U7 ( .A(n27), .Y(n24) );
  BUFX2M U8 ( .A(n28), .Y(n23) );
  BUFX2M U9 ( .A(n28), .Y(n22) );
  BUFX2M U10 ( .A(n28), .Y(n21) );
  BUFX2M U11 ( .A(n29), .Y(n20) );
  BUFX2M U12 ( .A(n29), .Y(n19) );
  BUFX2M U13 ( .A(n29), .Y(n18) );
  BUFX2M U14 ( .A(n30), .Y(n17) );
  BUFX2M U15 ( .A(n30), .Y(n16) );
  BUFX2M U16 ( .A(n30), .Y(n15) );
  BUFX2M U17 ( .A(n31), .Y(n14) );
  BUFX2M U18 ( .A(n31), .Y(n13) );
  BUFX2M U19 ( .A(n31), .Y(n12) );
  BUFX2M U20 ( .A(n32), .Y(n11) );
  BUFX2M U21 ( .A(n32), .Y(n10) );
  BUFX2M U22 ( .A(n32), .Y(n9) );
  BUFX2M U23 ( .A(n33), .Y(n8) );
  BUFX2M U24 ( .A(n33), .Y(n7) );
  BUFX2M U25 ( .A(n33), .Y(n6) );
  BUFX2M U26 ( .A(n34), .Y(n5) );
  BUFX2M U27 ( .A(n34), .Y(n4) );
  BUFX2M U28 ( .A(n27), .Y(n26) );
  BUFX2M U29 ( .A(n37), .Y(n27) );
  BUFX2M U30 ( .A(n37), .Y(n28) );
  BUFX2M U31 ( .A(n36), .Y(n29) );
  BUFX2M U32 ( .A(n36), .Y(n30) );
  BUFX2M U33 ( .A(n36), .Y(n31) );
  BUFX2M U34 ( .A(n35), .Y(n32) );
  BUFX2M U35 ( .A(n35), .Y(n33) );
  BUFX2M U36 ( .A(n35), .Y(n34) );
  BUFX2M U37 ( .A(reset), .Y(n36) );
  BUFX2M U38 ( .A(reset), .Y(n35) );
  BUFX2M U39 ( .A(reset), .Y(n37) );
endmodule


module counter_0 ( clk, reset, SEL );
  input clk, reset;
  output SEL;
  wire   n2;

  DFFRHQX2M SEL_reg ( .D(n2), .CK(clk), .RN(reset), .Q(SEL) );
  INVXLM U3 ( .A(SEL), .Y(n2) );
endmodule


module up4_filter_0_DW01_add_31 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145;

  NAND2XLM U2 ( .A(B[17]), .B(A[17]), .Y(n50) );
  OR2X2M U3 ( .A(B[10]), .B(A[10]), .Y(n90) );
  OR2X2M U4 ( .A(B[5]), .B(A[5]), .Y(n31) );
  OR2X2M U5 ( .A(B[12]), .B(A[12]), .Y(n93) );
  OR2X2M U6 ( .A(B[13]), .B(A[13]), .Y(n94) );
  AOI2B1X1M U7 ( .A1N(n74), .A0(n65), .B0(n8), .Y(n72) );
  AOI2B1X1M U8 ( .A1N(n7), .A0(n101), .B0(n102), .Y(n99) );
  NAND3X2M U9 ( .A(n116), .B(n90), .C(n91), .Y(n82) );
  OR2X2M U10 ( .A(B[11]), .B(A[11]), .Y(n91) );
  XNOR2X2M U11 ( .A(n1), .B(n13), .Y(SUM[9]) );
  XNOR2X2M U12 ( .A(n101), .B(n104), .Y(SUM[14]) );
  AND2X2M U13 ( .A(n130), .B(n18), .Y(n1) );
  AND2X2M U14 ( .A(n57), .B(n58), .Y(n2) );
  AND2X2M U15 ( .A(n96), .B(n97), .Y(n7) );
  INVXLM U16 ( .A(B[3]), .Y(n137) );
  INVX3M U17 ( .A(B[14]), .Y(n96) );
  AND2X1M U18 ( .A(B[2]), .B(A[2]), .Y(n11) );
  NOR2XLM U19 ( .A(B[2]), .B(A[2]), .Y(n12) );
  NOR2X1M U20 ( .A(B[15]), .B(A[15]), .Y(n8) );
  CLKNAND2X2M U21 ( .A(B[15]), .B(A[15]), .Y(n67) );
  NAND2X2M U22 ( .A(n70), .B(n57), .Y(n71) );
  INVXLM U23 ( .A(n93), .Y(n114) );
  NAND2X1M U24 ( .A(n98), .B(n105), .Y(n101) );
  XNOR2X4M U25 ( .A(B[21]), .B(n36), .Y(n35) );
  INVXLM U26 ( .A(A[20]), .Y(n41) );
  INVXLM U27 ( .A(n38), .Y(n39) );
  NAND2XLM U28 ( .A(n78), .B(n79), .Y(n76) );
  NAND2X2M U29 ( .A(n46), .B(n47), .Y(n44) );
  NAND2XLM U30 ( .A(n58), .B(n57), .Y(n61) );
  NAND2X1M U31 ( .A(B[14]), .B(A[14]), .Y(n68) );
  NAND2XLM U32 ( .A(B[7]), .B(A[7]), .Y(n143) );
  INVX3M U33 ( .A(A[21]), .Y(n36) );
  NAND2XLM U34 ( .A(n50), .B(n59), .Y(n60) );
  NOR2BX1M U35 ( .AN(n84), .B(n114), .Y(n113) );
  INVX1M U36 ( .A(n126), .Y(n128) );
  OR2X2M U37 ( .A(n72), .B(n73), .Y(n3) );
  NAND3X2M U38 ( .A(n115), .B(n83), .C(n82), .Y(n111) );
  INVXLM U39 ( .A(n19), .Y(n121) );
  NAND2X2M U40 ( .A(n62), .B(n63), .Y(n58) );
  AND2X1M U41 ( .A(n67), .B(n68), .Y(n66) );
  NAND2X2M U42 ( .A(n110), .B(n84), .Y(n106) );
  NAND2X2M U43 ( .A(n96), .B(n97), .Y(n103) );
  NAND2BX2M U44 ( .AN(n77), .B(n85), .Y(n78) );
  NAND2BX2M U45 ( .AN(n120), .B(n119), .Y(n132) );
  CLKNAND2X2M U46 ( .A(n48), .B(n49), .Y(n47) );
  NOR2X1M U47 ( .A(n4), .B(n51), .Y(n48) );
  NAND2X2M U48 ( .A(n64), .B(n68), .Y(n74) );
  INVX2M U49 ( .A(n70), .Y(n69) );
  INVXLM U50 ( .A(n91), .Y(n124) );
  NAND2X2M U51 ( .A(n140), .B(n141), .Y(n89) );
  NOR2BXLM U52 ( .AN(n84), .B(n80), .Y(n79) );
  INVXLM U53 ( .A(n83), .Y(n81) );
  XNOR2X2M U54 ( .A(n45), .B(n44), .Y(SUM[19]) );
  NAND2X1M U55 ( .A(n43), .B(n42), .Y(n45) );
  NAND2XLM U56 ( .A(B[18]), .B(A[18]), .Y(n46) );
  OAI21X2M U57 ( .A0(n135), .A1(n144), .B0(n145), .Y(n30) );
  NAND2XLM U58 ( .A(A[4]), .B(B[4]), .Y(n144) );
  NAND2XLM U59 ( .A(B[6]), .B(A[6]), .Y(n27) );
  OR2X1M U60 ( .A(B[6]), .B(A[6]), .Y(n88) );
  XNOR2X2M U61 ( .A(n3), .B(n71), .Y(SUM[16]) );
  NOR2X1M U62 ( .A(n55), .B(n56), .Y(n52) );
  AOI2B1XLM U63 ( .A1N(n125), .A0(n126), .B0(n127), .Y(n122) );
  NOR2BXLM U64 ( .AN(n14), .B(n15), .Y(n13) );
  INVXLM U65 ( .A(n25), .Y(n28) );
  OR2X1M U66 ( .A(B[19]), .B(A[19]), .Y(n42) );
  OAI211XLM U67 ( .A0(n15), .A1(n18), .B0(n14), .C0(n117), .Y(n116) );
  NAND2XLM U68 ( .A(n120), .B(n23), .Y(n87) );
  NAND3XLM U69 ( .A(n93), .B(n94), .C(n95), .Y(n75) );
  NAND2XLM U70 ( .A(B[19]), .B(A[19]), .Y(n43) );
  NAND2XLM U71 ( .A(n2), .B(n50), .Y(n49) );
  NAND4XLM U72 ( .A(n90), .B(n91), .C(n92), .D(n19), .Y(n77) );
  NAND2XLM U73 ( .A(B[5]), .B(A[5]), .Y(n145) );
  NAND2XLM U74 ( .A(B[8]), .B(A[8]), .Y(n18) );
  NAND2XLM U75 ( .A(B[9]), .B(A[9]), .Y(n14) );
  NAND2X2M U76 ( .A(B[10]), .B(A[10]), .Y(n117) );
  NOR2BX2M U77 ( .AN(n54), .B(A[18]), .Y(n4) );
  NAND2XLM U78 ( .A(B[11]), .B(A[11]), .Y(n83) );
  NAND2X2M U79 ( .A(B[12]), .B(A[12]), .Y(n84) );
  NAND2X1M U80 ( .A(B[13]), .B(A[13]), .Y(n98) );
  CLKNAND2X2M U81 ( .A(n30), .B(n88), .Y(n142) );
  OR2X1M U82 ( .A(B[8]), .B(A[8]), .Y(n19) );
  OA21X2M U83 ( .A0(n136), .A1(n137), .B0(n138), .Y(n5) );
  OR2X2M U84 ( .A(B[4]), .B(A[4]), .Y(n32) );
  OR2X1M U85 ( .A(B[17]), .B(A[17]), .Y(n59) );
  OAI2BB1X2M U86 ( .A0N(n42), .A1N(n44), .B0(n43), .Y(n38) );
  NOR2X2M U87 ( .A(n51), .B(n2), .Y(n55) );
  NAND2X2M U88 ( .A(n87), .B(n119), .Y(n17) );
  OAI21X2M U89 ( .A0(n1), .A1(n15), .B0(n14), .Y(n126) );
  XNOR2X2M U90 ( .A(n122), .B(n123), .Y(SUM[11]) );
  NOR2BX2M U91 ( .AN(n83), .B(n124), .Y(n123) );
  XNOR2X2M U92 ( .A(n128), .B(n129), .Y(SUM[10]) );
  NOR2BX2M U93 ( .AN(n117), .B(n125), .Y(n129) );
  XNOR2X2M U94 ( .A(n16), .B(n17), .Y(SUM[8]) );
  NAND2X2M U95 ( .A(n18), .B(n19), .Y(n16) );
  NAND3X2M U96 ( .A(n64), .B(n65), .C(n66), .Y(n63) );
  NOR2X2M U97 ( .A(n69), .B(n8), .Y(n62) );
  NAND3X2M U98 ( .A(n89), .B(n33), .C(n133), .Y(n119) );
  NOR3X2M U99 ( .A(n24), .B(n134), .C(n135), .Y(n133) );
  INVX2M U100 ( .A(n32), .Y(n134) );
  XNOR2X2M U101 ( .A(n52), .B(n53), .Y(SUM[18]) );
  NOR2BX2M U102 ( .AN(n46), .B(n4), .Y(n53) );
  INVXLM U103 ( .A(n50), .Y(n56) );
  INVX2M U104 ( .A(n88), .Y(n24) );
  NAND2BX2M U105 ( .AN(n131), .B(n132), .Y(n130) );
  NAND2X2M U106 ( .A(n19), .B(n23), .Y(n131) );
  AO21XLM U107 ( .A0(n33), .A1(n6), .B0(n30), .Y(n25) );
  AND2X2M U108 ( .A(n31), .B(n32), .Y(n6) );
  XNOR2X2M U109 ( .A(n99), .B(n100), .Y(SUM[15]) );
  NOR2BX2M U110 ( .AN(n67), .B(n8), .Y(n100) );
  INVX2M U111 ( .A(n68), .Y(n102) );
  XNOR2X2M U112 ( .A(n112), .B(n113), .Y(SUM[12]) );
  INVX2M U113 ( .A(n111), .Y(n112) );
  XNOR2X2M U114 ( .A(n60), .B(n61), .Y(SUM[17]) );
  NAND2BX2M U115 ( .AN(n81), .B(n82), .Y(n80) );
  INVX2M U116 ( .A(n92), .Y(n15) );
  NAND4XLM U117 ( .A(n118), .B(n17), .C(n90), .D(n91), .Y(n115) );
  NOR2XLM U118 ( .A(n15), .B(n121), .Y(n118) );
  XNOR2X2M U119 ( .A(n28), .B(n29), .Y(SUM[6]) );
  NOR2BXLM U120 ( .AN(n27), .B(n24), .Y(n29) );
  INVX2M U121 ( .A(A[7]), .Y(n141) );
  CLKNAND2X2M U122 ( .A(n140), .B(n141), .Y(n23) );
  NAND2X2M U123 ( .A(n106), .B(n94), .Y(n105) );
  INVX2M U124 ( .A(A[14]), .Y(n97) );
  NAND2BX2M U125 ( .AN(n75), .B(n76), .Y(n65) );
  OR2X2M U126 ( .A(n98), .B(n7), .Y(n64) );
  NAND2XLM U127 ( .A(n111), .B(n93), .Y(n110) );
  INVX2M U128 ( .A(n27), .Y(n26) );
  INVX2M U129 ( .A(n31), .Y(n135) );
  INVX2M U130 ( .A(n90), .Y(n125) );
  NAND2XLM U131 ( .A(n96), .B(n97), .Y(n95) );
  INVX2M U132 ( .A(n59), .Y(n51) );
  XNOR2X2M U133 ( .A(n107), .B(n108), .Y(SUM[13]) );
  INVXLM U134 ( .A(n106), .Y(n107) );
  NOR2BX2M U135 ( .AN(n98), .B(n109), .Y(n108) );
  INVX2M U136 ( .A(n94), .Y(n109) );
  INVX2M U137 ( .A(n117), .Y(n127) );
  INVX2M U138 ( .A(n67), .Y(n73) );
  NAND2XLM U139 ( .A(n103), .B(n68), .Y(n104) );
  OAI21XLM U140 ( .A0(n5), .A1(n86), .B0(n87), .Y(n85) );
  NAND4XLM U141 ( .A(n88), .B(n89), .C(n31), .D(n32), .Y(n86) );
  INVX2M U142 ( .A(n5), .Y(n33) );
  NAND3X2M U143 ( .A(n142), .B(n27), .C(n143), .Y(n120) );
  OR2X2M U144 ( .A(B[16]), .B(A[16]), .Y(n70) );
  INVX2M U145 ( .A(B[18]), .Y(n54) );
  NAND2X2M U146 ( .A(B[16]), .B(A[16]), .Y(n57) );
  XNOR2X2M U147 ( .A(n20), .B(n21), .Y(SUM[7]) );
  AOI21XLM U148 ( .A0(B[7]), .A1(A[7]), .B0(n22), .Y(n21) );
  AOI2B1XLM U149 ( .A1N(n24), .A0(n25), .B0(n26), .Y(n20) );
  INVXLM U150 ( .A(n23), .Y(n22) );
  OR2X2M U151 ( .A(B[9]), .B(A[9]), .Y(n92) );
  INVX2M U152 ( .A(B[7]), .Y(n140) );
  NAND2X2M U153 ( .A(n139), .B(n11), .Y(n138) );
  NOR2X2M U154 ( .A(n12), .B(n9), .Y(n139) );
  INVX2M U155 ( .A(A[3]), .Y(n136) );
  AND2X2M U156 ( .A(n137), .B(n136), .Y(n9) );
  XNOR2X2M U157 ( .A(n34), .B(n35), .Y(SUM[21]) );
  AOI2B1X1M U158 ( .A1N(n37), .A0(n38), .B0(n10), .Y(n34) );
  XNOR2X2M U159 ( .A(n39), .B(n40), .Y(SUM[20]) );
  XNOR2X2M U160 ( .A(B[21]), .B(n41), .Y(n40) );
  NOR2XLM U161 ( .A(A[20]), .B(B[21]), .Y(n37) );
  AND2X1M U162 ( .A(B[21]), .B(A[20]), .Y(n10) );
endmodule


module up4_filter_0_DW01_add_23 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108;

  MXI2X1M U2 ( .A(n4), .B(n5), .S0(n3), .Y(SUM[20]) );
  AND2X2M U3 ( .A(n104), .B(n23), .Y(n1) );
  NAND2XLM U4 ( .A(B[9]), .B(A[9]), .Y(n12) );
  OR2X1M U5 ( .A(B[9]), .B(A[9]), .Y(n90) );
  OR2X1M U6 ( .A(B[8]), .B(A[8]), .Y(n94) );
  NAND2XLM U7 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NAND2XLM U8 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OR2X1M U9 ( .A(B[7]), .B(A[7]), .Y(n23) );
  INVXLM U10 ( .A(n30), .Y(n24) );
  NAND2X1M U11 ( .A(n33), .B(n34), .Y(n31) );
  CLKINVX2M U12 ( .A(n38), .Y(n36) );
  INVXLM U13 ( .A(n99), .Y(n101) );
  AOI2B1XLM U14 ( .A1N(n57), .A0(n71), .B0(n59), .Y(n68) );
  INVX2M U15 ( .A(n82), .Y(n65) );
  XNOR2X2M U16 ( .A(n68), .B(n69), .Y(SUM[15]) );
  AOI2B1X1M U17 ( .A1N(n98), .A0(n99), .B0(n100), .Y(n95) );
  INVXLM U18 ( .A(n86), .Y(n97) );
  INVXLM U19 ( .A(n80), .Y(n83) );
  INVX2M U20 ( .A(n71), .Y(n73) );
  NAND2X1M U21 ( .A(n103), .B(n12), .Y(n99) );
  NAND2BX1M U22 ( .AN(n65), .B(n79), .Y(n77) );
  NAND2XLM U23 ( .A(n80), .B(n81), .Y(n79) );
  XOR2X2M U24 ( .A(n39), .B(n5), .Y(SUM[19]) );
  CLKINVX2M U25 ( .A(n37), .Y(n33) );
  NAND2XLM U26 ( .A(B[17]), .B(A[21]), .Y(n47) );
  NAND2BX1M U27 ( .AN(B[14]), .B(n76), .Y(n75) );
  INVXLM U28 ( .A(A[14]), .Y(n76) );
  NAND2BX1M U29 ( .AN(B[4]), .B(n108), .Y(n38) );
  OAI21XLM U30 ( .A0(n15), .A1(n66), .B0(n67), .Y(n80) );
  INVXLM U31 ( .A(n14), .Y(n10) );
  XNOR2XLM U32 ( .A(n15), .B(n16), .Y(SUM[8]) );
  NOR2BX1M U33 ( .AN(n17), .B(n18), .Y(n16) );
  NOR2BXLM U34 ( .AN(n21), .B(n22), .Y(n20) );
  INVX1M U35 ( .A(n23), .Y(n22) );
  NAND2XLM U36 ( .A(n34), .B(n32), .Y(n35) );
  NAND2BXLM U37 ( .AN(n13), .B(n14), .Y(n103) );
  NAND2XLM U38 ( .A(n31), .B(n32), .Y(n25) );
  INVXLM U39 ( .A(n27), .Y(n26) );
  XNOR2X2M U40 ( .A(n101), .B(n102), .Y(SUM[10]) );
  NAND4XLM U41 ( .A(n86), .B(n89), .C(n90), .D(n94), .Y(n66) );
  NAND2XLM U42 ( .A(n85), .B(n86), .Y(n67) );
  NAND2XLM U43 ( .A(n92), .B(n93), .Y(n87) );
  NAND3XLM U44 ( .A(n89), .B(n90), .C(n91), .Y(n88) );
  NAND2XLM U45 ( .A(n17), .B(n12), .Y(n91) );
  INVXLM U46 ( .A(n93), .Y(n100) );
  MXI2XLM U47 ( .A(n4), .B(n5), .S0(n3), .Y(SUM[21]) );
  OAI2B1X2M U48 ( .A1N(n54), .A0(n55), .B0(n56), .Y(n52) );
  AOI2B1XLM U49 ( .A1N(n63), .A0(n64), .B0(n65), .Y(n61) );
  OAI2BB1XLM U50 ( .A0N(n50), .A1N(n52), .B0(n51), .Y(n48) );
  INVXLM U51 ( .A(n72), .Y(n59) );
  OAI2BB1X2M U52 ( .A0N(n46), .A1N(n48), .B0(n47), .Y(n44) );
  AND2X1M U53 ( .A(B[21]), .B(A[21]), .Y(n6) );
  INVXLM U54 ( .A(A[21]), .Y(n41) );
  NAND2BX1M U55 ( .AN(B[17]), .B(n41), .Y(n46) );
  NAND2XLM U56 ( .A(B[18]), .B(A[21]), .Y(n43) );
  INVX2M U57 ( .A(n1), .Y(n15) );
  OAI2B1X2M U58 ( .A1N(n1), .A0(n66), .B0(n67), .Y(n64) );
  AND2X2M U59 ( .A(n39), .B(n40), .Y(n3) );
  INVX2M U60 ( .A(B[20]), .Y(n9) );
  XNOR2X2M U61 ( .A(n28), .B(n29), .Y(SUM[6]) );
  INVX2M U62 ( .A(n25), .Y(n28) );
  NOR2BX2M U63 ( .AN(n27), .B(n24), .Y(n29) );
  XNOR2X2M U64 ( .A(n19), .B(n20), .Y(SUM[7]) );
  AOI2B1X1M U65 ( .A1N(n24), .A0(n25), .B0(n26), .Y(n19) );
  XNOR2X2M U66 ( .A(n35), .B(n33), .Y(SUM[5]) );
  OAI21XLM U67 ( .A0(n15), .A1(n18), .B0(n17), .Y(n14) );
  NAND2BX2M U68 ( .AN(n105), .B(n106), .Y(n104) );
  NAND2X2M U69 ( .A(n21), .B(n27), .Y(n105) );
  NAND3X2M U70 ( .A(n30), .B(n34), .C(n107), .Y(n106) );
  XNOR2X2M U71 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2BX2M U72 ( .AN(n12), .B(n13), .Y(n11) );
  NOR2BX2M U73 ( .AN(n93), .B(n98), .Y(n102) );
  XNOR2X2M U74 ( .A(n73), .B(n74), .Y(SUM[14]) );
  NOR2BX2M U75 ( .AN(n72), .B(n57), .Y(n74) );
  NOR2BX2M U76 ( .AN(n56), .B(n70), .Y(n69) );
  INVX2M U77 ( .A(n54), .Y(n70) );
  XNOR2X2M U78 ( .A(n95), .B(n96), .Y(SUM[11]) );
  NOR2BX2M U79 ( .AN(n92), .B(n97), .Y(n96) );
  XNOR2X2M U80 ( .A(n78), .B(n77), .Y(SUM[13]) );
  NAND2X2M U81 ( .A(n62), .B(n60), .Y(n78) );
  XNOR2X2M U82 ( .A(n53), .B(n52), .Y(SUM[16]) );
  NAND2X2M U83 ( .A(n51), .B(n50), .Y(n53) );
  XNOR2X2M U84 ( .A(n45), .B(n44), .Y(SUM[18]) );
  NAND2X2M U85 ( .A(n43), .B(n42), .Y(n45) );
  XNOR2X2M U86 ( .A(n49), .B(n48), .Y(SUM[17]) );
  NAND2X2M U87 ( .A(n47), .B(n46), .Y(n49) );
  OAI2BB1X2M U88 ( .A0N(n42), .A1N(n44), .B0(n43), .Y(n39) );
  OAI2BB1X2M U89 ( .A0N(n60), .A1N(n77), .B0(n62), .Y(n71) );
  AOI2B1X1M U90 ( .A1N(n57), .A0(n58), .B0(n59), .Y(n55) );
  OAI2B1X2M U91 ( .A1N(n60), .A0(n61), .B0(n62), .Y(n58) );
  NAND2BX2M U92 ( .AN(n87), .B(n88), .Y(n85) );
  INVX2M U93 ( .A(n94), .Y(n18) );
  INVX2M U94 ( .A(n90), .Y(n13) );
  XNOR2X2M U95 ( .A(n83), .B(n84), .Y(SUM[12]) );
  NOR2BX2M U96 ( .AN(n82), .B(n63), .Y(n84) );
  INVX2M U97 ( .A(n89), .Y(n98) );
  INVX2M U98 ( .A(n81), .Y(n63) );
  NAND2X2M U99 ( .A(n9), .B(n41), .Y(n40) );
  AND2X2M U100 ( .A(n41), .B(n9), .Y(n4) );
  NAND2X2M U101 ( .A(B[5]), .B(A[5]), .Y(n32) );
  NAND2XLM U102 ( .A(B[6]), .B(A[6]), .Y(n27) );
  OR2X2M U103 ( .A(B[5]), .B(A[5]), .Y(n34) );
  OR2X1M U104 ( .A(B[6]), .B(A[6]), .Y(n30) );
  CLKNAND2X2M U105 ( .A(n37), .B(n32), .Y(n107) );
  NAND2X2M U106 ( .A(B[13]), .B(A[13]), .Y(n62) );
  OR2X2M U107 ( .A(B[11]), .B(A[11]), .Y(n86) );
  NAND2X2M U108 ( .A(B[10]), .B(A[10]), .Y(n93) );
  OR2X2M U109 ( .A(B[13]), .B(A[13]), .Y(n60) );
  NAND2X2M U110 ( .A(B[11]), .B(A[11]), .Y(n92) );
  OR2X2M U111 ( .A(B[12]), .B(A[12]), .Y(n81) );
  NAND2X2M U112 ( .A(B[12]), .B(A[12]), .Y(n82) );
  NAND2X2M U113 ( .A(B[14]), .B(A[14]), .Y(n72) );
  NAND2X2M U114 ( .A(B[15]), .B(A[15]), .Y(n56) );
  OR2X2M U115 ( .A(B[15]), .B(A[15]), .Y(n54) );
  OR2X2M U116 ( .A(B[10]), .B(A[10]), .Y(n89) );
  OR2X2M U117 ( .A(B[16]), .B(A[16]), .Y(n50) );
  INVX2M U118 ( .A(n75), .Y(n57) );
  INVXLM U119 ( .A(A[4]), .Y(n108) );
  BUFX2M U120 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U121 ( .A(A[2]), .Y(SUM[2]) );
  NAND2X2M U122 ( .A(B[16]), .B(A[16]), .Y(n51) );
  NAND2BX2M U123 ( .AN(B[18]), .B(n41), .Y(n42) );
  NOR2BX2M U124 ( .AN(n40), .B(n6), .Y(n5) );
  NAND2XLM U125 ( .A(B[4]), .B(A[4]), .Y(n37) );
  NOR2BX2M U126 ( .AN(n37), .B(n36), .Y(SUM[4]) );
endmodule


module up4_filter_0_DW01_add_29 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n4, n6, n7, n8, n9, n10, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107;

  NAND2BX2M U2 ( .AN(n66), .B(n81), .Y(n80) );
  NAND2XLM U3 ( .A(n82), .B(n72), .Y(n81) );
  OAI2BB1X2M U4 ( .A0N(n61), .A1N(n80), .B0(n63), .Y(n76) );
  NAND2X2M U5 ( .A(n32), .B(n33), .Y(n27) );
  INVX2M U6 ( .A(n40), .Y(n37) );
  OAI21X2M U7 ( .A0(n67), .A1(n68), .B0(n69), .Y(n65) );
  AOI2B1X1M U8 ( .A1N(n97), .A0(n98), .B0(n99), .Y(n94) );
  OAI21X2M U9 ( .A0(n4), .A1(n68), .B0(n69), .Y(n82) );
  XNOR2X2M U10 ( .A(n82), .B(n84), .Y(SUM[12]) );
  NAND2X2M U11 ( .A(n83), .B(n72), .Y(n84) );
  OAI2B1X2M U12 ( .A1N(n55), .A0(n56), .B0(n57), .Y(n53) );
  AOI2B1X1M U13 ( .A1N(n58), .A0(n59), .B0(n60), .Y(n56) );
  OAI2B1X2M U14 ( .A1N(n61), .A0(n62), .B0(n63), .Y(n59) );
  AOI2B1X1M U15 ( .A1N(n64), .A0(n65), .B0(n66), .Y(n62) );
  INVX2M U16 ( .A(n93), .Y(n20) );
  XNOR2X2M U17 ( .A(n73), .B(n74), .Y(SUM[15]) );
  CLKXOR2X2M U18 ( .A(n45), .B(n7), .Y(SUM[18]) );
  NOR2BX2M U19 ( .AN(n44), .B(n6), .Y(n43) );
  AND2X2M U20 ( .A(n45), .B(n46), .Y(n6) );
  XNOR2X2M U21 ( .A(n98), .B(n100), .Y(SUM[10]) );
  OA21X2M U22 ( .A0(n41), .A1(n71), .B0(n70), .Y(n4) );
  AND2X2M U23 ( .A(n41), .B(n42), .Y(SUM[3]) );
  INVX1M U24 ( .A(A[3]), .Y(n107) );
  NAND2X1M U25 ( .A(B[3]), .B(A[3]), .Y(n41) );
  NAND2XLM U26 ( .A(B[6]), .B(A[6]), .Y(n29) );
  OR2X1M U27 ( .A(B[6]), .B(A[6]), .Y(n30) );
  AOI2B1X2M U28 ( .A1N(n26), .A0(n27), .B0(n28), .Y(n21) );
  XNOR2X1M U29 ( .A(n14), .B(n15), .Y(SUM[9]) );
  NAND2BX1M U30 ( .AN(n104), .B(n105), .Y(n103) );
  XNOR2X4M U31 ( .A(n27), .B(n31), .Y(SUM[6]) );
  XNOR2X2M U32 ( .A(n21), .B(n22), .Y(SUM[7]) );
  OAI21X2M U33 ( .A0(n41), .A1(n37), .B0(n38), .Y(n34) );
  CLKNAND2X2M U34 ( .A(n34), .B(n35), .Y(n32) );
  NAND2X1M U35 ( .A(n85), .B(n86), .Y(n69) );
  NAND4X1M U36 ( .A(n86), .B(n89), .C(n17), .D(n93), .Y(n68) );
  INVXLM U37 ( .A(n30), .Y(n26) );
  XOR2X1M U38 ( .A(n9), .B(n80), .Y(SUM[13]) );
  INVX2M U39 ( .A(n83), .Y(n66) );
  XNOR2X2M U40 ( .A(n76), .B(n79), .Y(SUM[14]) );
  NAND2X2M U41 ( .A(n77), .B(n78), .Y(n79) );
  OAI2BB1XLM U42 ( .A0N(n51), .A1N(n53), .B0(n52), .Y(n49) );
  CLKINVX2M U43 ( .A(n86), .Y(n96) );
  NAND2XLM U44 ( .A(n33), .B(n35), .Y(n36) );
  INVX2M U45 ( .A(n55), .Y(n75) );
  NOR2BX2M U46 ( .AN(n57), .B(n75), .Y(n74) );
  AND2X1M U47 ( .A(n63), .B(n61), .Y(n9) );
  INVXLM U48 ( .A(n77), .Y(n60) );
  INVXLM U49 ( .A(n78), .Y(n58) );
  XNOR2X2M U50 ( .A(n43), .B(n7), .Y(SUM[19]) );
  NAND2XLM U51 ( .A(n12), .B(n13), .Y(n46) );
  AND2X1M U52 ( .A(n13), .B(n12), .Y(n8) );
  NAND2XLM U53 ( .A(B[20]), .B(A[19]), .Y(n44) );
  NAND4X1M U54 ( .A(n25), .B(n30), .C(n35), .D(n40), .Y(n71) );
  XNOR2X2M U55 ( .A(n34), .B(n36), .Y(SUM[5]) );
  INVXLM U56 ( .A(n25), .Y(n24) );
  NAND2XLM U57 ( .A(n16), .B(n17), .Y(n15) );
  NAND2XLM U58 ( .A(n92), .B(n89), .Y(n100) );
  NAND2X2M U59 ( .A(n48), .B(n47), .Y(n50) );
  NAND2X2M U60 ( .A(n91), .B(n92), .Y(n87) );
  INVXLM U61 ( .A(n17), .Y(n102) );
  INVXLM U62 ( .A(B[21]), .Y(n12) );
  NAND2XLM U63 ( .A(B[17]), .B(A[20]), .Y(n48) );
  CLKNAND2X2M U64 ( .A(n29), .B(n30), .Y(n31) );
  XNOR2X2M U65 ( .A(n4), .B(n18), .Y(SUM[8]) );
  NAND2XLM U66 ( .A(n103), .B(n25), .Y(n70) );
  NAND2XLM U67 ( .A(n23), .B(n29), .Y(n104) );
  NAND3XLM U68 ( .A(n30), .B(n35), .C(n106), .Y(n105) );
  OAI21X2M U69 ( .A0(n4), .A1(n20), .B0(n19), .Y(n14) );
  CLKNAND2X2M U70 ( .A(n101), .B(n16), .Y(n98) );
  NAND2XLM U71 ( .A(n38), .B(n33), .Y(n106) );
  INVXLM U72 ( .A(n29), .Y(n28) );
  NAND3XLM U73 ( .A(n89), .B(n17), .C(n90), .Y(n88) );
  NAND2XLM U74 ( .A(n19), .B(n16), .Y(n90) );
  INVXLM U75 ( .A(n92), .Y(n99) );
  INVXLM U76 ( .A(n89), .Y(n97) );
  XNOR2X2M U77 ( .A(n54), .B(n53), .Y(SUM[16]) );
  INVXLM U78 ( .A(n72), .Y(n64) );
  NAND2XLM U79 ( .A(B[16]), .B(A[16]), .Y(n52) );
  OR2X1M U80 ( .A(B[16]), .B(A[16]), .Y(n51) );
  NAND2BX1M U81 ( .AN(B[3]), .B(n107), .Y(n42) );
  MXI2X1M U82 ( .A(n7), .B(n8), .S0(n43), .Y(SUM[20]) );
  MXI2X1M U83 ( .A(n7), .B(n8), .S0(n43), .Y(SUM[21]) );
  AND2X2M U84 ( .A(n46), .B(n44), .Y(n7) );
  INVX2M U85 ( .A(A[21]), .Y(n13) );
  XNOR2X2M U86 ( .A(n41), .B(n39), .Y(SUM[4]) );
  NOR2BX2M U87 ( .AN(n38), .B(n37), .Y(n39) );
  NOR2BX2M U88 ( .AN(n23), .B(n24), .Y(n22) );
  XNOR2X2M U89 ( .A(n94), .B(n95), .Y(SUM[11]) );
  NOR2BX2M U90 ( .AN(n91), .B(n96), .Y(n95) );
  NOR2BX2M U91 ( .AN(n19), .B(n20), .Y(n18) );
  NAND2BX2M U92 ( .AN(n102), .B(n14), .Y(n101) );
  XNOR2X2M U93 ( .A(n50), .B(n49), .Y(SUM[17]) );
  NAND2X2M U94 ( .A(n52), .B(n51), .Y(n54) );
  OAI2BB1X2M U95 ( .A0N(n47), .A1N(n49), .B0(n48), .Y(n45) );
  AOI2B1XLM U96 ( .A1N(n58), .A0(n76), .B0(n60), .Y(n73) );
  AND2X1M U97 ( .A(n10), .B(n70), .Y(n67) );
  OR2X1M U98 ( .A(n41), .B(n71), .Y(n10) );
  NAND2BX2M U99 ( .AN(n87), .B(n88), .Y(n85) );
  OR2X2M U100 ( .A(B[5]), .B(A[5]), .Y(n35) );
  NAND2X2M U101 ( .A(B[5]), .B(A[5]), .Y(n33) );
  OR2X2M U102 ( .A(B[7]), .B(A[7]), .Y(n25) );
  NAND2X2M U103 ( .A(B[4]), .B(A[4]), .Y(n38) );
  OR2X2M U104 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2X2M U105 ( .A(B[7]), .B(A[7]), .Y(n23) );
  BUFX2M U106 ( .A(A[2]), .Y(SUM[2]) );
  OR2X2M U107 ( .A(B[10]), .B(A[10]), .Y(n89) );
  OR2X2M U108 ( .A(B[12]), .B(A[12]), .Y(n72) );
  NAND2X2M U109 ( .A(B[10]), .B(A[10]), .Y(n92) );
  NAND2X2M U110 ( .A(B[9]), .B(A[9]), .Y(n16) );
  NAND2X2M U111 ( .A(B[13]), .B(A[13]), .Y(n63) );
  OR2X2M U112 ( .A(B[14]), .B(A[14]), .Y(n78) );
  NAND2X2M U113 ( .A(B[12]), .B(A[12]), .Y(n83) );
  NAND2X2M U114 ( .A(B[14]), .B(A[14]), .Y(n77) );
  NAND2X2M U115 ( .A(B[8]), .B(A[8]), .Y(n19) );
  OR2X2M U116 ( .A(B[8]), .B(A[8]), .Y(n93) );
  OR2X2M U117 ( .A(B[13]), .B(A[13]), .Y(n61) );
  NAND2X2M U118 ( .A(B[11]), .B(A[11]), .Y(n91) );
  NAND2X2M U119 ( .A(B[15]), .B(A[15]), .Y(n57) );
  OR2X2M U120 ( .A(B[15]), .B(A[15]), .Y(n55) );
  OR2X2M U121 ( .A(B[11]), .B(A[11]), .Y(n86) );
  OR2X2M U122 ( .A(B[9]), .B(A[9]), .Y(n17) );
  NAND2BX2M U123 ( .AN(B[17]), .B(n13), .Y(n47) );
endmodule


module up4_filter_0_DW01_add_41 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n7, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106;

  OAI21X2M U2 ( .A0(n68), .A1(n21), .B0(n20), .Y(n18) );
  AND2X2M U3 ( .A(n32), .B(n33), .Y(SUM[5]) );
  CLKNAND2X2M U4 ( .A(B[9]), .B(A[9]), .Y(n15) );
  OR2X1M U5 ( .A(B[9]), .B(A[9]), .Y(n17) );
  CLKINVX2M U6 ( .A(n28), .Y(n104) );
  AOI2B1X1M U7 ( .A1N(n97), .A0(n98), .B0(n99), .Y(n94) );
  NAND2X1M U8 ( .A(B[6]), .B(A[6]), .Y(n30) );
  INVXLM U9 ( .A(A[5]), .Y(n106) );
  INVXLM U10 ( .A(B[5]), .Y(n105) );
  NAND2XLM U11 ( .A(B[5]), .B(A[5]), .Y(n32) );
  OR2X1M U12 ( .A(B[6]), .B(A[6]), .Y(n28) );
  CLKINVX2M U13 ( .A(n86), .Y(n96) );
  OAI2BB1X2M U14 ( .A0N(n49), .A1N(n51), .B0(n50), .Y(n47) );
  CLKINVX2M U15 ( .A(n82), .Y(n62) );
  OAI21XLM U16 ( .A0(n68), .A1(n66), .B0(n67), .Y(n63) );
  CLKINVX2M U17 ( .A(n17), .Y(n16) );
  INVX2M U18 ( .A(n18), .Y(n13) );
  INVXLM U19 ( .A(n30), .Y(n29) );
  CLKNAND2X2M U20 ( .A(n61), .B(n59), .Y(n79) );
  NAND2X2M U21 ( .A(n103), .B(n26), .Y(n68) );
  CLKNAND2X2M U22 ( .A(n65), .B(n80), .Y(n78) );
  INVXLM U23 ( .A(A[21]), .Y(n11) );
  INVX2M U24 ( .A(n72), .Y(n74) );
  OAI2BB1XLM U25 ( .A0N(n41), .A1N(n43), .B0(n42), .Y(n39) );
  NAND2BX1M U26 ( .AN(B[14]), .B(n77), .Y(n76) );
  INVXLM U27 ( .A(A[14]), .Y(n77) );
  OAI21XLM U28 ( .A0(n68), .A1(n66), .B0(n67), .Y(n81) );
  NAND2XLM U29 ( .A(n28), .B(n30), .Y(n31) );
  AOI21XLM U30 ( .A0(n27), .A1(n28), .B0(n29), .Y(n22) );
  NAND2X2M U31 ( .A(n102), .B(n15), .Y(n98) );
  CLKINVX2M U32 ( .A(n93), .Y(n21) );
  CLKINVX2M U33 ( .A(n26), .Y(n25) );
  NOR2BXLM U34 ( .AN(n73), .B(n56), .Y(n75) );
  XNOR2X1M U35 ( .A(n94), .B(n95), .Y(SUM[11]) );
  NAND4XLM U36 ( .A(n86), .B(n89), .C(n17), .D(n93), .Y(n66) );
  NAND2XLM U37 ( .A(n85), .B(n86), .Y(n67) );
  NAND2XLM U38 ( .A(n91), .B(n92), .Y(n87) );
  NAND3XLM U39 ( .A(n89), .B(n17), .C(n90), .Y(n88) );
  NAND2XLM U40 ( .A(n81), .B(n82), .Y(n80) );
  NAND2XLM U41 ( .A(n20), .B(n15), .Y(n90) );
  CLKINVX2M U42 ( .A(n89), .Y(n97) );
  INVXLM U43 ( .A(n92), .Y(n99) );
  OAI2BB1X1M U44 ( .A0N(n37), .A1N(n39), .B0(n38), .Y(n36) );
  INVXLM U45 ( .A(n73), .Y(n58) );
  INVXLM U46 ( .A(n65), .Y(n64) );
  NAND2XLM U47 ( .A(B[15]), .B(A[15]), .Y(n55) );
  OR2X1M U48 ( .A(B[15]), .B(A[15]), .Y(n53) );
  CLKXOR2X2M U49 ( .A(B[21]), .B(A[18]), .Y(n7) );
  XOR2X2M U50 ( .A(n36), .B(n7), .Y(SUM[20]) );
  XNOR2X2M U51 ( .A(n34), .B(n7), .Y(SUM[21]) );
  AOI22X1M U52 ( .A0(n35), .A1(n36), .B0(B[20]), .B1(A[17]), .Y(n34) );
  NAND2X2M U53 ( .A(n12), .B(n11), .Y(n35) );
  XNOR2X2M U54 ( .A(n100), .B(n101), .Y(SUM[10]) );
  NOR2BX2M U55 ( .AN(n92), .B(n97), .Y(n101) );
  INVX2M U56 ( .A(n98), .Y(n100) );
  XNOR2X2M U57 ( .A(n13), .B(n14), .Y(SUM[9]) );
  NOR2BX2M U58 ( .AN(n15), .B(n16), .Y(n14) );
  NOR2BX2M U59 ( .AN(n91), .B(n96), .Y(n95) );
  XNOR2X2M U60 ( .A(n22), .B(n23), .Y(SUM[7]) );
  NOR2BX2M U61 ( .AN(n24), .B(n25), .Y(n23) );
  OAI211X2M U62 ( .A0(n104), .A1(n32), .B0(n24), .C0(n30), .Y(n103) );
  NAND2X2M U63 ( .A(n17), .B(n18), .Y(n102) );
  XNOR2X2M U64 ( .A(n74), .B(n75), .Y(SUM[14]) );
  XNOR2XLM U65 ( .A(n68), .B(n19), .Y(SUM[8]) );
  NOR2BX2M U66 ( .AN(n20), .B(n21), .Y(n19) );
  XNOR2X2M U67 ( .A(n83), .B(n84), .Y(SUM[12]) );
  NOR2BX2M U68 ( .AN(n65), .B(n62), .Y(n84) );
  INVX2M U69 ( .A(n81), .Y(n83) );
  XNOR2X2M U70 ( .A(n31), .B(n27), .Y(SUM[6]) );
  XNOR2X2M U71 ( .A(n48), .B(n47), .Y(SUM[17]) );
  NAND2X2M U72 ( .A(n46), .B(n45), .Y(n48) );
  XNOR2X2M U73 ( .A(n40), .B(n39), .Y(SUM[19]) );
  NAND2X2M U74 ( .A(n38), .B(n37), .Y(n40) );
  XNOR2X2M U75 ( .A(n44), .B(n43), .Y(SUM[18]) );
  NAND2X2M U76 ( .A(n42), .B(n41), .Y(n44) );
  XNOR2X2M U77 ( .A(n79), .B(n78), .Y(SUM[13]) );
  XNOR2X2M U78 ( .A(n52), .B(n51), .Y(SUM[16]) );
  NAND2X2M U79 ( .A(n50), .B(n49), .Y(n52) );
  OAI2BB1X2M U80 ( .A0N(n59), .A1N(n78), .B0(n61), .Y(n72) );
  OAI2BB1X2M U81 ( .A0N(n45), .A1N(n47), .B0(n46), .Y(n43) );
  OAI2B1X2M U82 ( .A1N(n53), .A0(n54), .B0(n55), .Y(n51) );
  AOI2B1X1M U83 ( .A1N(n56), .A0(n57), .B0(n58), .Y(n54) );
  OAI2B1X2M U84 ( .A1N(n59), .A0(n60), .B0(n61), .Y(n57) );
  AOI2B1X1M U85 ( .A1N(n62), .A0(n63), .B0(n64), .Y(n60) );
  XNOR2X2M U86 ( .A(n69), .B(n70), .Y(SUM[15]) );
  NOR2BX2M U87 ( .AN(n55), .B(n71), .Y(n70) );
  AOI2B1XLM U88 ( .A1N(n56), .A0(n72), .B0(n58), .Y(n69) );
  INVX2M U89 ( .A(n53), .Y(n71) );
  NAND2BX2M U90 ( .AN(n87), .B(n88), .Y(n85) );
  INVX2M U91 ( .A(n32), .Y(n27) );
  INVX2M U92 ( .A(B[21]), .Y(n12) );
  OR2X2M U93 ( .A(B[7]), .B(A[7]), .Y(n26) );
  BUFX2M U94 ( .A(A[4]), .Y(SUM[4]) );
  OR2X2M U95 ( .A(B[11]), .B(A[11]), .Y(n86) );
  NAND2X2M U96 ( .A(B[13]), .B(A[13]), .Y(n61) );
  NAND2X2M U97 ( .A(B[12]), .B(A[12]), .Y(n65) );
  OR2X2M U98 ( .A(B[10]), .B(A[10]), .Y(n89) );
  NAND2X2M U99 ( .A(B[10]), .B(A[10]), .Y(n92) );
  NAND2X2M U100 ( .A(B[8]), .B(A[8]), .Y(n20) );
  OR2X2M U101 ( .A(B[8]), .B(A[8]), .Y(n93) );
  OR2X2M U102 ( .A(B[13]), .B(A[13]), .Y(n59) );
  OR2X2M U103 ( .A(B[12]), .B(A[12]), .Y(n82) );
  NAND2X2M U104 ( .A(B[14]), .B(A[14]), .Y(n73) );
  NAND2X2M U105 ( .A(B[11]), .B(A[11]), .Y(n91) );
  NAND2X2M U106 ( .A(B[7]), .B(A[7]), .Y(n24) );
  NAND2X2M U107 ( .A(n105), .B(n106), .Y(n33) );
  BUFX2M U108 ( .A(A[3]), .Y(SUM[3]) );
  INVX2M U109 ( .A(n76), .Y(n56) );
  NAND2X2M U110 ( .A(B[16]), .B(A[16]), .Y(n50) );
  NAND2X2M U111 ( .A(B[17]), .B(A[20]), .Y(n46) );
  NAND2X2M U112 ( .A(B[18]), .B(A[19]), .Y(n42) );
  NAND2X2M U113 ( .A(B[19]), .B(A[17]), .Y(n38) );
  NAND2BX2M U114 ( .AN(B[17]), .B(n11), .Y(n45) );
  NAND2BX2M U115 ( .AN(B[18]), .B(n11), .Y(n41) );
  NAND2BX2M U116 ( .AN(B[19]), .B(n11), .Y(n37) );
  OR2X2M U117 ( .A(B[16]), .B(A[16]), .Y(n49) );
  BUFX2M U118 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_0_DW01_add_37 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123;

  OR2X2M U2 ( .A(B[11]), .B(A[11]), .Y(n88) );
  OAI21X2M U3 ( .A0(n4), .A1(n15), .B0(n14), .Y(n117) );
  OR2X2M U4 ( .A(B[7]), .B(A[7]), .Y(n22) );
  XNOR2X2M U5 ( .A(n117), .B(n11), .Y(SUM[10]) );
  AO21XLM U6 ( .A0(B[10]), .A1(A[10]), .B0(n116), .Y(n11) );
  XNOR2X2M U7 ( .A(n4), .B(n13), .Y(SUM[9]) );
  AND2X2M U8 ( .A(n119), .B(n18), .Y(n4) );
  NAND4X1M U9 ( .A(n122), .B(n39), .C(n24), .D(n22), .Y(n120) );
  CLKNAND2X2M U10 ( .A(B[6]), .B(A[6]), .Y(n26) );
  OAI211X1M U11 ( .A0(n34), .A1(n37), .B0(n29), .C0(n26), .Y(n121) );
  OR2X1M U12 ( .A(B[3]), .B(A[3]), .Y(n83) );
  XNOR2X1M U13 ( .A(n16), .B(n17), .Y(SUM[8]) );
  NAND3X2M U14 ( .A(n121), .B(n24), .C(n22), .Y(n85) );
  XNOR2X1M U15 ( .A(n94), .B(n95), .Y(SUM[15]) );
  NAND3X1M U16 ( .A(n120), .B(n21), .C(n85), .Y(n17) );
  CLKNAND2X2M U17 ( .A(n100), .B(n74), .Y(n96) );
  CLKNAND2X2M U18 ( .A(n103), .B(n92), .Y(n101) );
  AOI2B1XLM U19 ( .A1N(n116), .A0(n117), .B0(n118), .Y(n113) );
  NAND2X1M U20 ( .A(B[13]), .B(A[13]), .Y(n74) );
  NAND2X2M U21 ( .A(n50), .B(n52), .Y(n53) );
  NAND2X2M U22 ( .A(B[18]), .B(A[20]), .Y(n54) );
  INVXLM U23 ( .A(n75), .Y(n97) );
  NAND2X1M U24 ( .A(n59), .B(n62), .Y(n63) );
  NAND2XLM U25 ( .A(n81), .B(n10), .Y(n77) );
  CLKNAND2X2M U26 ( .A(n104), .B(n79), .Y(n103) );
  NAND2XLM U27 ( .A(B[3]), .B(A[3]), .Y(n41) );
  NOR2X2M U28 ( .A(B[15]), .B(A[15]), .Y(n5) );
  NAND2X2M U29 ( .A(B[15]), .B(A[15]), .Y(n68) );
  AND2X2M U30 ( .A(n51), .B(n52), .Y(n7) );
  AND2X1M U31 ( .A(B[20]), .B(A[18]), .Y(n8) );
  XNOR2XLM U32 ( .A(n6), .B(n49), .Y(SUM[20]) );
  NAND2XLM U33 ( .A(n18), .B(n19), .Y(n16) );
  NAND2XLM U34 ( .A(n101), .B(n80), .Y(n100) );
  OR2X1M U35 ( .A(B[13]), .B(A[13]), .Y(n80) );
  NAND2X1M U36 ( .A(B[14]), .B(A[14]), .Y(n75) );
  NAND2XLM U37 ( .A(B[12]), .B(A[12]), .Y(n92) );
  OR2X1M U38 ( .A(B[12]), .B(A[12]), .Y(n79) );
  CLKINVX2M U39 ( .A(B[2]), .Y(n123) );
  NOR2X1M U40 ( .A(n6), .B(n48), .Y(n47) );
  XNOR2X1M U41 ( .A(B[20]), .B(n12), .Y(n49) );
  NAND2X2M U42 ( .A(n54), .B(n55), .Y(n51) );
  NAND2X1M U43 ( .A(n56), .B(n57), .Y(n55) );
  NAND2XLM U44 ( .A(B[19]), .B(A[19]), .Y(n50) );
  OAI21X2M U45 ( .A0(n35), .A1(n36), .B0(n37), .Y(n30) );
  NOR2XLM U46 ( .A(n34), .B(n35), .Y(n122) );
  NAND2X2M U47 ( .A(n28), .B(n29), .Y(n23) );
  CLKNAND2X2M U48 ( .A(n30), .B(n31), .Y(n28) );
  CLKNAND2X2M U49 ( .A(n86), .B(n83), .Y(n36) );
  CLKINVX2M U50 ( .A(n40), .Y(n35) );
  NAND2XLM U51 ( .A(n37), .B(n40), .Y(n38) );
  XNOR2X2M U52 ( .A(n113), .B(n114), .Y(SUM[11]) );
  NAND2XLM U53 ( .A(n86), .B(n83), .Y(n84) );
  NAND4XLM U54 ( .A(n24), .B(n22), .C(n31), .D(n40), .Y(n82) );
  NAND3BXLM U55 ( .AN(n90), .B(n91), .C(n92), .Y(n76) );
  OAI2BB1XLM U56 ( .A0N(n64), .A1N(n66), .B0(n65), .Y(n61) );
  NAND2X2M U57 ( .A(n68), .B(n69), .Y(n66) );
  OAI21X1M U58 ( .A0(n70), .A1(n71), .B0(n72), .Y(n69) );
  NOR2XLM U59 ( .A(n5), .B(n73), .Y(n72) );
  NAND2X2M U60 ( .A(n59), .B(n60), .Y(n56) );
  CLKNAND2X2M U61 ( .A(n61), .B(n62), .Y(n60) );
  NAND2XLM U62 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OR2X2M U63 ( .A(B[6]), .B(A[6]), .Y(n24) );
  OR2X2M U64 ( .A(B[8]), .B(A[8]), .Y(n19) );
  OR2X2M U65 ( .A(B[9]), .B(A[9]), .Y(n89) );
  NAND2XLM U66 ( .A(B[10]), .B(A[10]), .Y(n111) );
  NAND2XLM U67 ( .A(B[11]), .B(A[11]), .Y(n93) );
  OR2X2M U68 ( .A(B[14]), .B(A[14]), .Y(n98) );
  NAND2XLM U69 ( .A(B[16]), .B(A[16]), .Y(n65) );
  OR2X2M U70 ( .A(B[17]), .B(A[17]), .Y(n62) );
  XNOR2X2M U71 ( .A(n51), .B(n53), .Y(SUM[19]) );
  NOR2X2M U72 ( .A(A[18]), .B(B[20]), .Y(n48) );
  NOR2BX2M U73 ( .AN(n50), .B(n7), .Y(n6) );
  XNOR2X2M U74 ( .A(n44), .B(n45), .Y(SUM[21]) );
  XNOR2X2M U75 ( .A(A[18]), .B(n46), .Y(n45) );
  NOR2X2M U76 ( .A(n47), .B(n8), .Y(n44) );
  INVX2M U77 ( .A(B[10]), .Y(n109) );
  INVX2M U78 ( .A(n87), .Y(n116) );
  XNOR2X2M U79 ( .A(n56), .B(n58), .Y(SUM[18]) );
  NAND2X2M U80 ( .A(n54), .B(n57), .Y(n58) );
  NAND2BX2M U81 ( .AN(B[19]), .B(n12), .Y(n52) );
  NAND2BX2M U82 ( .AN(B[18]), .B(n12), .Y(n57) );
  INVX2M U83 ( .A(B[21]), .Y(n46) );
  INVX2M U84 ( .A(n36), .Y(n39) );
  XNOR2X2M U85 ( .A(n9), .B(n20), .Y(SUM[7]) );
  AO21XLM U86 ( .A0(n23), .A1(n24), .B0(n25), .Y(n9) );
  NAND2X2M U87 ( .A(n21), .B(n22), .Y(n20) );
  NOR2BX2M U88 ( .AN(n93), .B(n115), .Y(n114) );
  INVX2M U89 ( .A(n88), .Y(n115) );
  XNOR2X2M U90 ( .A(n32), .B(n33), .Y(SUM[5]) );
  NOR2BX2M U91 ( .AN(n29), .B(n34), .Y(n33) );
  INVX2M U92 ( .A(n30), .Y(n32) );
  XNOR2X2M U93 ( .A(n38), .B(n39), .Y(SUM[4]) );
  XNOR2X2M U94 ( .A(n23), .B(n27), .Y(SUM[6]) );
  NAND2X2M U95 ( .A(n26), .B(n24), .Y(n27) );
  CLKNAND2X2M U96 ( .A(n109), .B(n110), .Y(n87) );
  NOR2BX2M U97 ( .AN(n14), .B(n15), .Y(n13) );
  INVX2M U98 ( .A(n89), .Y(n15) );
  NAND2X2M U99 ( .A(n19), .B(n17), .Y(n119) );
  XNOR2X2M U100 ( .A(n96), .B(n99), .Y(SUM[14]) );
  NAND2X2M U101 ( .A(n75), .B(n98), .Y(n99) );
  NOR2BX2M U102 ( .AN(n68), .B(n5), .Y(n95) );
  AOI2B1X1M U103 ( .A1N(n73), .A0(n96), .B0(n97), .Y(n94) );
  XNOR2X2M U104 ( .A(n61), .B(n63), .Y(SUM[17]) );
  XNOR2X2M U105 ( .A(n101), .B(n102), .Y(SUM[13]) );
  NAND2X2M U106 ( .A(n74), .B(n80), .Y(n102) );
  XNOR2X2M U107 ( .A(n104), .B(n105), .Y(SUM[12]) );
  NAND2X2M U108 ( .A(n92), .B(n79), .Y(n105) );
  XNOR2X2M U109 ( .A(n67), .B(n66), .Y(SUM[16]) );
  NAND2X2M U110 ( .A(n65), .B(n64), .Y(n67) );
  OAI211XLM U111 ( .A0(n82), .A1(n84), .B0(n85), .C0(n21), .Y(n81) );
  AOI2B1X1M U112 ( .A1N(n76), .A0(n77), .B0(n78), .Y(n70) );
  NAND2X2M U113 ( .A(n79), .B(n80), .Y(n78) );
  NAND3X2M U114 ( .A(n106), .B(n93), .C(n91), .Y(n104) );
  NAND3XLM U115 ( .A(n112), .B(n87), .C(n88), .Y(n106) );
  AND3XLM U116 ( .A(n19), .B(n17), .C(n89), .Y(n112) );
  NAND3X2M U117 ( .A(n107), .B(n108), .C(n88), .Y(n91) );
  NAND2XLM U118 ( .A(n109), .B(n110), .Y(n108) );
  OAI211XLM U119 ( .A0(n15), .A1(n18), .B0(n14), .C0(n111), .Y(n107) );
  NAND2X2M U120 ( .A(n74), .B(n75), .Y(n71) );
  INVX2M U121 ( .A(n31), .Y(n34) );
  NOR2BX2M U122 ( .AN(n41), .B(n42), .Y(SUM[3]) );
  INVX2M U123 ( .A(n83), .Y(n42) );
  AND4XLM U124 ( .A(n87), .B(n88), .C(n19), .D(n89), .Y(n10) );
  INVX2M U125 ( .A(n26), .Y(n25) );
  INVX2M U126 ( .A(n111), .Y(n118) );
  INVX2M U127 ( .A(n41), .Y(n86) );
  INVX2M U128 ( .A(n98), .Y(n73) );
  INVX2M U129 ( .A(n93), .Y(n90) );
  INVX2M U130 ( .A(A[21]), .Y(n12) );
  NAND2XLM U131 ( .A(B[4]), .B(A[4]), .Y(n37) );
  OR2X1M U132 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2X2M U133 ( .A(B[9]), .B(A[9]), .Y(n14) );
  OR2X2M U134 ( .A(B[5]), .B(A[5]), .Y(n31) );
  NAND2X2M U135 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X2M U136 ( .A(B[17]), .B(A[17]), .Y(n59) );
  NAND2X2M U137 ( .A(B[8]), .B(A[8]), .Y(n18) );
  OR2X2M U138 ( .A(B[16]), .B(A[16]), .Y(n64) );
  INVX2M U139 ( .A(A[10]), .Y(n110) );
  INVX2M U140 ( .A(n123), .Y(SUM[2]) );
endmodule


module up4_filter_0_DW01_add_25 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130;

  XNOR2X2M U2 ( .A(n54), .B(n55), .Y(SUM[17]) );
  OR2X2M U3 ( .A(B[11]), .B(A[11]), .Y(n83) );
  OR2X2M U4 ( .A(B[12]), .B(A[12]), .Y(n88) );
  INVX2M U5 ( .A(n84), .Y(n17) );
  OR2X2M U6 ( .A(B[6]), .B(A[6]), .Y(n25) );
  OR2X2M U7 ( .A(B[7]), .B(A[7]), .Y(n24) );
  XNOR2X2M U8 ( .A(n110), .B(n111), .Y(SUM[11]) );
  AOI21BX2M U9 ( .A0(n95), .A1(n94), .B0N(n62), .Y(n92) );
  NOR2BX2M U10 ( .AN(n61), .B(n64), .Y(n93) );
  XNOR2X2M U11 ( .A(n96), .B(n9), .Y(SUM[14]) );
  XNOR2X2M U12 ( .A(n92), .B(n93), .Y(SUM[15]) );
  XNOR2X2M U13 ( .A(n49), .B(n50), .Y(SUM[18]) );
  XNOR2X2M U14 ( .A(n37), .B(n36), .Y(SUM[20]) );
  AND2X2M U15 ( .A(n99), .B(n78), .Y(n1) );
  AND2X2M U16 ( .A(n117), .B(n20), .Y(n2) );
  AND2X2M U17 ( .A(n128), .B(n32), .Y(n3) );
  OAI2B1X4M U18 ( .A1N(n97), .A0(n1), .B0(n91), .Y(n94) );
  NAND4X1M U19 ( .A(n108), .B(n19), .C(n82), .D(n83), .Y(n102) );
  NOR2BX2M U20 ( .AN(n16), .B(n17), .Y(n15) );
  NAND2X2M U21 ( .A(B[9]), .B(A[9]), .Y(n16) );
  OR2X6M U22 ( .A(B[9]), .B(A[9]), .Y(n84) );
  INVX1M U23 ( .A(n82), .Y(n112) );
  XNOR2X1M U24 ( .A(n101), .B(n100), .Y(SUM[12]) );
  AOI21X1M U25 ( .A0(n45), .A1(n48), .B0(n47), .Y(n49) );
  NAND2XLM U26 ( .A(B[17]), .B(A[17]), .Y(n51) );
  NAND2X2M U27 ( .A(B[7]), .B(A[7]), .Y(n23) );
  INVX1M U28 ( .A(B[14]), .Y(n89) );
  INVXLM U29 ( .A(A[14]), .Y(n90) );
  NAND2X1M U30 ( .A(n126), .B(n24), .Y(n81) );
  NAND3X1M U31 ( .A(n102), .B(n77), .C(n76), .Y(n100) );
  NAND3X2M U32 ( .A(n127), .B(n27), .C(n23), .Y(n126) );
  NAND2XLM U33 ( .A(B[8]), .B(A[8]), .Y(n20) );
  NAND2XLM U34 ( .A(B[6]), .B(A[6]), .Y(n27) );
  AND2X2M U35 ( .A(n95), .B(n62), .Y(n9) );
  INVX2M U36 ( .A(n97), .Y(n86) );
  XNOR2XLM U37 ( .A(n28), .B(n26), .Y(SUM[6]) );
  OR2X2M U38 ( .A(B[8]), .B(A[8]), .Y(n21) );
  OAI21X2M U39 ( .A0(n42), .A1(n43), .B0(n44), .Y(n40) );
  CLKNAND2X2M U40 ( .A(n45), .B(n46), .Y(n43) );
  NOR2X2M U41 ( .A(n47), .B(n48), .Y(n42) );
  NAND2X2M U42 ( .A(n52), .B(n53), .Y(n48) );
  INVXLM U43 ( .A(n77), .Y(n75) );
  NAND2X2M U44 ( .A(B[13]), .B(A[13]), .Y(n91) );
  AND2X1M U45 ( .A(B[20]), .B(A[20]), .Y(n4) );
  AOI21X1M U46 ( .A0(n11), .A1(n36), .B0(n4), .Y(n33) );
  CLKNAND2X2M U47 ( .A(n3), .B(n25), .Y(n127) );
  CLKINVX2M U48 ( .A(n31), .Y(n124) );
  NAND2BX1M U49 ( .AN(n3), .B(n29), .Y(n26) );
  INVX1M U50 ( .A(n63), .Y(n58) );
  XNOR2XLM U51 ( .A(n2), .B(n15), .Y(SUM[9]) );
  INVXLM U52 ( .A(n32), .Y(n125) );
  XNOR2XLM U53 ( .A(n1), .B(n98), .Y(SUM[13]) );
  NOR2BX2M U54 ( .AN(n78), .B(n74), .Y(n73) );
  NOR2BXLM U55 ( .AN(n65), .B(n64), .Y(n56) );
  NAND3XLM U56 ( .A(n63), .B(n62), .C(n59), .Y(n67) );
  OAI2BB1XLM U57 ( .A0N(n38), .A1N(n40), .B0(n39), .Y(n36) );
  AND4XLM U58 ( .A(n82), .B(n83), .C(n84), .D(n21), .Y(n8) );
  AND2X1M U59 ( .A(n61), .B(n62), .Y(n60) );
  INVXLM U60 ( .A(n61), .Y(n69) );
  INVXLM U61 ( .A(n107), .Y(n114) );
  NAND2XLM U62 ( .A(B[5]), .B(A[5]), .Y(n129) );
  NAND2XLM U63 ( .A(n105), .B(n106), .Y(n104) );
  NOR2XLM U64 ( .A(A[14]), .B(B[14]), .Y(n85) );
  XNOR2XLM U65 ( .A(B[20]), .B(A[20]), .Y(n37) );
  NAND2XLM U66 ( .A(B[16]), .B(A[16]), .Y(n52) );
  OR2X2M U67 ( .A(B[18]), .B(A[18]), .Y(n46) );
  OR2X2M U68 ( .A(B[19]), .B(A[19]), .Y(n38) );
  CLKNAND2X2M U69 ( .A(n81), .B(n118), .Y(n19) );
  OA21X2M U70 ( .A0(n120), .A1(n121), .B0(n122), .Y(n5) );
  AND2X1M U71 ( .A(B[2]), .B(A[2]), .Y(n12) );
  OR2X1M U72 ( .A(B[4]), .B(A[4]), .Y(n31) );
  INVX2M U73 ( .A(n94), .Y(n96) );
  OAI21X2M U74 ( .A0(n2), .A1(n17), .B0(n16), .Y(n113) );
  NOR2BX2M U75 ( .AN(n91), .B(n86), .Y(n98) );
  NAND2X2M U76 ( .A(n100), .B(n88), .Y(n99) );
  NAND2X2M U77 ( .A(n20), .B(n21), .Y(n18) );
  AND2X2M U78 ( .A(n77), .B(n83), .Y(n111) );
  XNOR2X2M U79 ( .A(n6), .B(n66), .Y(SUM[16]) );
  AO21XLM U80 ( .A0(n67), .A1(n68), .B0(n69), .Y(n6) );
  NAND2X2M U81 ( .A(n65), .B(n52), .Y(n66) );
  XNOR2X1M U82 ( .A(n41), .B(n40), .Y(SUM[19]) );
  NAND2X2M U83 ( .A(n39), .B(n38), .Y(n41) );
  NAND2BX2M U84 ( .AN(n75), .B(n76), .Y(n74) );
  NAND2X2M U85 ( .A(n56), .B(n57), .Y(n53) );
  NAND3BX2M U86 ( .AN(n58), .B(n59), .C(n60), .Y(n57) );
  OR2X2M U87 ( .A(n91), .B(n7), .Y(n63) );
  AND2X2M U88 ( .A(n89), .B(n90), .Y(n7) );
  AND2X2M U89 ( .A(n44), .B(n46), .Y(n50) );
  NAND2X2M U90 ( .A(n89), .B(n90), .Y(n95) );
  INVX2M U91 ( .A(n51), .Y(n47) );
  INVX2M U92 ( .A(n68), .Y(n64) );
  NAND2X2M U93 ( .A(n53), .B(n52), .Y(n55) );
  NAND2X2M U94 ( .A(n25), .B(n27), .Y(n28) );
  NAND2X2M U95 ( .A(n88), .B(n78), .Y(n101) );
  INVX2M U96 ( .A(A[21]), .Y(n35) );
  NAND2X2M U97 ( .A(n51), .B(n45), .Y(n54) );
  INVX2M U98 ( .A(n88), .Y(n87) );
  AND2X2M U99 ( .A(n23), .B(n24), .Y(n10) );
  NAND3X2M U100 ( .A(n103), .B(n104), .C(n83), .Y(n76) );
  OAI211XLM U101 ( .A0(n17), .A1(n20), .B0(n16), .C0(n107), .Y(n103) );
  XNOR2X2M U102 ( .A(n115), .B(n116), .Y(SUM[10]) );
  NOR2BX2M U103 ( .AN(n107), .B(n112), .Y(n116) );
  INVX2M U104 ( .A(n113), .Y(n115) );
  AOI2B1XLM U105 ( .A1N(n112), .A0(n113), .B0(n114), .Y(n110) );
  AOI21BX2M U106 ( .A0(n25), .A1(n26), .B0N(n27), .Y(n22) );
  NAND2X2M U107 ( .A(n105), .B(n106), .Y(n82) );
  NOR2XLM U108 ( .A(n17), .B(n109), .Y(n108) );
  INVXLM U109 ( .A(n21), .Y(n109) );
  INVX2M U110 ( .A(B[10]), .Y(n105) );
  NAND2X2M U111 ( .A(n21), .B(n19), .Y(n117) );
  OR2X2M U112 ( .A(B[5]), .B(A[5]), .Y(n32) );
  NAND2X2M U113 ( .A(B[14]), .B(A[14]), .Y(n62) );
  OR2X2M U114 ( .A(B[17]), .B(A[17]), .Y(n45) );
  NAND2X2M U115 ( .A(B[11]), .B(A[11]), .Y(n77) );
  NAND2X2M U116 ( .A(B[12]), .B(A[12]), .Y(n78) );
  OR2X1M U117 ( .A(A[20]), .B(B[20]), .Y(n11) );
  OR2X2M U118 ( .A(B[16]), .B(A[16]), .Y(n65) );
  NAND2X2M U119 ( .A(B[19]), .B(A[19]), .Y(n39) );
  NAND2X2M U120 ( .A(B[15]), .B(A[15]), .Y(n61) );
  NAND2X2M U121 ( .A(n70), .B(n71), .Y(n59) );
  NAND2X2M U122 ( .A(n72), .B(n73), .Y(n71) );
  NOR3XLM U123 ( .A(n85), .B(n86), .C(n87), .Y(n70) );
  NAND2X2M U124 ( .A(n79), .B(n8), .Y(n72) );
  OR2X2M U125 ( .A(B[15]), .B(A[15]), .Y(n68) );
  NAND2X2M U126 ( .A(B[18]), .B(A[18]), .Y(n44) );
  OR2X2M U127 ( .A(B[13]), .B(A[13]), .Y(n97) );
  INVX2M U128 ( .A(n5), .Y(n30) );
  NAND4X2M U129 ( .A(n119), .B(n30), .C(n25), .D(n24), .Y(n118) );
  NOR2X2M U130 ( .A(n124), .B(n125), .Y(n119) );
  NAND2X2M U131 ( .A(B[10]), .B(A[10]), .Y(n107) );
  NAND3XLM U132 ( .A(n30), .B(n31), .C(n32), .Y(n29) );
  INVX2M U133 ( .A(A[10]), .Y(n106) );
  OAI21XLM U134 ( .A0(n5), .A1(n80), .B0(n81), .Y(n79) );
  NAND4XLM U135 ( .A(n25), .B(n24), .C(n32), .D(n31), .Y(n80) );
  NOR2X2M U136 ( .A(B[2]), .B(A[2]), .Y(n13) );
  NAND2X2M U137 ( .A(n123), .B(n12), .Y(n122) );
  NOR2X2M U138 ( .A(n13), .B(n14), .Y(n123) );
  INVX2M U139 ( .A(A[3]), .Y(n120) );
  AND2X2M U140 ( .A(n121), .B(n120), .Y(n14) );
  XNOR2XLM U141 ( .A(n18), .B(n19), .Y(SUM[8]) );
  XNOR2X2M U142 ( .A(n33), .B(n34), .Y(SUM[21]) );
  XNOR2X2M U143 ( .A(B[21]), .B(n35), .Y(n34) );
  XNOR2X2M U144 ( .A(n22), .B(n10), .Y(SUM[7]) );
  CLKNAND2X2M U145 ( .A(n129), .B(n130), .Y(n128) );
  NAND2X2M U146 ( .A(B[4]), .B(A[4]), .Y(n130) );
  INVX2M U147 ( .A(B[3]), .Y(n121) );
endmodule


module up4_filter_0_DW01_add_35 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;

  XNOR2X2M U2 ( .A(n93), .B(n96), .Y(SUM[14]) );
  OA21X2M U3 ( .A0(n88), .A1(n87), .B0(n86), .Y(n6) );
  AND2X2M U4 ( .A(n51), .B(n52), .Y(n5) );
  AND2X2M U5 ( .A(n67), .B(n66), .Y(n10) );
  NAND2XLM U6 ( .A(B[19]), .B(n14), .Y(n53) );
  NAND2BX1M U7 ( .AN(B[19]), .B(n15), .Y(n52) );
  AND2X2M U8 ( .A(n89), .B(n44), .Y(n1) );
  OA21X2M U9 ( .A0(n6), .A1(n22), .B0(n21), .Y(n2) );
  CLKNAND2X2M U10 ( .A(B[13]), .B(A[13]), .Y(n75) );
  OR2X1M U11 ( .A(B[13]), .B(A[13]), .Y(n81) );
  NAND2BX1M U12 ( .AN(B[18]), .B(n15), .Y(n58) );
  NAND2XLM U13 ( .A(B[18]), .B(n14), .Y(n59) );
  NAND2XLM U14 ( .A(B[3]), .B(A[3]), .Y(n42) );
  OR2X1M U15 ( .A(B[7]), .B(A[7]), .Y(n25) );
  NAND2XLM U16 ( .A(B[7]), .B(A[7]), .Y(n24) );
  CLKNAND2X2M U17 ( .A(B[14]), .B(A[14]), .Y(n76) );
  OR2X1M U18 ( .A(B[14]), .B(A[14]), .Y(n95) );
  OR2X1M U19 ( .A(B[3]), .B(A[3]), .Y(n44) );
  OR2X1M U20 ( .A(B[10]), .B(A[10]), .Y(n109) );
  NAND2XLM U21 ( .A(B[12]), .B(A[12]), .Y(n84) );
  OR2X1M U22 ( .A(B[12]), .B(A[12]), .Y(n80) );
  CLKNAND2X2M U23 ( .A(n100), .B(n84), .Y(n98) );
  CLKNAND2X2M U24 ( .A(n98), .B(n81), .Y(n97) );
  NAND2XLM U25 ( .A(n80), .B(n81), .Y(n79) );
  NAND2XLM U26 ( .A(n101), .B(n80), .Y(n100) );
  NAND2XLM U27 ( .A(n75), .B(n81), .Y(n99) );
  NOR2X1M U28 ( .A(n4), .B(n49), .Y(n48) );
  CLKINVX2M U29 ( .A(n109), .Y(n116) );
  INVXLM U30 ( .A(n59), .Y(n55) );
  CLKNAND2X2M U31 ( .A(n57), .B(n58), .Y(n56) );
  NOR2BX2M U32 ( .AN(n53), .B(n5), .Y(n4) );
  OAI21X2M U33 ( .A0(n71), .A1(n72), .B0(n73), .Y(n70) );
  INVXLM U34 ( .A(n32), .Y(n38) );
  CLKINVX1M U35 ( .A(n35), .Y(n39) );
  NAND2X2M U36 ( .A(n61), .B(n62), .Y(n57) );
  XNOR2X2M U37 ( .A(n2), .B(n17), .Y(SUM[9]) );
  AO21XLM U38 ( .A0(n26), .A1(n27), .B0(n28), .Y(n8) );
  XNOR2X2M U39 ( .A(n46), .B(n47), .Y(SUM[21]) );
  INVXLM U40 ( .A(B[21]), .Y(n16) );
  AOI2B1X1M U41 ( .A1N(n116), .A0(n117), .B0(n118), .Y(n113) );
  INVXLM U42 ( .A(n111), .Y(n118) );
  XNOR2X2M U43 ( .A(n91), .B(n92), .Y(SUM[15]) );
  INVXLM U44 ( .A(n76), .Y(n94) );
  NAND2X2M U45 ( .A(n69), .B(n70), .Y(n68) );
  NAND2X2M U46 ( .A(n103), .B(n104), .Y(n85) );
  AOI21XLM U47 ( .A0(n31), .A1(n32), .B0(n33), .Y(n3) );
  INVXLM U48 ( .A(A[21]), .Y(n15) );
  NAND2XLM U49 ( .A(B[11]), .B(A[11]), .Y(n110) );
  OR2X1M U50 ( .A(B[11]), .B(A[11]), .Y(n104) );
  NAND2XLM U51 ( .A(n63), .B(n64), .Y(n62) );
  NAND2XLM U52 ( .A(n24), .B(n25), .Y(n23) );
  CLKNAND2X2M U53 ( .A(n76), .B(n95), .Y(n96) );
  NAND4XLM U54 ( .A(n109), .B(n104), .C(n108), .D(n112), .Y(n90) );
  NAND3XLM U55 ( .A(n107), .B(n108), .C(n109), .Y(n106) );
  NAND2XLM U56 ( .A(n40), .B(n34), .Y(n123) );
  INVXLM U57 ( .A(n40), .Y(n31) );
  NAND2XLM U58 ( .A(n120), .B(n25), .Y(n86) );
  NAND3XLM U59 ( .A(n123), .B(n32), .C(n26), .Y(n122) );
  OAI2BB1X2M U60 ( .A0N(n1), .A1N(n9), .B0(n3), .Y(n27) );
  INVXLM U61 ( .A(n34), .Y(n33) );
  XOR2X2M U62 ( .A(n10), .B(n68), .Y(SUM[16]) );
  NAND2XLM U63 ( .A(n21), .B(n18), .Y(n107) );
  NOR2BXLM U64 ( .AN(n42), .B(n43), .Y(SUM[3]) );
  INVXLM U65 ( .A(n44), .Y(n43) );
  INVXLM U66 ( .A(n95), .Y(n74) );
  NAND2XLM U67 ( .A(n89), .B(n44), .Y(n88) );
  NAND2XLM U68 ( .A(B[10]), .B(A[10]), .Y(n111) );
  NAND2XLM U69 ( .A(B[6]), .B(A[6]), .Y(n29) );
  OR2X1M U70 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NOR2XLM U71 ( .A(B[15]), .B(A[15]), .Y(n12) );
  INVXLM U72 ( .A(n125), .Y(SUM[2]) );
  XNOR2X2M U73 ( .A(n51), .B(n54), .Y(SUM[19]) );
  NAND2X2M U74 ( .A(n53), .B(n52), .Y(n54) );
  XNOR2X2M U75 ( .A(n57), .B(n60), .Y(SUM[18]) );
  NAND2X2M U76 ( .A(n59), .B(n58), .Y(n60) );
  NAND2BX2M U77 ( .AN(n55), .B(n56), .Y(n51) );
  XNOR2X2M U78 ( .A(n63), .B(n65), .Y(SUM[17]) );
  NAND2X2M U79 ( .A(n61), .B(n64), .Y(n65) );
  OAI21X2M U80 ( .A0(n6), .A1(n90), .B0(n85), .Y(n101) );
  OR2X2M U81 ( .A(n79), .B(n78), .Y(n13) );
  NOR2X2M U82 ( .A(n82), .B(n83), .Y(n78) );
  INVX2M U83 ( .A(n85), .Y(n82) );
  AO21XLM U84 ( .A0(n7), .A1(n86), .B0(n90), .Y(n77) );
  OR2X2M U85 ( .A(n87), .B(n88), .Y(n7) );
  INVX2M U86 ( .A(n15), .Y(n14) );
  XNOR2X2M U87 ( .A(n4), .B(n50), .Y(SUM[20]) );
  XNOR2X2M U88 ( .A(B[20]), .B(n15), .Y(n50) );
  XNOR2X2M U89 ( .A(n14), .B(n16), .Y(n47) );
  NOR2X2M U90 ( .A(n48), .B(n11), .Y(n46) );
  NOR2X2M U91 ( .A(n14), .B(B[20]), .Y(n49) );
  XNOR2X2M U92 ( .A(n8), .B(n23), .Y(SUM[7]) );
  AOI2B1X1M U93 ( .A1N(n74), .A0(n93), .B0(n94), .Y(n91) );
  NOR2BX2M U94 ( .AN(n69), .B(n12), .Y(n92) );
  XNOR2X2M U95 ( .A(n113), .B(n114), .Y(SUM[11]) );
  NOR2BX2M U96 ( .AN(n110), .B(n115), .Y(n114) );
  XNOR2XLM U97 ( .A(n6), .B(n20), .Y(SUM[8]) );
  NOR2BX2M U98 ( .AN(n21), .B(n22), .Y(n20) );
  XNOR2X2M U99 ( .A(n36), .B(n37), .Y(SUM[5]) );
  NOR2BX2M U100 ( .AN(n34), .B(n38), .Y(n37) );
  AOI2B1X1M U101 ( .A1N(n39), .A0(n1), .B0(n31), .Y(n36) );
  XNOR2X2M U102 ( .A(n98), .B(n99), .Y(SUM[13]) );
  XNOR2X2M U103 ( .A(n101), .B(n102), .Y(SUM[12]) );
  NAND2X2M U104 ( .A(n84), .B(n80), .Y(n102) );
  XNOR2X2M U105 ( .A(n117), .B(n119), .Y(SUM[10]) );
  NAND2X2M U106 ( .A(n111), .B(n109), .Y(n119) );
  XNOR2X2M U107 ( .A(n27), .B(n30), .Y(SUM[6]) );
  NAND2X2M U108 ( .A(n29), .B(n26), .Y(n30) );
  XNOR2XLM U109 ( .A(n88), .B(n41), .Y(SUM[4]) );
  NOR2BX2M U110 ( .AN(n40), .B(n39), .Y(n41) );
  OAI2BB1X2M U111 ( .A0N(n66), .A1N(n68), .B0(n67), .Y(n63) );
  OAI21X2M U112 ( .A0(n2), .A1(n19), .B0(n18), .Y(n117) );
  AND2X2M U113 ( .A(n32), .B(n35), .Y(n9) );
  OAI21X2M U114 ( .A0(n77), .A1(n79), .B0(n13), .Y(n71) );
  NAND2X2M U115 ( .A(n75), .B(n76), .Y(n72) );
  NAND2X2M U116 ( .A(B[17]), .B(n14), .Y(n61) );
  NAND2BX2M U117 ( .AN(B[17]), .B(n15), .Y(n64) );
  NOR2X2M U118 ( .A(n12), .B(n74), .Y(n73) );
  NAND3X2M U119 ( .A(n124), .B(n26), .C(n25), .Y(n87) );
  NOR2X2M U120 ( .A(n39), .B(n38), .Y(n124) );
  NOR2BX2M U121 ( .AN(n18), .B(n19), .Y(n17) );
  NAND2BX2M U122 ( .AN(n121), .B(n122), .Y(n120) );
  NAND2X2M U123 ( .A(n24), .B(n29), .Y(n121) );
  NAND2X2M U124 ( .A(n97), .B(n75), .Y(n93) );
  NAND2BX2M U125 ( .AN(n105), .B(n106), .Y(n103) );
  NAND2X2M U126 ( .A(n110), .B(n111), .Y(n105) );
  INVX2M U127 ( .A(n108), .Y(n19) );
  INVX2M U128 ( .A(n112), .Y(n22) );
  INVX2M U129 ( .A(n84), .Y(n83) );
  INVX2M U130 ( .A(n104), .Y(n115) );
  AND2X2M U131 ( .A(B[20]), .B(n14), .Y(n11) );
  INVX2M U132 ( .A(n29), .Y(n28) );
  INVX2M U133 ( .A(n42), .Y(n89) );
  NAND2XLM U134 ( .A(B[4]), .B(A[4]), .Y(n40) );
  NAND2XLM U135 ( .A(B[9]), .B(A[9]), .Y(n18) );
  OR2X1M U136 ( .A(B[5]), .B(A[5]), .Y(n32) );
  OR2X1M U137 ( .A(B[9]), .B(A[9]), .Y(n108) );
  NAND2XLM U138 ( .A(B[8]), .B(A[8]), .Y(n21) );
  NAND2XLM U139 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2XLM U140 ( .A(B[16]), .B(A[16]), .Y(n67) );
  OR2X1M U141 ( .A(B[8]), .B(A[8]), .Y(n112) );
  NAND2XLM U142 ( .A(B[15]), .B(A[15]), .Y(n69) );
  OR2X1M U143 ( .A(B[4]), .B(A[4]), .Y(n35) );
  OR2X1M U144 ( .A(B[16]), .B(A[16]), .Y(n66) );
  INVXLM U145 ( .A(A[2]), .Y(n125) );
endmodule


module up4_filter_0_DW01_add_39 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n96, n98, n99, n100, n101, n102, n103;

  OAI2BB1X2M U2 ( .A0N(n46), .A1N(n48), .B0(n47), .Y(n44) );
  OAI21X2M U3 ( .A0(n3), .A1(n10), .B0(n9), .Y(n91) );
  OR2X2M U4 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NAND2X2M U5 ( .A(B[6]), .B(A[6]), .Y(n22) );
  OAI2B1X2M U6 ( .A1N(n50), .A0(n51), .B0(n52), .Y(n48) );
  AOI2B1X1M U7 ( .A1N(n53), .A0(n54), .B0(n55), .Y(n51) );
  OAI2BB1X2M U8 ( .A0N(n38), .A1N(n40), .B0(n39), .Y(n36) );
  NAND2X2M U9 ( .A(n101), .B(n18), .Y(n1) );
  AOI2B1X2M U10 ( .A1N(n90), .A0(n91), .B0(n92), .Y(n87) );
  XNOR2X4M U11 ( .A(n91), .B(n93), .Y(SUM[10]) );
  XNOR2XLM U12 ( .A(n3), .B(n8), .Y(SUM[9]) );
  AOI2B1X1M U13 ( .A1N(n59), .A0(n60), .B0(n61), .Y(n57) );
  OAI2B1X2M U14 ( .A1N(n56), .A0(n57), .B0(n58), .Y(n54) );
  AND2X1M U15 ( .A(n26), .B(n25), .Y(SUM[5]) );
  INVX2M U16 ( .A(n100), .Y(SUM[4]) );
  CLKNAND2X2M U17 ( .A(n16), .B(n22), .Y(n102) );
  OAI2BB1XLM U18 ( .A0N(n34), .A1N(n36), .B0(n35), .Y(n32) );
  NAND2XLM U19 ( .A(B[5]), .B(A[5]), .Y(n26) );
  CLKINVX2M U20 ( .A(A[4]), .Y(n100) );
  INVX1M U21 ( .A(n99), .Y(SUM[0]) );
  INVX2M U22 ( .A(A[21]), .Y(n33) );
  OAI21BXLM U23 ( .A0(n1), .A1(n63), .B0N(n64), .Y(n60) );
  INVXLM U24 ( .A(n65), .Y(n64) );
  INVXLM U25 ( .A(B[21]), .Y(n7) );
  XNOR2X2M U26 ( .A(n20), .B(n24), .Y(SUM[6]) );
  OAI2B1X2M U27 ( .A1N(n75), .A0(n4), .B0(n62), .Y(n73) );
  NAND2XLM U28 ( .A(n58), .B(n56), .Y(n74) );
  NAND2XLM U29 ( .A(n85), .B(n81), .Y(n93) );
  INVXLM U30 ( .A(n50), .Y(n68) );
  OA21X4M U31 ( .A0(n1), .A1(n13), .B0(n12), .Y(n3) );
  NAND3X2M U32 ( .A(n23), .B(n25), .C(n20), .Y(n103) );
  OAI2BB1XLM U33 ( .A0N(n56), .A1N(n73), .B0(n58), .Y(n69) );
  INVX2M U34 ( .A(n70), .Y(n55) );
  CLKINVX2M U35 ( .A(n71), .Y(n53) );
  INVX2M U36 ( .A(n98), .Y(SUM[1]) );
  INVX2M U37 ( .A(n96), .Y(SUM[3]) );
  INVX2M U38 ( .A(n94), .Y(SUM[2]) );
  AOI22XLM U39 ( .A0(n31), .A1(n32), .B0(B[20]), .B1(A[21]), .Y(n30) );
  NAND2XLM U40 ( .A(B[19]), .B(A[21]), .Y(n35) );
  OA21XLM U41 ( .A0(n1), .A1(n63), .B0(n65), .Y(n4) );
  XNOR2X1M U42 ( .A(n14), .B(n15), .Y(SUM[7]) );
  CLKINVX2M U43 ( .A(n18), .Y(n17) );
  CLKINVX2M U44 ( .A(n86), .Y(n13) );
  CLKINVX2M U45 ( .A(n78), .Y(n89) );
  CLKNAND2X2M U46 ( .A(n70), .B(n71), .Y(n72) );
  NAND4XLM U47 ( .A(n78), .B(n81), .C(n82), .D(n86), .Y(n63) );
  NAND2XLM U48 ( .A(n12), .B(n9), .Y(n83) );
  NAND2X1M U49 ( .A(n77), .B(n78), .Y(n65) );
  NAND2XLM U50 ( .A(n84), .B(n85), .Y(n79) );
  NAND3XLM U51 ( .A(n81), .B(n82), .C(n83), .Y(n80) );
  CLKINVX2M U52 ( .A(n82), .Y(n10) );
  CLKINVX2M U53 ( .A(n75), .Y(n59) );
  INVXLM U54 ( .A(n81), .Y(n90) );
  CLKNAND2X2M U55 ( .A(n43), .B(n42), .Y(n45) );
  CLKNAND2X2M U56 ( .A(n35), .B(n34), .Y(n37) );
  AOI2B1XLM U57 ( .A1N(n53), .A0(n69), .B0(n55), .Y(n66) );
  INVXLM U58 ( .A(n62), .Y(n61) );
  NAND2BX1M U59 ( .AN(B[18]), .B(n33), .Y(n38) );
  CLKINVX2M U60 ( .A(A[2]), .Y(n94) );
  CLKINVX2M U61 ( .A(A[0]), .Y(n99) );
  CLKINVX2M U62 ( .A(A[3]), .Y(n96) );
  CLKINVX2M U63 ( .A(A[1]), .Y(n98) );
  NAND2XLM U64 ( .A(B[10]), .B(A[10]), .Y(n85) );
  NAND2XLM U65 ( .A(B[13]), .B(A[13]), .Y(n58) );
  XOR2XLM U66 ( .A(B[21]), .B(A[21]), .Y(n6) );
  NAND2XLM U67 ( .A(B[17]), .B(A[21]), .Y(n43) );
  NAND2XLM U68 ( .A(B[18]), .B(A[21]), .Y(n39) );
  XNOR2X1M U69 ( .A(n30), .B(n6), .Y(SUM[21]) );
  NAND2XLM U70 ( .A(n7), .B(n33), .Y(n31) );
  NOR2BX2M U71 ( .AN(n9), .B(n10), .Y(n8) );
  XNOR2X2M U72 ( .A(n1), .B(n11), .Y(SUM[8]) );
  NOR2BX2M U73 ( .AN(n12), .B(n13), .Y(n11) );
  XNOR2X2M U74 ( .A(n87), .B(n88), .Y(SUM[11]) );
  NOR2BX2M U75 ( .AN(n84), .B(n89), .Y(n88) );
  NOR2BX2M U76 ( .AN(n16), .B(n17), .Y(n15) );
  AOI2B1X1M U77 ( .A1N(n19), .A0(n20), .B0(n21), .Y(n14) );
  NAND2X2M U78 ( .A(n22), .B(n23), .Y(n24) );
  INVX2M U79 ( .A(n26), .Y(n20) );
  NAND2BX2M U80 ( .AN(n102), .B(n103), .Y(n101) );
  INVX2M U81 ( .A(n22), .Y(n21) );
  INVX2M U82 ( .A(n23), .Y(n19) );
  CLKXOR2X2M U83 ( .A(n32), .B(n6), .Y(SUM[20]) );
  XNOR2X2M U84 ( .A(n4), .B(n76), .Y(SUM[12]) );
  NOR2BX2M U85 ( .AN(n62), .B(n59), .Y(n76) );
  XNOR2X2M U86 ( .A(n66), .B(n67), .Y(SUM[15]) );
  NOR2BX2M U87 ( .AN(n52), .B(n68), .Y(n67) );
  XNOR2X2M U88 ( .A(n69), .B(n72), .Y(SUM[14]) );
  XNOR2X2M U89 ( .A(n37), .B(n36), .Y(SUM[19]) );
  XNOR2X2M U90 ( .A(n74), .B(n73), .Y(SUM[13]) );
  XNOR2X2M U91 ( .A(n49), .B(n48), .Y(SUM[16]) );
  NAND2X2M U92 ( .A(n47), .B(n46), .Y(n49) );
  XNOR2X2M U93 ( .A(n41), .B(n40), .Y(SUM[18]) );
  NAND2X2M U94 ( .A(n39), .B(n38), .Y(n41) );
  XNOR2X2M U95 ( .A(n45), .B(n44), .Y(SUM[17]) );
  OAI2BB1X2M U96 ( .A0N(n42), .A1N(n44), .B0(n43), .Y(n40) );
  NAND2BX2M U97 ( .AN(B[16]), .B(n33), .Y(n46) );
  NAND2BX2M U98 ( .AN(n79), .B(n80), .Y(n77) );
  NAND2BX2M U99 ( .AN(B[15]), .B(n33), .Y(n50) );
  INVX2M U100 ( .A(n85), .Y(n92) );
  NAND2BX2M U101 ( .AN(B[17]), .B(n33), .Y(n42) );
  NAND2BX2M U102 ( .AN(B[19]), .B(n33), .Y(n34) );
  OR2X1M U103 ( .A(B[5]), .B(A[5]), .Y(n25) );
  OR2X1M U104 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2XLM U105 ( .A(B[7]), .B(A[7]), .Y(n16) );
  OR2X1M U106 ( .A(B[10]), .B(A[10]), .Y(n81) );
  OR2X1M U107 ( .A(B[9]), .B(A[9]), .Y(n82) );
  OR2X1M U108 ( .A(B[14]), .B(A[14]), .Y(n71) );
  NAND2XLM U109 ( .A(B[14]), .B(A[14]), .Y(n70) );
  NAND2XLM U110 ( .A(B[12]), .B(A[12]), .Y(n62) );
  NAND2XLM U111 ( .A(B[9]), .B(A[9]), .Y(n9) );
  NAND2XLM U112 ( .A(B[8]), .B(A[8]), .Y(n12) );
  OR2X1M U113 ( .A(B[8]), .B(A[8]), .Y(n86) );
  OR2X1M U114 ( .A(B[13]), .B(A[13]), .Y(n56) );
  NAND2XLM U115 ( .A(B[15]), .B(A[21]), .Y(n52) );
  NAND2XLM U116 ( .A(B[11]), .B(A[11]), .Y(n84) );
  OR2X1M U117 ( .A(B[12]), .B(A[12]), .Y(n75) );
  OR2X1M U118 ( .A(B[11]), .B(A[11]), .Y(n78) );
  NAND2XLM U119 ( .A(B[16]), .B(A[21]), .Y(n47) );
endmodule


module up4_filter_0_DW01_add_27 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139;

  NAND2X4M U2 ( .A(n33), .B(n34), .Y(n29) );
  OR2X4M U3 ( .A(B[12]), .B(A[12]), .Y(n99) );
  OR2X6M U4 ( .A(A[20]), .B(B[20]), .Y(n15) );
  XNOR2X1M U5 ( .A(n37), .B(n35), .Y(SUM[5]) );
  NAND2X3M U6 ( .A(n35), .B(n36), .Y(n33) );
  NAND2XLM U7 ( .A(n137), .B(n40), .Y(n3) );
  NAND2X1M U8 ( .A(n1), .B(n2), .Y(n4) );
  NAND2X2M U9 ( .A(n3), .B(n4), .Y(SUM[4]) );
  INVXLM U10 ( .A(n137), .Y(n1) );
  INVX1M U11 ( .A(n40), .Y(n2) );
  INVX4M U12 ( .A(n95), .Y(n137) );
  OR2X8M U13 ( .A(B[6]), .B(A[6]), .Y(n32) );
  NAND2XLM U14 ( .A(B[6]), .B(A[6]), .Y(n31) );
  OAI2BB1X2M U15 ( .A0N(B[6]), .A1N(A[6]), .B0(n32), .Y(n12) );
  INVX3M U16 ( .A(B[8]), .Y(n23) );
  OAI21X3M U17 ( .A0(n137), .A1(n38), .B0(n39), .Y(n35) );
  INVX4M U18 ( .A(n98), .Y(n38) );
  NAND2X3M U19 ( .A(B[9]), .B(A[9]), .Y(n18) );
  OR2X4M U20 ( .A(B[9]), .B(A[9]), .Y(n96) );
  XNOR2X4M U21 ( .A(n130), .B(n131), .Y(SUM[10]) );
  XNOR2X4M U22 ( .A(n25), .B(n26), .Y(SUM[7]) );
  AO21X4M U23 ( .A0(B[12]), .A1(A[12]), .B0(n117), .Y(n11) );
  XOR2X4M U24 ( .A(n55), .B(n57), .Y(SUM[19]) );
  NOR2BX4M U25 ( .AN(n53), .B(n58), .Y(n57) );
  XNOR2X2M U26 ( .A(n66), .B(n65), .Y(SUM[17]) );
  INVXLM U27 ( .A(A[10]), .Y(n122) );
  NAND3X2M U28 ( .A(n134), .B(n93), .C(n92), .Y(n21) );
  INVX2M U29 ( .A(n99), .Y(n117) );
  OR2X6M U30 ( .A(B[7]), .B(A[7]), .Y(n27) );
  INVXLM U31 ( .A(n32), .Y(n28) );
  NAND2X2M U32 ( .A(n113), .B(n114), .Y(n100) );
  CLKINVX2M U33 ( .A(B[13]), .Y(n113) );
  OR2X2M U34 ( .A(B[18]), .B(A[18]), .Y(n59) );
  XNOR2X2M U35 ( .A(n68), .B(n70), .Y(SUM[16]) );
  OR2X4M U36 ( .A(B[19]), .B(A[19]), .Y(n56) );
  XNOR2X2M U37 ( .A(n107), .B(n13), .Y(SUM[14]) );
  INVX2M U38 ( .A(B[10]), .Y(n121) );
  OAI2B1X2M U39 ( .A1N(n44), .A0(n138), .B0(n42), .Y(n95) );
  OR2X2M U40 ( .A(B[4]), .B(A[4]), .Y(n98) );
  OR2X2M U41 ( .A(B[3]), .B(A[3]), .Y(n44) );
  OR2X2M U42 ( .A(B[16]), .B(A[16]), .Y(n67) );
  NAND2X2M U43 ( .A(B[16]), .B(A[16]), .Y(n69) );
  OR2X2M U44 ( .A(B[17]), .B(A[17]), .Y(n63) );
  NOR2X2M U45 ( .A(B[10]), .B(A[10]), .Y(n5) );
  NAND2BX2M U46 ( .AN(n126), .B(n21), .Y(n133) );
  XNOR2X2M U47 ( .A(n29), .B(n12), .Y(SUM[6]) );
  AOI2B1X1M U48 ( .A1N(n28), .A0(n29), .B0(n30), .Y(n25) );
  AOI21BX2M U49 ( .A0(B[7]), .A1(A[7]), .B0N(n27), .Y(n26) );
  NAND2X2M U50 ( .A(n109), .B(n110), .Y(n78) );
  INVX2M U51 ( .A(B[14]), .Y(n109) );
  XNOR2X2M U52 ( .A(n112), .B(n10), .Y(SUM[13]) );
  XNOR2X2M U53 ( .A(n62), .B(n61), .Y(SUM[18]) );
  NAND2X2M U54 ( .A(n60), .B(n59), .Y(n62) );
  NOR2X2M U55 ( .A(n51), .B(n16), .Y(n48) );
  AOI21X2M U56 ( .A0(B[10]), .A1(A[10]), .B0(n5), .Y(n131) );
  INVX2M U57 ( .A(n6), .Y(n130) );
  OAI21X2M U58 ( .A0(n8), .A1(n19), .B0(n18), .Y(n6) );
  INVX2M U59 ( .A(n56), .Y(n58) );
  NAND2XLM U60 ( .A(B[8]), .B(A[8]), .Y(n123) );
  NAND2X2M U61 ( .A(n133), .B(n123), .Y(n132) );
  INVX2M U62 ( .A(n132), .Y(n8) );
  NOR2BX8M U63 ( .AN(n18), .B(n19), .Y(n17) );
  OAI2BB1X2M U64 ( .A0N(B[14]), .A1N(A[14]), .B0(n78), .Y(n13) );
  OAI2BB1X2M U65 ( .A0N(B[13]), .A1N(A[13]), .B0(n100), .Y(n10) );
  NAND2X2M U66 ( .A(B[19]), .B(A[19]), .Y(n53) );
  NAND2X1M U67 ( .A(n112), .B(n100), .Y(n111) );
  NAND4X2M U68 ( .A(n125), .B(n21), .C(n7), .D(n90), .Y(n118) );
  OR2X6M U69 ( .A(B[5]), .B(A[5]), .Y(n36) );
  OAI21X2M U70 ( .A0(n8), .A1(n19), .B0(n18), .Y(n128) );
  NAND2X2M U71 ( .A(B[18]), .B(A[18]), .Y(n60) );
  INVX1M U72 ( .A(n5), .Y(n7) );
  NAND2X2M U73 ( .A(n116), .B(n99), .Y(n115) );
  NAND3X2M U74 ( .A(n118), .B(n88), .C(n87), .Y(n116) );
  NAND2XLM U75 ( .A(B[13]), .B(A[13]), .Y(n101) );
  NAND2XLM U76 ( .A(B[12]), .B(A[12]), .Y(n86) );
  NAND2X2M U77 ( .A(n88), .B(n90), .Y(n127) );
  OAI2BB1XLM U78 ( .A0N(A[8]), .A1N(B[8]), .B0(n24), .Y(n20) );
  INVX3M U79 ( .A(A[8]), .Y(n22) );
  AND3XLM U80 ( .A(n24), .B(n7), .C(n96), .Y(n89) );
  CLKNAND2X2M U81 ( .A(n55), .B(n56), .Y(n54) );
  XNOR2X4M U82 ( .A(n9), .B(n127), .Y(SUM[11]) );
  AO21X4M U83 ( .A0(n7), .A1(n128), .B0(n129), .Y(n9) );
  NAND2X2M U84 ( .A(n53), .B(n54), .Y(n52) );
  INVX1M U85 ( .A(n31), .Y(n30) );
  INVX3M U86 ( .A(n24), .Y(n126) );
  NOR2BX2M U87 ( .AN(n69), .B(n71), .Y(n70) );
  XNOR2X4M U88 ( .A(n116), .B(n11), .Y(SUM[12]) );
  CLKNAND2X2M U89 ( .A(n78), .B(n79), .Y(n77) );
  XOR2X2M U90 ( .A(n14), .B(n52), .Y(SUM[20]) );
  NAND4X2M U91 ( .A(n136), .B(n36), .C(n32), .D(n27), .Y(n134) );
  OR2X4M U92 ( .A(B[15]), .B(A[15]), .Y(n79) );
  NAND2X1M U93 ( .A(B[15]), .B(A[15]), .Y(n74) );
  OAI211X1M U94 ( .A0(n19), .A1(n123), .B0(n18), .C0(n124), .Y(n119) );
  INVX4M U95 ( .A(n96), .Y(n19) );
  CLKNAND2X2M U96 ( .A(B[3]), .B(A[3]), .Y(n42) );
  NAND2X2M U97 ( .A(B[11]), .B(A[11]), .Y(n88) );
  CLKNAND2X4M U98 ( .A(n23), .B(n22), .Y(n24) );
  XNOR2X4M U99 ( .A(n8), .B(n17), .Y(SUM[9]) );
  XNOR2X4M U100 ( .A(n103), .B(n104), .Y(SUM[15]) );
  AOI2B1X2M U101 ( .A1N(n106), .A0(n107), .B0(n108), .Y(n103) );
  OR2X6M U102 ( .A(B[11]), .B(A[11]), .Y(n90) );
  CLKNAND2X2M U103 ( .A(n111), .B(n101), .Y(n107) );
  XNOR2X2M U104 ( .A(n20), .B(n21), .Y(SUM[8]) );
  OAI2BB1X4M U105 ( .A0N(n59), .A1N(n61), .B0(n60), .Y(n55) );
  NOR2XLM U106 ( .A(n137), .B(n38), .Y(n136) );
  OAI2B11X1M U107 ( .A1N(n36), .A0(n39), .B0(n34), .C0(n31), .Y(n135) );
  XOR2XLM U108 ( .A(B[20]), .B(A[20]), .Y(n14) );
  NAND2X2M U109 ( .A(B[2]), .B(A[2]), .Y(n45) );
  INVX2M U110 ( .A(n139), .Y(SUM[1]) );
  NAND2XLM U111 ( .A(n36), .B(n34), .Y(n37) );
  NOR2X1M U112 ( .A(n72), .B(n73), .Y(n68) );
  CLKNAND2X2M U113 ( .A(n82), .B(n83), .Y(n81) );
  NAND2XLM U114 ( .A(n101), .B(n102), .Y(n75) );
  NAND2XLM U115 ( .A(B[14]), .B(A[14]), .Y(n102) );
  NOR2BX2M U116 ( .AN(n74), .B(n105), .Y(n104) );
  OAI2BB1X4M U117 ( .A0N(n63), .A1N(n65), .B0(n64), .Y(n61) );
  NAND2XLM U118 ( .A(n122), .B(n121), .Y(n120) );
  INVXLM U119 ( .A(n67), .Y(n71) );
  NAND2XLM U120 ( .A(n99), .B(n100), .Y(n80) );
  NAND2XLM U121 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2XLM U122 ( .A(B[10]), .B(A[10]), .Y(n124) );
  NAND2XLM U123 ( .A(A[4]), .B(B[4]), .Y(n39) );
  NAND2XLM U124 ( .A(B[7]), .B(A[7]), .Y(n93) );
  NAND2BXLM U125 ( .AN(n97), .B(n95), .Y(n94) );
  NAND2X2M U126 ( .A(B[17]), .B(A[17]), .Y(n64) );
  CLKAND2X4M U127 ( .A(n52), .B(n15), .Y(n51) );
  AND2X1M U128 ( .A(B[20]), .B(A[20]), .Y(n16) );
  NAND2BX2M U129 ( .AN(n45), .B(n46), .Y(n138) );
  INVXLM U130 ( .A(n44), .Y(n43) );
  INVX2M U131 ( .A(n124), .Y(n129) );
  OAI2B1X2M U132 ( .A1N(n67), .A0(n68), .B0(n69), .Y(n65) );
  INVX2M U133 ( .A(n102), .Y(n108) );
  NAND3X2M U134 ( .A(n119), .B(n120), .C(n90), .Y(n87) );
  NAND3X2M U135 ( .A(n135), .B(n32), .C(n27), .Y(n92) );
  INVXLM U136 ( .A(n74), .Y(n73) );
  AOI2B1X1M U137 ( .A1N(n75), .A0(n76), .B0(n77), .Y(n72) );
  NAND2BX2M U138 ( .AN(n80), .B(n81), .Y(n76) );
  NOR2XLM U139 ( .A(n19), .B(n126), .Y(n125) );
  NAND2X2M U140 ( .A(n115), .B(n86), .Y(n112) );
  NAND2X2M U141 ( .A(n64), .B(n63), .Y(n66) );
  INVX2M U142 ( .A(n79), .Y(n105) );
  INVX2M U143 ( .A(n78), .Y(n106) );
  NOR2BXLM U144 ( .AN(n39), .B(n38), .Y(n40) );
  NAND2XLM U145 ( .A(n87), .B(n88), .Y(n84) );
  NAND3X2M U146 ( .A(n89), .B(n90), .C(n91), .Y(n82) );
  NOR2X2M U147 ( .A(n84), .B(n85), .Y(n83) );
  NAND3XLM U148 ( .A(n92), .B(n93), .C(n94), .Y(n91) );
  INVX2M U149 ( .A(n86), .Y(n85) );
  INVX2M U150 ( .A(A[21]), .Y(n50) );
  INVX2M U151 ( .A(A[13]), .Y(n114) );
  INVX2M U152 ( .A(A[14]), .Y(n110) );
  XNOR2X2M U153 ( .A(n48), .B(n49), .Y(SUM[21]) );
  XNOR2X2M U154 ( .A(B[21]), .B(n50), .Y(n49) );
  AND2X2M U155 ( .A(n45), .B(n46), .Y(SUM[2]) );
  NAND4XLM U156 ( .A(n36), .B(n98), .C(n32), .D(n27), .Y(n97) );
  XNOR2X2M U157 ( .A(n45), .B(n41), .Y(SUM[3]) );
  NOR2BX2M U158 ( .AN(n42), .B(n43), .Y(n41) );
  OR2X2M U159 ( .A(B[2]), .B(A[2]), .Y(n46) );
  INVX2M U160 ( .A(B[1]), .Y(n139) );
endmodule


module up4_filter_0_DW01_add_46 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129;

  NAND2X2M U2 ( .A(B[7]), .B(A[7]), .Y(n20) );
  NAND2BX4M U3 ( .AN(B[7]), .B(n2), .Y(n22) );
  XNOR2X4M U4 ( .A(n11), .B(n12), .Y(SUM[9]) );
  XNOR2X4M U5 ( .A(n119), .B(n121), .Y(SUM[10]) );
  XNOR2X4M U6 ( .A(n105), .B(n106), .Y(SUM[12]) );
  XNOR2X4M U7 ( .A(n60), .B(n62), .Y(SUM[17]) );
  NAND2X2M U8 ( .A(n99), .B(n71), .Y(n94) );
  XNOR2X4M U9 ( .A(n6), .B(n15), .Y(SUM[8]) );
  NAND2XLM U10 ( .A(n71), .B(n87), .Y(n101) );
  CLKNAND2X2M U11 ( .A(n73), .B(n88), .Y(n96) );
  OR2X2M U12 ( .A(B[11]), .B(A[11]), .Y(n108) );
  NAND2X2M U13 ( .A(B[15]), .B(A[15]), .Y(n67) );
  CLKNAND2X2M U14 ( .A(n25), .B(n26), .Y(n27) );
  INVX2M U15 ( .A(n45), .Y(n46) );
  OR2X2M U16 ( .A(B[4]), .B(A[4]), .Y(n36) );
  INVX2M U17 ( .A(n36), .Y(n33) );
  NAND2BX2M U18 ( .AN(n124), .B(n125), .Y(n123) );
  XNOR2X2M U19 ( .A(n115), .B(n116), .Y(SUM[11]) );
  OAI21X2M U20 ( .A0(n37), .A1(n33), .B0(n34), .Y(n30) );
  XNOR2X2M U21 ( .A(n37), .B(n35), .Y(SUM[4]) );
  NOR2BX2M U22 ( .AN(n34), .B(n33), .Y(n35) );
  NAND2X2M U23 ( .A(n92), .B(n93), .Y(n89) );
  INVX2M U24 ( .A(B[15]), .Y(n92) );
  OAI21X2M U25 ( .A0(n6), .A1(n76), .B0(n80), .Y(n105) );
  OR2X2M U26 ( .A(B[12]), .B(A[12]), .Y(n86) );
  NAND2X2M U27 ( .A(n79), .B(n86), .Y(n106) );
  NAND2BX2M U28 ( .AN(B[17]), .B(n9), .Y(n61) );
  INVX2M U29 ( .A(A[7]), .Y(n2) );
  NAND2X2M U30 ( .A(n102), .B(n103), .Y(n87) );
  INVX2M U31 ( .A(B[13]), .Y(n102) );
  NAND2X2M U32 ( .A(B[13]), .B(A[13]), .Y(n71) );
  XNOR2X2M U33 ( .A(n66), .B(n65), .Y(SUM[16]) );
  XNOR2X2M U34 ( .A(n53), .B(n57), .Y(SUM[18]) );
  INVX2M U35 ( .A(B[19]), .Y(n49) );
  NAND2BX2M U36 ( .AN(n51), .B(n52), .Y(n50) );
  NAND2X2M U37 ( .A(n58), .B(n61), .Y(n62) );
  NAND2X2M U38 ( .A(n14), .B(n11), .Y(n122) );
  OR2X2M U39 ( .A(B[10]), .B(A[10]), .Y(n113) );
  NAND2X2M U40 ( .A(n97), .B(n98), .Y(n88) );
  INVX2M U41 ( .A(B[14]), .Y(n97) );
  OAI2BB2X2M U42 ( .B0(n9), .B1(n49), .A0N(n48), .A1N(n50), .Y(n45) );
  NAND2X2M U43 ( .A(n110), .B(n113), .Y(n121) );
  NAND2X2M U44 ( .A(n122), .B(n13), .Y(n119) );
  NAND2X2M U45 ( .A(B[12]), .B(A[12]), .Y(n79) );
  NOR2BX8M U46 ( .AN(n1), .B(n17), .Y(n15) );
  NAND2XLM U47 ( .A(B[19]), .B(n8), .Y(n56) );
  NAND3X2M U48 ( .A(n126), .B(n31), .C(n26), .Y(n125) );
  OR2X4M U49 ( .A(B[6]), .B(A[6]), .Y(n26) );
  BUFX4M U50 ( .A(n16), .Y(n1) );
  NAND2X1M U51 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2X2M U52 ( .A(n123), .B(n22), .Y(n84) );
  AOI2B1X1M U53 ( .A1N(n44), .A0(n45), .B0(n7), .Y(n42) );
  NAND3X1M U54 ( .A(n71), .B(n72), .C(n73), .Y(n70) );
  NAND2X2M U55 ( .A(n88), .B(n89), .Y(n69) );
  OAI21X6M U56 ( .A0(n6), .A1(n17), .B0(n1), .Y(n11) );
  NAND2X2M U57 ( .A(n13), .B(n14), .Y(n12) );
  NAND2X2M U58 ( .A(n55), .B(n54), .Y(n57) );
  NAND2X2M U59 ( .A(n53), .B(n54), .Y(n52) );
  CLKNAND2X2M U60 ( .A(n100), .B(n87), .Y(n99) );
  NAND2X1M U61 ( .A(B[11]), .B(A[11]), .Y(n111) );
  NAND2X1M U62 ( .A(B[4]), .B(A[4]), .Y(n34) );
  NAND2X1M U63 ( .A(B[18]), .B(n8), .Y(n55) );
  XNOR2X4M U64 ( .A(n100), .B(n101), .Y(SUM[13]) );
  NAND2BX4M U65 ( .AN(n69), .B(n70), .Y(n68) );
  XNOR2X4M U66 ( .A(n94), .B(n96), .Y(SUM[14]) );
  CLKINVX2M U67 ( .A(n110), .Y(n120) );
  NAND3X1M U68 ( .A(n109), .B(n110), .C(n111), .Y(n107) );
  XNOR2X4M U69 ( .A(n46), .B(n47), .Y(SUM[20]) );
  XNOR2X4M U70 ( .A(B[20]), .B(n9), .Y(n47) );
  CLKNAND2X4M U71 ( .A(n67), .B(n68), .Y(n65) );
  NOR2XLM U72 ( .A(B[6]), .B(A[6]), .Y(n3) );
  CLKNAND2X2M U73 ( .A(n29), .B(n31), .Y(n32) );
  NAND2X2M U74 ( .A(B[5]), .B(A[5]), .Y(n29) );
  INVX1M U75 ( .A(A[2]), .Y(n127) );
  NAND2X1M U76 ( .A(B[3]), .B(A[3]), .Y(n37) );
  AOI2B1X2M U77 ( .A1N(n3), .A0(n23), .B0(n24), .Y(n18) );
  NAND2X1M U78 ( .A(n28), .B(n29), .Y(n23) );
  NAND2BX1M U79 ( .AN(B[3]), .B(n128), .Y(n39) );
  NAND2X2M U80 ( .A(B[14]), .B(A[14]), .Y(n73) );
  AOI21X1M U81 ( .A0(n94), .A1(n88), .B0(n95), .Y(n90) );
  NAND2X1M U82 ( .A(n20), .B(n25), .Y(n124) );
  INVX4M U83 ( .A(n114), .Y(n17) );
  NAND2X2M U84 ( .A(n104), .B(n79), .Y(n100) );
  NAND2X2M U85 ( .A(n58), .B(n59), .Y(n53) );
  NAND2X2M U86 ( .A(n60), .B(n61), .Y(n59) );
  NAND2XLM U87 ( .A(n1), .B(n13), .Y(n112) );
  NAND2BX4M U88 ( .AN(B[18]), .B(n9), .Y(n54) );
  XNOR2X4M U89 ( .A(n23), .B(n27), .Y(SUM[6]) );
  NAND3X1M U90 ( .A(n112), .B(n14), .C(n113), .Y(n109) );
  NAND2XLM U91 ( .A(n122), .B(n13), .Y(n4) );
  CLKINVX2M U92 ( .A(n37), .Y(n85) );
  INVXLM U93 ( .A(A[3]), .Y(n128) );
  OA21X8M U94 ( .A0(n37), .A1(n83), .B0(n84), .Y(n6) );
  NOR2BX4M U95 ( .AN(n20), .B(n21), .Y(n19) );
  CLKINVX4M U96 ( .A(n22), .Y(n21) );
  NAND2X1M U97 ( .A(B[6]), .B(A[6]), .Y(n25) );
  AOI2B1X1M U98 ( .A1N(n118), .A0(n4), .B0(n120), .Y(n115) );
  CLKNAND2X2M U99 ( .A(B[10]), .B(A[10]), .Y(n110) );
  NAND2X2M U100 ( .A(n105), .B(n86), .Y(n104) );
  XNOR2X4M U101 ( .A(n18), .B(n19), .Y(SUM[7]) );
  CLKNAND2X2M U102 ( .A(n64), .B(n63), .Y(n66) );
  NAND4X2M U103 ( .A(n22), .B(n26), .C(n31), .D(n36), .Y(n83) );
  CLKNAND2X2M U104 ( .A(n30), .B(n31), .Y(n28) );
  INVX2M U105 ( .A(A[21]), .Y(n9) );
  NAND2X1M U106 ( .A(B[9]), .B(A[9]), .Y(n13) );
  INVX2M U107 ( .A(A[14]), .Y(n98) );
  INVX2M U108 ( .A(A[13]), .Y(n103) );
  NAND2X2M U109 ( .A(n48), .B(n56), .Y(n5) );
  OAI2BB1X2M U110 ( .A0N(n63), .A1N(n65), .B0(n64), .Y(n60) );
  OAI2B1XLM U111 ( .A1N(n85), .A0(n83), .B0(n84), .Y(n82) );
  INVXLM U112 ( .A(n55), .Y(n51) );
  XNOR2X4M U113 ( .A(n5), .B(n50), .Y(SUM[19]) );
  INVXLM U114 ( .A(n76), .Y(n81) );
  XOR2X4M U115 ( .A(n90), .B(n91), .Y(SUM[15]) );
  INVXLM U116 ( .A(n73), .Y(n95) );
  XNOR2X1M U117 ( .A(n42), .B(n43), .Y(SUM[21]) );
  NAND2XLM U118 ( .A(B[16]), .B(n8), .Y(n64) );
  AND2X1M U119 ( .A(n79), .B(n80), .Y(n78) );
  OR2X2M U120 ( .A(B[5]), .B(A[5]), .Y(n31) );
  OR2X2M U121 ( .A(B[9]), .B(A[9]), .Y(n14) );
  OR2X2M U122 ( .A(B[8]), .B(A[8]), .Y(n114) );
  NAND2X2M U123 ( .A(n49), .B(n9), .Y(n48) );
  INVX2M U124 ( .A(n9), .Y(n8) );
  XNOR2X2M U125 ( .A(n30), .B(n32), .Y(SUM[5]) );
  NOR2BX2M U126 ( .AN(n111), .B(n117), .Y(n116) );
  XNOR2X2M U127 ( .A(n8), .B(n10), .Y(n43) );
  INVX2M U128 ( .A(B[21]), .Y(n10) );
  NAND2X2M U129 ( .A(B[17]), .B(n8), .Y(n58) );
  NAND4X2M U130 ( .A(n108), .B(n113), .C(n14), .D(n114), .Y(n76) );
  NAND2BX2M U131 ( .AN(B[16]), .B(n9), .Y(n63) );
  NOR2X2M U132 ( .A(n8), .B(B[20]), .Y(n44) );
  AND2X2M U133 ( .A(B[20]), .B(n8), .Y(n7) );
  INVX2M U134 ( .A(n108), .Y(n117) );
  NAND2X2M U135 ( .A(n107), .B(n108), .Y(n80) );
  NAND2X2M U136 ( .A(n34), .B(n29), .Y(n126) );
  NAND2BX2M U137 ( .AN(n74), .B(n75), .Y(n72) );
  CLKNAND2X2M U138 ( .A(n77), .B(n78), .Y(n75) );
  NAND2XLM U139 ( .A(n86), .B(n87), .Y(n74) );
  NAND2X2M U140 ( .A(n81), .B(n82), .Y(n77) );
  INVX2M U141 ( .A(n25), .Y(n24) );
  INVX2M U142 ( .A(n113), .Y(n118) );
  INVX2M U143 ( .A(A[15]), .Y(n93) );
  NOR2BX2M U144 ( .AN(n37), .B(n38), .Y(SUM[3]) );
  INVX2M U145 ( .A(n39), .Y(n38) );
  INVX2M U146 ( .A(n127), .Y(SUM[2]) );
  CLKINVX2M U147 ( .A(n129), .Y(SUM[1]) );
  INVXLM U148 ( .A(A[1]), .Y(n129) );
  NAND2X4M U149 ( .A(n67), .B(n89), .Y(n91) );
endmodule


module up4_filter_0_DW01_add_44 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127;

  AO21X2M U2 ( .A0(n112), .A1(n109), .B0(n113), .Y(n7) );
  INVX3M U3 ( .A(B[21]), .Y(n44) );
  CLKNAND2X2M U4 ( .A(B[4]), .B(A[4]), .Y(n121) );
  OR2X4M U5 ( .A(B[4]), .B(A[4]), .Y(n41) );
  NOR2XLM U6 ( .A(B[10]), .B(A[10]), .Y(n5) );
  NOR2BX1M U7 ( .AN(n88), .B(n102), .Y(n101) );
  INVX1M U8 ( .A(n99), .Y(n100) );
  CLKNAND2X2M U9 ( .A(B[7]), .B(A[7]), .Y(n28) );
  OR2X4M U10 ( .A(B[7]), .B(A[7]), .Y(n30) );
  XNOR2X4M U11 ( .A(n18), .B(n19), .Y(SUM[9]) );
  CLKAND2X4M U12 ( .A(n20), .B(n21), .Y(n19) );
  INVX1M U13 ( .A(n22), .Y(n18) );
  OAI21X8M U14 ( .A0(n9), .A1(n25), .B0(n24), .Y(n22) );
  AOI2BB1X8M U15 ( .A0N(n82), .A1N(n37), .B0(n85), .Y(n9) );
  NOR2XLM U16 ( .A(A[21]), .B(B[20]), .Y(n45) );
  AND2X1M U17 ( .A(B[20]), .B(A[21]), .Y(n1) );
  INVX1M U18 ( .A(B[19]), .Y(n17) );
  NAND2X1M U19 ( .A(B[18]), .B(A[18]), .Y(n52) );
  INVX3M U20 ( .A(B[18]), .Y(n62) );
  INVX2M U21 ( .A(B[19]), .Y(n16) );
  XNOR2X4M U22 ( .A(n61), .B(n54), .Y(SUM[18]) );
  NAND2X4M U23 ( .A(n57), .B(n58), .Y(n54) );
  NAND2X2M U24 ( .A(n52), .B(n55), .Y(n61) );
  OR2X2M U25 ( .A(B[10]), .B(A[10]), .Y(n109) );
  OR2X2M U26 ( .A(B[13]), .B(A[13]), .Y(n80) );
  NOR2X1M U27 ( .A(B[15]), .B(A[15]), .Y(n11) );
  NAND2X4M U28 ( .A(B[14]), .B(A[14]), .Y(n76) );
  AO21XLM U29 ( .A0(n125), .A1(n13), .B0(n14), .Y(n84) );
  OR2X2M U30 ( .A(B[8]), .B(A[8]), .Y(n110) );
  OR2X2M U31 ( .A(B[6]), .B(A[6]), .Y(n122) );
  OR2X2M U32 ( .A(B[5]), .B(A[5]), .Y(n40) );
  NAND2X2M U33 ( .A(B[8]), .B(A[8]), .Y(n24) );
  INVX2M U34 ( .A(n110), .Y(n25) );
  NAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n106) );
  INVX2M U36 ( .A(n122), .Y(n31) );
  NAND2X2M U37 ( .A(n62), .B(n63), .Y(n55) );
  INVX2M U38 ( .A(A[18]), .Y(n63) );
  NAND2X2M U39 ( .A(n52), .B(n53), .Y(n50) );
  NAND2X2M U40 ( .A(n54), .B(n55), .Y(n53) );
  XNOR2X2M U41 ( .A(n89), .B(n90), .Y(SUM[15]) );
  AOI2B1X1M U42 ( .A1N(n6), .A0(n4), .B0(n91), .Y(n89) );
  NOR2BX2M U43 ( .AN(n70), .B(n11), .Y(n90) );
  XNOR2X2M U44 ( .A(n69), .B(n66), .Y(SUM[16]) );
  NAND2XLM U45 ( .A(B[6]), .B(A[6]), .Y(n34) );
  XNOR2X1M U46 ( .A(n46), .B(n10), .Y(SUM[20]) );
  OAI2B2X4M U47 ( .A1N(n48), .A0(n49), .B0(n47), .B1(n17), .Y(n46) );
  XNOR2X2M U48 ( .A(n100), .B(n101), .Y(SUM[12]) );
  XNOR2X4M U49 ( .A(n114), .B(n115), .Y(SUM[10]) );
  AND2X4M U50 ( .A(n93), .B(n75), .Y(n2) );
  NAND2X2M U51 ( .A(n79), .B(n99), .Y(n98) );
  AOI2B1X2M U52 ( .A1N(n45), .A0(n46), .B0(n1), .Y(n42) );
  NAND2X2M U53 ( .A(n103), .B(n104), .Y(n87) );
  OR2X4M U54 ( .A(B[9]), .B(A[9]), .Y(n21) );
  NAND4X2M U55 ( .A(n109), .B(n104), .C(n21), .D(n110), .Y(n81) );
  CLKINVX2M U56 ( .A(n80), .Y(n97) );
  NAND2X2M U57 ( .A(B[12]), .B(A[12]), .Y(n88) );
  OR2X6M U58 ( .A(B[12]), .B(A[12]), .Y(n79) );
  NAND2X1M U59 ( .A(B[16]), .B(A[16]), .Y(n65) );
  OR2X4M U60 ( .A(B[16]), .B(A[16]), .Y(n64) );
  AOI2B1XLM U61 ( .A1N(n77), .A0(n8), .B0(n78), .Y(n72) );
  NAND4XLM U62 ( .A(n122), .B(n30), .C(n41), .D(n40), .Y(n3) );
  NOR2X2M U63 ( .A(n31), .B(n39), .Y(n117) );
  OAI21X2M U64 ( .A0(n9), .A1(n81), .B0(n87), .Y(n99) );
  NAND2XLM U65 ( .A(n93), .B(n75), .Y(n4) );
  OAI21X2M U66 ( .A0(n118), .A1(n117), .B0(n30), .Y(n86) );
  NAND2X2M U67 ( .A(n28), .B(n34), .Y(n118) );
  OR2X8M U68 ( .A(B[11]), .B(A[11]), .Y(n104) );
  NAND2XLM U69 ( .A(n24), .B(n20), .Y(n108) );
  NAND2X2M U70 ( .A(n116), .B(n20), .Y(n112) );
  NAND3X1M U71 ( .A(n105), .B(n106), .C(n107), .Y(n103) );
  NAND2X1M U72 ( .A(B[13]), .B(A[13]), .Y(n75) );
  NAND4X4M U73 ( .A(n122), .B(n30), .C(n41), .D(n40), .Y(n82) );
  XNOR2X2M U74 ( .A(n7), .B(n111), .Y(SUM[11]) );
  CLKNAND2X2M U75 ( .A(n70), .B(n71), .Y(n66) );
  NAND2X2M U76 ( .A(n65), .B(n64), .Y(n69) );
  XNOR2X2M U77 ( .A(n67), .B(n59), .Y(SUM[17]) );
  CLKNAND2X2M U78 ( .A(n79), .B(n80), .Y(n78) );
  INVXLM U79 ( .A(n34), .Y(n33) );
  INVXLM U80 ( .A(n32), .Y(n35) );
  OAI21X1M U81 ( .A0(n37), .A1(n38), .B0(n39), .Y(n32) );
  NAND2X2M U82 ( .A(n59), .B(n60), .Y(n58) );
  INVX2M U83 ( .A(n112), .Y(n114) );
  INVXLM U84 ( .A(n94), .Y(n95) );
  NAND2X4M U85 ( .A(B[15]), .B(A[15]), .Y(n70) );
  XOR2X1M U86 ( .A(B[20]), .B(n47), .Y(n10) );
  NOR2X2M U87 ( .A(B[14]), .B(A[14]), .Y(n6) );
  NAND3XLM U88 ( .A(n108), .B(n21), .C(n109), .Y(n105) );
  NOR2X1M U89 ( .A(B[14]), .B(A[14]), .Y(n12) );
  NAND2X2M U90 ( .A(n21), .B(n22), .Y(n116) );
  NAND2X1M U91 ( .A(B[17]), .B(A[17]), .Y(n57) );
  NOR2BX2M U92 ( .AN(n106), .B(n5), .Y(n115) );
  XNOR2X4M U93 ( .A(A[21]), .B(n44), .Y(n43) );
  XNOR2X4M U94 ( .A(n42), .B(n43), .Y(SUM[21]) );
  NOR2BXLM U95 ( .AN(n28), .B(n29), .Y(n27) );
  INVX2M U96 ( .A(n86), .Y(n85) );
  XNOR2X1M U97 ( .A(n9), .B(n23), .Y(SUM[8]) );
  CLKNAND2X2M U98 ( .A(n16), .B(n47), .Y(n48) );
  XNOR2X2M U99 ( .A(n95), .B(n96), .Y(SUM[13]) );
  XNOR2X4M U100 ( .A(n2), .B(n92), .Y(SUM[14]) );
  OAI2BB1X4M U101 ( .A0N(n64), .A1N(n66), .B0(n65), .Y(n59) );
  INVX1M U102 ( .A(n50), .Y(n49) );
  NOR2BX2M U103 ( .AN(n75), .B(n97), .Y(n96) );
  NAND2XLM U104 ( .A(n75), .B(n76), .Y(n73) );
  OR2X1M U105 ( .A(n83), .B(n81), .Y(n8) );
  NAND2X2M U106 ( .A(A[9]), .B(B[9]), .Y(n20) );
  NAND2XLM U107 ( .A(B[5]), .B(A[5]), .Y(n120) );
  NAND2X2M U108 ( .A(n119), .B(n40), .Y(n39) );
  OAI21X1M U109 ( .A0(n72), .A1(n73), .B0(n74), .Y(n71) );
  XNOR2X1M U110 ( .A(n26), .B(n27), .Y(SUM[7]) );
  INVXLM U111 ( .A(n30), .Y(n29) );
  CLKNAND2X2M U112 ( .A(n98), .B(n88), .Y(n94) );
  NAND2XLM U113 ( .A(n107), .B(n104), .Y(n111) );
  AOI2B1XLM U114 ( .A1N(n3), .A0(n84), .B0(n85), .Y(n83) );
  NAND2XLM U115 ( .A(B[11]), .B(A[11]), .Y(n107) );
  NAND2BX2M U116 ( .AN(B[17]), .B(n68), .Y(n60) );
  NAND2XLM U117 ( .A(B[2]), .B(A[2]), .Y(n126) );
  INVXLM U118 ( .A(A[21]), .Y(n47) );
  NOR2BX2M U119 ( .AN(n76), .B(n12), .Y(n92) );
  NAND2X2M U120 ( .A(n57), .B(n60), .Y(n67) );
  INVX2M U121 ( .A(n76), .Y(n91) );
  INVX2M U122 ( .A(n106), .Y(n113) );
  NOR2BX2M U123 ( .AN(n24), .B(n25), .Y(n23) );
  NOR2X2M U124 ( .A(n11), .B(n6), .Y(n74) );
  INVX2M U125 ( .A(n79), .Y(n102) );
  NAND2X2M U126 ( .A(n94), .B(n80), .Y(n93) );
  NAND2X2M U127 ( .A(n40), .B(n41), .Y(n38) );
  AOI2B1XLM U128 ( .A1N(n31), .A0(n32), .B0(n33), .Y(n26) );
  INVX2M U129 ( .A(n84), .Y(n37) );
  XNOR2X2M U130 ( .A(n35), .B(n36), .Y(SUM[6]) );
  NOR2BXLM U131 ( .AN(n34), .B(n31), .Y(n36) );
  NAND2XLM U132 ( .A(n88), .B(n87), .Y(n77) );
  CLKNAND2X2M U133 ( .A(n120), .B(n121), .Y(n119) );
  INVX2M U134 ( .A(A[17]), .Y(n68) );
  AND2X2M U135 ( .A(n124), .B(n123), .Y(n13) );
  AND2X1M U136 ( .A(B[3]), .B(A[3]), .Y(n14) );
  OR2X2M U137 ( .A(B[3]), .B(A[3]), .Y(n124) );
  CLKNAND2X2M U138 ( .A(n126), .B(n127), .Y(n125) );
  OR2X2M U139 ( .A(B[2]), .B(A[2]), .Y(n123) );
  NAND2XLM U140 ( .A(B[19]), .B(A[21]), .Y(n56) );
  NAND2XLM U141 ( .A(B[1]), .B(A[1]), .Y(n127) );
  NAND2X1M U142 ( .A(n16), .B(n47), .Y(n15) );
  XNOR2X2M U143 ( .A(n51), .B(n50), .Y(SUM[19]) );
  NAND2X2M U144 ( .A(n15), .B(n56), .Y(n51) );
endmodule


module up4_filter_0_DW01_add_43 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143;

  NAND2X2M U2 ( .A(n139), .B(n39), .Y(n1) );
  NAND2X1M U3 ( .A(n34), .B(n2), .Y(n138) );
  INVX2M U4 ( .A(n1), .Y(n2) );
  OR2X2M U5 ( .A(B[6]), .B(A[6]), .Y(n34) );
  OR2X2M U6 ( .A(B[19]), .B(A[19]), .Y(n67) );
  NAND2X1M U7 ( .A(B[19]), .B(A[19]), .Y(n68) );
  INVXLM U8 ( .A(n122), .Y(n131) );
  CLKNAND2X2M U9 ( .A(n55), .B(n49), .Y(n141) );
  NAND2X2M U10 ( .A(B[18]), .B(A[18]), .Y(n73) );
  CLKNAND2X2M U11 ( .A(n20), .B(n21), .Y(n19) );
  NAND2BX2M U12 ( .AN(B[3]), .B(n5), .Y(n49) );
  INVX2M U13 ( .A(A[3]), .Y(n5) );
  OR2X2M U14 ( .A(B[12]), .B(A[12]), .Y(n108) );
  AND2X2M U15 ( .A(n102), .B(n101), .Y(n100) );
  NAND4X2M U16 ( .A(n29), .B(n34), .C(n39), .D(n44), .Y(n106) );
  NAND2X2M U17 ( .A(n137), .B(n29), .Y(n107) );
  OR2X2M U18 ( .A(B[5]), .B(A[5]), .Y(n39) );
  INVX2M U19 ( .A(n128), .Y(n24) );
  OA21X4M U20 ( .A0(n105), .A1(n106), .B0(n107), .Y(n13) );
  NOR2BX2M U21 ( .AN(n125), .B(n131), .Y(n130) );
  NAND2X2M U22 ( .A(B[9]), .B(A[9]), .Y(n20) );
  NAND2BX2M U23 ( .AN(B[9]), .B(n7), .Y(n21) );
  OR2X2M U24 ( .A(B[15]), .B(A[15]), .Y(n92) );
  NAND2X2M U25 ( .A(B[15]), .B(A[15]), .Y(n88) );
  NAND2X2M U26 ( .A(B[14]), .B(A[14]), .Y(n95) );
  OR2X2M U27 ( .A(B[14]), .B(A[14]), .Y(n110) );
  NAND2X2M U28 ( .A(n93), .B(n109), .Y(n117) );
  XNOR2X2M U29 ( .A(n13), .B(n22), .Y(SUM[8]) );
  NOR2BX2M U30 ( .AN(n23), .B(n24), .Y(n22) );
  XNOR2X2M U31 ( .A(n25), .B(n26), .Y(SUM[7]) );
  AOI2B1X1M U32 ( .A1N(n30), .A0(n31), .B0(n32), .Y(n25) );
  NOR2BX2M U33 ( .AN(n8), .B(n28), .Y(n26) );
  XNOR2X2M U34 ( .A(n75), .B(n74), .Y(SUM[18]) );
  AOI2B1X1M U35 ( .A1N(n15), .A0(n63), .B0(n16), .Y(n60) );
  XNOR2X2M U36 ( .A(n82), .B(n79), .Y(SUM[17]) );
  INVX2M U37 ( .A(n29), .Y(n28) );
  OR2X2M U38 ( .A(B[7]), .B(A[7]), .Y(n29) );
  AND3X2M U39 ( .A(n128), .B(n21), .C(n127), .Y(n3) );
  NOR2X2M U40 ( .A(B[0]), .B(A[0]), .Y(n4) );
  NAND3BX1M U41 ( .AN(n90), .B(n91), .C(n92), .Y(n89) );
  NAND2XLM U42 ( .A(B[16]), .B(A[16]), .Y(n6) );
  AO21X2M U43 ( .A0(n112), .A1(n110), .B0(n113), .Y(n14) );
  NAND2XLM U44 ( .A(n23), .B(n20), .Y(n126) );
  XNOR2X2M U45 ( .A(n31), .B(n35), .Y(SUM[6]) );
  NAND2X1M U46 ( .A(B[3]), .B(A[3]), .Y(n47) );
  NAND2X2M U47 ( .A(n118), .B(n101), .Y(n116) );
  OR2X12M U48 ( .A(B[10]), .B(A[10]), .Y(n127) );
  XNOR2X1M U49 ( .A(n105), .B(n43), .Y(SUM[4]) );
  CLKNAND2X2M U50 ( .A(n37), .B(n39), .Y(n40) );
  NAND2X3M U51 ( .A(n95), .B(n110), .Y(n114) );
  CLKNAND2X2M U52 ( .A(B[12]), .B(A[12]), .Y(n101) );
  CLKNAND2X2M U53 ( .A(n101), .B(n108), .Y(n120) );
  XNOR2X1M U54 ( .A(n87), .B(n85), .Y(SUM[16]) );
  NAND2X1M U55 ( .A(B[6]), .B(A[6]), .Y(n33) );
  AND2X2M U56 ( .A(n68), .B(n67), .Y(n17) );
  NAND2X4M U57 ( .A(n38), .B(n39), .Y(n36) );
  OAI211X2M U58 ( .A0(n140), .A1(n71), .B0(n57), .C0(n53), .Y(n142) );
  AOI2B1X4M U59 ( .A1N(n141), .A0(n142), .B0(n143), .Y(n105) );
  NAND2XLM U60 ( .A(B[1]), .B(A[1]), .Y(n57) );
  INVX2M U61 ( .A(A[9]), .Y(n7) );
  OAI2BB1X4M U62 ( .A0N(n72), .A1N(n74), .B0(n73), .Y(n69) );
  NAND3X2M U63 ( .A(n138), .B(n33), .C(n27), .Y(n137) );
  NAND2X2M U64 ( .A(n136), .B(n20), .Y(n133) );
  CLKNAND2X2M U65 ( .A(n124), .B(n127), .Y(n135) );
  CLKNAND2X4M U66 ( .A(B[10]), .B(A[10]), .Y(n124) );
  NAND2X1M U67 ( .A(n122), .B(n3), .Y(n98) );
  XNOR2X4M U68 ( .A(n18), .B(n19), .Y(SUM[9]) );
  XNOR2X2M U69 ( .A(n133), .B(n135), .Y(SUM[10]) );
  OR2X6M U70 ( .A(B[11]), .B(A[11]), .Y(n122) );
  XNOR2X2M U71 ( .A(n129), .B(n130), .Y(SUM[11]) );
  OAI21XLM U72 ( .A0(n105), .A1(n106), .B0(n107), .Y(n104) );
  NAND2X4M U73 ( .A(n36), .B(n37), .Y(n31) );
  NAND2X2M U74 ( .A(n21), .B(n18), .Y(n136) );
  OR2X6M U75 ( .A(B[13]), .B(A[13]), .Y(n109) );
  CLKNAND2X2M U76 ( .A(B[11]), .B(A[11]), .Y(n125) );
  OAI21X2M U77 ( .A0(n13), .A1(n98), .B0(n102), .Y(n119) );
  NAND2X1M U78 ( .A(B[7]), .B(A[7]), .Y(n8) );
  OAI21X4M U79 ( .A0(n105), .A1(n41), .B0(n42), .Y(n38) );
  CLKNAND2X2M U80 ( .A(n88), .B(n92), .Y(n111) );
  NAND2XLM U81 ( .A(B[7]), .B(A[7]), .Y(n27) );
  CLKNAND2X2M U82 ( .A(n121), .B(n122), .Y(n102) );
  XNOR2X4M U83 ( .A(n14), .B(n111), .Y(SUM[15]) );
  XNOR2X1M U84 ( .A(n60), .B(n61), .Y(SUM[21]) );
  CLKNAND2X2M U85 ( .A(n33), .B(n34), .Y(n35) );
  OAI21X4M U86 ( .A0(n13), .A1(n24), .B0(n23), .Y(n18) );
  CLKNAND2X2M U87 ( .A(n88), .B(n89), .Y(n85) );
  NAND2X2M U88 ( .A(n11), .B(n12), .Y(SUM[19]) );
  NAND2X2M U89 ( .A(n9), .B(n69), .Y(n12) );
  NAND3X1M U90 ( .A(n123), .B(n124), .C(n125), .Y(n121) );
  OAI2BB2X4M U91 ( .B0(n77), .B1(n78), .A0N(n76), .A1N(n79), .Y(n74) );
  OAI2BB1X4M U92 ( .A0N(n83), .A1N(n85), .B0(n6), .Y(n79) );
  CLKINVX2M U93 ( .A(n17), .Y(n9) );
  NAND2X2M U94 ( .A(n73), .B(n72), .Y(n75) );
  INVXLM U95 ( .A(B[18]), .Y(n80) );
  NAND2X2M U96 ( .A(n115), .B(n93), .Y(n112) );
  INVXLM U97 ( .A(n110), .Y(n90) );
  INVXLM U98 ( .A(A[20]), .Y(n66) );
  INVXLM U99 ( .A(n63), .Y(n64) );
  NAND2X1M U100 ( .A(B[2]), .B(A[2]), .Y(n53) );
  CLKINVX2M U101 ( .A(n98), .Y(n103) );
  CLKNAND2X2M U102 ( .A(n17), .B(n10), .Y(n11) );
  INVXLM U103 ( .A(n69), .Y(n10) );
  CLKINVX2M U104 ( .A(n34), .Y(n30) );
  CLKNAND2X2M U105 ( .A(B[8]), .B(A[8]), .Y(n23) );
  NAND2XLM U106 ( .A(B[4]), .B(A[4]), .Y(n42) );
  NAND2X2M U107 ( .A(n119), .B(n108), .Y(n118) );
  NAND3X2M U108 ( .A(n93), .B(n94), .C(n95), .Y(n91) );
  NAND2X1M U109 ( .A(B[5]), .B(A[5]), .Y(n37) );
  NOR2XLM U110 ( .A(A[20]), .B(B[21]), .Y(n15) );
  AND2X1M U111 ( .A(B[21]), .B(A[20]), .Y(n16) );
  CLKNAND2X2M U112 ( .A(n80), .B(n81), .Y(n72) );
  NAND2XLM U113 ( .A(n58), .B(n59), .Y(n56) );
  NAND2XLM U114 ( .A(n84), .B(n83), .Y(n87) );
  XNOR2X4M U115 ( .A(n112), .B(n114), .Y(SUM[14]) );
  NAND2X2M U116 ( .A(n99), .B(n100), .Y(n97) );
  NAND2XLM U117 ( .A(n108), .B(n109), .Y(n96) );
  CLKNAND2X2M U118 ( .A(n103), .B(n104), .Y(n99) );
  NOR2BXLM U119 ( .AN(n42), .B(n41), .Y(n43) );
  NAND2XLM U120 ( .A(n59), .B(n57), .Y(n70) );
  NAND2XLM U121 ( .A(n76), .B(n86), .Y(n82) );
  NAND2XLM U122 ( .A(B[16]), .B(A[16]), .Y(n84) );
  NAND2XLM U123 ( .A(n56), .B(n57), .Y(n51) );
  CLKINVX2M U124 ( .A(A[18]), .Y(n81) );
  CLKINVX4M U125 ( .A(B[17]), .Y(n78) );
  CLKINVX2M U126 ( .A(A[17]), .Y(n77) );
  OR2X2M U127 ( .A(B[2]), .B(A[2]), .Y(n55) );
  NAND2XLM U128 ( .A(B[0]), .B(A[0]), .Y(n71) );
  OR2X2M U129 ( .A(B[1]), .B(A[1]), .Y(n59) );
  INVX2M U130 ( .A(A[21]), .Y(n62) );
  INVX2M U131 ( .A(n95), .Y(n113) );
  AOI2B1X1M U132 ( .A1N(n132), .A0(n133), .B0(n134), .Y(n129) );
  INVX2M U133 ( .A(n124), .Y(n134) );
  XNOR2X2M U134 ( .A(n116), .B(n117), .Y(SUM[13]) );
  XNOR2X2M U135 ( .A(n38), .B(n40), .Y(SUM[5]) );
  OAI2BB1X2M U136 ( .A0N(n67), .A1N(n69), .B0(n68), .Y(n63) );
  INVX2M U137 ( .A(n33), .Y(n32) );
  NAND2X2M U138 ( .A(n78), .B(n77), .Y(n76) );
  XNOR2X2M U139 ( .A(n119), .B(n120), .Y(SUM[12]) );
  NAND3X2M U140 ( .A(n126), .B(n21), .C(n127), .Y(n123) );
  NAND2X2M U141 ( .A(n116), .B(n109), .Y(n115) );
  NAND2BX2M U142 ( .AN(n96), .B(n97), .Y(n94) );
  INVX2M U143 ( .A(n127), .Y(n132) );
  INVX2M U144 ( .A(n47), .Y(n143) );
  NAND2X2M U145 ( .A(B[17]), .B(A[17]), .Y(n86) );
  XNOR2X2M U146 ( .A(n64), .B(n65), .Y(SUM[20]) );
  XNOR2X2M U147 ( .A(B[21]), .B(n66), .Y(n65) );
  NAND2X2M U148 ( .A(B[13]), .B(A[13]), .Y(n93) );
  OR2X2M U149 ( .A(B[16]), .B(A[16]), .Y(n83) );
  XNOR2X2M U150 ( .A(n70), .B(n58), .Y(SUM[1]) );
  XNOR2X2M U151 ( .A(n51), .B(n54), .Y(SUM[2]) );
  NAND2X2M U152 ( .A(n53), .B(n55), .Y(n54) );
  XNOR2X2M U153 ( .A(n45), .B(n46), .Y(SUM[3]) );
  NOR2BX2M U154 ( .AN(n47), .B(n48), .Y(n46) );
  AOI2B1X1M U155 ( .A1N(n50), .A0(n51), .B0(n52), .Y(n45) );
  CLKNAND2X2M U156 ( .A(n42), .B(n37), .Y(n139) );
  INVX2M U157 ( .A(n53), .Y(n52) );
  INVX2M U158 ( .A(n44), .Y(n41) );
  OR2X2M U159 ( .A(B[8]), .B(A[8]), .Y(n128) );
  INVX2M U160 ( .A(n49), .Y(n48) );
  INVX2M U161 ( .A(n59), .Y(n140) );
  INVX2M U162 ( .A(n55), .Y(n50) );
  INVX2M U163 ( .A(n71), .Y(n58) );
  XNOR2X2M U164 ( .A(B[21]), .B(n62), .Y(n61) );
  OR2X2M U165 ( .A(B[4]), .B(A[4]), .Y(n44) );
  NOR2BXLM U166 ( .AN(n71), .B(n4), .Y(SUM[0]) );
endmodule


module up4_filter_0_DW01_add_42 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;

  AOI21X2M U2 ( .A0(n18), .A1(n46), .B0(n4), .Y(n43) );
  XNOR2X4M U3 ( .A(n53), .B(n52), .Y(SUM[19]) );
  XNOR2X4M U4 ( .A(n107), .B(n108), .Y(SUM[12]) );
  OAI2BB1X2M U5 ( .A0N(n54), .A1N(n62), .B0(n56), .Y(n52) );
  AOI21BX8M U6 ( .A0(n66), .A1(n68), .B0N(n67), .Y(n14) );
  NAND4X1M U7 ( .A(n111), .B(n116), .C(n23), .D(n117), .Y(n81) );
  BUFX10M U8 ( .A(B[21]), .Y(n19) );
  OR2X2M U9 ( .A(B[12]), .B(A[12]), .Y(n87) );
  NAND3X2M U10 ( .A(n31), .B(n38), .C(n2), .Y(n85) );
  NOR2X2M U11 ( .A(n122), .B(n121), .Y(n123) );
  XNOR2X2M U12 ( .A(n55), .B(n59), .Y(SUM[18]) );
  INVXLM U13 ( .A(n62), .Y(n55) );
  XNOR2X2M U14 ( .A(n47), .B(n48), .Y(SUM[20]) );
  OR2X2M U15 ( .A(B[8]), .B(A[8]), .Y(n117) );
  OR2X2M U16 ( .A(B[11]), .B(A[11]), .Y(n111) );
  INVX2M U17 ( .A(n41), .Y(n127) );
  OR2X2M U18 ( .A(B[4]), .B(A[4]), .Y(n42) );
  OR2X2M U19 ( .A(A[6]), .B(B[6]), .Y(n38) );
  OR2X2M U20 ( .A(B[13]), .B(A[13]), .Y(n88) );
  OR2X2M U21 ( .A(B[7]), .B(A[7]), .Y(n31) );
  NAND2X2M U22 ( .A(n57), .B(n91), .Y(n66) );
  NAND2X2M U23 ( .A(n71), .B(n70), .Y(n68) );
  OAI2B2X1M U24 ( .A1N(n63), .A0(n14), .B0(n57), .B1(n64), .Y(n62) );
  XNOR2X2M U25 ( .A(n9), .B(n20), .Y(SUM[9]) );
  NOR2BX2M U26 ( .AN(n21), .B(n22), .Y(n20) );
  INVX2M U27 ( .A(n23), .Y(n22) );
  NOR2BX2M U28 ( .AN(n70), .B(n94), .Y(n93) );
  XNOR2X2M U29 ( .A(n98), .B(n99), .Y(SUM[14]) );
  XNOR2X1M U30 ( .A(n17), .B(n24), .Y(SUM[8]) );
  AOI2BB1X4M U31 ( .A0N(n85), .A1N(n39), .B0(n1), .Y(n17) );
  AND2X4M U32 ( .A(n125), .B(n31), .Y(n1) );
  INVX4M U33 ( .A(n19), .Y(n57) );
  AND2X2M U34 ( .A(n42), .B(n41), .Y(n2) );
  INVX2M U35 ( .A(n116), .Y(n121) );
  OR2X2M U36 ( .A(B[10]), .B(A[10]), .Y(n116) );
  OA21X4M U37 ( .A0(n127), .A1(n128), .B0(n129), .Y(n3) );
  INVX2M U38 ( .A(n113), .Y(n122) );
  AND2X2M U39 ( .A(A[20]), .B(n19), .Y(n4) );
  OR2X2M U40 ( .A(B[14]), .B(A[14]), .Y(n89) );
  INVX2M U41 ( .A(n89), .Y(n95) );
  AOI21BX2M U42 ( .A0(A[17]), .A1(n19), .B0N(n63), .Y(n65) );
  OAI21X2M U43 ( .A0(n17), .A1(n26), .B0(n25), .Y(n16) );
  NAND2X2M U44 ( .A(B[7]), .B(A[7]), .Y(n29) );
  NAND2X2M U45 ( .A(n67), .B(n66), .Y(n69) );
  NAND2X2M U46 ( .A(n19), .B(A[16]), .Y(n67) );
  XNOR2X2M U47 ( .A(n19), .B(n49), .Y(n48) );
  INVX3M U48 ( .A(n6), .Y(n5) );
  NAND2X4M U49 ( .A(n124), .B(n21), .Y(n6) );
  INVX2M U50 ( .A(A[18]), .Y(n61) );
  NAND2X4M U51 ( .A(n23), .B(n8), .Y(n124) );
  NAND2X1M U52 ( .A(A[4]), .B(B[4]), .Y(n128) );
  AOI2B1X2M U53 ( .A1N(n32), .A0(n33), .B0(n34), .Y(n27) );
  INVXLM U54 ( .A(n33), .Y(n36) );
  CLKINVX2M U55 ( .A(n14), .Y(n10) );
  NAND2X1M U56 ( .A(B[15]), .B(A[15]), .Y(n70) );
  INVX1M U57 ( .A(A[20]), .Y(n49) );
  NAND2X2M U58 ( .A(B[6]), .B(A[6]), .Y(n35) );
  NAND2X1M U59 ( .A(A[18]), .B(n19), .Y(n56) );
  INVX1M U60 ( .A(A[19]), .Y(n58) );
  OAI21X6M U61 ( .A0(n17), .A1(n26), .B0(n25), .Y(n8) );
  OAI21X2M U62 ( .A0(n17), .A1(n81), .B0(n84), .Y(n106) );
  XNOR2X2M U63 ( .A(n118), .B(n119), .Y(SUM[11]) );
  CLKINVX2M U64 ( .A(n35), .Y(n34) );
  NOR2BX1M U65 ( .AN(n35), .B(n32), .Y(n37) );
  NAND2X2M U66 ( .A(n57), .B(n61), .Y(n54) );
  NAND2BX2M U67 ( .AN(n72), .B(n73), .Y(n71) );
  NAND2X2M U68 ( .A(n90), .B(n89), .Y(n72) );
  OR2X4M U69 ( .A(B[15]), .B(A[15]), .Y(n90) );
  CLKNAND2X2M U70 ( .A(n57), .B(n64), .Y(n63) );
  NAND3XLM U71 ( .A(n115), .B(n116), .C(n23), .Y(n112) );
  OR2X4M U72 ( .A(B[9]), .B(A[9]), .Y(n23) );
  NAND2X1M U73 ( .A(B[14]), .B(A[14]), .Y(n75) );
  INVX1M U74 ( .A(n75), .Y(n97) );
  INVX1M U75 ( .A(n111), .Y(n120) );
  INVX4M U76 ( .A(A[17]), .Y(n64) );
  NOR2BX1M U77 ( .AN(n114), .B(n120), .Y(n119) );
  NAND2XLM U78 ( .A(B[11]), .B(A[11]), .Y(n114) );
  NAND3XLM U79 ( .A(n2), .B(n38), .C(n31), .Y(n7) );
  NAND2XLM U80 ( .A(n74), .B(n75), .Y(n73) );
  CLKINVX2M U81 ( .A(n88), .Y(n104) );
  NAND2X1M U82 ( .A(n101), .B(n88), .Y(n100) );
  CLKNAND2X2M U83 ( .A(n87), .B(n88), .Y(n76) );
  OAI2B1X4M U84 ( .A1N(n38), .A0(n3), .B0(n126), .Y(n125) );
  AND2X4M U85 ( .A(n29), .B(n35), .Y(n126) );
  NOR2BX2M U86 ( .AN(n79), .B(n104), .Y(n103) );
  XNOR2X2M U87 ( .A(n93), .B(n92), .Y(SUM[15]) );
  CLKNAND2X2M U88 ( .A(n100), .B(n79), .Y(n96) );
  NAND3X1M U89 ( .A(n112), .B(n114), .C(n113), .Y(n110) );
  INVX2M U90 ( .A(n16), .Y(n9) );
  XNOR2X2M U91 ( .A(n102), .B(n103), .Y(SUM[13]) );
  NAND2XLM U92 ( .A(n51), .B(n50), .Y(n53) );
  CLKNAND2X2M U93 ( .A(n57), .B(n58), .Y(n50) );
  NAND2X1M U94 ( .A(B[10]), .B(A[10]), .Y(n113) );
  INVX1M U95 ( .A(n101), .Y(n102) );
  INVX4M U96 ( .A(n117), .Y(n26) );
  XNOR2X1M U97 ( .A(n19), .B(n45), .Y(n44) );
  OAI2BB1X2M U98 ( .A0N(n50), .A1N(n52), .B0(n51), .Y(n46) );
  INVXLM U99 ( .A(n31), .Y(n30) );
  XNOR2X4M U100 ( .A(n5), .B(n123), .Y(SUM[10]) );
  NAND2XLM U101 ( .A(n14), .B(n65), .Y(n12) );
  CLKNAND2X2M U102 ( .A(n10), .B(n11), .Y(n13) );
  NAND2X2M U103 ( .A(n12), .B(n13), .Y(SUM[17]) );
  INVXLM U104 ( .A(n65), .Y(n11) );
  NAND2X2M U105 ( .A(n106), .B(n87), .Y(n105) );
  CLKNAND2X2M U106 ( .A(n110), .B(n111), .Y(n84) );
  NAND2XLM U107 ( .A(A[19]), .B(n19), .Y(n51) );
  INVXLM U108 ( .A(A[16]), .Y(n91) );
  NAND2X2M U109 ( .A(B[13]), .B(A[13]), .Y(n79) );
  NOR2XLM U110 ( .A(B[1]), .B(A[1]), .Y(n15) );
  CLKINVX2M U111 ( .A(n90), .Y(n94) );
  AOI2B1XLM U112 ( .A1N(n121), .A0(n6), .B0(n122), .Y(n118) );
  NOR2BX2M U113 ( .AN(n75), .B(n95), .Y(n99) );
  NAND2XLM U114 ( .A(n25), .B(n21), .Y(n115) );
  NOR2BXLM U115 ( .AN(n29), .B(n30), .Y(n28) );
  OAI21XLM U116 ( .A0(n39), .A1(n40), .B0(n3), .Y(n33) );
  NAND2XLM U117 ( .A(n41), .B(n42), .Y(n40) );
  CLKNAND2X2M U118 ( .A(n105), .B(n83), .Y(n101) );
  INVXLM U119 ( .A(A[2]), .Y(n140) );
  INVXLM U120 ( .A(n38), .Y(n32) );
  AND2X1M U121 ( .A(n84), .B(n83), .Y(n82) );
  OAI21X2M U122 ( .A0(n130), .A1(n131), .B0(n132), .Y(n86) );
  OAI211X1M U123 ( .A0(n15), .A1(n136), .B0(n137), .C0(n138), .Y(n133) );
  NAND2X2M U124 ( .A(B[8]), .B(A[8]), .Y(n25) );
  NAND2X2M U125 ( .A(B[12]), .B(A[12]), .Y(n83) );
  NAND2XLM U126 ( .A(B[5]), .B(A[5]), .Y(n129) );
  INVXLM U127 ( .A(B[2]), .Y(n139) );
  XNOR2X2M U128 ( .A(n69), .B(n68), .Y(SUM[16]) );
  NOR2BX2M U129 ( .AN(n56), .B(n60), .Y(n59) );
  INVX2M U130 ( .A(n54), .Y(n60) );
  INVX2M U131 ( .A(n96), .Y(n98) );
  AOI2B1X1M U132 ( .A1N(n95), .A0(n96), .B0(n97), .Y(n92) );
  NOR2BX2M U133 ( .AN(n83), .B(n109), .Y(n108) );
  INVX2M U134 ( .A(n106), .Y(n107) );
  INVX2M U135 ( .A(n87), .Y(n109) );
  NOR2BX2M U136 ( .AN(n25), .B(n26), .Y(n24) );
  XNOR2X2M U137 ( .A(n27), .B(n28), .Y(SUM[7]) );
  AOI2B1X1M U138 ( .A1N(n76), .A0(n77), .B0(n78), .Y(n74) );
  OAI21XLM U139 ( .A0(n80), .A1(n81), .B0(n82), .Y(n77) );
  INVX2M U140 ( .A(n79), .Y(n78) );
  INVX2M U141 ( .A(n86), .Y(n39) );
  XNOR2X2M U142 ( .A(n36), .B(n37), .Y(SUM[6]) );
  AOI2B1XLM U143 ( .A1N(n7), .A0(n86), .B0(n1), .Y(n80) );
  OR2X1M U144 ( .A(A[20]), .B(n19), .Y(n18) );
  OR2X4M U145 ( .A(A[5]), .B(B[5]), .Y(n41) );
  INVX2M U146 ( .A(A[3]), .Y(n130) );
  NAND2X2M U147 ( .A(B[9]), .B(A[9]), .Y(n21) );
  NAND3X2M U148 ( .A(n133), .B(n134), .C(n135), .Y(n132) );
  CLKNAND2X2M U149 ( .A(n139), .B(n140), .Y(n134) );
  NAND2X2M U150 ( .A(B[2]), .B(A[2]), .Y(n138) );
  NAND2X2M U151 ( .A(B[1]), .B(A[1]), .Y(n137) );
  CLKNAND2X2M U152 ( .A(n131), .B(n130), .Y(n135) );
  INVX2M U153 ( .A(A[21]), .Y(n45) );
  XNOR2X2M U154 ( .A(n43), .B(n44), .Y(SUM[21]) );
  INVX2M U155 ( .A(B[3]), .Y(n131) );
  NAND2X2M U156 ( .A(A[0]), .B(B[0]), .Y(n136) );
  INVX2M U157 ( .A(n46), .Y(n47) );
endmodule


module up4_filter_0 ( clk, rst_n, in_data, b0, b1, b2, b3 );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n;
  wire   N179, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N99, N98, N97, N96, N95, N94, N93, N92, N91,
         N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144,
         N143, N142, N141, N140, N139, N138, N137, N136, N135, N132, N131,
         N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120,
         N119, N118, N117, N116, N115, N114, N113, N110, N109, N108, N107,
         N106, N105, N104, N103, N102, N101, N100, N327, N326, N325, N324,
         N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313,
         N312, N311, N310, N309, N308, N282, N281, N280, N279, N278, N277,
         N276, N275, N274, N273, N272, N271, N270, N269, N266, N265, N9, N88,
         N87, N86, N85, N84, N83, N82, N81, N80, N8, N79, N78, N77, N76, N75,
         N74, N73, N72, N71, N70, N7, N69, N68, N67, N66, N65, N64, N63, N62,
         N61, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N5,
         N49, N48, N47, N46, N45, N44, N4, N38, N37, N36, N35, N34, N33, N32,
         N31, N30, N3, N29, N28, N27, N26, N25, N24, N23, N20, N2, N19, N18,
         N17, N16, N15, N14, N13, N12, N11, N10, N1, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248,
         N247, N246, N245, N244, N243, N242, N240, N239, N238, N237, N236,
         N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, N225,
         N224, N223, N222, N221, N220, N218, N217, N216, N215, N214, N213,
         N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202,
         N201, N200, N199, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280;
  wire   [15:0] x_n1;
  wire   [15:0] x_n3;
  wire   [15:0] x_n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35;
  assign N266 = in_data[1];
  assign N265 = in_data[0];

  up4_filter_0_DW01_add_31 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({n149, n149, N282, 
        N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, n50, n14, n147, n17, 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  up4_filter_0_DW01_add_23 add_3_root_add_0_root_add_34_4 ( .A({n149, n149, 
        n149, n149, n149, in_data[14:4], n148, n114, n38, n17, 1'b0, 1'b0}), 
        .B({n150, n150, n150, n132, n131, n130, n129, n128, n127, n126, n125, 
        n124, n123, n122, n121, n120, n11, x_n2[0], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7}) );
  up4_filter_0_DW01_add_29 add_3_root_add_0_root_add_38_6 ( .A({n152, n152, 
        n152, n152, n152, n146, n145, n144, n143, n142, n141, n140, n139, n138, 
        n137, n136, n135, n134, n20, n22, 1'b0, 1'b0}), .B({n150, n150, n150, 
        n150, n132, n131, n130, n129, n128, n127, n126, n125, n124, n123, n122, 
        n121, n120, n11, x_n2[0], 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N218, 
        N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, 
        N205, N204, N203, N202, N201, N200, N199, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9}) );
  up4_filter_0_DW01_add_41 add_2_root_add_0_root_add_34_4 ( .A({n150, n150, 
        n150, n150, n150, n132, n131, n130, n129, n128, n127, n126, n125, n124, 
        n123, n122, n121, n120, n11, x_n2[0], 1'b0, 1'b0}), .B({n152, n152, 
        n146, n145, n144, n143, n142, n141, n140, n139, n138, n137, n136, 
        x_n1[3], n134, n20, n22, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  up4_filter_0_DW01_add_37 add_1_root_add_0_root_add_34_4 ( .A({n152, n152, 
        n152, n152, n146, n145, n144, n143, n142, n141, n140, n139, n138, n137, 
        n136, x_n1[3], n134, n20, n22, 1'b0, 1'b0, 1'b0}), .B({N154, N153, 
        N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, N141, 
        N140, N139, N138, N137, N136, N135, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  up4_filter_0_DW01_add_25 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({N110, N109, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, 
        N95, N94, N93, N92, N91, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  up4_filter_0_DW01_add_35 add_1_root_add_0_root_add_42_4 ( .A({n150, n150, 
        n150, n150, n150, n132, n131, n130, n129, n128, n127, n126, n125, n124, 
        n123, n122, n121, n120, n10, x_n2[0], 1'b0, 1'b0}), .B({n152, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, n108, n61, n20, n22, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N327, 
        N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, 
        N314, N313, N312, N311, N310, N309, N308, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21}) );
  up4_filter_0_DW01_add_39 add_4_root_sub_0_root_add_30_3 ( .A({x_n3[15], 
        x_n3[15], x_n3[15], x_n3[15], x_n3[15], x_n3[15], x_n3}), .B({n150, 
        n150, n132, n131, n130, n129, n128, n127, n126, n125, n124, n123, n122, 
        n121, n120, n10, x_n2[0], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, N47, N46, N45}) );
  up4_filter_0_DW01_add_27 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED__22}) );
  up4_filter_0_DW01_add_46 add_2_root_add_0_root_add_38_6 ( .A({n150, n150, 
        n150, n150, n150, n150, n132, n131, n130, n129, n128, n127, n126, n125, 
        n124, n123, n122, n121, n120, n11, x_n2[0], 1'b0}), .B({n152, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, n108, n61, n20, N1, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N262, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, 
        N249, N248, N247, N246, N245, N244, N243, N242, 
        SYNOPSYS_UNCONNECTED__23}) );
  up4_filter_0_DW01_add_44 add_0_root_add_0_root_add_38_6 ( .A({n149, n149, 
        n149, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, n50, n14, n37, n17, 1'b0}), .B({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29}) );
  up4_filter_0_DW01_add_43 add_1_root_sub_0_root_add_30_3 ( .A({N66, N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45}), .B({n152, n152, N20, N19, N18, N17, N16, 
        N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, n22}), 
        .CI(1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_0_DW01_add_42 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({N44, N44, N44, N44, N44, N44, N38, N37, 
        N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, N23}), 
        .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35}) );
  DFFRQX2M \x_n1_reg[14]  ( .D(in_data[14]), .CK(clk), .RN(n156), .Q(x_n1[14])
         );
  DFFRQX2M \x_n2_reg[13]  ( .D(n145), .CK(clk), .RN(n157), .Q(x_n2[13]) );
  DFFRQX2M \x_n2_reg[11]  ( .D(n143), .CK(clk), .RN(n157), .Q(x_n2[11]) );
  DFFRQX2M \x_n2_reg[10]  ( .D(n142), .CK(clk), .RN(n158), .Q(x_n2[10]) );
  DFFRQX2M \x_n2_reg[8]  ( .D(n140), .CK(clk), .RN(n158), .Q(x_n2[8]) );
  DFFRQX2M \x_n2_reg[7]  ( .D(n139), .CK(clk), .RN(n158), .Q(x_n2[7]) );
  DFFRQX2M \x_n2_reg[12]  ( .D(n144), .CK(clk), .RN(n157), .Q(x_n2[12]) );
  DFFRQX2M \x_n2_reg[9]  ( .D(n141), .CK(clk), .RN(n158), .Q(x_n2[9]) );
  DFFRQX2M \x_n3_reg[4]  ( .D(n122), .CK(clk), .RN(n159), .Q(x_n3[4]) );
  DFFRQX2M \x_n3_reg[14]  ( .D(n132), .CK(clk), .RN(n157), .Q(x_n3[14]) );
  DFFRQX2M \x_n3_reg[13]  ( .D(n131), .CK(clk), .RN(n157), .Q(x_n3[13]) );
  DFFRQX2M \x_n3_reg[11]  ( .D(n129), .CK(clk), .RN(n157), .Q(x_n3[11]) );
  DFFRQX2M \x_n3_reg[10]  ( .D(n128), .CK(clk), .RN(n158), .Q(x_n3[10]) );
  DFFRQX2M \x_n3_reg[9]  ( .D(n127), .CK(clk), .RN(n158), .Q(x_n3[9]) );
  DFFRQX2M \x_n3_reg[8]  ( .D(n126), .CK(clk), .RN(n158), .Q(x_n3[8]) );
  DFFRQX2M \x_n3_reg[5]  ( .D(n123), .CK(clk), .RN(n158), .Q(x_n3[5]) );
  DFFRQX2M \x_n3_reg[12]  ( .D(n130), .CK(clk), .RN(n157), .Q(x_n3[12]) );
  DFFRQX2M \x_n3_reg[15]  ( .D(n150), .CK(clk), .RN(n157), .Q(x_n3[15]) );
  DFFRQX2M \x_n2_reg[5]  ( .D(n137), .CK(clk), .RN(n158), .Q(x_n2[5]) );
  DFFRQX2M \x_n2_reg[6]  ( .D(n138), .CK(clk), .RN(n158), .Q(x_n2[6]) );
  DFFRQX2M \x_n2_reg[4]  ( .D(n136), .CK(clk), .RN(n158), .Q(x_n2[4]) );
  DFFRQX2M \x_n3_reg[3]  ( .D(n121), .CK(clk), .RN(n159), .Q(x_n3[3]) );
  DFFRQX2M \x_n3_reg[0]  ( .D(x_n2[0]), .CK(clk), .RN(n159), .Q(x_n3[0]) );
  DFFRQX2M \x_n3_reg[1]  ( .D(n10), .CK(clk), .RN(n159), .Q(x_n3[1]) );
  DFFRQX2M \x_n3_reg[2]  ( .D(n120), .CK(clk), .RN(n159), .Q(x_n3[2]) );
  DFFRQX2M \x_n3_reg[6]  ( .D(n124), .CK(clk), .RN(n158), .Q(x_n3[6]) );
  DFFRQX2M \x_n1_reg[13]  ( .D(in_data[13]), .CK(clk), .RN(n156), .Q(x_n1[13])
         );
  DFFRQX2M \x_n1_reg[9]  ( .D(in_data[9]), .CK(clk), .RN(n156), .Q(x_n1[9]) );
  DFFRQX2M \x_n1_reg[15]  ( .D(n149), .CK(clk), .RN(n156), .Q(x_n1[15]) );
  DFFRQX2M \x_n1_reg[12]  ( .D(in_data[12]), .CK(clk), .RN(n156), .Q(x_n1[12])
         );
  DFFRQX2M \x_n1_reg[11]  ( .D(in_data[11]), .CK(clk), .RN(n156), .Q(x_n1[11])
         );
  DFFRQX2M \x_n1_reg[10]  ( .D(in_data[10]), .CK(clk), .RN(n156), .Q(x_n1[10])
         );
  DFFRQX2M \x_n2_reg[14]  ( .D(n146), .CK(clk), .RN(n157), .Q(x_n2[14]) );
  DFFRQX2M \x_n1_reg[7]  ( .D(in_data[7]), .CK(clk), .RN(n156), .Q(x_n1[7]) );
  DFFRQX2M \x_n2_reg[15]  ( .D(n152), .CK(clk), .RN(n157), .Q(x_n2[15]) );
  DFFRQX2M \x_n1_reg[8]  ( .D(in_data[8]), .CK(clk), .RN(n156), .Q(x_n1[8]) );
  DFFRQX2M \x_n3_reg[7]  ( .D(n125), .CK(clk), .RN(n158), .Q(x_n3[7]) );
  DFFRHQX4M \x_n1_reg[3]  ( .D(n148), .CK(clk), .RN(n156), .Q(x_n1[3]) );
  DFFRHQX2M \x_n1_reg[0]  ( .D(n17), .CK(clk), .RN(n157), .Q(N1) );
  DFFRHQX1M \x_n1_reg[1]  ( .D(n38), .CK(clk), .RN(n157), .Q(N179) );
  DFFRHQX1M \x_n1_reg[2]  ( .D(n114), .CK(clk), .RN(n157), .Q(x_n1[2]) );
  DFFRHQX1M \x_n2_reg[2]  ( .D(n134), .CK(clk), .RN(n159), .Q(x_n2[2]) );
  DFFRQX2M \x_n2_reg[0]  ( .D(n22), .CK(clk), .RN(n159), .Q(x_n2[0]) );
  DFFRHQX1M \x_n1_reg[4]  ( .D(in_data[4]), .CK(clk), .RN(n156), .Q(x_n1[4])
         );
  DFFRQX2M \x_n2_reg[1]  ( .D(n20), .CK(clk), .RN(n159), .Q(x_n2[1]) );
  DFFRQX2M \x_n1_reg[5]  ( .D(in_data[5]), .CK(clk), .RN(n156), .Q(x_n1[5]) );
  DFFRQX2M \x_n2_reg[3]  ( .D(x_n1[3]), .CK(clk), .RN(n159), .Q(x_n2[3]) );
  DFFRQX2M \x_n1_reg[6]  ( .D(in_data[6]), .CK(clk), .RN(n156), .Q(x_n1[6]) );
  INVX4M U3 ( .A(n8), .Y(n11) );
  CLKINVX4M U4 ( .A(n119), .Y(n8) );
  BUFX8M U5 ( .A(x_n1[3]), .Y(n135) );
  OAI2BB1X4M U6 ( .A0N(n144), .A1N(n142), .B0(n94), .Y(n165) );
  OAI2BB1X4M U7 ( .A0N(n143), .A1N(n141), .B0(n97), .Y(n166) );
  NAND2X2M U8 ( .A(n1), .B(n2), .Y(n3) );
  CLKNAND2X4M U9 ( .A(n3), .B(n29), .Y(n233) );
  CLKINVX1M U10 ( .A(n140), .Y(n1) );
  INVXLM U11 ( .A(n35), .Y(n2) );
  BUFX6M U12 ( .A(x_n1[8]), .Y(n140) );
  INVX1M U13 ( .A(n135), .Y(n35) );
  XNOR3XLM U14 ( .A(n141), .B(n136), .C(n233), .Y(N10) );
  OR2X2M U15 ( .A(n139), .B(n137), .Y(n4) );
  CLKNAND2X2M U16 ( .A(n4), .B(n171), .Y(n91) );
  OA21X2M U17 ( .A0(in_data[5]), .A1(n245), .B0(n272), .Y(n5) );
  NAND2X3M U18 ( .A(n5), .B(n244), .Y(n246) );
  XOR2XLM U19 ( .A(n134), .B(n136), .Y(n6) );
  XOR2X2M U20 ( .A(n6), .B(n174), .Y(N182) );
  BUFX10M U21 ( .A(x_n1[4]), .Y(n136) );
  BUFX8M U22 ( .A(x_n1[2]), .Y(n134) );
  OR2X2M U23 ( .A(in_data[11]), .B(n253), .Y(n7) );
  NAND2X4M U24 ( .A(n7), .B(n264), .Y(n79) );
  AO21X8M U25 ( .A0(n149), .A1(n151), .B0(n259), .Y(n257) );
  OAI21X3M U26 ( .A0(n215), .A1(n20), .B0(n236), .Y(n16) );
  XNOR3XLM U27 ( .A(n138), .B(n20), .C(n236), .Y(N7) );
  OAI2B2X8M U28 ( .A1N(n22), .A0(n137), .B0(n237), .B1(n137), .Y(n236) );
  OAI21X3M U29 ( .A0(n139), .A1(n220), .B0(n230), .Y(n81) );
  XNOR3X1M U30 ( .A(n144), .B(n139), .C(n230), .Y(N13) );
  OAI2B1X4M U31 ( .A1N(n138), .A0(n143), .B0(n76), .Y(n230) );
  INVX3M U32 ( .A(n266), .Y(n118) );
  OAI21X4M U33 ( .A0(n126), .A1(n250), .B0(n249), .Y(n266) );
  XNOR3X8M U34 ( .A(n131), .B(in_data[13]), .C(n262), .Y(N36) );
  XOR2X4M U35 ( .A(n258), .B(n78), .Y(N44) );
  OAI21BX4M U36 ( .A0(n13), .A1(n15), .B0N(n55), .Y(n192) );
  AOI21X8M U37 ( .A0(n199), .A1(n196), .B0(n56), .Y(n15) );
  OAI21X3M U38 ( .A0(in_data[10]), .A1(n252), .B0(n265), .Y(n101) );
  NAND3X4M U39 ( .A(n276), .B(n278), .C(n275), .Y(n243) );
  OAI2B1X4M U40 ( .A1N(in_data[14]), .A0(n132), .B0(n87), .Y(n259) );
  OAI21X4M U41 ( .A0(in_data[14]), .A1(n256), .B0(n261), .Y(n87) );
  INVX3M U42 ( .A(n8), .Y(n9) );
  INVX3M U43 ( .A(n8), .Y(n10) );
  OAI21X2M U44 ( .A0(n138), .A1(n219), .B0(n231), .Y(n76) );
  AO21X8M U45 ( .A0(n145), .A1(n143), .B0(n70), .Y(n164) );
  OA21X8M U46 ( .A0(n145), .A1(n143), .B0(n165), .Y(n70) );
  OAI2B1X4M U47 ( .A1N(in_data[12]), .A0(n130), .B0(n100), .Y(n262) );
  NAND2X4M U48 ( .A(n41), .B(n263), .Y(n100) );
  NOR2XLM U49 ( .A(n134), .B(n135), .Y(n30) );
  OAI2BB1X2M U50 ( .A0N(n136), .A1N(n134), .B0(n92), .Y(n173) );
  AO21X4M U51 ( .A0(n189), .A1(n192), .B0(n58), .Y(n188) );
  INVX2M U52 ( .A(n260), .Y(n258) );
  OAI21X4M U53 ( .A0(n149), .A1(n151), .B0(n257), .Y(n78) );
  OAI2B1X1M U54 ( .A1N(n137), .A0(n142), .B0(n40), .Y(n231) );
  OAI21X2M U55 ( .A0(n137), .A1(n218), .B0(n232), .Y(n40) );
  XNOR3X4M U56 ( .A(n142), .B(n137), .C(n232), .Y(N11) );
  OAI2BB1X2M U57 ( .A0N(n43), .A1N(n42), .B0(n174), .Y(n92) );
  BUFX4M U58 ( .A(N179), .Y(n133) );
  CLKNAND2X2M U59 ( .A(n25), .B(n16), .Y(n235) );
  INVX2M U60 ( .A(n138), .Y(n215) );
  XOR3X2M U61 ( .A(n137), .B(n22), .C(n237), .Y(N6) );
  CLKINVX6M U62 ( .A(n148), .Y(n32) );
  XOR3X2M U63 ( .A(n145), .B(n143), .C(n165), .Y(N191) );
  OAI21X2M U64 ( .A0(n143), .A1(n153), .B0(n226), .Y(n88) );
  OAI21X2M U65 ( .A0(n248), .A1(in_data[7]), .B0(n268), .Y(n23) );
  INVXLM U66 ( .A(n272), .Y(n274) );
  XOR2X2M U67 ( .A(n259), .B(n260), .Y(N38) );
  MXI2X4M U68 ( .A(n104), .B(n105), .S0(n184), .Y(N280) );
  OAI2BB1X2M U69 ( .A0N(n137), .A1N(n139), .B0(n91), .Y(n170) );
  OAI2BB1X2M U70 ( .A0N(n136), .A1N(n217), .B0(n77), .Y(n232) );
  NAND2X2M U71 ( .A(n44), .B(n233), .Y(n77) );
  NAND2BX2M U72 ( .AN(n241), .B(n30), .Y(n238) );
  CLKXOR2X2M U73 ( .A(n135), .B(n240), .Y(N4) );
  OR2X6M U74 ( .A(n238), .B(n136), .Y(n237) );
  OAI2B1X2M U75 ( .A1N(n139), .A0(n144), .B0(n81), .Y(n229) );
  OAI2BB1X2M U76 ( .A0N(n216), .A1N(n134), .B0(n47), .Y(n234) );
  OAI21X2M U77 ( .A0(n216), .A1(n134), .B0(n235), .Y(n47) );
  XOR3X2M U78 ( .A(n140), .B(n138), .C(n170), .Y(N186) );
  OAI2BB1X2M U79 ( .A0N(n136), .A1N(n138), .B0(n99), .Y(n171) );
  OAI21X2M U80 ( .A0(n138), .A1(n136), .B0(n172), .Y(n99) );
  OAI2BB1X2M U81 ( .A0N(n137), .A1N(x_n1[3]), .B0(n102), .Y(n172) );
  OAI21X2M U82 ( .A0(n137), .A1(n135), .B0(n173), .Y(n102) );
  OAI2BB1X2M U83 ( .A0N(n9), .A1N(n242), .B0(n45), .Y(n275) );
  OR2X2M U84 ( .A(N265), .B(n280), .Y(n45) );
  OR2X2M U85 ( .A(n10), .B(n242), .Y(n276) );
  NAND2BX2M U86 ( .AN(n120), .B(n114), .Y(n278) );
  AND2X2M U87 ( .A(n275), .B(n276), .Y(n53) );
  XNOR2X2M U88 ( .A(n169), .B(n27), .Y(N187) );
  OAI2B1X2M U89 ( .A1N(n140), .A0(n145), .B0(n80), .Y(n228) );
  OAI21X2M U90 ( .A0(n140), .A1(n221), .B0(n229), .Y(n80) );
  OAI21X2M U91 ( .A0(n143), .A1(n141), .B0(n167), .Y(n97) );
  OAI2BB1X2M U92 ( .A0N(n141), .A1N(n222), .B0(n93), .Y(n227) );
  OAI21X2M U93 ( .A0(n141), .A1(n222), .B0(n228), .Y(n93) );
  INVX2M U94 ( .A(n146), .Y(n222) );
  OAI21X2M U95 ( .A0(n144), .A1(n142), .B0(n166), .Y(n94) );
  OAI2BB1X2M U96 ( .A0N(in_data[9]), .A1N(n251), .B0(n103), .Y(n265) );
  AO21XLM U97 ( .A0(n117), .A1(n127), .B0(n118), .Y(n103) );
  XOR3XLM U98 ( .A(n139), .B(n137), .C(n171), .Y(N185) );
  OAI2BB1X2M U99 ( .A0N(n20), .A1N(n135), .B0(n161), .Y(n174) );
  NAND2X2M U100 ( .A(n36), .B(n160), .Y(n161) );
  INVX2M U101 ( .A(n175), .Y(n160) );
  NAND2BX2M U102 ( .AN(n24), .B(n134), .Y(n175) );
  BUFX2M U103 ( .A(N266), .Y(n147) );
  XNOR3X2M U104 ( .A(n152), .B(n142), .C(n227), .Y(N16) );
  XNOR3X2M U105 ( .A(n146), .B(n141), .C(n228), .Y(N15) );
  XOR3X2M U106 ( .A(n144), .B(n142), .C(n166), .Y(N190) );
  OAI2BB1X2M U107 ( .A0N(n142), .A1N(n153), .B0(n82), .Y(n226) );
  OAI21X2M U108 ( .A0(n142), .A1(n153), .B0(n227), .Y(n82) );
  OAI2BB1X2M U109 ( .A0N(n146), .A1N(n144), .B0(n86), .Y(n163) );
  OAI21X2M U110 ( .A0(n146), .A1(n144), .B0(n164), .Y(n86) );
  XNOR2X2M U111 ( .A(n111), .B(n223), .Y(N20) );
  XOR3X2M U112 ( .A(n146), .B(n144), .C(n164), .Y(N192) );
  XNOR3X2M U113 ( .A(n129), .B(in_data[11]), .C(n264), .Y(N34) );
  XNOR3X2M U114 ( .A(n128), .B(in_data[10]), .C(n265), .Y(N33) );
  OAI2BB1X2M U115 ( .A0N(in_data[6]), .A1N(in_data[4]), .B0(n84), .Y(n210) );
  OAI2BB1X2M U116 ( .A0N(n126), .A1N(n250), .B0(n267), .Y(n249) );
  OAI2BB1X2M U117 ( .A0N(n248), .A1N(in_data[7]), .B0(n23), .Y(n267) );
  OAI2BB1X2M U118 ( .A0N(in_data[7]), .A1N(in_data[5]), .B0(n75), .Y(n209) );
  OAI21X2M U119 ( .A0(in_data[5]), .A1(in_data[7]), .B0(n210), .Y(n75) );
  OAI2BB1X2M U120 ( .A0N(n247), .A1N(in_data[6]), .B0(n46), .Y(n268) );
  OAI21X2M U121 ( .A0(n247), .A1(in_data[6]), .B0(n269), .Y(n46) );
  OAI2BB1X2M U122 ( .A0N(n245), .A1N(in_data[5]), .B0(n246), .Y(n269) );
  XNOR3X2M U123 ( .A(n152), .B(n143), .C(n226), .Y(N17) );
  AO21X4M U124 ( .A0(n207), .A1(n209), .B0(n110), .Y(n206) );
  MXI2X1M U125 ( .A(n68), .B(n69), .S0(n199), .Y(N276) );
  AO21XLM U126 ( .A0(n178), .A1(n180), .B0(n60), .Y(N282) );
  AO21X2M U127 ( .A0(n152), .A1(n146), .B0(n51), .Y(N195) );
  MXI2X2M U128 ( .A(n71), .B(n72), .S0(n180), .Y(N281) );
  BUFX4M U129 ( .A(in_data[3]), .Y(n148) );
  BUFX2M U130 ( .A(x_n2[7]), .Y(n125) );
  BUFX2M U131 ( .A(in_data[15]), .Y(n149) );
  BUFX2M U132 ( .A(x_n2[6]), .Y(n124) );
  BUFX2M U133 ( .A(x_n2[2]), .Y(n120) );
  BUFX2M U134 ( .A(x_n2[1]), .Y(n119) );
  BUFX2M U135 ( .A(x_n2[3]), .Y(n121) );
  BUFX4M U136 ( .A(x_n1[6]), .Y(n138) );
  BUFX4M U137 ( .A(x_n1[5]), .Y(n137) );
  BUFX2M U138 ( .A(x_n2[12]), .Y(n130) );
  BUFX2M U139 ( .A(x_n2[5]), .Y(n123) );
  BUFX2M U140 ( .A(x_n2[8]), .Y(n126) );
  BUFX2M U141 ( .A(x_n2[10]), .Y(n128) );
  BUFX2M U142 ( .A(x_n2[11]), .Y(n129) );
  BUFX2M U143 ( .A(x_n2[13]), .Y(n131) );
  BUFX2M U144 ( .A(x_n2[4]), .Y(n122) );
  BUFX2M U145 ( .A(x_n1[12]), .Y(n144) );
  BUFX2M U146 ( .A(x_n1[7]), .Y(n139) );
  BUFX2M U147 ( .A(x_n1[11]), .Y(n143) );
  BUFX2M U148 ( .A(x_n1[13]), .Y(n145) );
  OAI2BB1X2M U149 ( .A0N(n140), .A1N(n35), .B0(n234), .Y(n29) );
  NAND2BX2M U150 ( .AN(n133), .B(n35), .Y(n36) );
  NAND2BX2M U151 ( .AN(n114), .B(n120), .Y(n277) );
  OAI21XLM U152 ( .A0(n114), .A1(in_data[4]), .B0(n213), .Y(n28) );
  OAI2BB1XLM U153 ( .A0N(n114), .A1N(in_data[4]), .B0(n28), .Y(n212) );
  XNOR3X1M U154 ( .A(n130), .B(in_data[12]), .C(n263), .Y(N35) );
  AND2X1M U155 ( .A(n270), .B(n271), .Y(n52) );
  OAI2BB1XLM U156 ( .A0N(n245), .A1N(in_data[5]), .B0(n246), .Y(n26) );
  CLKINVX2M U157 ( .A(N265), .Y(n176) );
  CLKXOR2X2M U158 ( .A(n218), .B(n140), .Y(n12) );
  NOR2X2M U159 ( .A(in_data[10]), .B(in_data[12]), .Y(n13) );
  INVX2M U160 ( .A(in_data[9]), .Y(n117) );
  INVX2M U161 ( .A(in_data[8]), .Y(n250) );
  CLKXOR2X2M U162 ( .A(n17), .B(n114), .Y(n14) );
  BUFX2M U163 ( .A(x_n1[9]), .Y(n141) );
  BUFX2M U164 ( .A(x_n1[10]), .Y(n142) );
  BUFX4M U165 ( .A(N179), .Y(n20) );
  INVX4M U166 ( .A(n113), .Y(n114) );
  CLKINVX2M U167 ( .A(in_data[2]), .Y(n113) );
  BUFX2M U168 ( .A(N266), .Y(n37) );
  INVX2M U169 ( .A(n147), .Y(n242) );
  BUFX2M U170 ( .A(x_n2[9]), .Y(n127) );
  OAI21X4M U171 ( .A0(n152), .A1(n145), .B0(n163), .Y(n96) );
  MXI2X6M U172 ( .A(n73), .B(n74), .S0(n21), .Y(N279) );
  NAND2BX2M U173 ( .AN(n122), .B(in_data[4]), .Y(n273) );
  OAI21X1M U174 ( .A0(in_data[5]), .A1(n148), .B0(n212), .Y(n85) );
  OR2X1M U175 ( .A(in_data[6]), .B(in_data[8]), .Y(n207) );
  OR2X1M U176 ( .A(in_data[7]), .B(in_data[9]), .Y(n204) );
  XOR3XLM U177 ( .A(in_data[5]), .B(in_data[7]), .C(n210), .Y(N272) );
  NOR2BX1M U178 ( .AN(in_data[6]), .B(n250), .Y(n110) );
  NOR2X2M U179 ( .A(n176), .B(n113), .Y(n34) );
  INVX2M U180 ( .A(n176), .Y(n17) );
  AO21X8M U181 ( .A0(n204), .A1(n206), .B0(n109), .Y(n203) );
  MXI2X1M U182 ( .A(n106), .B(n107), .S0(n209), .Y(N273) );
  OAI2BB1XLM U183 ( .A0N(n248), .A1N(in_data[7]), .B0(n23), .Y(n18) );
  XOR3X1M U184 ( .A(n138), .B(n136), .C(n172), .Y(N184) );
  MXI2X1M U185 ( .A(n64), .B(n65), .S0(n206), .Y(N274) );
  OAI2BB1X2M U186 ( .A0N(n145), .A1N(n153), .B0(n19), .Y(n223) );
  OAI2BB1X1M U187 ( .A0N(n221), .A1N(x_n1[15]), .B0(n224), .Y(n19) );
  NAND3X4M U188 ( .A(n271), .B(n270), .C(n273), .Y(n244) );
  OAI21X2M U189 ( .A0(n53), .A1(n279), .B0(n278), .Y(n48) );
  OAI2BB1X2M U190 ( .A0N(in_data[5]), .A1N(n148), .B0(n85), .Y(n211) );
  XNOR3X1M U191 ( .A(n140), .B(x_n1[3]), .C(n234), .Y(N9) );
  INVX1M U192 ( .A(n238), .Y(n239) );
  OR2X2M U193 ( .A(n134), .B(n241), .Y(n240) );
  XOR3X4M U194 ( .A(n143), .B(n141), .C(n167), .Y(N189) );
  XNOR3X4M U195 ( .A(n152), .B(n144), .C(n225), .Y(N18) );
  XNOR3X8M U196 ( .A(n145), .B(n140), .C(n229), .Y(N14) );
  AO21X8M U197 ( .A0(n189), .A1(n192), .B0(n58), .Y(n21) );
  OAI2B11X4M U198 ( .A1N(n121), .A0(n148), .B0(n277), .C0(n243), .Y(n270) );
  XOR2X4M U199 ( .A(n22), .B(n134), .Y(n61) );
  CLKINVX3M U200 ( .A(n24), .Y(n22) );
  INVX2M U201 ( .A(N1), .Y(n24) );
  NAND2BX1M U202 ( .AN(n121), .B(n148), .Y(n271) );
  XNOR3XLM U203 ( .A(n125), .B(in_data[7]), .C(n268), .Y(N30) );
  OR2X6M U204 ( .A(n133), .B(N1), .Y(n241) );
  XOR2XLM U205 ( .A(n134), .B(n241), .Y(N3) );
  NAND2XLM U206 ( .A(n215), .B(n20), .Y(n25) );
  OAI21X3M U207 ( .A0(n144), .A1(n153), .B0(n225), .Y(n89) );
  XNOR3X2M U208 ( .A(n135), .B(n20), .C(n175), .Y(n108) );
  OAI21X2M U209 ( .A0(in_data[4]), .A1(in_data[6]), .B0(n211), .Y(n84) );
  OA21X8M U210 ( .A0(n140), .A1(n138), .B0(n170), .Y(n49) );
  OAI2BB1X2M U211 ( .A0N(n144), .A1N(n153), .B0(n89), .Y(n224) );
  NAND2X4M U212 ( .A(n31), .B(n262), .Y(n95) );
  XNOR3XLM U213 ( .A(n127), .B(in_data[9]), .C(n266), .Y(N32) );
  NAND2BX2M U214 ( .AN(in_data[4]), .B(n122), .Y(n272) );
  NOR2XLM U215 ( .A(N265), .B(n280), .Y(n115) );
  XNOR2X1M U216 ( .A(n139), .B(n141), .Y(n27) );
  AO21X8M U217 ( .A0(n200), .A1(n203), .B0(n54), .Y(n199) );
  XOR3XLM U218 ( .A(in_data[4]), .B(in_data[6]), .C(n211), .Y(N271) );
  XNOR3X4M U219 ( .A(n132), .B(in_data[14]), .C(n261), .Y(N37) );
  XNOR2X4M U220 ( .A(n168), .B(n12), .Y(N188) );
  OAI21X4M U221 ( .A0(n142), .A1(n140), .B0(n168), .Y(n98) );
  MX2X3M U222 ( .A(n195), .B(n194), .S0(n15), .Y(N277) );
  CLKNAND2X4M U223 ( .A(n33), .B(n34), .Y(n177) );
  OAI2BB1X4M U224 ( .A0N(n142), .A1N(n140), .B0(n98), .Y(n167) );
  OAI2BB1X4M U225 ( .A0N(n152), .A1N(n145), .B0(n96), .Y(n162) );
  MXI2X2M U226 ( .A(n66), .B(n67), .S0(n192), .Y(N278) );
  OAI21X4M U227 ( .A0(n141), .A1(n139), .B0(n169), .Y(n90) );
  AO21X8M U228 ( .A0(n140), .A1(n138), .B0(n49), .Y(n169) );
  OAI2BB1X4M U229 ( .A0N(n141), .A1N(n139), .B0(n90), .Y(n168) );
  OAI2BB1X4M U230 ( .A0N(n38), .A1N(n148), .B0(n177), .Y(n213) );
  XNOR2X1M U231 ( .A(n112), .B(n224), .Y(N19) );
  AO21X8M U232 ( .A0(n181), .A1(n184), .B0(n59), .Y(n180) );
  XOR3X1M U233 ( .A(n137), .B(n135), .C(n173), .Y(N183) );
  OAI2B1X4M U234 ( .A1N(in_data[10]), .A0(n128), .B0(n101), .Y(n264) );
  XNOR3X4M U235 ( .A(n143), .B(n138), .C(n39), .Y(N12) );
  OAI2B1X4M U236 ( .A1N(in_data[11]), .A0(n129), .B0(n79), .Y(n263) );
  OAI2B1X2M U237 ( .A1N(n137), .A0(n142), .B0(n40), .Y(n39) );
  OAI2B1X4M U238 ( .A1N(in_data[13]), .A0(n131), .B0(n95), .Y(n261) );
  XNOR3X4M U239 ( .A(n139), .B(n134), .C(n235), .Y(N8) );
  AO21X8M U240 ( .A0(n188), .A1(n185), .B0(n57), .Y(n184) );
  OR2X2M U241 ( .A(in_data[13]), .B(n255), .Y(n31) );
  NAND2X4M U242 ( .A(n242), .B(n32), .Y(n33) );
  BUFX2M U243 ( .A(N266), .Y(n38) );
  INVXLM U244 ( .A(n134), .Y(n42) );
  OR2X2M U245 ( .A(in_data[12]), .B(n254), .Y(n41) );
  XNOR3XLM U246 ( .A(n126), .B(in_data[8]), .C(n18), .Y(N31) );
  CLKNAND2X2M U247 ( .A(n43), .B(n141), .Y(n44) );
  INVXLM U248 ( .A(n136), .Y(n43) );
  INVXLM U249 ( .A(n141), .Y(n217) );
  BUFX2M U250 ( .A(x_n1[14]), .Y(n146) );
  BUFX2M U251 ( .A(x_n2[14]), .Y(n132) );
  INVX2M U252 ( .A(x_n2[15]), .Y(n151) );
  NOR2XLM U253 ( .A(n110), .B(n208), .Y(n107) );
  XOR2XLM U254 ( .A(in_data[8]), .B(n202), .Y(n62) );
  MXI2X1M U255 ( .A(n62), .B(n63), .S0(n203), .Y(N275) );
  NOR2XLM U256 ( .A(n109), .B(n205), .Y(n65) );
  XOR2XLM U257 ( .A(in_data[12]), .B(n187), .Y(n73) );
  INVXLM U258 ( .A(n123), .Y(n245) );
  XOR2XLM U259 ( .A(in_data[9]), .B(n198), .Y(n68) );
  NOR2XLM U260 ( .A(n56), .B(n197), .Y(n69) );
  XOR2XLM U261 ( .A(in_data[11]), .B(n191), .Y(n66) );
  XOR3XLM U262 ( .A(in_data[5]), .B(n148), .C(n212), .Y(N270) );
  OR2X2M U263 ( .A(n176), .B(n113), .Y(n214) );
  NOR2BXLM U264 ( .AN(in_data[7]), .B(n117), .Y(n109) );
  XNOR3XLM U265 ( .A(n121), .B(n148), .C(n48), .Y(N26) );
  INVX2M U266 ( .A(x_n1[15]), .Y(n153) );
  INVXLM U267 ( .A(n204), .Y(n205) );
  XOR2X4M U268 ( .A(n111), .B(n162), .Y(N194) );
  NOR2XLM U269 ( .A(n250), .B(n202), .Y(n54) );
  XOR2X4M U270 ( .A(n112), .B(n163), .Y(N193) );
  INVXLM U271 ( .A(n207), .Y(n208) );
  INVXLM U272 ( .A(n196), .Y(n197) );
  CLKINVX2M U273 ( .A(n200), .Y(n201) );
  NOR2XLM U274 ( .A(n198), .B(n191), .Y(n58) );
  NOR2XLM U275 ( .A(n191), .B(n183), .Y(n59) );
  NOR2XLM U276 ( .A(n187), .B(n183), .Y(n60) );
  NOR2XLM U277 ( .A(n202), .B(n193), .Y(n55) );
  XOR2XLM U278 ( .A(in_data[6]), .B(n250), .Y(n106) );
  XOR2XLM U279 ( .A(in_data[7]), .B(n117), .Y(n64) );
  INVXLM U280 ( .A(n131), .Y(n255) );
  XNOR3XLM U281 ( .A(n148), .B(n147), .C(n214), .Y(n50) );
  XNOR2X1M U282 ( .A(in_data[10]), .B(n193), .Y(n194) );
  OR2X2M U283 ( .A(n55), .B(n13), .Y(n195) );
  OA21X1M U284 ( .A0(n152), .A1(n146), .B0(n162), .Y(n51) );
  INVX2M U285 ( .A(n153), .Y(n152) );
  INVX2M U286 ( .A(n151), .Y(n150) );
  INVXLM U287 ( .A(n149), .Y(n183) );
  XOR2XLM U288 ( .A(n152), .B(n146), .Y(n111) );
  XOR2XLM U289 ( .A(n152), .B(n145), .Y(n112) );
  OR2X1M U290 ( .A(in_data[13]), .B(n149), .Y(n181) );
  OR2X1M U291 ( .A(in_data[14]), .B(n149), .Y(n178) );
  NOR2X2M U292 ( .A(n117), .B(n198), .Y(n56) );
  NOR2X2M U293 ( .A(n193), .B(n187), .Y(n57) );
  INVX2M U294 ( .A(n185), .Y(n186) );
  INVX2M U295 ( .A(n178), .Y(n179) );
  INVX2M U296 ( .A(n181), .Y(n182) );
  INVX2M U297 ( .A(n189), .Y(n190) );
  BUFX2M U298 ( .A(n154), .Y(n157) );
  BUFX2M U299 ( .A(n155), .Y(n158) );
  BUFX2M U300 ( .A(n154), .Y(n156) );
  BUFX2M U301 ( .A(n155), .Y(n159) );
  INVX2M U302 ( .A(n125), .Y(n248) );
  INVX2M U303 ( .A(n124), .Y(n247) );
  NOR2X1M U304 ( .A(n54), .B(n201), .Y(n63) );
  NOR2X2M U305 ( .A(n58), .B(n190), .Y(n67) );
  INVX2M U306 ( .A(n139), .Y(n216) );
  CLKXOR2X2M U307 ( .A(in_data[14]), .B(n183), .Y(n71) );
  NOR2X2M U308 ( .A(n60), .B(n179), .Y(n72) );
  NOR2X2M U309 ( .A(n57), .B(n186), .Y(n74) );
  INVX2M U310 ( .A(n143), .Y(n219) );
  INVX2M U311 ( .A(n129), .Y(n253) );
  INVX2M U312 ( .A(n145), .Y(n221) );
  INVX2M U313 ( .A(n144), .Y(n220) );
  XNOR3X2M U314 ( .A(n123), .B(in_data[5]), .C(n83), .Y(N28) );
  OAI21X2M U315 ( .A0(n52), .A1(n274), .B0(n273), .Y(n83) );
  INVX2M U316 ( .A(n132), .Y(n256) );
  OAI2B1X4M U317 ( .A1N(n143), .A0(n152), .B0(n88), .Y(n225) );
  INVX2M U318 ( .A(n142), .Y(n218) );
  INVX2M U319 ( .A(n130), .Y(n254) );
  INVX2M U320 ( .A(n128), .Y(n252) );
  CLKXOR2X2M U321 ( .A(in_data[13]), .B(n183), .Y(n104) );
  NOR2X2M U322 ( .A(n59), .B(n182), .Y(n105) );
  XNOR2XLM U323 ( .A(n20), .B(n24), .Y(N2) );
  XOR3XLM U324 ( .A(n122), .B(in_data[4]), .C(n52), .Y(N27) );
  XOR3XLM U325 ( .A(n10), .B(n37), .C(n115), .Y(N24) );
  XOR3XLM U326 ( .A(n120), .B(n114), .C(n53), .Y(N25) );
  INVXLM U327 ( .A(n277), .Y(n279) );
  XNOR2X2M U328 ( .A(n136), .B(n239), .Y(N5) );
  XNOR3XLM U329 ( .A(n124), .B(in_data[6]), .C(n26), .Y(N29) );
  XNOR2X2M U330 ( .A(n150), .B(n149), .Y(n260) );
  INVX2M U331 ( .A(n127), .Y(n251) );
  OR2X2M U332 ( .A(in_data[9]), .B(in_data[11]), .Y(n196) );
  OR2X2M U333 ( .A(in_data[8]), .B(in_data[10]), .Y(n200) );
  INVX2M U334 ( .A(in_data[10]), .Y(n202) );
  INVX2M U335 ( .A(in_data[12]), .Y(n193) );
  INVX2M U336 ( .A(in_data[14]), .Y(n187) );
  OR2X2M U337 ( .A(in_data[12]), .B(in_data[14]), .Y(n185) );
  OR2X2M U338 ( .A(in_data[11]), .B(in_data[13]), .Y(n189) );
  INVX2M U339 ( .A(in_data[11]), .Y(n198) );
  INVX2M U340 ( .A(in_data[13]), .Y(n191) );
  BUFX2M U341 ( .A(rst_n), .Y(n155) );
  BUFX2M U342 ( .A(rst_n), .Y(n154) );
  INVX2M U343 ( .A(x_n2[0]), .Y(n280) );
  XOR3XLM U344 ( .A(in_data[4]), .B(n114), .C(n213), .Y(N269) );
  AO21XLM U345 ( .A0(n17), .A1(n280), .B0(n116), .Y(N23) );
  NOR2XLM U346 ( .A(N265), .B(n280), .Y(n116) );
endmodule


module counter2bit_0 ( clk, reset, count );
  output [1:0] count;
  input clk, reset;
  wire   N2, n1;

  DFFRQX2M \count_reg[1]  ( .D(N2), .CK(clk), .RN(reset), .Q(count[1]) );
  DFFRQX2M \count_reg[0]  ( .D(n1), .CK(clk), .RN(reset), .Q(count[0]) );
  XOR2XLM U3 ( .A(count[1]), .B(count[0]), .Y(N2) );
  INVXLM U4 ( .A(count[0]), .Y(n1) );
endmodule


module mux4to1_0 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44;

  AOI22X1M U1 ( .A0(I3[5]), .A1(n6), .B0(I2[5]), .B1(n3), .Y(n14) );
  CLKNAND2X2M U2 ( .A(I2[6]), .B(n3), .Y(n2) );
  NAND2X2M U3 ( .A(I3[6]), .B(n6), .Y(n1) );
  AND2X2M U4 ( .A(n1), .B(n2), .Y(n24) );
  NAND2X4M U5 ( .A(n23), .B(n24), .Y(Y[6]) );
  AOI22X4M U6 ( .A0(I1[9]), .A1(n4), .B0(I0[9]), .B1(n5), .Y(n19) );
  AO22X8M U7 ( .A0(I1[13]), .A1(n4), .B0(I0[13]), .B1(n5), .Y(n43) );
  AOI22X4M U8 ( .A0(I3[4]), .A1(n6), .B0(I2[4]), .B1(n3), .Y(n16) );
  AOI22X4M U9 ( .A0(I1[12]), .A1(n4), .B0(I0[12]), .B1(n5), .Y(n9) );
  NAND2BX4M U10 ( .AN(n44), .B(n25), .Y(Y[15]) );
  CLKNAND2X2M U11 ( .A(I2[13]), .B(n3), .Y(n29) );
  NOR2X2M U12 ( .A(S[0]), .B(n31), .Y(n3) );
  NOR2X2M U13 ( .A(n31), .B(n30), .Y(n6) );
  NOR2X2M U14 ( .A(S[1]), .B(n30), .Y(n4) );
  NOR2X2M U15 ( .A(S[1]), .B(S[0]), .Y(n5) );
  NAND2X2M U16 ( .A(n13), .B(n14), .Y(Y[5]) );
  AOI22X1M U17 ( .A0(I1[5]), .A1(n4), .B0(I0[5]), .B1(n5), .Y(n13) );
  NAND2X2M U18 ( .A(n26), .B(n27), .Y(Y[7]) );
  AOI22X1M U19 ( .A0(I1[7]), .A1(n4), .B0(I0[7]), .B1(n5), .Y(n26) );
  AOI22X1M U20 ( .A0(I3[7]), .A1(n6), .B0(I2[7]), .B1(n3), .Y(n27) );
  NAND2X2M U21 ( .A(I2[10]), .B(n3), .Y(n38) );
  OR2X4M U22 ( .A(n37), .B(n36), .Y(Y[2]) );
  AO22X2M U23 ( .A0(I1[2]), .A1(n4), .B0(I0[2]), .B1(n5), .Y(n37) );
  NAND2X2M U24 ( .A(n15), .B(n16), .Y(Y[4]) );
  OR2X2M U25 ( .A(n33), .B(n32), .Y(Y[0]) );
  AO22X1M U26 ( .A0(I3[0]), .A1(n6), .B0(I2[0]), .B1(n3), .Y(n32) );
  AO22X1M U27 ( .A0(I1[0]), .A1(n4), .B0(I0[0]), .B1(n5), .Y(n33) );
  OR2X2M U28 ( .A(n35), .B(n34), .Y(Y[1]) );
  AO22X1M U29 ( .A0(I3[1]), .A1(n6), .B0(I2[1]), .B1(n3), .Y(n34) );
  AO22X1M U30 ( .A0(I1[1]), .A1(n4), .B0(I0[1]), .B1(n5), .Y(n35) );
  NAND2X4M U31 ( .A(n19), .B(n20), .Y(Y[9]) );
  AOI22X2M U32 ( .A0(I3[9]), .A1(n6), .B0(I2[9]), .B1(n3), .Y(n20) );
  NAND4X6M U33 ( .A(n41), .B(n40), .C(n39), .D(n38), .Y(Y[10]) );
  NAND2X2M U34 ( .A(I1[10]), .B(n4), .Y(n41) );
  NAND2X2M U35 ( .A(I0[10]), .B(n5), .Y(n40) );
  NAND2X2M U36 ( .A(I3[10]), .B(n6), .Y(n39) );
  NAND2X4M U37 ( .A(n9), .B(n10), .Y(Y[12]) );
  OR2X6M U38 ( .A(n43), .B(n42), .Y(Y[13]) );
  NAND2X2M U39 ( .A(n28), .B(n29), .Y(n42) );
  NAND2X2M U40 ( .A(n17), .B(n18), .Y(Y[14]) );
  AOI22X1M U41 ( .A0(I1[14]), .A1(n4), .B0(I0[14]), .B1(n5), .Y(n17) );
  NAND2X4M U42 ( .A(n11), .B(n12), .Y(Y[11]) );
  AOI22X2M U43 ( .A0(I3[11]), .A1(n6), .B0(I2[11]), .B1(n3), .Y(n12) );
  AOI22X2M U44 ( .A0(I1[11]), .A1(n4), .B0(I0[11]), .B1(n5), .Y(n11) );
  NAND2X4M U45 ( .A(n21), .B(n22), .Y(Y[8]) );
  NAND2X6M U46 ( .A(n7), .B(n8), .Y(Y[3]) );
  AOI22X4M U47 ( .A0(I3[15]), .A1(n6), .B0(I2[15]), .B1(n3), .Y(n25) );
  AOI22X4M U48 ( .A0(I3[8]), .A1(n6), .B0(I2[8]), .B1(n3), .Y(n22) );
  AOI22X4M U49 ( .A0(I1[3]), .A1(n4), .B0(I0[3]), .B1(n5), .Y(n7) );
  AOI22X4M U50 ( .A0(I3[3]), .A1(n6), .B0(I2[3]), .B1(n3), .Y(n8) );
  AO22X4M U51 ( .A0(I1[15]), .A1(n4), .B0(I0[15]), .B1(n5), .Y(n44) );
  AOI22X2M U52 ( .A0(I3[14]), .A1(n6), .B0(I2[14]), .B1(n3), .Y(n18) );
  INVXLM U53 ( .A(S[0]), .Y(n30) );
  INVXLM U54 ( .A(S[1]), .Y(n31) );
  AOI22X4M U55 ( .A0(I3[12]), .A1(n6), .B0(I2[12]), .B1(n3), .Y(n10) );
  AOI22X4M U56 ( .A0(I1[4]), .A1(n4), .B0(I0[4]), .B1(n5), .Y(n15) );
  AOI22X4M U57 ( .A0(I1[8]), .A1(n4), .B0(I0[8]), .B1(n5), .Y(n21) );
  AOI22X4M U58 ( .A0(I1[6]), .A1(n4), .B0(I0[6]), .B1(n5), .Y(n23) );
  NAND2X2M U59 ( .A(I3[13]), .B(n6), .Y(n28) );
  AO22X4M U60 ( .A0(I3[2]), .A1(n6), .B0(I2[2]), .B1(n3), .Y(n36) );
endmodule


module up4_filter_3_DW01_add_2 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n4;
  wire   [21:1] carry;

  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX1M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX1M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X4M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX1M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX1M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2M U1_6 ( .A(A[6]), .B(n1), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX1M U1_4 ( .A(A[4]), .B(B[4]), .CI(n2), .CO(carry[5]), .S(SUM[4]) );
  BUFX4M U1 ( .A(B[6]), .Y(n1) );
  AND2X1M U2 ( .A(B[3]), .B(A[3]), .Y(n2) );
  CLKINVX2M U3 ( .A(A[3]), .Y(n4) );
  XNOR2XLM U4 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  BUFX2M U5 ( .A(B[2]), .Y(SUM[2]) );
endmodule


module up4_filter_3_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:1] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX8M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX1M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  AND2X1M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X1M U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVXLM U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_3_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n9;
  wire   [21:1] carry;

  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX4M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX4M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(n3), .CO(carry[7]), .S(SUM[6]) );
  ADDFHX1M U1_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX1M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CLKINVX2M U1 ( .A(B[7]), .Y(n1) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
  BUFX2M U4 ( .A(B[4]), .Y(SUM[4]) );
  AND2X2M U5 ( .A(B[5]), .B(A[5]), .Y(n3) );
  BUFX4M U6 ( .A(B[2]), .Y(SUM[2]) );
  BUFX2M U7 ( .A(B[0]), .Y(SUM[0]) );
  XNOR2XLM U8 ( .A(B[5]), .B(n9), .Y(SUM[5]) );
  INVXLM U9 ( .A(A[5]), .Y(n9) );
  BUFX2M U10 ( .A(B[3]), .Y(SUM[3]) );
endmodule


module up4_filter_3_DW01_add_9 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFHX1M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX4M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDFHX4M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX1M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module up4_filter_3_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:1] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
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
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CLKAND2X6M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  CLKINVX2M U2 ( .A(A[3]), .Y(n3) );
  BUFX4M U3 ( .A(A[2]), .Y(SUM[2]) );
  XNOR2X2M U4 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
endmodule


module up4_filter_3_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:1] carry;

  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX1M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX1M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX4M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX1M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  INVXLM U1 ( .A(A[3]), .Y(n4) );
  CLKAND2X4M U2 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2X2M U3 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
  BUFX2M U4 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U5 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module up4_filter_3_DW01_add_12 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
  ADDFHX4M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2XLM U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U3 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_3_DW01_add_23 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;

  XNOR2X2M U2 ( .A(n94), .B(n95), .Y(SUM[13]) );
  NAND2XLM U3 ( .A(A[18]), .B(n7), .Y(n41) );
  INVX2M U4 ( .A(A[20]), .Y(n35) );
  NAND2BX2M U5 ( .AN(n90), .B(n91), .Y(n87) );
  XNOR2X2M U6 ( .A(n11), .B(n12), .Y(SUM[8]) );
  AND2X2M U7 ( .A(n112), .B(n113), .Y(n1) );
  OA21X2M U8 ( .A0(n50), .A1(n51), .B0(n52), .Y(n2) );
  AND2X2M U9 ( .A(n114), .B(n13), .Y(n3) );
  XNOR2X4M U10 ( .A(n7), .B(n32), .Y(n31) );
  NAND2XLM U11 ( .A(B[10]), .B(A[10]), .Y(n103) );
  NAND2XLM U12 ( .A(B[7]), .B(A[7]), .Y(n17) );
  NAND2XLM U13 ( .A(B[14]), .B(A[14]), .Y(n64) );
  CLKNAND2X2M U14 ( .A(B[16]), .B(A[16]), .Y(n52) );
  OR2X1M U15 ( .A(B[16]), .B(A[16]), .Y(n54) );
  NOR2XLM U16 ( .A(A[14]), .B(B[14]), .Y(n66) );
  OR2X1M U17 ( .A(B[7]), .B(A[7]), .Y(n82) );
  NAND2XLM U18 ( .A(B[8]), .B(A[8]), .Y(n13) );
  OR2X1M U19 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2XLM U20 ( .A(B[11]), .B(A[11]), .Y(n75) );
  OR2X1M U21 ( .A(B[11]), .B(A[11]), .Y(n80) );
  OR2X1M U22 ( .A(B[14]), .B(A[14]), .Y(n88) );
  OR2X1M U23 ( .A(B[10]), .B(A[10]), .Y(n79) );
  NAND4XLM U24 ( .A(n73), .B(n74), .C(n75), .D(n76), .Y(n68) );
  NOR3X1M U25 ( .A(n1), .B(n18), .C(n81), .Y(n78) );
  NAND4X2M U26 ( .A(n104), .B(n12), .C(n79), .D(n80), .Y(n101) );
  NAND4XLM U27 ( .A(n28), .B(n26), .C(n27), .D(n22), .Y(n83) );
  INVXLM U28 ( .A(n82), .Y(n18) );
  NAND2X2M U29 ( .A(n53), .B(n54), .Y(n51) );
  NOR2XLM U30 ( .A(n70), .B(n71), .Y(n69) );
  NAND2X2M U31 ( .A(n8), .B(n46), .Y(n45) );
  NAND3X1M U32 ( .A(n101), .B(n75), .C(n74), .Y(n97) );
  XNOR2X2M U33 ( .A(n57), .B(n58), .Y(SUM[16]) );
  XNOR2X1M U34 ( .A(n39), .B(n38), .Y(SUM[19]) );
  NAND2X1M U35 ( .A(n37), .B(n36), .Y(n39) );
  NAND2XLM U36 ( .A(n41), .B(n40), .Y(n44) );
  NOR2XLM U37 ( .A(n1), .B(n81), .Y(n104) );
  CLKINVX2M U38 ( .A(n60), .Y(n55) );
  NAND3X2M U39 ( .A(n116), .B(n22), .C(n82), .Y(n84) );
  CLKINVX2M U40 ( .A(n29), .Y(n21) );
  NAND2XLM U41 ( .A(n92), .B(n93), .Y(n91) );
  INVXLM U42 ( .A(n67), .Y(n90) );
  INVXLM U43 ( .A(n53), .Y(n59) );
  AND2X1M U44 ( .A(n52), .B(n54), .Y(n58) );
  INVX2M U45 ( .A(n27), .Y(n125) );
  NAND3X1M U46 ( .A(n61), .B(n62), .C(n63), .Y(n56) );
  NAND3XLM U47 ( .A(B[14]), .B(n68), .C(n72), .Y(n61) );
  NOR2XLM U48 ( .A(n70), .B(n71), .Y(n72) );
  INVXLM U49 ( .A(n87), .Y(n89) );
  OAI2B2XLM U50 ( .A1N(n45), .A0(n2), .B0(n46), .B1(n8), .Y(n42) );
  XNOR2XLM U51 ( .A(n34), .B(n4), .Y(SUM[20]) );
  INVXLM U52 ( .A(B[21]), .Y(n8) );
  OAI2BB1X2M U53 ( .A0N(n40), .A1N(n42), .B0(n41), .Y(n38) );
  NOR2BX2M U54 ( .AN(n26), .B(n125), .Y(n120) );
  NOR2BXLM U55 ( .AN(n67), .B(n70), .Y(n95) );
  NAND4XLM U56 ( .A(n77), .B(n78), .C(n79), .D(n80), .Y(n73) );
  NAND3XLM U57 ( .A(n83), .B(n17), .C(n84), .Y(n77) );
  NAND2XLM U58 ( .A(n96), .B(n76), .Y(n92) );
  NAND2XLM U59 ( .A(n97), .B(n98), .Y(n96) );
  AND2X1M U60 ( .A(n88), .B(n64), .Y(n6) );
  INVXLM U61 ( .A(n103), .Y(n109) );
  XNOR2X1M U62 ( .A(n15), .B(n16), .Y(SUM[7]) );
  AOI2B1XLM U63 ( .A1N(n19), .A0(n20), .B0(n21), .Y(n15) );
  NOR2BXLM U64 ( .AN(n17), .B(n18), .Y(n16) );
  INVXLM U65 ( .A(n22), .Y(n19) );
  OAI21XLM U66 ( .A0(n3), .A1(n1), .B0(n10), .Y(n108) );
  XNOR2XLM U67 ( .A(n3), .B(n9), .Y(SUM[9]) );
  NOR2BXLM U68 ( .AN(n10), .B(n1), .Y(n9) );
  NOR2BXLM U69 ( .AN(n103), .B(n107), .Y(n111) );
  NAND2XLM U70 ( .A(n13), .B(n14), .Y(n11) );
  NAND3XLM U71 ( .A(n26), .B(n27), .C(n28), .Y(n25) );
  NAND2XLM U72 ( .A(n22), .B(n29), .Y(n23) );
  NAND2XLM U73 ( .A(n14), .B(n12), .Y(n114) );
  INVXLM U74 ( .A(n79), .Y(n107) );
  AND2X1M U75 ( .A(n75), .B(n80), .Y(n106) );
  NAND2XLM U76 ( .A(A[19]), .B(n7), .Y(n37) );
  NAND2XLM U77 ( .A(n8), .B(n47), .Y(n40) );
  OAI21XLM U78 ( .A0(A[5]), .A1(B[5]), .B0(n117), .Y(n24) );
  NAND2XLM U79 ( .A(n118), .B(n119), .Y(n117) );
  NOR2X1M U80 ( .A(n66), .B(n67), .Y(n65) );
  OR2X1M U81 ( .A(B[13]), .B(A[13]), .Y(n93) );
  NAND3X1M U82 ( .A(A[14]), .B(n68), .C(n69), .Y(n62) );
  NAND2BX1M U83 ( .AN(n124), .B(n123), .Y(n121) );
  NAND2XLM U84 ( .A(A[2]), .B(B[2]), .Y(n124) );
  XNOR2X1M U85 ( .A(n105), .B(n106), .Y(SUM[11]) );
  XNOR2XLM U86 ( .A(n23), .B(n20), .Y(SUM[6]) );
  INVX2M U87 ( .A(n8), .Y(n7) );
  INVX2M U88 ( .A(n108), .Y(n110) );
  INVX2M U89 ( .A(n97), .Y(n99) );
  INVX2M U90 ( .A(n92), .Y(n94) );
  OAI2BB1X2M U91 ( .A0N(n36), .A1N(n38), .B0(n37), .Y(n34) );
  XOR2XLM U92 ( .A(n7), .B(n35), .Y(n4) );
  NOR2X2M U93 ( .A(n55), .B(n56), .Y(n50) );
  NAND3X2M U94 ( .A(n102), .B(n79), .C(n80), .Y(n74) );
  OAI211X2M U95 ( .A0(n1), .A1(n13), .B0(n10), .C0(n103), .Y(n102) );
  AOI2B1X1M U96 ( .A1N(n59), .A0(n56), .B0(n55), .Y(n57) );
  AOI21BX1M U97 ( .A0(n88), .A1(n87), .B0N(n64), .Y(n85) );
  NOR2BX2M U98 ( .AN(n60), .B(n59), .Y(n86) );
  INVX2M U99 ( .A(n93), .Y(n70) );
  INVX2M U100 ( .A(n98), .Y(n71) );
  NOR2XLM U101 ( .A(A[20]), .B(n7), .Y(n33) );
  INVX2M U102 ( .A(n14), .Y(n81) );
  AND2X1M U103 ( .A(A[20]), .B(n7), .Y(n5) );
  AOI2B1XLM U104 ( .A1N(n107), .A0(n108), .B0(n109), .Y(n105) );
  NAND3X2M U105 ( .A(n115), .B(n17), .C(n84), .Y(n12) );
  NAND4X2M U106 ( .A(n120), .B(n28), .C(n22), .D(n82), .Y(n115) );
  NAND2BX2M U107 ( .AN(n21), .B(n24), .Y(n116) );
  NAND2X2M U108 ( .A(n24), .B(n25), .Y(n20) );
  NOR2BXLM U109 ( .AN(n76), .B(n71), .Y(n100) );
  XNOR2X2M U110 ( .A(n30), .B(n31), .Y(SUM[21]) );
  AOI2B1X2M U111 ( .A1N(n33), .A0(n34), .B0(n5), .Y(n30) );
  INVX2M U112 ( .A(A[21]), .Y(n32) );
  NOR2BX2M U113 ( .AN(n64), .B(n65), .Y(n63) );
  XNOR2XLM U114 ( .A(n2), .B(n48), .Y(SUM[17]) );
  AOI21XLM U115 ( .A0(n7), .A1(A[17]), .B0(n49), .Y(n48) );
  INVXLM U116 ( .A(n45), .Y(n49) );
  NAND2XLM U117 ( .A(B[12]), .B(A[12]), .Y(n76) );
  NAND2XLM U118 ( .A(B[9]), .B(A[9]), .Y(n10) );
  INVX2M U119 ( .A(A[9]), .Y(n113) );
  INVXLM U120 ( .A(B[9]), .Y(n112) );
  OR2X1M U121 ( .A(B[12]), .B(A[12]), .Y(n98) );
  OR2X1M U122 ( .A(B[15]), .B(A[15]), .Y(n53) );
  INVX2M U123 ( .A(A[18]), .Y(n47) );
  NAND2XLM U124 ( .A(n8), .B(n43), .Y(n36) );
  INVX2M U125 ( .A(A[19]), .Y(n43) );
  NAND2XLM U126 ( .A(B[15]), .B(A[15]), .Y(n60) );
  OR2X1M U127 ( .A(B[6]), .B(A[6]), .Y(n22) );
  OR2X1M U128 ( .A(B[4]), .B(A[4]), .Y(n26) );
  OR2X1M U129 ( .A(B[5]), .B(A[5]), .Y(n27) );
  NAND2X2M U130 ( .A(n121), .B(n122), .Y(n28) );
  NAND2XLM U131 ( .A(B[3]), .B(A[3]), .Y(n122) );
  NAND2XLM U132 ( .A(B[6]), .B(A[6]), .Y(n29) );
  OR2X1M U133 ( .A(B[3]), .B(A[3]), .Y(n123) );
  NAND2XLM U134 ( .A(B[4]), .B(A[4]), .Y(n119) );
  NAND2XLM U135 ( .A(B[5]), .B(A[5]), .Y(n118) );
  INVX2M U136 ( .A(A[17]), .Y(n46) );
  XNOR2X2M U137 ( .A(n85), .B(n86), .Y(SUM[15]) );
  XNOR2X2M U138 ( .A(n89), .B(n6), .Y(SUM[14]) );
  XNOR2XLM U139 ( .A(n44), .B(n42), .Y(SUM[18]) );
  XNOR2X2M U140 ( .A(n99), .B(n100), .Y(SUM[12]) );
  XNOR2X2M U141 ( .A(n110), .B(n111), .Y(SUM[10]) );
  NAND2XLM U142 ( .A(B[13]), .B(A[13]), .Y(n67) );
endmodule


module up4_filter_3_DW01_add_21 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151;

  CLKINVX4M U2 ( .A(A[21]), .Y(n38) );
  XOR2X3M U3 ( .A(B[15]), .B(A[20]), .Y(n42) );
  XNOR2X4M U4 ( .A(n36), .B(n37), .Y(SUM[21]) );
  NAND2X2M U5 ( .A(n13), .B(n52), .Y(n43) );
  CLKINVX2M U6 ( .A(A[19]), .Y(n52) );
  NAND2XLM U7 ( .A(A[19]), .B(B[15]), .Y(n45) );
  NOR2X2M U8 ( .A(n9), .B(n96), .Y(n95) );
  NOR2X2M U9 ( .A(n80), .B(n81), .Y(n76) );
  AND2X2M U10 ( .A(n78), .B(n79), .Y(n9) );
  NAND2X2M U11 ( .A(n13), .B(n101), .Y(n72) );
  OAI2BB1X2M U12 ( .A0N(n65), .A1N(n67), .B0(n66), .Y(n59) );
  NAND2X2M U13 ( .A(n57), .B(n58), .Y(n50) );
  NAND2X2M U14 ( .A(n59), .B(n60), .Y(n58) );
  OAI2B1X2M U15 ( .A1N(n43), .A0(n44), .B0(n45), .Y(n39) );
  AND2X2M U16 ( .A(n108), .B(n87), .Y(n1) );
  INVX2M U17 ( .A(B[21]), .Y(n13) );
  NOR2X2M U18 ( .A(n94), .B(n95), .Y(n73) );
  AOI21BX8M U19 ( .A0(n8), .A1(n39), .B0N(n40), .Y(n36) );
  OAI211X2M U20 ( .A0(n75), .A1(n114), .B0(n76), .C0(n77), .Y(n74) );
  CLKINVX2M U21 ( .A(n39), .Y(n41) );
  CLKNAND2X2M U22 ( .A(n73), .B(n74), .Y(n71) );
  XNOR2X4M U23 ( .A(B[15]), .B(n38), .Y(n37) );
  NAND2X2M U24 ( .A(B[20]), .B(A[15]), .Y(n69) );
  INVX2M U25 ( .A(n46), .Y(n44) );
  INVX1M U26 ( .A(n106), .Y(n80) );
  NOR2XLM U27 ( .A(n119), .B(n120), .Y(n118) );
  NAND2XLM U28 ( .A(n115), .B(n116), .Y(n114) );
  CLKNAND2X2M U29 ( .A(n71), .B(n72), .Y(n70) );
  NAND2X2M U30 ( .A(n69), .B(n70), .Y(n67) );
  CLKNAND2X2M U31 ( .A(n133), .B(n34), .Y(n33) );
  NAND2X1M U32 ( .A(n134), .B(n135), .Y(n133) );
  CLKINVX2M U33 ( .A(n82), .Y(n81) );
  CLKINVX2M U34 ( .A(n103), .Y(n94) );
  NOR2BX1M U35 ( .AN(n35), .B(n151), .Y(n136) );
  NAND4XLM U36 ( .A(n136), .B(n91), .C(n32), .D(n25), .Y(n131) );
  NAND2XLM U37 ( .A(A[18]), .B(B[16]), .Y(n48) );
  CLKNAND2X2M U38 ( .A(n144), .B(n145), .Y(n137) );
  AOI21XLM U39 ( .A0(B[17]), .A1(A[15]), .B0(n100), .Y(n99) );
  INVXLM U40 ( .A(n72), .Y(n100) );
  NOR2XLM U41 ( .A(n122), .B(n20), .Y(n121) );
  NAND2XLM U42 ( .A(A[17]), .B(B[18]), .Y(n57) );
  OAI211X1M U43 ( .A0(n139), .A1(n146), .B0(n147), .C0(n148), .Y(n143) );
  NAND2XLM U44 ( .A(n45), .B(n43), .Y(n47) );
  XNOR2X2M U45 ( .A(n104), .B(n105), .Y(SUM[14]) );
  AOI2B1X1M U46 ( .A1N(n26), .A0(n27), .B0(n28), .Y(n21) );
  XNOR2XLM U47 ( .A(n10), .B(n14), .Y(SUM[9]) );
  XNOR2X2M U48 ( .A(n123), .B(n124), .Y(SUM[11]) );
  INVXLM U49 ( .A(n127), .Y(n129) );
  INVXLM U50 ( .A(n88), .Y(n16) );
  CLKINVX2M U51 ( .A(n31), .Y(n28) );
  NAND2BX1M U52 ( .AN(B[1]), .B(n150), .Y(n149) );
  NAND2X2M U53 ( .A(A[16]), .B(B[19]), .Y(n66) );
  NAND2XLM U54 ( .A(n13), .B(n56), .Y(n51) );
  INVX2M U55 ( .A(A[18]), .Y(n56) );
  OAI21XLM U56 ( .A0(n10), .A1(n16), .B0(n15), .Y(n127) );
  AOI2B1X1M U57 ( .A1N(n126), .A0(n127), .B0(n128), .Y(n123) );
  INVXLM U58 ( .A(n90), .Y(n125) );
  NOR2BXLM U59 ( .AN(n96), .B(n80), .Y(n107) );
  INVXLM U60 ( .A(n102), .Y(n104) );
  NAND2XLM U61 ( .A(n82), .B(n87), .Y(n110) );
  CLKNAND2X2M U62 ( .A(n141), .B(n140), .Y(n138) );
  NOR2BXLM U63 ( .AN(n117), .B(n126), .Y(n130) );
  NAND3X1M U64 ( .A(n132), .B(n32), .C(n25), .Y(n93) );
  CLKNAND2X2M U65 ( .A(n83), .B(n111), .Y(n109) );
  NAND4XLM U66 ( .A(n112), .B(n18), .C(n89), .D(n90), .Y(n111) );
  INVXLM U67 ( .A(n117), .Y(n128) );
  INVXLM U68 ( .A(n89), .Y(n126) );
  INVXLM U69 ( .A(n34), .Y(n151) );
  NAND2XLM U70 ( .A(n19), .B(n20), .Y(n17) );
  NOR2BXLM U71 ( .AN(n23), .B(n24), .Y(n22) );
  INVXLM U72 ( .A(n25), .Y(n24) );
  INVXLM U73 ( .A(n27), .Y(n29) );
  NOR2BXLM U74 ( .AN(n31), .B(n26), .Y(n30) );
  AND2X1M U75 ( .A(n34), .B(n35), .Y(n12) );
  INVXLM U76 ( .A(n32), .Y(n26) );
  CLKINVX2M U77 ( .A(n114), .Y(n83) );
  XNOR2X1M U78 ( .A(n98), .B(n99), .Y(SUM[15]) );
  NAND2XLM U79 ( .A(B[13]), .B(A[13]), .Y(n96) );
  NAND2XLM U80 ( .A(n13), .B(n97), .Y(n65) );
  NAND2X2M U81 ( .A(n48), .B(n49), .Y(n46) );
  NAND2X2M U82 ( .A(n50), .B(n51), .Y(n49) );
  XNOR2X2M U83 ( .A(n53), .B(n54), .Y(SUM[18]) );
  NOR2BX2M U84 ( .AN(n48), .B(n55), .Y(n54) );
  INVX2M U85 ( .A(n50), .Y(n53) );
  INVX2M U86 ( .A(n51), .Y(n55) );
  OAI21X2M U87 ( .A0(n86), .A1(n84), .B0(n87), .Y(n75) );
  NAND2X2M U88 ( .A(n78), .B(n79), .Y(n77) );
  OR2X1M U89 ( .A(A[20]), .B(B[15]), .Y(n8) );
  NAND2XLM U90 ( .A(A[20]), .B(B[15]), .Y(n40) );
  INVX2M U91 ( .A(B[14]), .Y(n78) );
  XNOR2X2M U92 ( .A(n61), .B(n62), .Y(SUM[17]) );
  NOR2BX2M U93 ( .AN(n57), .B(n63), .Y(n62) );
  INVXLM U94 ( .A(n59), .Y(n61) );
  INVX2M U95 ( .A(n60), .Y(n63) );
  OAI2B1X2M U96 ( .A1N(n106), .A0(n1), .B0(n96), .Y(n102) );
  NOR2BXLM U97 ( .AN(n103), .B(n9), .Y(n105) );
  XNOR2X2M U98 ( .A(n1), .B(n107), .Y(SUM[13]) );
  XNOR2X2M U99 ( .A(n129), .B(n130), .Y(SUM[10]) );
  NOR2BX2M U100 ( .AN(n115), .B(n125), .Y(n124) );
  XNOR2X2M U101 ( .A(n68), .B(n67), .Y(SUM[16]) );
  NAND2X2M U102 ( .A(n66), .B(n65), .Y(n68) );
  XNOR2X2M U103 ( .A(n110), .B(n109), .Y(SUM[12]) );
  AOI2B1X1M U104 ( .A1N(n85), .A0(n91), .B0(n92), .Y(n86) );
  NAND2X2M U105 ( .A(n93), .B(n23), .Y(n92) );
  NAND4X2M U106 ( .A(n32), .B(n25), .C(n34), .D(n35), .Y(n85) );
  NAND3X2M U107 ( .A(n131), .B(n23), .C(n93), .Y(n18) );
  NAND2BX2M U108 ( .AN(n28), .B(n33), .Y(n132) );
  NAND4X2M U109 ( .A(n88), .B(n19), .C(n89), .D(n90), .Y(n84) );
  NOR2X2M U110 ( .A(n16), .B(n113), .Y(n112) );
  INVX2M U111 ( .A(n19), .Y(n113) );
  NOR2BX2M U112 ( .AN(n20), .B(n11), .Y(n10) );
  AND2X1M U113 ( .A(n19), .B(n18), .Y(n11) );
  CLKNAND2X2M U114 ( .A(n109), .B(n82), .Y(n108) );
  OAI2BB1XLM U115 ( .A0N(n91), .A1N(n12), .B0(n33), .Y(n27) );
  OAI21X2M U116 ( .A0(n140), .A1(n141), .B0(n142), .Y(n91) );
  NAND3X2M U117 ( .A(n143), .B(n137), .C(n138), .Y(n142) );
  XNOR2XLM U118 ( .A(n17), .B(n18), .Y(SUM[8]) );
  NOR2BXLM U119 ( .AN(n15), .B(n16), .Y(n14) );
  XNOR2X2M U120 ( .A(n29), .B(n30), .Y(SUM[6]) );
  XNOR2X2M U121 ( .A(n21), .B(n22), .Y(SUM[7]) );
  INVXLM U122 ( .A(B[2]), .Y(n144) );
  INVXLM U123 ( .A(B[3]), .Y(n141) );
  INVX2M U124 ( .A(n149), .Y(n139) );
  INVX2M U125 ( .A(A[1]), .Y(n150) );
  INVX2M U126 ( .A(A[15]), .Y(n101) );
  XNOR2X2M U127 ( .A(n41), .B(n42), .Y(SUM[20]) );
  XNOR2XLM U128 ( .A(n47), .B(n46), .Y(SUM[19]) );
  NAND2XLM U129 ( .A(B[7]), .B(A[7]), .Y(n23) );
  OR2X1M U130 ( .A(B[8]), .B(A[8]), .Y(n19) );
  OR2X1M U131 ( .A(B[7]), .B(A[7]), .Y(n25) );
  NOR2XLM U132 ( .A(A[10]), .B(B[10]), .Y(n119) );
  AOI2B1XLM U133 ( .A1N(n9), .A0(n102), .B0(n94), .Y(n98) );
  OR2X1M U134 ( .A(B[11]), .B(A[11]), .Y(n90) );
  NAND2XLM U135 ( .A(B[8]), .B(A[8]), .Y(n20) );
  OR2X1M U136 ( .A(B[12]), .B(A[12]), .Y(n82) );
  NAND2XLM U137 ( .A(B[12]), .B(A[12]), .Y(n87) );
  NAND2XLM U138 ( .A(B[10]), .B(A[10]), .Y(n117) );
  NOR2BX2M U139 ( .AN(n15), .B(n121), .Y(n120) );
  NOR2XLM U140 ( .A(A[9]), .B(B[9]), .Y(n122) );
  OR2X1M U141 ( .A(B[10]), .B(A[10]), .Y(n89) );
  NAND2XLM U142 ( .A(B[9]), .B(A[9]), .Y(n15) );
  NAND2XLM U143 ( .A(n13), .B(n64), .Y(n60) );
  INVX2M U144 ( .A(A[17]), .Y(n64) );
  INVX2M U145 ( .A(A[16]), .Y(n97) );
  NAND2XLM U146 ( .A(B[14]), .B(A[14]), .Y(n103) );
  OR2X1M U147 ( .A(B[9]), .B(A[9]), .Y(n88) );
  OR2X1M U148 ( .A(B[13]), .B(A[13]), .Y(n106) );
  INVX2M U149 ( .A(A[14]), .Y(n79) );
  NAND2XLM U150 ( .A(A[0]), .B(B[0]), .Y(n146) );
  NAND2XLM U151 ( .A(B[1]), .B(A[1]), .Y(n147) );
  NAND2XLM U152 ( .A(B[2]), .B(A[2]), .Y(n148) );
  OR2X1M U153 ( .A(B[6]), .B(A[6]), .Y(n32) );
  OR2X1M U154 ( .A(B[5]), .B(A[5]), .Y(n34) );
  OR2X1M U155 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NAND2XLM U156 ( .A(B[4]), .B(A[4]), .Y(n135) );
  NAND2XLM U157 ( .A(B[5]), .B(A[5]), .Y(n134) );
  NAND2XLM U158 ( .A(B[6]), .B(A[6]), .Y(n31) );
  INVX2M U159 ( .A(A[3]), .Y(n140) );
  INVX2M U160 ( .A(A[2]), .Y(n145) );
  NAND2XLM U161 ( .A(B[11]), .B(A[11]), .Y(n115) );
  OAI2B2XLM U162 ( .A1N(n117), .A0(n118), .B0(A[11]), .B1(B[11]), .Y(n116) );
endmodule


module up4_filter_3_DW01_add_25 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132;

  NAND3XLM U2 ( .A(n39), .B(n40), .C(n41), .Y(n34) );
  INVX1M U3 ( .A(A[21]), .Y(n33) );
  OR2X1M U4 ( .A(B[13]), .B(A[13]), .Y(n92) );
  NOR2BXLM U5 ( .AN(n86), .B(n112), .Y(n111) );
  XNOR2X2M U6 ( .A(n52), .B(n53), .Y(SUM[19]) );
  INVXLM U7 ( .A(n37), .Y(n54) );
  AO21XLM U8 ( .A0(n28), .A1(n8), .B0(n9), .Y(n29) );
  OR2X2M U9 ( .A(B[10]), .B(A[10]), .Y(n119) );
  OAI21X2M U10 ( .A0(n73), .A1(n74), .B0(n75), .Y(n71) );
  NAND2X2M U11 ( .A(n67), .B(n68), .Y(n63) );
  INVX2M U12 ( .A(A[17]), .Y(n68) );
  INVX2M U13 ( .A(B[17]), .Y(n67) );
  OR2X2M U14 ( .A(B[18]), .B(A[18]), .Y(n36) );
  NAND2X2M U15 ( .A(n55), .B(n56), .Y(n37) );
  INVX2M U16 ( .A(B[19]), .Y(n55) );
  AND2X2M U17 ( .A(B[2]), .B(A[2]), .Y(n1) );
  AND2X2M U18 ( .A(n117), .B(n114), .Y(n2) );
  NAND2XLM U19 ( .A(B[12]), .B(A[12]), .Y(n86) );
  NAND2XLM U20 ( .A(B[11]), .B(A[11]), .Y(n117) );
  XNOR2X2M U21 ( .A(n31), .B(n32), .Y(SUM[21]) );
  NOR2XLM U22 ( .A(n47), .B(n48), .Y(n45) );
  XNOR2X2M U23 ( .A(n10), .B(n33), .Y(n32) );
  NOR2X2M U24 ( .A(n57), .B(n5), .Y(n52) );
  CLKNAND2X2M U25 ( .A(B[16]), .B(A[16]), .Y(n70) );
  NAND2X2M U26 ( .A(n62), .B(n63), .Y(n61) );
  INVXLM U27 ( .A(n62), .Y(n64) );
  OAI2BB1X2M U28 ( .A0N(n69), .A1N(n71), .B0(n70), .Y(n62) );
  XNOR2X2M U29 ( .A(n72), .B(n71), .Y(SUM[16]) );
  NOR2XLM U30 ( .A(n50), .B(n51), .Y(n47) );
  NOR2X2M U31 ( .A(n58), .B(n50), .Y(n57) );
  NOR2XLM U32 ( .A(A[18]), .B(B[18]), .Y(n58) );
  NAND2XLM U33 ( .A(B[8]), .B(A[8]), .Y(n18) );
  OR2X1M U34 ( .A(B[11]), .B(A[11]), .Y(n114) );
  NAND2X2M U35 ( .A(n11), .B(n44), .Y(n35) );
  NAND2X2M U36 ( .A(n60), .B(n61), .Y(n38) );
  INVXLM U37 ( .A(n105), .Y(n106) );
  CLKNAND2X2M U38 ( .A(n18), .B(n14), .Y(n118) );
  INVXLM U39 ( .A(n81), .Y(n103) );
  INVXLM U40 ( .A(n91), .Y(n112) );
  XOR2X4M U41 ( .A(n110), .B(n111), .Y(SUM[12]) );
  INVXLM U42 ( .A(n116), .Y(n123) );
  INVXLM U43 ( .A(n119), .Y(n126) );
  NAND2XLM U44 ( .A(n127), .B(n14), .Y(n122) );
  NAND2XLM U45 ( .A(n15), .B(n16), .Y(n127) );
  CLKNAND2X2M U46 ( .A(B[17]), .B(A[17]), .Y(n60) );
  NAND2XLM U47 ( .A(B[15]), .B(A[15]), .Y(n75) );
  OR2X1M U48 ( .A(B[14]), .B(A[14]), .Y(n76) );
  OAI2BB2XLM U49 ( .B0(n131), .B1(n132), .A0N(n130), .A1N(n1), .Y(n89) );
  XNOR2XLM U50 ( .A(n10), .B(n44), .Y(n46) );
  AND4X2M U51 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n4) );
  NAND2XLM U52 ( .A(n36), .B(n37), .Y(n51) );
  AOI2BB1X2M U53 ( .A0N(n129), .A1N(n88), .B0(n90), .Y(n3) );
  CLKNAND2X2M U54 ( .A(B[19]), .B(A[19]), .Y(n43) );
  NOR2BXLM U55 ( .AN(n82), .B(n98), .Y(n102) );
  INVXLM U56 ( .A(n99), .Y(n101) );
  NAND2XLM U57 ( .A(n105), .B(n92), .Y(n104) );
  CLKAND2X4M U58 ( .A(n87), .B(n86), .Y(n85) );
  AND2X1M U59 ( .A(B[18]), .B(A[18]), .Y(n5) );
  NAND2XLM U60 ( .A(n49), .B(n43), .Y(n48) );
  NAND3XLM U61 ( .A(A[18]), .B(n37), .C(B[18]), .Y(n49) );
  OAI21XLM U62 ( .A0(n3), .A1(n19), .B0(n18), .Y(n16) );
  INVXLM U63 ( .A(n92), .Y(n108) );
  NOR2BXLM U64 ( .AN(n116), .B(n126), .Y(n125) );
  INVXLM U65 ( .A(B[21]), .Y(n11) );
  NAND2XLM U66 ( .A(n109), .B(n86), .Y(n105) );
  NAND3X1M U67 ( .A(n115), .B(n116), .C(n117), .Y(n113) );
  AOI2B1XLM U68 ( .A1N(n88), .A0(n89), .B0(n90), .Y(n83) );
  AOI21XLM U69 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  OR2X1M U70 ( .A(n29), .B(n6), .Y(n24) );
  AND3XLM U71 ( .A(n89), .B(n27), .C(n28), .Y(n6) );
  INVXLM U72 ( .A(n120), .Y(n19) );
  NAND2XLM U73 ( .A(B[13]), .B(A[13]), .Y(n81) );
  OR2X1M U74 ( .A(B[12]), .B(A[12]), .Y(n91) );
  NAND2X2M U75 ( .A(B[14]), .B(A[14]), .Y(n82) );
  OR2X2M U76 ( .A(B[15]), .B(A[15]), .Y(n77) );
  NAND2X2M U77 ( .A(n93), .B(n94), .Y(n69) );
  CLKINVX2M U78 ( .A(B[16]), .Y(n93) );
  NAND2X2M U79 ( .A(B[9]), .B(A[9]), .Y(n14) );
  OR2X2M U80 ( .A(B[9]), .B(A[9]), .Y(n15) );
  OR2X1M U81 ( .A(B[7]), .B(A[7]), .Y(n22) );
  AND2X1M U82 ( .A(A[4]), .B(B[4]), .Y(n8) );
  AND2X1M U83 ( .A(B[5]), .B(A[5]), .Y(n9) );
  NAND2XLM U84 ( .A(B[6]), .B(A[6]), .Y(n30) );
  NAND2XLM U85 ( .A(B[7]), .B(A[7]), .Y(n21) );
  OR2X1M U86 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2BX2M U87 ( .AN(n43), .B(n54), .Y(n53) );
  XNOR2X2M U88 ( .A(n45), .B(n46), .Y(SUM[20]) );
  INVX2M U89 ( .A(n38), .Y(n50) );
  INVX2M U90 ( .A(n43), .Y(n42) );
  OAI21X2M U91 ( .A0(n3), .A1(n84), .B0(n87), .Y(n110) );
  INVX2M U92 ( .A(n11), .Y(n10) );
  INVX2M U93 ( .A(n16), .Y(n12) );
  XNOR2X2M U94 ( .A(n64), .B(n65), .Y(SUM[17]) );
  NOR2BX2M U95 ( .AN(n60), .B(n66), .Y(n65) );
  INVX2M U96 ( .A(n63), .Y(n66) );
  AOI2B1X1M U97 ( .A1N(n78), .A0(n79), .B0(n80), .Y(n73) );
  NAND2X2M U98 ( .A(n76), .B(n77), .Y(n74) );
  OAI21X2M U99 ( .A0(n83), .A1(n84), .B0(n85), .Y(n79) );
  XNOR2X2M U100 ( .A(n59), .B(n38), .Y(SUM[18]) );
  XNOR2X2M U101 ( .A(B[18]), .B(A[18]), .Y(n59) );
  NAND2X2M U102 ( .A(n70), .B(n69), .Y(n72) );
  INVX2M U103 ( .A(A[19]), .Y(n56) );
  XNOR2X2M U104 ( .A(n95), .B(n96), .Y(SUM[15]) );
  AOI2B1X1M U105 ( .A1N(n98), .A0(n99), .B0(n100), .Y(n95) );
  NOR2BX2M U106 ( .AN(n75), .B(n97), .Y(n96) );
  INVX2M U107 ( .A(n82), .Y(n100) );
  NAND2XLM U108 ( .A(n10), .B(A[20]), .Y(n39) );
  NAND2XLM U109 ( .A(n42), .B(n35), .Y(n41) );
  NAND4XLM U110 ( .A(B[18]), .B(A[18]), .C(n37), .D(n35), .Y(n40) );
  NAND2X2M U111 ( .A(n81), .B(n82), .Y(n80) );
  INVX2M U112 ( .A(n77), .Y(n97) );
  NAND2X2M U113 ( .A(n91), .B(n92), .Y(n78) );
  OAI2B1X2M U114 ( .A1N(n22), .A0(n128), .B0(n21), .Y(n90) );
  AOI21X2M U115 ( .A0(n29), .A1(n23), .B0(n25), .Y(n128) );
  XNOR2X2M U116 ( .A(n121), .B(n2), .Y(SUM[11]) );
  AOI21X2M U117 ( .A0(n122), .A1(n119), .B0(n123), .Y(n121) );
  XNOR2X2M U118 ( .A(n101), .B(n102), .Y(SUM[14]) );
  XNOR2X2M U119 ( .A(n106), .B(n107), .Y(SUM[13]) );
  NOR2BX2M U120 ( .AN(n81), .B(n108), .Y(n107) );
  XNOR2X2M U121 ( .A(n124), .B(n125), .Y(SUM[10]) );
  INVX2M U122 ( .A(n122), .Y(n124) );
  NAND4X2M U123 ( .A(n119), .B(n114), .C(n15), .D(n120), .Y(n84) );
  NAND2BX2M U124 ( .AN(n103), .B(n104), .Y(n99) );
  NAND2X2M U125 ( .A(n113), .B(n114), .Y(n87) );
  NAND3X2M U126 ( .A(n118), .B(n15), .C(n119), .Y(n115) );
  NAND2X2M U127 ( .A(n110), .B(n91), .Y(n109) );
  INVX2M U128 ( .A(n76), .Y(n98) );
  XNOR2XLM U129 ( .A(n3), .B(n17), .Y(SUM[8]) );
  NOR2BX2M U130 ( .AN(n18), .B(n19), .Y(n17) );
  XNOR2X2M U131 ( .A(n26), .B(n24), .Y(SUM[6]) );
  NAND2X2M U132 ( .A(n23), .B(n30), .Y(n26) );
  NAND4X2M U133 ( .A(n23), .B(n22), .C(n27), .D(n28), .Y(n88) );
  AND2X2M U134 ( .A(n14), .B(n15), .Y(n13) );
  INVX2M U135 ( .A(A[20]), .Y(n44) );
  INVX2M U136 ( .A(n30), .Y(n25) );
  INVX2M U137 ( .A(n89), .Y(n129) );
  AND2X2M U138 ( .A(n21), .B(n22), .Y(n7) );
  NOR2X2M U139 ( .A(n34), .B(n4), .Y(n31) );
  INVX2M U140 ( .A(A[16]), .Y(n94) );
  OR2X2M U141 ( .A(B[5]), .B(A[5]), .Y(n28) );
  NAND2X2M U142 ( .A(B[10]), .B(A[10]), .Y(n116) );
  OR2X1M U143 ( .A(B[8]), .B(A[8]), .Y(n120) );
  CLKNAND2X2M U144 ( .A(n132), .B(n131), .Y(n130) );
  INVXLM U145 ( .A(B[3]), .Y(n132) );
  OR2X2M U146 ( .A(B[4]), .B(A[4]), .Y(n27) );
  XNOR2X2M U147 ( .A(n12), .B(n13), .Y(SUM[9]) );
  XNOR2X2M U148 ( .A(n20), .B(n7), .Y(SUM[7]) );
  INVX2M U149 ( .A(A[3]), .Y(n131) );
endmodule


module up4_filter_3_DW01_add_24 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145;

  NAND2X2M U2 ( .A(n61), .B(n62), .Y(n48) );
  NOR2X1M U3 ( .A(n75), .B(n76), .Y(n71) );
  NAND3BX1M U4 ( .AN(n57), .B(n58), .C(n46), .Y(n56) );
  AOI2BB1X1M U5 ( .A0N(n41), .A1N(n49), .B0(n43), .Y(n40) );
  NAND3X1M U6 ( .A(n48), .B(n45), .C(n59), .Y(n55) );
  NAND2X2M U7 ( .A(B[17]), .B(A[17]), .Y(n57) );
  INVX3M U8 ( .A(A[20]), .Y(n51) );
  NOR2BX1M U9 ( .AN(n46), .B(n49), .Y(n38) );
  INVX3M U10 ( .A(n42), .Y(n49) );
  OAI21X1M U11 ( .A0(n50), .A1(n41), .B0(n44), .Y(n54) );
  CLKINVX6M U12 ( .A(n58), .Y(n50) );
  INVXLM U13 ( .A(B[17]), .Y(n61) );
  XNOR2X2M U14 ( .A(n52), .B(n53), .Y(SUM[20]) );
  XNOR2X2M U15 ( .A(n36), .B(n37), .Y(SUM[21]) );
  OAI2B11X2M U16 ( .A1N(n38), .A0(n57), .B0(n39), .C0(n40), .Y(n37) );
  AO21XLM U17 ( .A0(n34), .A1(n8), .B0(n9), .Y(n35) );
  AO21XLM U18 ( .A0(n1), .A1(n141), .B0(n10), .Y(n5) );
  NAND2X2M U19 ( .A(n86), .B(n87), .Y(n82) );
  INVX2M U20 ( .A(B[16]), .Y(n86) );
  NAND2X2M U21 ( .A(n88), .B(n89), .Y(n81) );
  OAI21X2M U22 ( .A0(n90), .A1(n91), .B0(n92), .Y(n89) );
  AOI2B1X1M U23 ( .A1N(n95), .A0(n96), .B0(n97), .Y(n90) );
  INVX2M U24 ( .A(n46), .Y(n60) );
  OR2X2M U25 ( .A(B[6]), .B(A[6]), .Y(n28) );
  AO21XLM U26 ( .A0(n132), .A1(n129), .B0(n133), .Y(n2) );
  NOR2BX2M U27 ( .AN(n48), .B(n49), .Y(n47) );
  AND2X2M U28 ( .A(B[1]), .B(A[1]), .Y(n1) );
  OR2X1M U29 ( .A(B[11]), .B(A[11]), .Y(n124) );
  NAND2XLM U30 ( .A(B[11]), .B(A[11]), .Y(n127) );
  INVX2M U31 ( .A(n82), .Y(n85) );
  NOR2X2M U32 ( .A(n68), .B(n77), .Y(n75) );
  OR2X2M U33 ( .A(B[12]), .B(A[12]), .Y(n98) );
  NAND2X1M U34 ( .A(n113), .B(n93), .Y(n109) );
  CLKINVX1M U35 ( .A(n81), .Y(n83) );
  NAND3XLM U36 ( .A(A[17]), .B(n46), .C(B[17]), .Y(n67) );
  NAND3BX2M U37 ( .AN(n68), .B(n47), .C(n46), .Y(n39) );
  CLKNAND2X2M U38 ( .A(n93), .B(n94), .Y(n91) );
  NAND2X4M U39 ( .A(n79), .B(n80), .Y(n45) );
  CLKNAND2X4M U40 ( .A(n81), .B(n82), .Y(n80) );
  XNOR2X2M U41 ( .A(n71), .B(n72), .Y(SUM[18]) );
  NOR2BX1M U42 ( .AN(n41), .B(n60), .Y(n72) );
  CLKNAND2X2M U43 ( .A(B[18]), .B(A[18]), .Y(n41) );
  XNOR2X2M U44 ( .A(n12), .B(A[21]), .Y(n36) );
  NOR2X4M U45 ( .A(n4), .B(n7), .Y(n92) );
  NOR2X4M U46 ( .A(B[15]), .B(A[15]), .Y(n4) );
  OAI21X6M U47 ( .A0(n50), .A1(n51), .B0(n14), .Y(n42) );
  INVX4M U48 ( .A(n45), .Y(n68) );
  NAND2X2M U49 ( .A(B[16]), .B(A[16]), .Y(n79) );
  XNOR2X1M U50 ( .A(n78), .B(n45), .Y(SUM[17]) );
  NAND3BX2M U51 ( .AN(n54), .B(n55), .C(n56), .Y(n53) );
  NAND2X8M U52 ( .A(n73), .B(n74), .Y(n46) );
  CLKINVX8M U53 ( .A(B[18]), .Y(n73) );
  NOR2X2M U54 ( .A(n68), .B(n69), .Y(n65) );
  NAND2X1M U55 ( .A(B[12]), .B(A[12]), .Y(n106) );
  INVXLM U56 ( .A(A[16]), .Y(n87) );
  INVXLM U57 ( .A(n109), .Y(n111) );
  NOR2BXLM U58 ( .AN(n94), .B(n7), .Y(n112) );
  CLKNAND2X2M U59 ( .A(n106), .B(n105), .Y(n95) );
  NAND3X1M U60 ( .A(n125), .B(n126), .C(n127), .Y(n123) );
  CLKNAND2X2M U61 ( .A(n23), .B(n17), .Y(n128) );
  INVXLM U62 ( .A(n100), .Y(n11) );
  NAND2XLM U63 ( .A(n26), .B(n27), .Y(n25) );
  OR2X1M U64 ( .A(n35), .B(n6), .Y(n29) );
  AND3XLM U65 ( .A(n143), .B(n33), .C(n34), .Y(n6) );
  NOR2X1M U66 ( .A(B[14]), .B(A[14]), .Y(n7) );
  NAND2X1M U67 ( .A(B[9]), .B(A[9]), .Y(n17) );
  OR2X2M U68 ( .A(B[7]), .B(A[7]), .Y(n27) );
  XNOR2XLM U69 ( .A(n12), .B(A[20]), .Y(n52) );
  INVX3M U70 ( .A(A[18]), .Y(n74) );
  NAND4X2M U71 ( .A(n129), .B(n124), .C(n19), .D(n130), .Y(n100) );
  NAND2X2M U72 ( .A(n101), .B(n11), .Y(n96) );
  CLKNAND2X2M U73 ( .A(n35), .B(n28), .Y(n140) );
  NAND3X2M U74 ( .A(n140), .B(n31), .C(n26), .Y(n139) );
  CLKNAND2X2M U75 ( .A(B[14]), .B(A[14]), .Y(n94) );
  NAND2XLM U76 ( .A(B[10]), .B(A[10]), .Y(n126) );
  NAND2XLM U77 ( .A(B[8]), .B(A[8]), .Y(n23) );
  NAND2XLM U78 ( .A(B[15]), .B(A[15]), .Y(n88) );
  OR2X2M U79 ( .A(B[10]), .B(A[10]), .Y(n129) );
  OR2X2M U80 ( .A(B[13]), .B(A[13]), .Y(n99) );
  OAI2BB2XLM U81 ( .B0(n144), .B1(n145), .A0N(n142), .A1N(n5), .Y(n143) );
  CLKINVX2M U82 ( .A(n57), .Y(n76) );
  NAND2X2M U83 ( .A(n70), .B(n46), .Y(n69) );
  CLKNAND2X2M U84 ( .A(n61), .B(n62), .Y(n70) );
  OAI2B1X2M U85 ( .A1N(n143), .A0(n102), .B0(n104), .Y(n138) );
  CLKNAND2X2M U86 ( .A(n118), .B(n106), .Y(n114) );
  OAI21X2M U87 ( .A0(n21), .A1(n24), .B0(n23), .Y(n20) );
  XNOR2X2M U88 ( .A(n2), .B(n131), .Y(SUM[11]) );
  INVX2M U89 ( .A(n13), .Y(n12) );
  CLKNAND2X2M U90 ( .A(n137), .B(n17), .Y(n132) );
  NAND2XLM U91 ( .A(n19), .B(n20), .Y(n137) );
  NAND2XLM U92 ( .A(n12), .B(A[19]), .Y(n44) );
  NAND2XLM U93 ( .A(n127), .B(n124), .Y(n131) );
  NAND2BX2M U94 ( .AN(A[19]), .B(n14), .Y(n58) );
  XNOR2X2M U95 ( .A(n3), .B(n25), .Y(SUM[7]) );
  AO21X1M U96 ( .A0(n28), .A1(n29), .B0(n30), .Y(n3) );
  NAND2XLM U97 ( .A(n28), .B(n31), .Y(n32) );
  NAND2XLM U98 ( .A(B[6]), .B(A[6]), .Y(n31) );
  OR2X2M U99 ( .A(B[9]), .B(A[9]), .Y(n19) );
  OAI21X2M U100 ( .A0(n21), .A1(n100), .B0(n105), .Y(n119) );
  XNOR2X2M U101 ( .A(n63), .B(n64), .Y(SUM[19]) );
  NOR2BX2M U102 ( .AN(n44), .B(n50), .Y(n64) );
  NOR2X2M U103 ( .A(n65), .B(n66), .Y(n63) );
  NOR2X2M U104 ( .A(n60), .B(n50), .Y(n59) );
  INVX2M U105 ( .A(n138), .Y(n21) );
  INVX2M U106 ( .A(n12), .Y(n14) );
  XNOR2X2M U107 ( .A(n83), .B(n84), .Y(SUM[16]) );
  NOR2BX2M U108 ( .AN(n79), .B(n85), .Y(n84) );
  XNOR2X2M U109 ( .A(n107), .B(n108), .Y(SUM[15]) );
  AOI2B1X1M U110 ( .A1N(n7), .A0(n109), .B0(n110), .Y(n107) );
  NOR2BX2M U111 ( .AN(n88), .B(n4), .Y(n108) );
  INVX2M U112 ( .A(n94), .Y(n110) );
  XNOR2X2M U113 ( .A(n111), .B(n112), .Y(SUM[14]) );
  AOI2B1XLM U114 ( .A1N(A[20]), .A0(n44), .B0(n14), .Y(n43) );
  NAND2X2M U115 ( .A(n114), .B(n99), .Y(n113) );
  NAND2X2M U116 ( .A(n119), .B(n98), .Y(n118) );
  NAND2X2M U117 ( .A(n98), .B(n99), .Y(n97) );
  INVX2M U118 ( .A(n126), .Y(n133) );
  XNOR2X2M U119 ( .A(n120), .B(n121), .Y(SUM[12]) );
  NOR2BX2M U120 ( .AN(n106), .B(n122), .Y(n121) );
  INVXLM U121 ( .A(n119), .Y(n120) );
  INVX2M U122 ( .A(n98), .Y(n122) );
  XNOR2X2M U123 ( .A(n115), .B(n116), .Y(SUM[13]) );
  NOR2BX2M U124 ( .AN(n93), .B(n117), .Y(n116) );
  INVXLM U125 ( .A(n114), .Y(n115) );
  INVX2M U126 ( .A(n99), .Y(n117) );
  XNOR2X2M U127 ( .A(n134), .B(n135), .Y(SUM[10]) );
  INVX2M U128 ( .A(n132), .Y(n134) );
  NOR2BX2M U129 ( .AN(n126), .B(n136), .Y(n135) );
  INVX2M U130 ( .A(n129), .Y(n136) );
  NAND4X2M U131 ( .A(n28), .B(n27), .C(n33), .D(n34), .Y(n102) );
  NAND2X2M U132 ( .A(n123), .B(n124), .Y(n105) );
  NAND3X2M U133 ( .A(n128), .B(n19), .C(n129), .Y(n125) );
  NAND2X2M U134 ( .A(n139), .B(n27), .Y(n104) );
  OAI21XLM U135 ( .A0(n103), .A1(n102), .B0(n104), .Y(n101) );
  INVX2M U136 ( .A(n130), .Y(n24) );
  INVXLM U137 ( .A(B[21]), .Y(n13) );
  INVX2M U138 ( .A(n31), .Y(n30) );
  XNOR2XLM U139 ( .A(n21), .B(n22), .Y(SUM[8]) );
  NOR2BXLM U140 ( .AN(n23), .B(n24), .Y(n22) );
  XNOR2X2M U141 ( .A(n15), .B(n16), .Y(SUM[9]) );
  NOR2BX2M U142 ( .AN(n17), .B(n18), .Y(n16) );
  INVXLM U143 ( .A(n20), .Y(n15) );
  INVX2M U144 ( .A(n19), .Y(n18) );
  XNOR2X2M U145 ( .A(n32), .B(n29), .Y(SUM[6]) );
  INVX2M U146 ( .A(A[17]), .Y(n62) );
  INVX2M U147 ( .A(B[3]), .Y(n145) );
  NAND2X2M U148 ( .A(B[13]), .B(A[13]), .Y(n93) );
  OR2X2M U149 ( .A(B[5]), .B(A[5]), .Y(n34) );
  NAND2X2M U150 ( .A(B[7]), .B(A[7]), .Y(n26) );
  OR2X2M U151 ( .A(B[8]), .B(A[8]), .Y(n130) );
  AND2X1M U152 ( .A(A[4]), .B(B[4]), .Y(n8) );
  AND2X1M U153 ( .A(B[5]), .B(A[5]), .Y(n9) );
  OR2X1M U154 ( .A(B[4]), .B(A[4]), .Y(n33) );
  OR2X1M U155 ( .A(B[2]), .B(A[2]), .Y(n141) );
  INVX2M U156 ( .A(n143), .Y(n103) );
  CLKNAND2X2M U157 ( .A(n145), .B(n144), .Y(n142) );
  AND2X1M U158 ( .A(B[2]), .B(A[2]), .Y(n10) );
  INVX2M U159 ( .A(A[3]), .Y(n144) );
  XNOR2XLM U160 ( .A(B[17]), .B(A[17]), .Y(n78) );
  NAND2X2M U161 ( .A(n67), .B(n41), .Y(n66) );
  NOR2X1M U162 ( .A(A[17]), .B(B[17]), .Y(n77) );
endmodule


module up4_filter_3 ( clk, rst_n, in_data, b0, b1, b2, b3 );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n;
  wire   N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192,
         N193, N194, N195, N99, N98, N97, N96, N95, N94, N93, N92, N91, N137,
         N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122,
         N121, N120, N119, N118, N117, N116, N115, N114, N113, N108, N107,
         N106, N105, N104, N103, N102, N101, N100, N327, N326, N325, N324,
         N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313,
         N312, N311, N310, N309, N308, N282, N281, N280, N279, N278, N277,
         N276, N275, N274, N273, N272, N271, N270, N269, N9, N88, N87, N86,
         N85, N84, N83, N82, N81, N80, N8, N79, N78, N77, N76, N75, N74, N73,
         N72, N71, N70, N7, N69, N68, N67, N66, N60, N6, N59, N58, N57, N56,
         N55, N54, N53, N52, N51, N50, N5, N49, N48, N47, N46, N45, N42, N41,
         N40, N4, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N3, N29,
         N28, N27, N26, N25, N24, N23, N22, N21, N20, N2, N19, N18, N17, N16,
         N15, N14, N13, N12, N11, N10, N1, N262, N261, N260, N259, N258, N257,
         N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246,
         N245, N244, N243, N242, N240, N239, N238, N237, N236, N235, N234,
         N233, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223,
         N222, N221, N220, N218, N217, N216, N215, N214, N213, N212, N211,
         N210, N209, N208, N207, N206, N205, N204, N203, N202, N201, N200,
         N199, N173, N172, N171, N170, N169, N157, N156, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332;
  wire   [15:0] x_n1;
  wire   [15:0] x_n3;
  wire   [15:0] x_n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31;
  assign N157 = in_data[1];
  assign N156 = in_data[0];

  up4_filter_3_DW01_add_2 add_1_root_add_0_root_add_34_4 ( .A({n152, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, n36, n12, n151, n150, 1'b0, 1'b0, 1'b0}), .B({x_n2[15], x_n2[15], 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, n136, n4, 1'b0, 1'b0}), .CI(1'b0), .SUM({N132, 
        N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1}) );
  up4_filter_3_DW01_add_6 add_1_root_add_0_root_add_42_4 ( .A({n155, n155, 
        n155, n155, n155, n149, n148, n147, n146, n145, n144, n143, n142, n141, 
        n140, n139, n15, n10, n136, n5, 1'b0, 1'b0}), .B({n153, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        n36, n12, n151, n150, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3}) );
  up4_filter_3_DW01_add_10 add_2_root_sub_0_root_add_30_3 ( .A({n155, n155, 
        n149, n148, n147, n146, n145, n144, n143, n142, n141, n140, n139, n14, 
        n9, n136, n4, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n135, n135, n135, 
        n135, n135, n135, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, 
        N50, N49, N48, N47, N46, N45}), .CI(1'b0), .SUM({N22, N21, N20, N19, 
        N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, 
        N3, N2, N1}) );
  up4_filter_3_DW01_add_9 add_1_root_sub_0_root_add_30_3 ( .A({n152, n152, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, n150}), .B({N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .CI(
        1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_3_DW01_add_14 add_3_root_add_0_root_add_38_6 ( .A({n152, n152, 
        n152, n153, n153, x_n1[14:2], n151, n150, 1'b0, 1'b0}), .B({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], n149, n148, n147, n146, n145, n144, n143, 
        n142, n141, n140, n139, n14, n9, n136, n3, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({N218, N217, N216, N215, N214, N213, N212, N211, N210, 
        N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  up4_filter_3_DW01_add_13 add_2_root_add_0_root_add_38_6 ( .A({n155, n155, 
        n155, n155, n155, n155, n149, n148, n147, n146, n145, n144, n143, n142, 
        n141, n140, n139, n13, n9, n136, n5, 1'b0}), .B({n153, N195, N194, 
        N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        n36, n12, n151, n150, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245, N244, N243, N242, SYNOPSYS_UNCONNECTED__6}) );
  up4_filter_3_DW01_add_12 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, n7, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED__7}) );
  up4_filter_3_DW01_add_23 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({n157, n157, n157, 
        n157, n157, in_data[14:8], n134, n19, n21, n154, in_data[3:2], N157, 
        N156, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13}) );
  up4_filter_3_DW01_add_21 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({n157, n157, n157, n157, n157, n157, 
        n157, in_data[14:8], n134, in_data[6], n21, n154, in_data[3:2], N157, 
        N156}), .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19}) );
  up4_filter_3_DW01_add_25 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({n157, n157, N282, 
        N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, n74, n17, N157, N156, 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25}) );
  up4_filter_3_DW01_add_24 add_0_root_add_0_root_add_38_6 ( .A({N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, 1'b0}), .B({n157, n157, n157, 
        N173, N172, N171, N170, N169, N277, N276, N275, N274, N273, N272, N271, 
        N270, N269, n74, n17, N157, N156, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}) );
  DFFRQX2M \x_n1_reg[11]  ( .D(in_data[11]), .CK(clk), .RN(n161), .Q(x_n1[11])
         );
  DFFRQX2M \x_n3_reg[15]  ( .D(x_n2[15]), .CK(clk), .RN(n162), .Q(x_n3[15]) );
  DFFRQX2M \x_n2_reg[14]  ( .D(x_n1[14]), .CK(clk), .RN(n162), .Q(x_n2[14]) );
  DFFRQX2M \x_n3_reg[14]  ( .D(n149), .CK(clk), .RN(n162), .Q(x_n3[14]) );
  DFFRQX2M \x_n1_reg[15]  ( .D(n157), .CK(clk), .RN(n161), .Q(x_n1[15]) );
  DFFRQX2M \x_n2_reg[15]  ( .D(n153), .CK(clk), .RN(n162), .Q(x_n2[15]) );
  DFFRQX2M \x_n1_reg[14]  ( .D(in_data[14]), .CK(clk), .RN(n161), .Q(x_n1[14])
         );
  DFFRQX2M \x_n2_reg[13]  ( .D(x_n1[13]), .CK(clk), .RN(n162), .Q(x_n2[13]) );
  DFFRQX2M \x_n2_reg[12]  ( .D(x_n1[12]), .CK(clk), .RN(n162), .Q(x_n2[12]) );
  DFFRQX2M \x_n3_reg[13]  ( .D(n148), .CK(clk), .RN(n162), .Q(x_n3[13]) );
  DFFRQX2M \x_n3_reg[12]  ( .D(n147), .CK(clk), .RN(n162), .Q(x_n3[12]) );
  DFFRQX2M \x_n3_reg[11]  ( .D(n146), .CK(clk), .RN(n162), .Q(x_n3[11]) );
  DFFRQX2M \x_n1_reg[13]  ( .D(in_data[13]), .CK(clk), .RN(n161), .Q(x_n1[13])
         );
  DFFRQX2M \x_n1_reg[12]  ( .D(in_data[12]), .CK(clk), .RN(n161), .Q(x_n1[12])
         );
  DFFRQX2M \x_n3_reg[7]  ( .D(n142), .CK(clk), .RN(n163), .Q(x_n3[7]) );
  DFFRQX2M \x_n3_reg[5]  ( .D(n140), .CK(clk), .RN(n163), .Q(x_n3[5]) );
  DFFRQX2M \x_n3_reg[6]  ( .D(n141), .CK(clk), .RN(n163), .Q(x_n3[6]) );
  DFFRQX2M \x_n2_reg[11]  ( .D(x_n1[11]), .CK(clk), .RN(n162), .Q(x_n2[11]) );
  DFFRQX2M \x_n2_reg[10]  ( .D(x_n1[10]), .CK(clk), .RN(n163), .Q(x_n2[10]) );
  DFFRQX2M \x_n3_reg[10]  ( .D(n145), .CK(clk), .RN(n163), .Q(x_n3[10]) );
  DFFRQX2M \x_n3_reg[9]  ( .D(n144), .CK(clk), .RN(n163), .Q(x_n3[9]) );
  DFFRQX2M \x_n3_reg[8]  ( .D(n143), .CK(clk), .RN(n163), .Q(x_n3[8]) );
  DFFRQX2M \x_n1_reg[10]  ( .D(in_data[10]), .CK(clk), .RN(n161), .Q(x_n1[10])
         );
  DFFRQX2M \x_n1_reg[8]  ( .D(in_data[8]), .CK(clk), .RN(n161), .Q(x_n1[8]) );
  DFFRQX2M \x_n1_reg[9]  ( .D(in_data[9]), .CK(clk), .RN(n161), .Q(x_n1[9]) );
  DFFRQX2M \x_n1_reg[6]  ( .D(n19), .CK(clk), .RN(n161), .Q(x_n1[6]) );
  DFFRQX2M \x_n1_reg[7]  ( .D(n134), .CK(clk), .RN(n161), .Q(x_n1[7]) );
  DFFRQX2M \x_n3_reg[3]  ( .D(n15), .CK(clk), .RN(n164), .Q(x_n3[3]) );
  DFFRQX2M \x_n3_reg[4]  ( .D(n139), .CK(clk), .RN(n164), .Q(x_n3[4]) );
  DFFRQX2M \x_n1_reg[1]  ( .D(N157), .CK(clk), .RN(n162), .Q(N137) );
  DFFRQX2M \x_n1_reg[0]  ( .D(N156), .CK(clk), .RN(n162), .Q(N23) );
  DFFRQX2M \x_n3_reg[2]  ( .D(n10), .CK(clk), .RN(n164), .Q(x_n3[2]) );
  DFFRQX2M \x_n1_reg[3]  ( .D(in_data[3]), .CK(clk), .RN(n161), .Q(x_n1[3]) );
  DFFRQX2M \x_n1_reg[4]  ( .D(n154), .CK(clk), .RN(n161), .Q(x_n1[4]) );
  DFFRQX2M \x_n1_reg[5]  ( .D(n21), .CK(clk), .RN(n161), .Q(x_n1[5]) );
  DFFRQX2M \x_n2_reg[2]  ( .D(x_n1[2]), .CK(clk), .RN(n164), .Q(x_n2[2]) );
  DFFRQX2M \x_n2_reg[3]  ( .D(x_n1[3]), .CK(clk), .RN(n164), .Q(x_n2[3]) );
  DFFRQX2M \x_n2_reg[9]  ( .D(x_n1[9]), .CK(clk), .RN(n163), .Q(x_n2[9]) );
  DFFRQX2M \x_n2_reg[4]  ( .D(x_n1[4]), .CK(clk), .RN(n163), .Q(x_n2[4]) );
  DFFRQX2M \x_n2_reg[5]  ( .D(x_n1[5]), .CK(clk), .RN(n163), .Q(x_n2[5]) );
  DFFRQX2M \x_n2_reg[8]  ( .D(x_n1[8]), .CK(clk), .RN(n163), .Q(x_n2[8]) );
  DFFRQX2M \x_n3_reg[0]  ( .D(n4), .CK(clk), .RN(n164), .Q(x_n3[0]) );
  DFFRX1M \x_n2_reg[0]  ( .D(n150), .CK(clk), .RN(rst_n), .Q(N91), .QN(n332)
         );
  DFFRQX2M \x_n2_reg[1]  ( .D(n151), .CK(clk), .RN(n164), .Q(N92) );
  DFFRQX2M \x_n2_reg[7]  ( .D(x_n1[7]), .CK(clk), .RN(n163), .Q(x_n2[7]) );
  DFFRQX2M \x_n2_reg[6]  ( .D(x_n1[6]), .CK(clk), .RN(n163), .Q(x_n2[6]) );
  DFFRQX2M \x_n3_reg[1]  ( .D(n136), .CK(clk), .RN(rst_n), .Q(x_n3[1]) );
  DFFRHQX4M \x_n1_reg[2]  ( .D(in_data[2]), .CK(clk), .RN(n162), .Q(x_n1[2])
         );
  OAI2BB1X4M U3 ( .A0N(in_data[6]), .A1N(n154), .B0(n30), .Y(n231) );
  MX2XLM U4 ( .A(n239), .B(n68), .S0(n51), .Y(N280) );
  NOR2X4M U5 ( .A(n51), .B(n70), .Y(n49) );
  OAI2BB1X4M U6 ( .A0N(in_data[2]), .A1N(n154), .B0(n31), .Y(n233) );
  OR2X6M U7 ( .A(in_data[6]), .B(n154), .Y(n1) );
  CLKNAND2X4M U8 ( .A(n1), .B(n232), .Y(n30) );
  BUFX8M U9 ( .A(in_data[4]), .Y(n154) );
  OR2X12M U10 ( .A(n69), .B(n49), .Y(n237) );
  INVX10M U11 ( .A(n158), .Y(n157) );
  NAND2BX4M U12 ( .AN(n52), .B(n209), .Y(n241) );
  NOR2X4M U13 ( .A(n214), .B(n207), .Y(n52) );
  NOR2X2M U14 ( .A(in_data[13]), .B(n157), .Y(n70) );
  INVX2M U15 ( .A(N91), .Y(n2) );
  CLKINVX4M U16 ( .A(n2), .Y(n3) );
  INVXLM U17 ( .A(n2), .Y(n4) );
  INVXLM U18 ( .A(n2), .Y(n5) );
  XNOR3XLM U19 ( .A(x_n3[11]), .B(n146), .C(n317), .Y(N56) );
  OAI2BB1XLM U20 ( .A0N(n15), .A1N(n136), .B0(n84), .Y(n260) );
  XOR3X2M U21 ( .A(n14), .B(n136), .C(n88), .Y(N94) );
  INVX12M U22 ( .A(n136), .Y(n300) );
  CLKINVX3M U23 ( .A(n323), .Y(n324) );
  OA21X8M U24 ( .A0(x_n3[14]), .A1(n306), .B0(n312), .Y(n44) );
  INVXLM U25 ( .A(n312), .Y(n313) );
  OAI2B1X4M U26 ( .A1N(x_n3[13]), .A0(n148), .B0(n105), .Y(n312) );
  CLKINVX6M U27 ( .A(n217), .Y(n23) );
  OAI2BB1X2M U28 ( .A0N(n40), .A1N(n142), .B0(n322), .Y(n97) );
  OAI2BB1X2M U29 ( .A0N(n39), .A1N(n143), .B0(n320), .Y(n102) );
  XNOR3XLM U30 ( .A(x_n3[12]), .B(n147), .C(n316), .Y(N57) );
  OAI2B1X4M U31 ( .A1N(x_n3[11]), .A0(n146), .B0(n103), .Y(n316) );
  OAI2BB1X2M U32 ( .A0N(n42), .A1N(n147), .B0(n316), .Y(n104) );
  AOI21X8M U33 ( .A0(n209), .A1(n210), .B0(n52), .Y(n51) );
  OAI2BB1X2M U34 ( .A0N(n38), .A1N(n144), .B0(n319), .Y(n107) );
  BUFX8M U35 ( .A(n137), .Y(n10) );
  OAI21X6M U36 ( .A0(n10), .A1(n303), .B0(n302), .Y(n327) );
  XOR3X2M U37 ( .A(x_n3[8]), .B(n143), .C(n321), .Y(N53) );
  OAI2BB1X2M U38 ( .A0N(n139), .A1N(n10), .B0(n85), .Y(n259) );
  OAI21X1M U39 ( .A0(n139), .A1(n10), .B0(n260), .Y(n85) );
  OAI2BB1X2M U40 ( .A0N(n43), .A1N(n145), .B0(n318), .Y(n108) );
  XOR2X2M U41 ( .A(n150), .B(x_n1[2]), .Y(n16) );
  NAND2BX4M U42 ( .AN(n299), .B(x_n1[2]), .Y(n200) );
  XOR3X4M U43 ( .A(x_n1[4]), .B(x_n1[2]), .C(n199), .Y(N182) );
  OR2X2M U44 ( .A(x_n1[2]), .B(n297), .Y(n295) );
  OAI21X6M U45 ( .A0(n300), .A1(x_n3[1]), .B0(n330), .Y(n35) );
  OAI21X2M U46 ( .A0(x_n3[6]), .A1(n305), .B0(n323), .Y(n98) );
  CLKINVX4M U47 ( .A(N201), .Y(n6) );
  INVX3M U48 ( .A(n6), .Y(n7) );
  OAI2BB1X2M U49 ( .A0N(x_n3[6]), .A1N(n305), .B0(n98), .Y(n322) );
  OAI2B1X4M U50 ( .A1N(x_n3[4]), .A0(n139), .B0(n106), .Y(n325) );
  OAI2BB1X4M U51 ( .A0N(n34), .A1N(n139), .B0(n326), .Y(n106) );
  OR2X6M U52 ( .A(x_n3[0]), .B(n332), .Y(n330) );
  OAI2B1X4M U53 ( .A1N(x_n3[3]), .A0(n15), .B0(n100), .Y(n326) );
  OAI21X4M U54 ( .A0(x_n3[3]), .A1(n304), .B0(n327), .Y(n100) );
  XOR3X2M U55 ( .A(x_n3[1]), .B(n136), .C(n331), .Y(N46) );
  BUFX10M U56 ( .A(N92), .Y(n136) );
  CLKBUFX1M U57 ( .A(n137), .Y(n8) );
  BUFX8M U58 ( .A(n137), .Y(n9) );
  BUFX8M U59 ( .A(x_n2[2]), .Y(n137) );
  OAI2BB1X4M U60 ( .A0N(n300), .A1N(x_n3[1]), .B0(n35), .Y(n328) );
  CLKINVX2M U61 ( .A(n16), .Y(n11) );
  INVX3M U62 ( .A(n11), .Y(n12) );
  XOR3XLM U63 ( .A(x_n3[2]), .B(n9), .C(n329), .Y(N47) );
  OAI2BB1X4M U64 ( .A0N(n33), .A1N(n140), .B0(n325), .Y(n99) );
  OAI2B1X4M U65 ( .A1N(x_n3[5]), .A0(n140), .B0(n99), .Y(n323) );
  BUFX8M U66 ( .A(n138), .Y(n13) );
  BUFX2M U67 ( .A(n138), .Y(n14) );
  BUFX2M U68 ( .A(n138), .Y(n15) );
  BUFX8M U69 ( .A(x_n2[3]), .Y(n138) );
  OAI21X4M U70 ( .A0(n301), .A1(x_n3[2]), .B0(n328), .Y(n302) );
  AOI2BB1X2M U71 ( .A0N(x_n1[3]), .A1N(n151), .B0(n200), .Y(n165) );
  AO21X2M U72 ( .A0(x_n1[3]), .A1(n151), .B0(n165), .Y(n199) );
  BUFX10M U73 ( .A(N137), .Y(n151) );
  CLKINVX4M U74 ( .A(n150), .Y(n299) );
  OR2X1M U75 ( .A(n151), .B(n150), .Y(n297) );
  BUFX8M U76 ( .A(N23), .Y(n150) );
  INVX1M U77 ( .A(n330), .Y(n331) );
  AO21X2M U78 ( .A0(n193), .A1(n195), .B0(n87), .Y(n192) );
  OR2X2M U79 ( .A(in_data[11]), .B(in_data[13]), .Y(n211) );
  OR2X2M U80 ( .A(in_data[12]), .B(in_data[14]), .Y(n209) );
  CLKNAND2X4M U81 ( .A(in_data[2]), .B(N156), .Y(n235) );
  INVXLM U82 ( .A(n314), .Y(n315) );
  OR2X2M U83 ( .A(n69), .B(n70), .Y(n239) );
  MX2X1M U84 ( .A(n243), .B(n64), .S0(n242), .Y(N278) );
  MX2X1M U85 ( .A(n239), .B(n68), .S0(n51), .Y(N171) );
  AO21X2M U86 ( .A0(n169), .A1(n168), .B0(n95), .Y(n167) );
  INVX2M U87 ( .A(n141), .Y(n305) );
  OAI2B1X2M U88 ( .A1N(x_n3[10]), .A0(n145), .B0(n108), .Y(n317) );
  NOR2X2M U89 ( .A(n206), .B(n216), .Y(n53) );
  AO21XLM U90 ( .A0(n184), .A1(n186), .B0(n89), .Y(n181) );
  AO21X4M U91 ( .A0(n211), .A1(n212), .B0(n53), .Y(n210) );
  INVX2M U92 ( .A(in_data[3]), .Y(n26) );
  OAI2BB1X2M U93 ( .A0N(in_data[3]), .A1N(in_data[5]), .B0(n203), .Y(n232) );
  OAI21X2M U94 ( .A0(in_data[3]), .A1(in_data[5]), .B0(n233), .Y(n203) );
  XOR3XLM U95 ( .A(x_n1[5]), .B(x_n1[7]), .C(n196), .Y(N185) );
  NAND2BX2M U96 ( .AN(in_data[6]), .B(n229), .Y(n227) );
  AO21X4M U97 ( .A0(n230), .A1(n227), .B0(n32), .Y(n226) );
  OR2X2M U98 ( .A(n134), .B(in_data[9]), .Y(n222) );
  INVX2M U99 ( .A(in_data[10]), .Y(n220) );
  AO21XLM U100 ( .A0(x_n1[6]), .A1(n266), .B0(n47), .Y(n284) );
  MXI2X1M U101 ( .A(n119), .B(n120), .S0(n189), .Y(N188) );
  NOR2X2M U102 ( .A(n214), .B(n220), .Y(n55) );
  AO21XLM U103 ( .A0(n147), .A1(n145), .B0(n244), .Y(n251) );
  OA21X2M U104 ( .A0(n147), .A1(n145), .B0(n252), .Y(n244) );
  XOR3XLM U105 ( .A(x_n3[14]), .B(n149), .C(n313), .Y(N59) );
  MXI2X1M U106 ( .A(n121), .B(n122), .S0(n186), .Y(N189) );
  INVX2M U107 ( .A(n210), .Y(n240) );
  NOR2X2M U108 ( .A(n206), .B(n158), .Y(n69) );
  AO21XLM U109 ( .A0(n170), .A1(n172), .B0(n94), .Y(n169) );
  AO21XLM U110 ( .A0(x_n3[14]), .A1(n306), .B0(n44), .Y(n309) );
  INVX2M U111 ( .A(n8), .Y(n301) );
  XOR3X2M U112 ( .A(x_n3[6]), .B(n141), .C(n324), .Y(N51) );
  XOR3XLM U113 ( .A(n141), .B(n139), .C(n258), .Y(N97) );
  XOR3XLM U114 ( .A(x_n1[8]), .B(x_n1[13]), .C(n283), .Y(N36) );
  MXI2X1M U115 ( .A(n45), .B(n46), .S0(n172), .Y(N192) );
  AO21XLM U116 ( .A0(n149), .A1(n147), .B0(n246), .Y(n249) );
  OA21X2M U117 ( .A0(n149), .A1(n147), .B0(n250), .Y(n246) );
  AO21XLM U118 ( .A0(x_n3[15]), .A1(n156), .B0(n309), .Y(n307) );
  XNOR3X2M U119 ( .A(n151), .B(x_n1[6]), .C(n291), .Y(N29) );
  OA21X2M U120 ( .A0(x_n2[15]), .A1(n149), .B0(n248), .Y(n247) );
  AO21XLM U121 ( .A0(n167), .A1(n166), .B0(n96), .Y(N195) );
  MX2X3M U122 ( .A(n65), .B(n238), .S0(n237), .Y(N172) );
  MX2X2M U123 ( .A(n65), .B(n238), .S0(n208), .Y(N281) );
  BUFX4M U124 ( .A(N66), .Y(n135) );
  CLKXOR2X2M U125 ( .A(n308), .B(n101), .Y(N66) );
  INVX2M U126 ( .A(n310), .Y(n308) );
  OAI21X2M U127 ( .A0(x_n3[15]), .A1(n156), .B0(n307), .Y(n101) );
  BUFX2M U128 ( .A(x_n2[4]), .Y(n139) );
  BUFX2M U129 ( .A(x_n2[8]), .Y(n143) );
  BUFX2M U130 ( .A(x_n2[6]), .Y(n141) );
  BUFX2M U131 ( .A(x_n2[5]), .Y(n140) );
  BUFX2M U132 ( .A(x_n2[7]), .Y(n142) );
  INVX2M U133 ( .A(n133), .Y(n134) );
  MXI2XLM U134 ( .A(n62), .B(n63), .S0(n22), .Y(N277) );
  INVX4M U135 ( .A(n215), .Y(n24) );
  OAI21BX4M U136 ( .A0(n23), .A1(n24), .B0N(n50), .Y(n22) );
  OAI21X4M U137 ( .A0(in_data[7]), .A1(in_data[5]), .B0(n231), .Y(n66) );
  INVX2M U138 ( .A(in_data[7]), .Y(n133) );
  INVX2M U139 ( .A(in_data[12]), .Y(n214) );
  CLKXOR2X2M U140 ( .A(N156), .B(in_data[2]), .Y(n17) );
  OR2X6M U141 ( .A(in_data[9]), .B(in_data[11]), .Y(n215) );
  NOR2XLM U142 ( .A(in_data[10]), .B(in_data[12]), .Y(n18) );
  INVX10M U143 ( .A(in_data[15]), .Y(n158) );
  OAI2BB1X2M U144 ( .A0N(x_n1[2]), .A1N(n262), .B0(n110), .Y(n289) );
  OAI21X2M U145 ( .A0(x_n1[2]), .A1(n262), .B0(n290), .Y(n110) );
  OAI2BB1X1M U146 ( .A0N(x_n1[4]), .A1N(n264), .B0(n116), .Y(n286) );
  OAI21X1M U147 ( .A0(x_n1[4]), .A1(n264), .B0(n288), .Y(n116) );
  CLKINVX4M U148 ( .A(in_data[8]), .Y(n229) );
  XNOR2X1M U149 ( .A(n5), .B(n301), .Y(N93) );
  XOR2XLM U150 ( .A(in_data[8]), .B(n220), .Y(n58) );
  CLKINVX6M U151 ( .A(N157), .Y(n27) );
  MXI2X1M U152 ( .A(n123), .B(n124), .S0(n192), .Y(N187) );
  XOR3X2M U153 ( .A(x_n1[4]), .B(x_n1[6]), .C(n197), .Y(N184) );
  MX2X2M U154 ( .A(n132), .B(n273), .S0(n167), .Y(N194) );
  NOR2XLM U155 ( .A(n50), .B(n24), .Y(n61) );
  INVX2M U156 ( .A(n204), .Y(n19) );
  INVXLM U157 ( .A(in_data[5]), .Y(n20) );
  INVX2M U158 ( .A(n20), .Y(n21) );
  XOR2X1M U159 ( .A(in_data[9]), .B(n216), .Y(n60) );
  XNOR2X1M U160 ( .A(x_n1[3]), .B(n296), .Y(N26) );
  OAI21X4M U161 ( .A0(in_data[2]), .A1(n154), .B0(n234), .Y(n31) );
  XOR2X1M U162 ( .A(in_data[12]), .B(in_data[14]), .Y(n67) );
  NAND2BX2M U163 ( .AN(n53), .B(n211), .Y(n243) );
  MX2X4M U164 ( .A(n241), .B(n67), .S0(n240), .Y(N170) );
  OAI2BB1X2M U165 ( .A0N(x_n1[5]), .A1N(x_n1[3]), .B0(n129), .Y(n197) );
  OAI21X1M U166 ( .A0(x_n1[5]), .A1(x_n1[3]), .B0(n198), .Y(n129) );
  OAI21X1M U167 ( .A0(x_n1[4]), .A1(x_n1[2]), .B0(n199), .Y(n128) );
  XOR2X4M U168 ( .A(in_data[11]), .B(in_data[13]), .Y(n64) );
  NOR2X1M U169 ( .A(n55), .B(n18), .Y(n63) );
  OAI2BB1X4M U170 ( .A0N(in_data[3]), .A1N(N157), .B0(n202), .Y(n234) );
  INVX3M U171 ( .A(in_data[14]), .Y(n207) );
  XOR3X2M U172 ( .A(x_n3[13]), .B(n148), .C(n315), .Y(N58) );
  AO21X2M U173 ( .A0(n208), .A1(n236), .B0(n71), .Y(N282) );
  NAND2BX2M U174 ( .AN(n71), .B(n236), .Y(n238) );
  CLKINVX1M U175 ( .A(n212), .Y(n242) );
  OAI2BB1X4M U176 ( .A0N(n226), .A1N(n222), .B0(n205), .Y(n221) );
  CLKINVX2M U177 ( .A(n205), .Y(n224) );
  MXI2XLM U178 ( .A(n60), .B(n61), .S0(n217), .Y(N276) );
  OAI2BB1X4M U179 ( .A0N(n21), .A1N(in_data[7]), .B0(n66), .Y(n230) );
  OR2X2M U180 ( .A(in_data[14]), .B(n157), .Y(n236) );
  NOR2X2M U181 ( .A(n332), .B(n301), .Y(n88) );
  AO21X8M U182 ( .A0(n237), .A1(n236), .B0(n71), .Y(N173) );
  XOR2X1M U183 ( .A(in_data[10]), .B(n214), .Y(n62) );
  OR2X6M U184 ( .A(in_data[10]), .B(in_data[12]), .Y(n213) );
  NOR2X1M U185 ( .A(n54), .B(n219), .Y(n59) );
  OAI2BB1XLM U186 ( .A0N(in_data[3]), .A1N(N157), .B0(n202), .Y(n25) );
  NAND2X4M U187 ( .A(n26), .B(n27), .Y(n28) );
  CLKNAND2X4M U188 ( .A(n28), .B(n201), .Y(n202) );
  INVX4M U189 ( .A(n235), .Y(n201) );
  INVXLM U190 ( .A(in_data[6]), .Y(n204) );
  CLKINVX4M U191 ( .A(in_data[11]), .Y(n216) );
  INVX4M U192 ( .A(in_data[13]), .Y(n206) );
  XNOR3XLM U193 ( .A(x_n3[7]), .B(n142), .C(n322), .Y(N52) );
  XOR2X2M U194 ( .A(in_data[13]), .B(n157), .Y(n68) );
  OR2X2M U195 ( .A(in_data[8]), .B(in_data[10]), .Y(n218) );
  CLKINVX2M U196 ( .A(in_data[9]), .Y(n225) );
  OAI2BB1X1M U197 ( .A0N(x_n1[4]), .A1N(x_n1[2]), .B0(n128), .Y(n198) );
  XOR3X2M U198 ( .A(x_n1[5]), .B(x_n1[3]), .C(n198), .Y(N183) );
  OAI2BB1XLM U199 ( .A0N(in_data[6]), .A1N(n154), .B0(n30), .Y(n29) );
  MX2X3M U200 ( .A(n243), .B(n64), .S0(n242), .Y(N169) );
  MX2X1M U201 ( .A(n241), .B(n67), .S0(n240), .Y(N279) );
  OR2X2M U202 ( .A(n69), .B(n49), .Y(n208) );
  AO21X8M U203 ( .A0(n22), .A1(n213), .B0(n55), .Y(n212) );
  NOR2X2M U204 ( .A(n216), .B(n225), .Y(n50) );
  AO21X8M U205 ( .A0(n221), .A1(n218), .B0(n54), .Y(n217) );
  XNOR3X2M U206 ( .A(x_n1[3]), .B(n151), .C(n200), .Y(n36) );
  OAI2BB1X2M U207 ( .A0N(n37), .A1N(n148), .B0(n314), .Y(n105) );
  MXI2X2M U208 ( .A(n125), .B(n126), .S0(n195), .Y(N186) );
  INVXLM U209 ( .A(x_n3[7]), .Y(n40) );
  OAI21X1M U210 ( .A0(x_n1[4]), .A1(x_n1[6]), .B0(n197), .Y(n130) );
  XOR3X4M U211 ( .A(x_n2[15]), .B(n149), .C(n248), .Y(N107) );
  CLKINVX2M U212 ( .A(x_n3[5]), .Y(n33) );
  XNOR3XLM U213 ( .A(x_n1[4]), .B(x_n1[9]), .C(n288), .Y(N32) );
  INVX1M U214 ( .A(x_n3[4]), .Y(n34) );
  INVXLM U215 ( .A(n293), .Y(n294) );
  XNOR3X4M U216 ( .A(x_n3[10]), .B(n145), .C(n318), .Y(N55) );
  BUFX2M U217 ( .A(x_n2[9]), .Y(n144) );
  INVX2M U218 ( .A(x_n1[8]), .Y(n263) );
  MX2X1M U219 ( .A(n131), .B(n274), .S0(n118), .Y(N41) );
  CLKMX2X4M U220 ( .A(n131), .B(n274), .S0(n169), .Y(N193) );
  XOR3XLM U221 ( .A(n148), .B(n146), .C(n251), .Y(N104) );
  INVX2M U222 ( .A(n280), .Y(n281) );
  INVXLM U223 ( .A(n278), .Y(n279) );
  XNOR3X2M U224 ( .A(x_n1[7]), .B(x_n1[12]), .C(n284), .Y(N35) );
  XNOR3X1M U225 ( .A(x_n1[11]), .B(n153), .C(n277), .Y(N39) );
  INVX2M U226 ( .A(x_n3[13]), .Y(n37) );
  INVX2M U227 ( .A(x_n3[11]), .Y(n41) );
  OAI2BB1X2M U228 ( .A0N(n41), .A1N(n146), .B0(n317), .Y(n103) );
  INVX2M U229 ( .A(x_n3[9]), .Y(n38) );
  MX2X1M U230 ( .A(n182), .B(n183), .S0(n181), .Y(N190) );
  INVX2M U231 ( .A(x_n3[10]), .Y(n43) );
  INVX2M U232 ( .A(x_n3[8]), .Y(n39) );
  INVX2M U233 ( .A(x_n3[12]), .Y(n42) );
  OAI2BB1X1M U234 ( .A0N(x_n1[7]), .A1N(n267), .B0(n112), .Y(n282) );
  OR2X2M U235 ( .A(x_n1[4]), .B(n293), .Y(n292) );
  INVX2M U236 ( .A(n320), .Y(n321) );
  CLKXOR2X2M U237 ( .A(x_n1[12]), .B(n268), .Y(n45) );
  NOR2X2M U238 ( .A(n94), .B(n171), .Y(n46) );
  INVXLM U239 ( .A(n222), .Y(n223) );
  INVXLM U240 ( .A(n227), .Y(n228) );
  NOR2X2M U241 ( .A(n229), .B(n204), .Y(n32) );
  XOR3XLM U242 ( .A(n149), .B(n147), .C(n250), .Y(N105) );
  OAI2B1X1M U243 ( .A1N(n145), .A0(n79), .B0(n80), .Y(n253) );
  INVX2M U244 ( .A(n143), .Y(n79) );
  OAI21XLM U245 ( .A0(n145), .A1(n143), .B0(n254), .Y(n80) );
  OAI21XLM U246 ( .A0(n141), .A1(n139), .B0(n258), .Y(n86) );
  OAI21XLM U247 ( .A0(n144), .A1(n142), .B0(n255), .Y(n78) );
  OAI21XLM U248 ( .A0(n143), .A1(n141), .B0(n256), .Y(n81) );
  OAI21XLM U249 ( .A0(n142), .A1(n140), .B0(n257), .Y(n82) );
  OAI21XLM U250 ( .A0(n140), .A1(n15), .B0(n259), .Y(n83) );
  OAI21XLM U251 ( .A0(n15), .A1(n136), .B0(n88), .Y(n84) );
  INVXLM U252 ( .A(n193), .Y(n194) );
  INVX2M U253 ( .A(n156), .Y(n155) );
  INVXLM U254 ( .A(x_n3[2]), .Y(n303) );
  XNOR3X2M U255 ( .A(x_n3[9]), .B(n144), .C(n319), .Y(N54) );
  XOR2XLM U256 ( .A(x_n1[8]), .B(n265), .Y(n119) );
  XOR2X2M U257 ( .A(x_n1[9]), .B(n266), .Y(n121) );
  XOR2XLM U258 ( .A(x_n1[7]), .B(n264), .Y(n123) );
  OAI2BB1X2M U259 ( .A0N(x_n1[4]), .A1N(x_n1[6]), .B0(n130), .Y(n196) );
  XOR2XLM U260 ( .A(x_n1[6]), .B(n263), .Y(n125) );
  NOR2X2M U261 ( .A(n87), .B(n194), .Y(n126) );
  MX2X3M U262 ( .A(n178), .B(n177), .S0(n176), .Y(N191) );
  CLKINVX4M U263 ( .A(n175), .Y(n176) );
  XNOR3XLM U264 ( .A(x_n1[3]), .B(x_n1[8]), .C(n289), .Y(N31) );
  XNOR3XLM U265 ( .A(x_n1[6]), .B(x_n1[11]), .C(n285), .Y(N34) );
  XNOR3XLM U266 ( .A(x_n1[2]), .B(x_n1[7]), .C(n290), .Y(N30) );
  XOR3X4M U267 ( .A(x_n1[10]), .B(n153), .C(n279), .Y(N38) );
  OAI21X3M U268 ( .A0(x_n1[10]), .A1(n269), .B0(n278), .Y(n114) );
  OA21X1M U269 ( .A0(x_n1[6]), .A1(n266), .B0(n285), .Y(n47) );
  OAI21XLM U270 ( .A0(x_n1[7]), .A1(n267), .B0(n284), .Y(n112) );
  INVX2M U271 ( .A(x_n1[9]), .Y(n264) );
  OR2X1M U272 ( .A(x_n1[9]), .B(x_n1[11]), .Y(n184) );
  AOI21X2M U273 ( .A0(x_n1[12]), .A1(n269), .B0(n48), .Y(n118) );
  OA21X2M U274 ( .A0(x_n1[12]), .A1(n269), .B0(n275), .Y(n48) );
  OAI21XLM U275 ( .A0(x_n1[8]), .A1(n271), .B0(n282), .Y(n115) );
  OAI2BB1XLM U276 ( .A0N(x_n1[3]), .A1N(n263), .B0(n117), .Y(n288) );
  OAI21XLM U277 ( .A0(x_n1[3]), .A1(n263), .B0(n289), .Y(n117) );
  INVXLM U278 ( .A(x_n1[7]), .Y(n262) );
  INVXLM U279 ( .A(x_n1[6]), .Y(n261) );
  NAND2BX2M U280 ( .AN(n225), .B(n134), .Y(n205) );
  NOR2X2M U281 ( .A(n220), .B(n229), .Y(n54) );
  MXI2XLM U282 ( .A(n56), .B(n57), .S0(n226), .Y(N274) );
  XOR2XLM U283 ( .A(n134), .B(n225), .Y(n56) );
  NOR2XLM U284 ( .A(n224), .B(n223), .Y(n57) );
  INVX2M U285 ( .A(n218), .Y(n219) );
  MXI2XLM U286 ( .A(n58), .B(n59), .S0(n221), .Y(N275) );
  XOR2XLM U287 ( .A(in_data[14]), .B(n157), .Y(n65) );
  NOR2XLM U288 ( .A(n207), .B(n158), .Y(n71) );
  XOR3XLM U289 ( .A(n21), .B(n134), .C(n29), .Y(N272) );
  XOR3XLM U290 ( .A(n154), .B(in_data[6]), .C(n232), .Y(N271) );
  XOR3XLM U291 ( .A(n21), .B(n233), .C(in_data[3]), .Y(N270) );
  XOR3XLM U292 ( .A(n154), .B(in_data[2]), .C(n25), .Y(N269) );
  MXI2XLM U293 ( .A(n72), .B(n73), .S0(n230), .Y(N273) );
  XOR2XLM U294 ( .A(in_data[6]), .B(n229), .Y(n72) );
  NOR2XLM U295 ( .A(n32), .B(n228), .Y(n73) );
  XNOR3XLM U296 ( .A(N157), .B(in_data[3]), .C(n235), .Y(n74) );
  BUFX2M U297 ( .A(n159), .Y(n161) );
  BUFX2M U298 ( .A(n160), .Y(n163) );
  BUFX2M U299 ( .A(n159), .Y(n162) );
  BUFX2M U300 ( .A(n160), .Y(n164) );
  MX2X2M U301 ( .A(n132), .B(n273), .S0(n272), .Y(N42) );
  OA21X2M U302 ( .A0(n153), .A1(n271), .B0(n270), .Y(n272) );
  AO21XLM U303 ( .A0(n153), .A1(n271), .B0(n118), .Y(n270) );
  OAI2BB1X2M U304 ( .A0N(n151), .A1N(n261), .B0(n75), .Y(n290) );
  OAI21X2M U305 ( .A0(n151), .A1(n261), .B0(n291), .Y(n75) );
  XNOR2X2M U306 ( .A(n311), .B(n310), .Y(N60) );
  INVX2M U307 ( .A(n309), .Y(n311) );
  XOR3XLM U308 ( .A(n146), .B(n144), .C(n253), .Y(N102) );
  AO21XLM U309 ( .A0(x_n2[15]), .A1(n149), .B0(n247), .Y(N108) );
  XOR3XLM U310 ( .A(n145), .B(n143), .C(n254), .Y(N101) );
  XOR3XLM U311 ( .A(n147), .B(n145), .C(n252), .Y(N103) );
  XOR3XLM U312 ( .A(n144), .B(n142), .C(n255), .Y(N100) );
  XOR3XLM U313 ( .A(n139), .B(n9), .C(n260), .Y(N95) );
  XOR3XLM U314 ( .A(n140), .B(n14), .C(n259), .Y(N96) );
  XOR3XLM U315 ( .A(n143), .B(n141), .C(n256), .Y(N99) );
  XOR3XLM U316 ( .A(n142), .B(n140), .C(n257), .Y(N98) );
  XNOR2X2M U317 ( .A(n151), .B(n299), .Y(N24) );
  OAI2BB1X2M U318 ( .A0N(x_n2[15]), .A1N(n148), .B0(n76), .Y(n248) );
  OAI21XLM U319 ( .A0(x_n2[15]), .A1(n148), .B0(n249), .Y(n76) );
  OAI2BB1X2M U320 ( .A0N(n146), .A1N(n144), .B0(n77), .Y(n252) );
  OAI21X2M U321 ( .A0(n146), .A1(n144), .B0(n253), .Y(n77) );
  OAI2BB1X2M U322 ( .A0N(n144), .A1N(n142), .B0(n78), .Y(n254) );
  OAI2BB1X2M U323 ( .A0N(n143), .A1N(n141), .B0(n81), .Y(n255) );
  OAI2BB1X2M U324 ( .A0N(n142), .A1N(n140), .B0(n82), .Y(n256) );
  OAI2BB1X2M U325 ( .A0N(n140), .A1N(n15), .B0(n83), .Y(n258) );
  OAI2BB1X2M U326 ( .A0N(n141), .A1N(n139), .B0(n86), .Y(n257) );
  NOR2X2M U327 ( .A(n261), .B(n263), .Y(n87) );
  NOR2X2M U328 ( .A(n264), .B(n266), .Y(n89) );
  NOR2X2M U329 ( .A(n266), .B(n271), .Y(n90) );
  NOR2X2M U330 ( .A(n262), .B(n264), .Y(n91) );
  NOR2X2M U331 ( .A(n263), .B(n265), .Y(n92) );
  INVX2M U332 ( .A(n173), .Y(n174) );
  INVX2M U333 ( .A(n184), .Y(n185) );
  INVX2M U334 ( .A(n190), .Y(n191) );
  INVX2M U335 ( .A(n187), .Y(n188) );
  INVX2M U336 ( .A(n153), .Y(n269) );
  NAND2BX2M U337 ( .AN(n95), .B(n168), .Y(n274) );
  NAND2BX2M U338 ( .AN(n96), .B(n166), .Y(n273) );
  NOR2X2M U339 ( .A(n265), .B(n267), .Y(n93) );
  NOR2X2M U340 ( .A(n267), .B(n268), .Y(n94) );
  NOR2X2M U341 ( .A(n271), .B(n269), .Y(n95) );
  NOR2X2M U342 ( .A(n268), .B(n269), .Y(n96) );
  INVX2M U343 ( .A(n179), .Y(n180) );
  INVX2M U344 ( .A(n170), .Y(n171) );
  BUFX2M U345 ( .A(rst_n), .Y(n160) );
  BUFX2M U346 ( .A(rst_n), .Y(n159) );
  OAI2B1X2M U347 ( .A1N(x_n3[7]), .A0(n142), .B0(n97), .Y(n320) );
  INVX2M U348 ( .A(n14), .Y(n304) );
  XOR3XLM U349 ( .A(x_n1[12]), .B(n153), .C(n276), .Y(N40) );
  INVX2M U350 ( .A(n275), .Y(n276) );
  OAI2B1X2M U351 ( .A1N(x_n3[8]), .A0(n143), .B0(n102), .Y(n319) );
  OAI2B1X2M U352 ( .A1N(x_n3[12]), .A0(n147), .B0(n104), .Y(n314) );
  INVX2M U353 ( .A(n149), .Y(n306) );
  OAI2B1X2M U354 ( .A1N(x_n3[9]), .A0(n144), .B0(n107), .Y(n318) );
  OAI2BB1X2M U355 ( .A0N(x_n1[11]), .A1N(n269), .B0(n109), .Y(n275) );
  OAI21X2M U356 ( .A0(x_n1[11]), .A1(n269), .B0(n277), .Y(n109) );
  OAI2B2X1M U357 ( .A1N(n150), .A0(x_n1[5]), .B0(n292), .B1(x_n1[5]), .Y(n291)
         );
  OAI2BB1XLM U358 ( .A0N(x_n1[5]), .A1N(n265), .B0(n111), .Y(n285) );
  OAI21XLM U359 ( .A0(x_n1[5]), .A1(n265), .B0(n286), .Y(n111) );
  OAI2BB1X2M U360 ( .A0N(x_n1[9]), .A1N(n268), .B0(n113), .Y(n278) );
  OAI21X2M U361 ( .A0(x_n1[9]), .A1(n268), .B0(n280), .Y(n113) );
  OAI2B1X4M U362 ( .A1N(x_n1[10]), .A0(n152), .B0(n114), .Y(n277) );
  OAI2BB1X2M U363 ( .A0N(x_n1[8]), .A1N(n271), .B0(n115), .Y(n280) );
  XOR3X2M U364 ( .A(x_n1[9]), .B(x_n1[14]), .C(n281), .Y(N37) );
  INVXLM U365 ( .A(n282), .Y(n283) );
  XOR3XLM U366 ( .A(x_n1[5]), .B(x_n1[10]), .C(n287), .Y(N33) );
  INVXLM U367 ( .A(n286), .Y(n287) );
  OR2X1M U368 ( .A(x_n1[3]), .B(n295), .Y(n293) );
  XNOR2X2M U369 ( .A(x_n1[11]), .B(n271), .Y(n177) );
  OR2X2M U370 ( .A(n90), .B(n174), .Y(n178) );
  NOR2X2M U371 ( .A(n92), .B(n188), .Y(n120) );
  XNOR2X2M U372 ( .A(x_n1[10]), .B(n267), .Y(n182) );
  OR2X2M U373 ( .A(n93), .B(n180), .Y(n183) );
  NOR2X2M U374 ( .A(n89), .B(n185), .Y(n122) );
  NOR2X2M U375 ( .A(n91), .B(n191), .Y(n124) );
  INVXLM U376 ( .A(n328), .Y(n329) );
  INVX2M U377 ( .A(x_n1[11]), .Y(n266) );
  XNOR3XLM U378 ( .A(x_n3[4]), .B(n139), .C(n326), .Y(N49) );
  XNOR3XLM U379 ( .A(x_n3[3]), .B(n15), .C(n327), .Y(N48) );
  OAI2BB1XLM U380 ( .A0N(x_n1[5]), .A1N(x_n1[7]), .B0(n127), .Y(n195) );
  OAI21XLM U381 ( .A0(x_n1[5]), .A1(x_n1[7]), .B0(n196), .Y(n127) );
  BUFX2M U382 ( .A(x_n2[10]), .Y(n145) );
  BUFX2M U383 ( .A(x_n2[11]), .Y(n146) );
  XOR3XLM U384 ( .A(x_n1[5]), .B(n150), .C(n292), .Y(N28) );
  XNOR2XLM U385 ( .A(x_n1[2]), .B(n298), .Y(N25) );
  INVXLM U386 ( .A(n297), .Y(n298) );
  INVXLM U387 ( .A(n295), .Y(n296) );
  XNOR2XLM U388 ( .A(x_n1[4]), .B(n294), .Y(N27) );
  INVX2M U389 ( .A(x_n1[10]), .Y(n265) );
  AO21XLM U390 ( .A0(x_n3[0]), .A1(n332), .B0(n331), .Y(N45) );
  XNOR3XLM U391 ( .A(x_n3[5]), .B(n140), .C(n325), .Y(N50) );
  BUFX2M U392 ( .A(x_n2[13]), .Y(n148) );
  BUFX2M U393 ( .A(x_n2[12]), .Y(n147) );
  OR2X2M U394 ( .A(x_n1[11]), .B(x_n1[13]), .Y(n173) );
  INVX2M U395 ( .A(x_n1[13]), .Y(n271) );
  INVX2M U396 ( .A(x_n1[12]), .Y(n267) );
  OR2X1M U397 ( .A(x_n1[6]), .B(x_n1[8]), .Y(n193) );
  OR2X1M U398 ( .A(x_n1[7]), .B(x_n1[9]), .Y(n190) );
  OR2X1M U399 ( .A(x_n1[8]), .B(x_n1[10]), .Y(n187) );
  XNOR2X2M U400 ( .A(x_n3[15]), .B(x_n2[15]), .Y(n310) );
  BUFX2M U401 ( .A(x_n1[15]), .Y(n153) );
  BUFX2M U402 ( .A(x_n2[14]), .Y(n149) );
  OR2X2M U403 ( .A(x_n1[10]), .B(x_n1[12]), .Y(n179) );
  OR2X2M U404 ( .A(x_n1[12]), .B(x_n1[14]), .Y(n170) );
  OR2X2M U405 ( .A(x_n1[13]), .B(n153), .Y(n168) );
  OR2X2M U406 ( .A(x_n1[14]), .B(n153), .Y(n166) );
  INVX2M U407 ( .A(x_n1[14]), .Y(n268) );
  INVX2M U408 ( .A(x_n2[15]), .Y(n156) );
  CLKXOR2X2M U409 ( .A(x_n1[13]), .B(n153), .Y(n131) );
  CLKXOR2X2M U410 ( .A(x_n1[14]), .B(n153), .Y(n132) );
  BUFX2M U411 ( .A(x_n1[15]), .Y(n152) );
  AO21X4M U412 ( .A0(n190), .A1(n192), .B0(n91), .Y(n189) );
  AO21X4M U413 ( .A0(n187), .A1(n189), .B0(n92), .Y(n186) );
  AO21X4M U414 ( .A0(n179), .A1(n181), .B0(n93), .Y(n175) );
  AO21X4M U415 ( .A0(n173), .A1(n175), .B0(n90), .Y(n172) );
  OA21X4M U416 ( .A0(n148), .A1(n146), .B0(n251), .Y(n245) );
  AO21X4M U417 ( .A0(n148), .A1(n146), .B0(n245), .Y(n250) );
  XOR3X4M U418 ( .A(x_n2[15]), .B(n148), .C(n249), .Y(N106) );
endmodule


module counter2bit_3 ( clk, reset, count );
  output [1:0] count;
  input clk, reset;
  wire   N2, n1;

  DFFRQX2M \count_reg[1]  ( .D(N2), .CK(clk), .RN(reset), .Q(count[1]) );
  DFFRQX2M \count_reg[0]  ( .D(n1), .CK(clk), .RN(reset), .Q(count[0]) );
  INVX2M U3 ( .A(count[0]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_3 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  AO22X8M U1 ( .A0(I3[15]), .A1(n1), .B0(I2[15]), .B1(n10), .Y(n39) );
  OR2X12M U2 ( .A(n40), .B(n39), .Y(Y[15]) );
  AO22X4M U3 ( .A0(I1[14]), .A1(n8), .B0(I0[14]), .B1(n9), .Y(n38) );
  AO22X4M U4 ( .A0(I3[14]), .A1(n1), .B0(I2[14]), .B1(n10), .Y(n37) );
  AO22X4M U5 ( .A0(I3[12]), .A1(n1), .B0(I2[12]), .B1(n10), .Y(n35) );
  AO22X8M U6 ( .A0(I1[15]), .A1(n8), .B0(I0[15]), .B1(n9), .Y(n40) );
  OR2X4M U7 ( .A(n24), .B(n23), .Y(Y[7]) );
  NAND2BX2M U8 ( .AN(n18), .B(n4), .Y(Y[4]) );
  AOI22X1M U9 ( .A0(I3[4]), .A1(n1), .B0(I2[4]), .B1(n10), .Y(n4) );
  AO22X2M U10 ( .A0(I1[5]), .A1(n8), .B0(I0[5]), .B1(n9), .Y(n20) );
  OR2X2M U11 ( .A(n16), .B(n15), .Y(Y[1]) );
  AO22X1M U12 ( .A0(I1[1]), .A1(n8), .B0(I0[1]), .B1(n9), .Y(n16) );
  AO22X1M U13 ( .A0(I3[1]), .A1(n1), .B0(I2[1]), .B1(n10), .Y(n15) );
  AOI22X1M U14 ( .A0(I3[2]), .A1(n1), .B0(I2[2]), .B1(n10), .Y(n7) );
  OR2X2M U15 ( .A(n22), .B(n21), .Y(Y[6]) );
  AO22X1M U16 ( .A0(I1[6]), .A1(n8), .B0(I0[6]), .B1(n9), .Y(n22) );
  AO22X1M U17 ( .A0(I3[6]), .A1(n1), .B0(I2[6]), .B1(n10), .Y(n21) );
  OR2X2M U18 ( .A(n36), .B(n35), .Y(Y[12]) );
  AO22X1M U19 ( .A0(I1[12]), .A1(n8), .B0(I0[12]), .B1(n9), .Y(n36) );
  NAND2X2M U20 ( .A(n2), .B(n3), .Y(Y[13]) );
  AOI22X1M U21 ( .A0(I1[13]), .A1(n8), .B0(I0[13]), .B1(n9), .Y(n2) );
  AOI22X1M U22 ( .A0(I3[13]), .A1(n1), .B0(I2[13]), .B1(n10), .Y(n3) );
  OR2X2M U23 ( .A(n38), .B(n37), .Y(Y[14]) );
  OR2X2M U24 ( .A(n14), .B(n13), .Y(Y[0]) );
  AO22X1M U25 ( .A0(I1[0]), .A1(n8), .B0(I0[0]), .B1(n9), .Y(n14) );
  AO22X1M U26 ( .A0(I3[0]), .A1(n1), .B0(I2[0]), .B1(n10), .Y(n13) );
  NOR2X2M U27 ( .A(n12), .B(n11), .Y(n1) );
  OR2X12M U28 ( .A(n28), .B(n27), .Y(Y[9]) );
  OR2X12M U29 ( .A(n26), .B(n25), .Y(Y[8]) );
  NAND2X2M U30 ( .A(I0[11]), .B(n9), .Y(n33) );
  NAND4X2M U31 ( .A(n34), .B(n33), .C(n32), .D(n31), .Y(Y[11]) );
  NAND2X2M U32 ( .A(I1[11]), .B(n8), .Y(n34) );
  NAND2X2M U33 ( .A(I3[11]), .B(n1), .Y(n32) );
  NAND2X2M U34 ( .A(I2[11]), .B(n10), .Y(n31) );
  AO22X4M U35 ( .A0(I3[10]), .A1(n1), .B0(I2[10]), .B1(n10), .Y(n29) );
  NAND2BX2M U36 ( .AN(n17), .B(n5), .Y(Y[3]) );
  AOI22X1M U37 ( .A0(I3[3]), .A1(n1), .B0(I2[3]), .B1(n10), .Y(n5) );
  NAND2X2M U38 ( .A(n6), .B(n7), .Y(Y[2]) );
  AOI22X1M U39 ( .A0(I1[2]), .A1(n8), .B0(I0[2]), .B1(n9), .Y(n6) );
  AO22X1M U40 ( .A0(I1[4]), .A1(n8), .B0(I0[4]), .B1(n9), .Y(n18) );
  AO22X1M U41 ( .A0(I1[3]), .A1(n8), .B0(I0[3]), .B1(n9), .Y(n17) );
  NOR2X2M U42 ( .A(S[1]), .B(n11), .Y(n8) );
  NOR2X2M U43 ( .A(S[1]), .B(S[0]), .Y(n9) );
  NOR2X2M U44 ( .A(S[0]), .B(n12), .Y(n10) );
  INVX2M U45 ( .A(S[0]), .Y(n11) );
  INVX2M U46 ( .A(S[1]), .Y(n12) );
  OR2X12M U47 ( .A(n30), .B(n29), .Y(Y[10]) );
  AO22X4M U48 ( .A0(I3[5]), .A1(n1), .B0(I2[5]), .B1(n10), .Y(n19) );
  OR2X6M U49 ( .A(n20), .B(n19), .Y(Y[5]) );
  AO22X4M U50 ( .A0(I1[7]), .A1(n8), .B0(I0[7]), .B1(n9), .Y(n24) );
  AO22X4M U51 ( .A0(I3[7]), .A1(n1), .B0(I2[7]), .B1(n10), .Y(n23) );
  AO22X4M U52 ( .A0(I1[8]), .A1(n8), .B0(I0[8]), .B1(n9), .Y(n26) );
  AO22X4M U53 ( .A0(I3[8]), .A1(n1), .B0(I2[8]), .B1(n10), .Y(n25) );
  AO22X4M U54 ( .A0(I1[9]), .A1(n8), .B0(I0[9]), .B1(n9), .Y(n28) );
  AO22X4M U55 ( .A0(I3[9]), .A1(n1), .B0(I2[9]), .B1(n10), .Y(n27) );
  AO22X4M U56 ( .A0(I1[10]), .A1(n8), .B0(I0[10]), .B1(n9), .Y(n30) );
endmodule


module FIR_0 ( clk, clk_3, clk_2, clk_1, clk_4, reset, data_in, out );
  input [15:0] data_in;
  output [15:0] out;
  input clk, clk_3, clk_2, clk_1, clk_4, reset;
  wire   SEL, n1, n2, n3, n4, n5, n6, n7;
  wire   [15:0] mux_out;
  wire   [15:0] even;
  wire   [15:0] odd;
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

  hfb_1_0 uut ( .clk(clk_1), .reset(n6), .data_in(data_in), .even_out(even), 
        .odd_out(odd) );
  counter_0 uut1 ( .clk(clk_2), .reset(n6), .SEL(SEL) );
  up4_filter_0 uut2 ( .clk(clk_2), .rst_n(n6), .in_data(mux_out), .b0(b0), 
        .b1(b1), .b2(b2), .b3(b3) );
  counter2bit_0 uut3 ( .clk(clk_3), .reset(n6), .count(count) );
  mux4to1_0 uut4 ( .I0(b0), .I1(b1), .I2(b2), .I3(b3), .S(count), .Y(out_comb4) );
  up4_filter_3 uut5 ( .clk(clk_3), .rst_n(n6), .in_data(out_comb4), .b0(B0), 
        .b1(B1), .b2(B2), .b3(B3) );
  counter2bit_3 uut6 ( .clk(clk_4), .reset(n6), .count(Count) );
  mux4to1_3 uut7 ( .I0(B0), .I1(B1), .I2(B2), .I3(B3), .S(Count), .Y(out) );
  CLKMX2X12M U1 ( .A(odd[5]), .B(even[5]), .S0(n1), .Y(mux_out[5]) );
  MX2X2M U2 ( .A(odd[0]), .B(even[0]), .S0(n5), .Y(mux_out[0]) );
  MX2X2M U3 ( .A(odd[2]), .B(even[2]), .S0(n5), .Y(mux_out[2]) );
  MX2X2M U4 ( .A(odd[4]), .B(even[4]), .S0(n1), .Y(mux_out[4]) );
  MX2X2M U5 ( .A(odd[3]), .B(even[3]), .S0(n5), .Y(mux_out[3]) );
  BUFX8M U6 ( .A(SEL), .Y(n5) );
  MX2X1M U7 ( .A(odd[6]), .B(even[6]), .S0(n1), .Y(mux_out[6]) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  CLKNAND2X2M U9 ( .A(n3), .B(n4), .Y(mux_out[1]) );
  INVX2M U10 ( .A(SEL), .Y(n2) );
  NAND2XLM U11 ( .A(even[1]), .B(SEL), .Y(n4) );
  NAND2X2M U12 ( .A(n2), .B(odd[1]), .Y(n3) );
  MX2X1M U13 ( .A(odd[9]), .B(even[9]), .S0(n1), .Y(mux_out[9]) );
  MX2XLM U14 ( .A(odd[8]), .B(even[8]), .S0(n1), .Y(mux_out[8]) );
  MX2XLM U15 ( .A(odd[7]), .B(even[7]), .S0(n1), .Y(mux_out[7]) );
  MX2XLM U16 ( .A(odd[12]), .B(even[12]), .S0(n1), .Y(mux_out[12]) );
  MX2XLM U17 ( .A(odd[11]), .B(even[11]), .S0(n5), .Y(mux_out[11]) );
  MX2XLM U18 ( .A(odd[10]), .B(even[10]), .S0(n1), .Y(mux_out[10]) );
  MX2XLM U19 ( .A(odd[13]), .B(even[13]), .S0(n5), .Y(mux_out[13]) );
  MX2XLM U20 ( .A(odd[14]), .B(even[14]), .S0(n5), .Y(mux_out[14]) );
  MX2XLM U21 ( .A(odd[15]), .B(even[15]), .S0(n5), .Y(mux_out[15]) );
  INVX2M U22 ( .A(n7), .Y(n6) );
  INVX2M U23 ( .A(reset), .Y(n7) );
endmodule


module hfb_1_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [16:0] A;
  input [16:0] B;
  output [16:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [16:1] carry;

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
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  wire   [16:1] carry;

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
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

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
  wire   [16:1] carry;

  XOR3XLM U1_16 ( .A(A[16]), .B(B[16]), .C(carry[16]), .Y(SUM[16]) );
  ADDFXLM U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
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
  BUFX2M U10 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U11 ( .A(A[3]), .Y(SUM[3]) );
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
  wire   \ab[7][15] , \ab[7][14] , \ab[7][13] , \ab[7][12] , \ab[7][11] ,
         \ab[7][10] , \ab[7][9] , \ab[7][8] , \ab[7][7] , \ab[7][6] ,
         \ab[7][5] , \ab[7][4] , \ab[7][3] , \ab[7][2] , \ab[7][1] ,
         \ab[7][0] , \ab[6][16] , \CARRYB[7][14] , \CARRYB[7][13] ,
         \CARRYB[7][12] , \CARRYB[7][10] , \CARRYB[7][9] , \CARRYB[7][8] ,
         \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] , \CARRYB[7][4] ,
         \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] , \CARRYB[7][0] ,
         \CARRYB[5][15] , \SUMB[8][14] , \SUMB[8][13] , \SUMB[8][12] ,
         \SUMB[8][11] , \SUMB[8][10] , \SUMB[8][9] , \SUMB[8][8] ,
         \SUMB[8][7] , \SUMB[8][6] , \SUMB[8][5] , \SUMB[8][4] , \SUMB[8][3] ,
         \SUMB[8][2] , \SUMB[8][1] , \SUMB[8][0] , \SUMB[7][15] ,
         \SUMB[7][14] , \SUMB[7][13] , \SUMB[7][12] , \SUMB[7][11] ,
         \SUMB[7][10] , \SUMB[7][9] , \SUMB[7][8] , \SUMB[7][7] , \SUMB[7][6] ,
         \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] ,
         \SUMB[6][14] , \SUMB[6][13] , \SUMB[6][12] , \SUMB[6][10] ,
         \SUMB[6][9] , \SUMB[6][8] , \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] ,
         \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][15] ,
         \SUMB[5][14] , \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \A1[21] ,
         \A1[20] , \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] ,
         \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] ,
         \A1[5] , \A1[4] , \A1[3] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign \ab[7][15]  = B[15];
  assign \ab[7][14]  = B[14];
  assign \ab[7][13]  = B[13];
  assign \ab[7][12]  = B[12];
  assign \ab[7][11]  = B[11];
  assign \ab[7][10]  = B[10];
  assign \ab[7][9]  = B[9];
  assign \ab[7][8]  = B[8];
  assign \ab[7][7]  = B[7];
  assign \ab[7][6]  = B[6];
  assign \ab[7][5]  = B[5];
  assign \ab[7][4]  = B[4];
  assign \ab[7][3]  = B[3];
  assign \ab[7][2]  = B[2];
  assign \ab[7][1]  = B[1];
  assign \ab[7][0]  = B[0];
  assign \ab[6][16]  = B[16];

  hfb_1_1_DW01_add_12 FS_1 ( .A({\ab[6][16] , \ab[6][16] , \A1[21] , \A1[20] , 
        \A1[19] , \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , 
        \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \SUMB[8][0] , 
        \A1[5] , \A1[4] , \A1[3] , \ab[7][4] , \ab[7][3] , \ab[7][2] }), .B({
        1'b0, n18, n31, n25, n30, n24, n29, n23, \A2[15] , n22, n28, n21, n27, 
        n20, n19, n26, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, PRODUCT[24:2]}) );
  ADDFX2M S14_16_0 ( .A(\ab[6][16] ), .B(n4), .CI(\SUMB[8][8] ), .CO(\A2[15] ), 
        .S(\A1[14] ) );
  ADDFX2M S2_7_1 ( .A(\ab[7][1] ), .B(n16), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S2_7_14 ( .A(\ab[7][14] ), .B(n15), .CI(\CARRYB[5][15] ), .CO(
        \CARRYB[7][14] ), .S(\SUMB[7][14] ) );
  ADDFX2M S2_7_13 ( .A(\ab[7][13] ), .B(n14), .CI(\SUMB[6][14] ), .CO(
        \CARRYB[7][13] ), .S(\SUMB[7][13] ) );
  ADDFX2M S2_7_12 ( .A(\ab[7][12] ), .B(n5), .CI(\SUMB[6][13] ), .CO(
        \CARRYB[7][12] ), .S(\SUMB[7][12] ) );
  ADDFX2M S2_7_9 ( .A(\ab[7][9] ), .B(n7), .CI(\SUMB[6][10] ), .CO(
        \CARRYB[7][9] ), .S(\SUMB[7][9] ) );
  ADDFX2M S2_7_2 ( .A(\ab[7][2] ), .B(n13), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S1_7_0 ( .A(\ab[7][0] ), .B(n17), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\A1[5] ) );
  ADDFX2M S2_7_10 ( .A(\ab[7][10] ), .B(n3), .CI(\SUMB[5][12] ), .CO(
        \CARRYB[7][10] ), .S(\SUMB[7][10] ) );
  ADDFX2M S2_7_6 ( .A(\ab[7][6] ), .B(n12), .CI(\SUMB[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S2_7_4 ( .A(\ab[7][4] ), .B(n11), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_7_8 ( .A(\ab[7][8] ), .B(n10), .CI(\SUMB[6][9] ), .CO(
        \CARRYB[7][8] ), .S(\SUMB[7][8] ) );
  ADDFX2M S2_7_7 ( .A(\ab[7][7] ), .B(n9), .CI(\SUMB[6][8] ), .CO(
        \CARRYB[7][7] ), .S(\SUMB[7][7] ) );
  ADDFX2M S2_7_5 ( .A(\ab[7][5] ), .B(n6), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S2_7_3 ( .A(\ab[7][3] ), .B(n8), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  AND2X2M U2 ( .A(\ab[7][11] ), .B(n51), .Y(n3) );
  AND2X2M U3 ( .A(\SUMB[7][8] ), .B(\CARRYB[7][7] ), .Y(n4) );
  AND2X2M U4 ( .A(\SUMB[5][13] ), .B(n47), .Y(n5) );
  AND2X2M U5 ( .A(\SUMB[5][6] ), .B(n54), .Y(n6) );
  AND2X2M U6 ( .A(\SUMB[5][10] ), .B(n57), .Y(n7) );
  AND2X2M U7 ( .A(\SUMB[5][4] ), .B(n52), .Y(n8) );
  AND2X2M U8 ( .A(\SUMB[5][8] ), .B(n55), .Y(n9) );
  AND2X2M U9 ( .A(\SUMB[5][9] ), .B(n56), .Y(n10) );
  AND2X2M U10 ( .A(\SUMB[5][5] ), .B(n53), .Y(n11) );
  AND2X2M U11 ( .A(\SUMB[5][7] ), .B(n46), .Y(n12) );
  AND2X2M U12 ( .A(\SUMB[5][3] ), .B(n58), .Y(n13) );
  AND2X2M U13 ( .A(\SUMB[5][14] ), .B(n48), .Y(n14) );
  AND2X2M U14 ( .A(\SUMB[5][15] ), .B(n49), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[5][2] ), .B(n61), .Y(n16) );
  AND2X2M U16 ( .A(n60), .B(\SUMB[5][1] ), .Y(n17) );
  AND2X2M U17 ( .A(n44), .B(n59), .Y(n18) );
  CLKXOR2X2M U18 ( .A(n36), .B(\SUMB[8][3] ), .Y(\A1[9] ) );
  CLKXOR2X2M U19 ( .A(n35), .B(\SUMB[8][2] ), .Y(\A1[8] ) );
  CLKXOR2X2M U20 ( .A(n37), .B(\SUMB[8][5] ), .Y(\A1[11] ) );
  CLKXOR2X2M U21 ( .A(n39), .B(\SUMB[8][7] ), .Y(\A1[13] ) );
  CLKXOR2X2M U22 ( .A(n40), .B(\SUMB[8][9] ), .Y(\A1[15] ) );
  XNOR2X2M U23 ( .A(n34), .B(n64), .Y(\A1[7] ) );
  CLKXOR2X2M U24 ( .A(n32), .B(\SUMB[8][4] ), .Y(\A1[10] ) );
  CLKXOR2X2M U25 ( .A(n38), .B(\SUMB[8][6] ), .Y(\A1[12] ) );
  CLKXOR2X2M U26 ( .A(n41), .B(\SUMB[8][10] ), .Y(\A1[16] ) );
  AND2X2M U27 ( .A(n35), .B(\SUMB[8][2] ), .Y(n19) );
  AND2X2M U28 ( .A(n36), .B(\SUMB[8][3] ), .Y(n20) );
  CLKXOR2X2M U29 ( .A(n42), .B(\SUMB[8][12] ), .Y(\A1[18] ) );
  CLKXOR2X2M U30 ( .A(n33), .B(\SUMB[8][11] ), .Y(\A1[17] ) );
  CLKXOR2X2M U31 ( .A(n43), .B(\SUMB[8][13] ), .Y(\A1[19] ) );
  INVX2M U32 ( .A(\SUMB[8][1] ), .Y(n64) );
  AND2X2M U33 ( .A(n37), .B(\SUMB[8][5] ), .Y(n21) );
  AND2X2M U34 ( .A(n39), .B(\SUMB[8][7] ), .Y(n22) );
  AND2X2M U35 ( .A(n40), .B(\SUMB[8][9] ), .Y(n23) );
  AND2X2M U36 ( .A(n33), .B(\SUMB[8][11] ), .Y(n24) );
  AND2X2M U37 ( .A(n43), .B(\SUMB[8][13] ), .Y(n25) );
  AND2X2M U38 ( .A(n34), .B(\SUMB[8][1] ), .Y(n26) );
  AND2X2M U39 ( .A(n32), .B(\SUMB[8][4] ), .Y(n27) );
  AND2X2M U40 ( .A(n38), .B(\SUMB[8][6] ), .Y(n28) );
  AND2X2M U41 ( .A(n41), .B(\SUMB[8][10] ), .Y(n29) );
  AND2X2M U42 ( .A(n42), .B(\SUMB[8][12] ), .Y(n30) );
  CLKXOR2X2M U43 ( .A(n45), .B(\SUMB[8][14] ), .Y(\A1[20] ) );
  AND2X2M U44 ( .A(n45), .B(\SUMB[8][14] ), .Y(n31) );
  CLKXOR2X2M U45 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\SUMB[8][3] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\SUMB[8][2] ) );
  CLKXOR2X2M U47 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\SUMB[8][5] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\SUMB[8][4] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[7][6] ), .B(\SUMB[7][7] ), .Y(\SUMB[8][6] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[7][7] ), .B(\SUMB[7][8] ), .Y(\SUMB[8][7] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[7][9] ), .B(\SUMB[7][10] ), .Y(\SUMB[8][9] ) );
  CLKXOR2X2M U52 ( .A(\CARRYB[7][10] ), .B(\SUMB[7][11] ), .Y(\SUMB[8][10] )
         );
  CLKXOR2X2M U53 ( .A(n47), .B(\SUMB[5][13] ), .Y(\SUMB[6][12] ) );
  XNOR2X2M U54 ( .A(\CARRYB[7][0] ), .B(n78), .Y(\SUMB[8][0] ) );
  INVX2M U55 ( .A(\SUMB[7][1] ), .Y(n78) );
  INVX2M U56 ( .A(\SUMB[5][5] ), .Y(n72) );
  INVX2M U57 ( .A(\SUMB[5][7] ), .Y(n74) );
  INVX2M U58 ( .A(\SUMB[5][6] ), .Y(n73) );
  INVX2M U59 ( .A(\SUMB[5][8] ), .Y(n75) );
  INVX2M U60 ( .A(\SUMB[5][9] ), .Y(n76) );
  INVX2M U61 ( .A(\SUMB[5][10] ), .Y(n77) );
  AND2X2M U62 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n32) );
  CLKXOR2X2M U63 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\SUMB[8][1] ) );
  CLKXOR2X2M U64 ( .A(n50), .B(\SUMB[7][12] ), .Y(\SUMB[8][11] ) );
  CLKXOR2X2M U65 ( .A(\CARRYB[7][12] ), .B(\SUMB[7][13] ), .Y(\SUMB[8][12] )
         );
  CLKXOR2X2M U66 ( .A(\CARRYB[7][13] ), .B(\SUMB[7][14] ), .Y(\SUMB[8][13] )
         );
  XNOR2X2M U67 ( .A(n60), .B(n65), .Y(\A1[4] ) );
  INVX2M U68 ( .A(\SUMB[5][1] ), .Y(n65) );
  INVX2M U69 ( .A(\SUMB[5][14] ), .Y(n67) );
  INVX2M U70 ( .A(\SUMB[5][15] ), .Y(n68) );
  INVX2M U71 ( .A(\SUMB[5][4] ), .Y(n71) );
  INVX2M U72 ( .A(\SUMB[5][3] ), .Y(n70) );
  INVX2M U73 ( .A(\SUMB[5][2] ), .Y(n69) );
  AND2X2M U74 ( .A(\SUMB[7][11] ), .B(\CARRYB[7][10] ), .Y(n33) );
  AND2X2M U75 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n34) );
  AND2X2M U76 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n35) );
  AND2X2M U77 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n36) );
  AND2X2M U78 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n37) );
  AND2X2M U79 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n38) );
  AND2X2M U80 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n39) );
  AND2X2M U81 ( .A(\SUMB[7][9] ), .B(\CARRYB[7][8] ), .Y(n40) );
  AND2X2M U82 ( .A(\SUMB[7][10] ), .B(\CARRYB[7][9] ), .Y(n41) );
  AND2X2M U83 ( .A(\SUMB[7][12] ), .B(n50), .Y(n42) );
  AND2X2M U84 ( .A(\SUMB[7][13] ), .B(\CARRYB[7][12] ), .Y(n43) );
  INVX2M U85 ( .A(\SUMB[7][9] ), .Y(n79) );
  CLKXOR2X2M U86 ( .A(\CARRYB[7][14] ), .B(\SUMB[7][15] ), .Y(\SUMB[8][14] )
         );
  CLKXOR2X2M U87 ( .A(n44), .B(n59), .Y(\A1[21] ) );
  AND2X2M U88 ( .A(\SUMB[7][15] ), .B(\CARRYB[7][14] ), .Y(n44) );
  AND2X2M U89 ( .A(\SUMB[7][14] ), .B(\CARRYB[7][13] ), .Y(n45) );
  CLKXOR2X2M U90 ( .A(\ab[7][13] ), .B(\ab[6][16] ), .Y(\SUMB[5][13] ) );
  CLKXOR2X2M U91 ( .A(\ab[7][6] ), .B(\ab[7][11] ), .Y(\SUMB[5][6] ) );
  CLKXOR2X2M U92 ( .A(\ab[7][5] ), .B(\ab[7][10] ), .Y(\SUMB[5][5] ) );
  CLKXOR2X2M U93 ( .A(\ab[7][7] ), .B(\ab[7][12] ), .Y(\SUMB[5][7] ) );
  CLKXOR2X2M U94 ( .A(\ab[7][8] ), .B(\ab[7][13] ), .Y(\SUMB[5][8] ) );
  CLKXOR2X2M U95 ( .A(\ab[7][9] ), .B(\ab[7][14] ), .Y(\SUMB[5][9] ) );
  CLKXOR2X2M U96 ( .A(\ab[7][11] ), .B(\SUMB[6][12] ), .Y(\SUMB[7][11] ) );
  XNOR2X2M U97 ( .A(n53), .B(n72), .Y(\SUMB[6][4] ) );
  XNOR2X2M U98 ( .A(n46), .B(n74), .Y(\SUMB[6][6] ) );
  XNOR2X2M U99 ( .A(n56), .B(n76), .Y(\SUMB[6][8] ) );
  XNOR2X2M U100 ( .A(n57), .B(n77), .Y(\SUMB[6][9] ) );
  XNOR2X2M U101 ( .A(n54), .B(n73), .Y(\SUMB[6][5] ) );
  XNOR2X2M U102 ( .A(n55), .B(n75), .Y(\SUMB[6][7] ) );
  XNOR2X2M U103 ( .A(\ab[7][12] ), .B(n81), .Y(\SUMB[5][12] ) );
  INVX2M U104 ( .A(\ab[6][16] ), .Y(n81) );
  CLKXOR2X2M U105 ( .A(\ab[7][10] ), .B(\ab[7][15] ), .Y(\SUMB[5][10] ) );
  AND2X2M U106 ( .A(\ab[7][11] ), .B(\ab[7][6] ), .Y(n46) );
  CLKXOR2X2M U107 ( .A(\ab[7][15] ), .B(\ab[6][16] ), .Y(\SUMB[5][15] ) );
  CLKXOR2X2M U108 ( .A(\ab[7][14] ), .B(\ab[6][16] ), .Y(\SUMB[5][14] ) );
  CLKXOR2X2M U109 ( .A(\ab[7][4] ), .B(\ab[7][9] ), .Y(\SUMB[5][4] ) );
  CLKXOR2X2M U110 ( .A(\ab[7][2] ), .B(\ab[7][7] ), .Y(\SUMB[5][2] ) );
  XNOR2X2M U111 ( .A(n61), .B(n69), .Y(\SUMB[6][1] ) );
  XNOR2X2M U112 ( .A(n52), .B(n71), .Y(\SUMB[6][3] ) );
  XNOR2X2M U113 ( .A(n51), .B(n66), .Y(\SUMB[6][10] ) );
  INVX2M U114 ( .A(\ab[7][11] ), .Y(n66) );
  XNOR2X2M U115 ( .A(n48), .B(n67), .Y(\SUMB[6][13] ) );
  XNOR2X2M U116 ( .A(n49), .B(n68), .Y(\SUMB[6][14] ) );
  INVX2M U117 ( .A(n82), .Y(\CARRYB[5][15] ) );
  NAND2X2M U118 ( .A(\ab[6][16] ), .B(\ab[7][15] ), .Y(n82) );
  XNOR2X2M U119 ( .A(n58), .B(n70), .Y(\SUMB[6][2] ) );
  XNOR2X2M U120 ( .A(\CARRYB[7][8] ), .B(n79), .Y(\SUMB[8][8] ) );
  XNOR2X2M U121 ( .A(\ab[7][0] ), .B(n80), .Y(\A1[3] ) );
  INVX2M U122 ( .A(\ab[7][5] ), .Y(n80) );
  CLKXOR2X2M U123 ( .A(\ab[7][3] ), .B(\ab[7][8] ), .Y(\SUMB[5][3] ) );
  AND2X2M U124 ( .A(\ab[6][16] ), .B(\ab[7][12] ), .Y(n47) );
  AND2X2M U125 ( .A(\ab[6][16] ), .B(\ab[7][13] ), .Y(n48) );
  AND2X2M U126 ( .A(\ab[6][16] ), .B(\ab[7][14] ), .Y(n49) );
  AND2X2M U127 ( .A(\SUMB[6][12] ), .B(\ab[7][11] ), .Y(n50) );
  AND2X2M U128 ( .A(\ab[7][15] ), .B(\ab[7][10] ), .Y(n51) );
  AND2X2M U129 ( .A(\ab[7][8] ), .B(\ab[7][3] ), .Y(n52) );
  AND2X2M U130 ( .A(\ab[7][9] ), .B(\ab[7][4] ), .Y(n53) );
  AND2X2M U131 ( .A(\ab[7][10] ), .B(\ab[7][5] ), .Y(n54) );
  AND2X2M U132 ( .A(\ab[7][12] ), .B(\ab[7][7] ), .Y(n55) );
  AND2X2M U133 ( .A(\ab[7][13] ), .B(\ab[7][8] ), .Y(n56) );
  AND2X2M U134 ( .A(\ab[7][14] ), .B(\ab[7][9] ), .Y(n57) );
  AND2X2M U135 ( .A(\ab[7][7] ), .B(\ab[7][2] ), .Y(n58) );
  CLKXOR2X2M U136 ( .A(\ab[7][1] ), .B(\ab[7][6] ), .Y(\SUMB[5][1] ) );
  CLKXOR2X2M U137 ( .A(\ab[7][15] ), .B(\ab[6][16] ), .Y(\SUMB[7][15] ) );
  BUFX2M U138 ( .A(\ab[7][1] ), .Y(PRODUCT[1]) );
  AND2X2M U139 ( .A(\ab[6][16] ), .B(\ab[7][15] ), .Y(n59) );
  BUFX2M U140 ( .A(\ab[7][0] ), .Y(PRODUCT[0]) );
  AND2X2M U141 ( .A(\ab[7][0] ), .B(\ab[7][5] ), .Y(n60) );
  AND2X2M U142 ( .A(\ab[7][6] ), .B(\ab[7][1] ), .Y(n61) );
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
  BUFX2M U7 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U8 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
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
  wire   \ab[6][16] , \ab[3][15] , \ab[3][14] , \ab[3][13] , \ab[3][12] ,
         \ab[3][11] , \ab[3][10] , \ab[3][9] , \ab[3][8] , \ab[3][7] ,
         \ab[3][6] , \ab[3][5] , \ab[3][4] , \ab[3][3] , \ab[3][2] ,
         \ab[3][1] , \ab[3][0] , \CARRYB[6][14] , \CARRYB[6][13] ,
         \CARRYB[6][12] , \CARRYB[6][11] , \CARRYB[6][10] , \CARRYB[6][9] ,
         \CARRYB[6][8] , \CARRYB[6][7] , \CARRYB[6][6] , \CARRYB[6][5] ,
         \CARRYB[6][4] , \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] ,
         \CARRYB[6][0] , \CARRYB[3][14] , \CARRYB[3][13] , \CARRYB[3][12] ,
         \CARRYB[3][11] , \CARRYB[3][10] , \CARRYB[3][9] , \CARRYB[3][8] ,
         \CARRYB[3][7] , \CARRYB[3][6] , \CARRYB[3][5] , \CARRYB[3][4] ,
         \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] , \CARRYB[3][0] ,
         \SUMB[6][15] , \SUMB[6][14] , \SUMB[6][13] , \SUMB[6][12] ,
         \SUMB[6][11] , \SUMB[6][10] , \SUMB[6][9] , \SUMB[6][8] ,
         \SUMB[6][7] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] ,
         \SUMB[6][2] , \SUMB[6][1] , \SUMB[6][0] , \SUMB[5][14] ,
         \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] , \SUMB[5][10] ,
         \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][14] ,
         \SUMB[4][13] , \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] ,
         \SUMB[4][9] , \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] ,
         \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][15] ,
         \SUMB[3][14] , \SUMB[3][13] , \SUMB[3][12] , \SUMB[3][11] ,
         \SUMB[3][10] , \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] ,
         \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] ,
         \SUMB[2][15] , \SUMB[2][14] , \SUMB[2][13] , \SUMB[2][12] ,
         \SUMB[2][11] , \SUMB[2][10] , \SUMB[2][9] , \SUMB[2][8] ,
         \SUMB[2][7] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][15] , \A1[19] , \A1[18] ,
         \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101;
  assign \ab[6][16]  = B[16];
  assign \ab[3][15]  = B[15];
  assign \ab[3][14]  = B[14];
  assign \ab[3][13]  = B[13];
  assign \ab[3][12]  = B[12];
  assign \ab[3][11]  = B[11];
  assign \ab[3][10]  = B[10];
  assign \ab[3][9]  = B[9];
  assign \ab[3][8]  = B[8];
  assign \ab[3][7]  = B[7];
  assign \ab[3][6]  = B[6];
  assign \ab[3][5]  = B[5];
  assign \ab[3][4]  = B[4];
  assign \ab[3][3]  = B[3];
  assign \ab[3][2]  = B[2];
  assign \ab[3][1]  = B[1];
  assign \ab[3][0]  = B[0];

  hfb_1_1_DW01_add_11 FS_1 ( .A({1'b1, n98, \A1[19] , \A1[18] , \A1[17] , 
        \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , n99, \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n65, n61, n60, n59, n46, n41, \A2[15] , n40, 
        n45, n39, n44, n38, n37, n42, n43, n36, \SUMB[6][0] , 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[23:2]) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(n32), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S4_14 ( .A(n96), .B(n15), .CI(\ab[6][16] ), .CO(\CARRYB[6][14] ), 
        .S(\SUMB[6][14] ) );
  ADDFX2M S4_0 ( .A(n101), .B(n31), .CI(\SUMB[5][1] ), .CO(\CARRYB[6][0] ), 
        .S(\SUMB[6][0] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(n30), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S4_13 ( .A(n95), .B(n14), .CI(\SUMB[5][14] ), .CO(\CARRYB[6][13] ), 
        .S(\SUMB[6][13] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(n29), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(n27), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S14_16_0 ( .A(\ab[6][16] ), .B(\CARRYB[6][9] ), .CI(\SUMB[6][10] ), 
        .CO(\A2[15] ), .S(\A1[14] ) );
  ADDFX2M S2_3_14 ( .A(\ab[3][14] ), .B(n16), .CI(\SUMB[2][15] ), .CO(
        \CARRYB[3][14] ), .S(\SUMB[3][14] ) );
  ADDFX2M S2_3_13 ( .A(\ab[3][13] ), .B(n26), .CI(\SUMB[2][14] ), .CO(
        \CARRYB[3][13] ), .S(\SUMB[3][13] ) );
  ADDFX2M S2_3_12 ( .A(\ab[3][12] ), .B(n25), .CI(\SUMB[2][13] ), .CO(
        \CARRYB[3][12] ), .S(\SUMB[3][12] ) );
  ADDFX2M S2_3_11 ( .A(\ab[3][11] ), .B(n24), .CI(\SUMB[2][12] ), .CO(
        \CARRYB[3][11] ), .S(\SUMB[3][11] ) );
  ADDFX2M S2_3_9 ( .A(\ab[3][9] ), .B(n23), .CI(\SUMB[2][10] ), .CO(
        \CARRYB[3][9] ), .S(\SUMB[3][9] ) );
  ADDFX2M S2_3_7 ( .A(\ab[3][7] ), .B(n22), .CI(\SUMB[2][8] ), .CO(
        \CARRYB[3][7] ), .S(\SUMB[3][7] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(n21), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(n20), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S4_12 ( .A(n94), .B(n4), .CI(\SUMB[5][13] ), .CO(\CARRYB[6][12] ), 
        .S(\SUMB[6][12] ) );
  ADDFX2M S4_11 ( .A(n93), .B(n3), .CI(\SUMB[5][12] ), .CO(\CARRYB[6][11] ), 
        .S(\SUMB[6][11] ) );
  ADDFX2M S4_8 ( .A(n90), .B(n13), .CI(\SUMB[5][9] ), .CO(\CARRYB[6][8] ), .S(
        \SUMB[6][8] ) );
  ADDFX2M S4_7 ( .A(n89), .B(n12), .CI(\SUMB[5][8] ), .CO(\CARRYB[6][7] ), .S(
        \SUMB[6][7] ) );
  ADDFX2M S4_5 ( .A(n87), .B(n11), .CI(\SUMB[5][6] ), .CO(\CARRYB[6][5] ), .S(
        \SUMB[6][5] ) );
  ADDFX2M S4_4 ( .A(n86), .B(n10), .CI(\SUMB[5][5] ), .CO(\CARRYB[6][4] ), .S(
        \SUMB[6][4] ) );
  ADDFX2M S4_2 ( .A(n84), .B(n9), .CI(\SUMB[5][3] ), .CO(\CARRYB[6][2] ), .S(
        \SUMB[6][2] ) );
  ADDFX2M S4_3 ( .A(n85), .B(n8), .CI(\SUMB[5][4] ), .CO(\CARRYB[6][3] ), .S(
        \SUMB[6][3] ) );
  ADDFX2M S4_1 ( .A(n100), .B(n28), .CI(\SUMB[5][2] ), .CO(\CARRYB[6][1] ), 
        .S(\SUMB[6][1] ) );
  ADDFX2M S4_10 ( .A(n92), .B(n7), .CI(\SUMB[5][11] ), .CO(\CARRYB[6][10] ), 
        .S(\SUMB[6][10] ) );
  ADDFX2M S4_9 ( .A(n91), .B(n6), .CI(\SUMB[5][10] ), .CO(\CARRYB[6][9] ), .S(
        \SUMB[6][9] ) );
  ADDFX2M S4_6 ( .A(n88), .B(n5), .CI(\SUMB[5][7] ), .CO(\CARRYB[6][6] ), .S(
        \SUMB[6][6] ) );
  ADDFX2M S2_3_10 ( .A(\ab[3][10] ), .B(n19), .CI(\SUMB[2][11] ), .CO(
        \CARRYB[3][10] ), .S(\SUMB[3][10] ) );
  ADDFX2M S2_3_8 ( .A(\ab[3][8] ), .B(n18), .CI(\SUMB[2][9] ), .CO(
        \CARRYB[3][8] ), .S(\SUMB[3][8] ) );
  ADDFX2M S2_3_6 ( .A(\ab[3][6] ), .B(n17), .CI(\SUMB[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  AND2X2M U2 ( .A(\SUMB[4][12] ), .B(n57), .Y(n3) );
  AND2X2M U3 ( .A(\SUMB[4][13] ), .B(n34), .Y(n4) );
  AND2X2M U4 ( .A(\SUMB[4][7] ), .B(n53), .Y(n5) );
  AND2X2M U5 ( .A(\SUMB[4][10] ), .B(n56), .Y(n6) );
  AND2X2M U6 ( .A(\SUMB[4][11] ), .B(n55), .Y(n7) );
  AND2X2M U7 ( .A(\SUMB[4][4] ), .B(n51), .Y(n8) );
  AND2X2M U8 ( .A(\SUMB[4][3] ), .B(n49), .Y(n9) );
  AND2X2M U9 ( .A(\SUMB[4][5] ), .B(n50), .Y(n10) );
  AND2X2M U10 ( .A(\SUMB[4][6] ), .B(n52), .Y(n11) );
  AND2X2M U11 ( .A(\SUMB[4][8] ), .B(n33), .Y(n12) );
  AND2X2M U12 ( .A(\SUMB[4][9] ), .B(n54), .Y(n13) );
  AND2X2M U13 ( .A(\SUMB[4][14] ), .B(n35), .Y(n14) );
  AND2X2M U14 ( .A(n64), .B(n47), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[1][15] ), .B(\ab[3][14] ), .Y(n16) );
  AND2X2M U16 ( .A(\ab[3][7] ), .B(\ab[3][6] ), .Y(n17) );
  AND2X2M U17 ( .A(\ab[3][9] ), .B(\ab[3][8] ), .Y(n18) );
  AND2X2M U18 ( .A(\ab[3][11] ), .B(\ab[3][10] ), .Y(n19) );
  AND2X2M U19 ( .A(\ab[3][6] ), .B(\ab[3][5] ), .Y(n20) );
  AND2X2M U20 ( .A(\ab[3][5] ), .B(\ab[3][4] ), .Y(n21) );
  AND2X2M U21 ( .A(\ab[3][8] ), .B(\ab[3][7] ), .Y(n22) );
  AND2X2M U22 ( .A(\ab[3][10] ), .B(\ab[3][9] ), .Y(n23) );
  AND2X2M U23 ( .A(\ab[3][12] ), .B(\ab[3][11] ), .Y(n24) );
  AND2X2M U24 ( .A(\ab[3][13] ), .B(\ab[3][12] ), .Y(n25) );
  AND2X2M U25 ( .A(\ab[3][14] ), .B(\ab[3][13] ), .Y(n26) );
  AND2X2M U26 ( .A(\ab[3][4] ), .B(\ab[3][3] ), .Y(n27) );
  AND2X2M U27 ( .A(\SUMB[4][2] ), .B(n48), .Y(n28) );
  AND2X2M U28 ( .A(\ab[3][2] ), .B(\ab[3][1] ), .Y(n29) );
  AND2X2M U29 ( .A(\ab[3][3] ), .B(\ab[3][2] ), .Y(n30) );
  AND2X2M U30 ( .A(n58), .B(\SUMB[4][1] ), .Y(n31) );
  AND2X2M U31 ( .A(\ab[3][0] ), .B(\ab[3][1] ), .Y(n32) );
  INVX2M U32 ( .A(\SUMB[4][3] ), .Y(n76) );
  INVX2M U33 ( .A(\SUMB[4][5] ), .Y(n78) );
  INVX2M U34 ( .A(\SUMB[4][4] ), .Y(n77) );
  INVX2M U35 ( .A(\SUMB[4][6] ), .Y(n79) );
  INVX2M U36 ( .A(\SUMB[4][7] ), .Y(n80) );
  INVX2M U37 ( .A(\SUMB[4][8] ), .Y(n81) );
  INVX2M U38 ( .A(\SUMB[4][9] ), .Y(n82) );
  INVX2M U39 ( .A(\SUMB[4][11] ), .Y(n70) );
  INVX2M U40 ( .A(\SUMB[4][10] ), .Y(n83) );
  INVX2M U41 ( .A(\SUMB[4][12] ), .Y(n71) );
  INVX2M U42 ( .A(\SUMB[4][13] ), .Y(n72) );
  INVX2M U43 ( .A(\SUMB[4][14] ), .Y(n73) );
  INVX2M U44 ( .A(\SUMB[4][2] ), .Y(n75) );
  XNOR2X2M U45 ( .A(n58), .B(n69), .Y(\A1[3] ) );
  INVX2M U46 ( .A(\SUMB[4][1] ), .Y(n69) );
  CLKXOR2X2M U47 ( .A(\CARRYB[3][3] ), .B(\SUMB[3][4] ), .Y(\SUMB[4][3] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[3][5] ), .B(\SUMB[3][6] ), .Y(\SUMB[4][5] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[3][4] ), .B(\SUMB[3][5] ), .Y(\SUMB[4][4] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[3][6] ), .B(\SUMB[3][7] ), .Y(\SUMB[4][6] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[3][7] ), .B(\SUMB[3][8] ), .Y(\SUMB[4][7] ) );
  CLKXOR2X2M U52 ( .A(\CARRYB[3][8] ), .B(\SUMB[3][9] ), .Y(\SUMB[4][8] ) );
  CLKXOR2X2M U53 ( .A(\CARRYB[3][9] ), .B(\SUMB[3][10] ), .Y(\SUMB[4][9] ) );
  CLKXOR2X2M U54 ( .A(\CARRYB[3][11] ), .B(\SUMB[3][12] ), .Y(\SUMB[4][11] )
         );
  CLKXOR2X2M U55 ( .A(\CARRYB[3][10] ), .B(\SUMB[3][11] ), .Y(\SUMB[4][10] )
         );
  CLKXOR2X2M U56 ( .A(\CARRYB[3][12] ), .B(\SUMB[3][13] ), .Y(\SUMB[4][12] )
         );
  CLKXOR2X2M U57 ( .A(\CARRYB[3][13] ), .B(\SUMB[3][14] ), .Y(\SUMB[4][13] )
         );
  CLKXOR2X2M U58 ( .A(\CARRYB[3][14] ), .B(\SUMB[3][15] ), .Y(\SUMB[4][14] )
         );
  CLKXOR2X2M U59 ( .A(\CARRYB[6][1] ), .B(\SUMB[6][2] ), .Y(\A1[6] ) );
  CLKXOR2X2M U60 ( .A(\CARRYB[6][4] ), .B(\SUMB[6][5] ), .Y(\A1[9] ) );
  CLKXOR2X2M U61 ( .A(\CARRYB[6][5] ), .B(\SUMB[6][6] ), .Y(\A1[10] ) );
  CLKXOR2X2M U62 ( .A(\CARRYB[6][7] ), .B(\SUMB[6][8] ), .Y(\A1[12] ) );
  CLKXOR2X2M U63 ( .A(\CARRYB[6][11] ), .B(\SUMB[6][12] ), .Y(\A1[16] ) );
  CLKXOR2X2M U64 ( .A(\CARRYB[6][3] ), .B(\SUMB[6][4] ), .Y(\A1[8] ) );
  CLKXOR2X2M U65 ( .A(\CARRYB[6][0] ), .B(\SUMB[6][1] ), .Y(\A1[5] ) );
  CLKXOR2X2M U66 ( .A(\CARRYB[6][2] ), .B(\SUMB[6][3] ), .Y(\A1[7] ) );
  CLKXOR2X2M U67 ( .A(\CARRYB[6][10] ), .B(\SUMB[6][11] ), .Y(\A1[15] ) );
  INVX2M U68 ( .A(\SUMB[1][15] ), .Y(n97) );
  AND2X2M U69 ( .A(\SUMB[3][8] ), .B(\CARRYB[3][7] ), .Y(n33) );
  AND2X2M U70 ( .A(\SUMB[3][13] ), .B(\CARRYB[3][12] ), .Y(n34) );
  AND2X2M U71 ( .A(\SUMB[3][14] ), .B(\CARRYB[3][13] ), .Y(n35) );
  CLKXOR2X2M U72 ( .A(\CARRYB[6][6] ), .B(\SUMB[6][7] ), .Y(\A1[11] ) );
  CLKXOR2X2M U73 ( .A(\CARRYB[6][8] ), .B(\SUMB[6][9] ), .Y(\A1[13] ) );
  AND2X2M U74 ( .A(\CARRYB[6][0] ), .B(\SUMB[6][1] ), .Y(n36) );
  AND2X2M U75 ( .A(\CARRYB[6][3] ), .B(\SUMB[6][4] ), .Y(n37) );
  AND2X2M U76 ( .A(\CARRYB[6][4] ), .B(\SUMB[6][5] ), .Y(n38) );
  AND2X2M U77 ( .A(\CARRYB[6][6] ), .B(\SUMB[6][7] ), .Y(n39) );
  AND2X2M U78 ( .A(\CARRYB[6][8] ), .B(\SUMB[6][9] ), .Y(n40) );
  AND2X2M U79 ( .A(\CARRYB[6][10] ), .B(\SUMB[6][11] ), .Y(n41) );
  AND2X2M U80 ( .A(\CARRYB[6][2] ), .B(\SUMB[6][3] ), .Y(n42) );
  AND2X2M U81 ( .A(\CARRYB[6][1] ), .B(\SUMB[6][2] ), .Y(n43) );
  AND2X2M U82 ( .A(\CARRYB[6][5] ), .B(\SUMB[6][6] ), .Y(n44) );
  AND2X2M U83 ( .A(\CARRYB[6][7] ), .B(\SUMB[6][8] ), .Y(n45) );
  AND2X2M U84 ( .A(\CARRYB[6][11] ), .B(\SUMB[6][12] ), .Y(n46) );
  CLKXOR2X2M U85 ( .A(\CARRYB[3][1] ), .B(\SUMB[3][2] ), .Y(\SUMB[4][1] ) );
  CLKXOR2X2M U86 ( .A(\CARRYB[3][2] ), .B(\SUMB[3][3] ), .Y(\SUMB[4][2] ) );
  CLKXOR2X2M U87 ( .A(\CARRYB[6][12] ), .B(\SUMB[6][13] ), .Y(\A1[17] ) );
  CLKXOR2X2M U88 ( .A(\CARRYB[6][14] ), .B(\SUMB[6][15] ), .Y(\A1[19] ) );
  AND2X2M U89 ( .A(\SUMB[3][15] ), .B(\CARRYB[3][14] ), .Y(n47) );
  AND2X2M U90 ( .A(\SUMB[3][2] ), .B(\CARRYB[3][1] ), .Y(n48) );
  AND2X2M U91 ( .A(\SUMB[3][3] ), .B(\CARRYB[3][2] ), .Y(n49) );
  AND2X2M U92 ( .A(\SUMB[3][5] ), .B(\CARRYB[3][4] ), .Y(n50) );
  AND2X2M U93 ( .A(\SUMB[3][4] ), .B(\CARRYB[3][3] ), .Y(n51) );
  AND2X2M U94 ( .A(\SUMB[3][6] ), .B(\CARRYB[3][5] ), .Y(n52) );
  AND2X2M U95 ( .A(\SUMB[3][7] ), .B(\CARRYB[3][6] ), .Y(n53) );
  AND2X2M U96 ( .A(\SUMB[3][9] ), .B(\CARRYB[3][8] ), .Y(n54) );
  AND2X2M U97 ( .A(\SUMB[3][11] ), .B(\CARRYB[3][10] ), .Y(n55) );
  AND2X2M U98 ( .A(\SUMB[3][10] ), .B(\CARRYB[3][9] ), .Y(n56) );
  AND2X2M U99 ( .A(\SUMB[3][12] ), .B(\CARRYB[3][11] ), .Y(n57) );
  AND2X2M U100 ( .A(\CARRYB[3][0] ), .B(\SUMB[3][1] ), .Y(n58) );
  CLKXOR2X2M U101 ( .A(\CARRYB[6][13] ), .B(\SUMB[6][14] ), .Y(\A1[18] ) );
  INVX2M U102 ( .A(\SUMB[6][0] ), .Y(n99) );
  INVX2M U103 ( .A(n64), .Y(n74) );
  AND2X2M U104 ( .A(\CARRYB[6][12] ), .B(\SUMB[6][13] ), .Y(n59) );
  AND2X2M U105 ( .A(\CARRYB[6][13] ), .B(\SUMB[6][14] ), .Y(n60) );
  XNOR2X2M U106 ( .A(\CARRYB[3][0] ), .B(n68), .Y(\A1[2] ) );
  INVX2M U107 ( .A(\SUMB[3][1] ), .Y(n68) );
  AND2X2M U108 ( .A(\CARRYB[6][14] ), .B(\SUMB[6][15] ), .Y(n61) );
  INVX2M U109 ( .A(n65), .Y(n98) );
  CLKXOR2X2M U110 ( .A(\ab[3][15] ), .B(\ab[6][16] ), .Y(\SUMB[1][15] ) );
  CLKXOR2X2M U111 ( .A(n62), .B(\ab[3][15] ), .Y(\SUMB[3][15] ) );
  XNOR2X2M U112 ( .A(\ab[3][7] ), .B(n90), .Y(\SUMB[2][7] ) );
  XNOR2X2M U113 ( .A(\ab[3][9] ), .B(n92), .Y(\SUMB[2][9] ) );
  XNOR2X2M U114 ( .A(\ab[3][11] ), .B(n94), .Y(\SUMB[2][11] ) );
  XNOR2X2M U115 ( .A(n33), .B(n81), .Y(\SUMB[5][7] ) );
  XNOR2X2M U116 ( .A(n55), .B(n70), .Y(\SUMB[5][10] ) );
  XNOR2X2M U117 ( .A(n57), .B(n71), .Y(\SUMB[5][11] ) );
  INVX2M U118 ( .A(\ab[3][1] ), .Y(n100) );
  XNOR2X2M U119 ( .A(n49), .B(n76), .Y(\SUMB[5][2] ) );
  XNOR2X2M U120 ( .A(n50), .B(n78), .Y(\SUMB[5][4] ) );
  XNOR2X2M U121 ( .A(n51), .B(n77), .Y(\SUMB[5][3] ) );
  XNOR2X2M U122 ( .A(n52), .B(n79), .Y(\SUMB[5][5] ) );
  XNOR2X2M U123 ( .A(n53), .B(n80), .Y(\SUMB[5][6] ) );
  XNOR2X2M U124 ( .A(n54), .B(n82), .Y(\SUMB[5][8] ) );
  XNOR2X2M U125 ( .A(n56), .B(n83), .Y(\SUMB[5][9] ) );
  XNOR2X2M U126 ( .A(n34), .B(n72), .Y(\SUMB[5][12] ) );
  XNOR2X2M U127 ( .A(n35), .B(n73), .Y(\SUMB[5][13] ) );
  XNOR2X2M U128 ( .A(\ab[3][6] ), .B(n89), .Y(\SUMB[2][6] ) );
  XNOR2X2M U129 ( .A(\ab[3][5] ), .B(n88), .Y(\SUMB[2][5] ) );
  XNOR2X2M U130 ( .A(\ab[3][8] ), .B(n91), .Y(\SUMB[2][8] ) );
  XNOR2X2M U131 ( .A(\ab[3][10] ), .B(n93), .Y(\SUMB[2][10] ) );
  XNOR2X2M U132 ( .A(\ab[3][12] ), .B(n95), .Y(\SUMB[2][12] ) );
  XNOR2X2M U133 ( .A(\ab[3][13] ), .B(n96), .Y(\SUMB[2][13] ) );
  XNOR2X2M U134 ( .A(\ab[3][14] ), .B(n97), .Y(\SUMB[2][14] ) );
  XNOR2X2M U135 ( .A(n63), .B(n67), .Y(\SUMB[2][15] ) );
  INVX2M U136 ( .A(\ab[3][15] ), .Y(n67) );
  INVX2M U137 ( .A(\ab[3][7] ), .Y(n89) );
  INVX2M U138 ( .A(\ab[3][6] ), .Y(n88) );
  INVX2M U139 ( .A(\ab[3][8] ), .Y(n90) );
  INVX2M U140 ( .A(\ab[3][9] ), .Y(n91) );
  INVX2M U141 ( .A(\ab[3][10] ), .Y(n92) );
  INVX2M U142 ( .A(\ab[3][11] ), .Y(n93) );
  INVX2M U143 ( .A(\ab[3][13] ), .Y(n95) );
  INVX2M U144 ( .A(\ab[3][12] ), .Y(n94) );
  INVX2M U145 ( .A(\ab[3][14] ), .Y(n96) );
  AND2X2M U146 ( .A(\ab[3][15] ), .B(n63), .Y(n62) );
  AND2X2M U147 ( .A(\ab[6][16] ), .B(\ab[3][15] ), .Y(n63) );
  XNOR2X2M U148 ( .A(\ab[3][4] ), .B(n87), .Y(\SUMB[2][4] ) );
  XNOR2X2M U149 ( .A(\ab[3][2] ), .B(n85), .Y(\SUMB[2][2] ) );
  XNOR2X2M U150 ( .A(n47), .B(n74), .Y(\SUMB[5][14] ) );
  XNOR2X2M U151 ( .A(\ab[3][3] ), .B(n86), .Y(\SUMB[2][3] ) );
  INVX2M U152 ( .A(\ab[3][0] ), .Y(n101) );
  XNOR2X2M U153 ( .A(n48), .B(n75), .Y(\SUMB[5][1] ) );
  INVX2M U154 ( .A(\ab[3][5] ), .Y(n87) );
  INVX2M U155 ( .A(\ab[3][4] ), .Y(n86) );
  INVX2M U156 ( .A(\ab[3][3] ), .Y(n85) );
  AND2X2M U157 ( .A(\ab[3][15] ), .B(n62), .Y(n64) );
  CLKXOR2X2M U158 ( .A(n67), .B(\ab[6][16] ), .Y(\SUMB[6][15] ) );
  XNOR2X2M U159 ( .A(\ab[3][1] ), .B(n84), .Y(\SUMB[2][1] ) );
  XNOR2X2M U160 ( .A(\ab[3][0] ), .B(n100), .Y(\A1[0] ) );
  INVX2M U161 ( .A(\ab[3][2] ), .Y(n84) );
  BUFX2M U162 ( .A(\ab[3][0] ), .Y(PRODUCT[1]) );
  AND2X2M U163 ( .A(\ab[6][16] ), .B(n67), .Y(n65) );
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
  INVX2M U3 ( .A(n65), .Y(n7) );
  AOI2B1X1M U4 ( .A1N(n16), .A0(n13), .B0(n15), .Y(n10) );
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
  wire   \ab[4][15] , \ab[4][14] , \ab[4][13] , \ab[4][12] , \ab[4][11] ,
         \ab[4][10] , \ab[4][9] , \ab[4][8] , \ab[4][7] , \ab[4][6] ,
         \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] , \ab[4][1] ,
         \ab[4][0] , \ab[2][16] , \CARRYB[4][14] , \CARRYB[4][12] ,
         \CARRYB[4][11] , \CARRYB[4][10] , \CARRYB[4][9] , \CARRYB[4][8] ,
         \CARRYB[4][7] , \CARRYB[4][6] , \CARRYB[4][5] , \CARRYB[4][4] ,
         \CARRYB[4][3] , \CARRYB[4][2] , \CARRYB[4][1] , \CARRYB[4][0] ,
         \SUMB[5][14] , \SUMB[5][13] , \SUMB[5][12] , \SUMB[5][11] ,
         \SUMB[5][10] , \SUMB[5][9] , \SUMB[5][8] , \SUMB[5][7] , \SUMB[5][6] ,
         \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] ,
         \SUMB[5][0] , \SUMB[4][15] , \SUMB[4][14] , \SUMB[4][13] ,
         \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] , \SUMB[4][9] ,
         \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][15] ,
         \SUMB[3][14] , \SUMB[3][12] , \SUMB[3][11] , \SUMB[3][10] ,
         \SUMB[3][9] , \SUMB[3][8] , \SUMB[3][7] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \A1[20] ,
         \A1[18] , \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] ,
         \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] ,
         \A1[4] , \A1[2] , \A1[1] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66;
  assign \ab[4][15]  = B[15];
  assign \ab[4][14]  = B[14];
  assign \ab[4][13]  = B[13];
  assign \ab[4][12]  = B[12];
  assign \ab[4][11]  = B[11];
  assign \ab[4][10]  = B[10];
  assign \ab[4][9]  = B[9];
  assign \ab[4][8]  = B[8];
  assign \ab[4][7]  = B[7];
  assign \ab[4][6]  = B[6];
  assign \ab[4][5]  = B[5];
  assign \ab[4][4]  = B[4];
  assign \ab[4][3]  = B[3];
  assign \ab[4][2]  = B[2];
  assign \ab[4][1]  = B[1];
  assign \ab[4][0]  = B[0];
  assign \ab[2][16]  = B[16];

  hfb_1_1_DW01_add_10 FS_1 ( .A({\A1[20] , \ab[2][16] , \A1[18] , \A1[17] , 
        \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , 
        \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \SUMB[5][0] , 
        \A1[2] , \A1[1] , \ab[4][2] }), .B({1'b0, n45, n30, n25, n29, \A2[15] , 
        n28, n24, n27, n23, n19, n22, n18, n21, n26, n20, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[22:2]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(n17), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_14 ( .A(\ab[4][14] ), .B(n3), .CI(\SUMB[3][15] ), .CO(
        \CARRYB[4][14] ), .S(\SUMB[4][14] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(n13), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(n12), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S14_16_0 ( .A(\ab[2][16] ), .B(n16), .CI(\SUMB[5][11] ), .CO(
        \A2[15] ), .S(\A1[14] ) );
  ADDFX2M S2_4_11 ( .A(\ab[4][11] ), .B(n4), .CI(\SUMB[3][12] ), .CO(
        \CARRYB[4][11] ), .S(\SUMB[4][11] ) );
  ADDFX2M S2_4_12 ( .A(\ab[4][12] ), .B(n15), .CI(\ab[4][13] ), .CO(
        \CARRYB[4][12] ), .S(\SUMB[4][12] ) );
  ADDFX2M S2_4_10 ( .A(\ab[4][10] ), .B(n14), .CI(\SUMB[3][11] ), .CO(
        \CARRYB[4][10] ), .S(\SUMB[4][10] ) );
  ADDFX2M S2_4_9 ( .A(\ab[4][9] ), .B(n11), .CI(\SUMB[3][10] ), .CO(
        \CARRYB[4][9] ), .S(\SUMB[4][9] ) );
  ADDFX2M S2_4_7 ( .A(\ab[4][7] ), .B(n10), .CI(\SUMB[3][8] ), .CO(
        \CARRYB[4][7] ), .S(\SUMB[4][7] ) );
  ADDFX2M S2_4_8 ( .A(\ab[4][8] ), .B(n9), .CI(\SUMB[3][9] ), .CO(
        \CARRYB[4][8] ), .S(\SUMB[4][8] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(n8), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(n7), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_6 ( .A(\ab[4][6] ), .B(n6), .CI(\SUMB[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(n5), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  AND2X2M U2 ( .A(\ab[2][16] ), .B(\ab[4][14] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[4][14] ), .B(\ab[4][11] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[4][7] ), .B(\ab[4][4] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[4][9] ), .B(\ab[4][6] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[4][6] ), .B(\ab[4][3] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[4][8] ), .B(\ab[4][5] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[4][11] ), .B(\ab[4][8] ), .Y(n9) );
  AND2X2M U9 ( .A(\ab[4][10] ), .B(\ab[4][7] ), .Y(n10) );
  AND2X2M U10 ( .A(\ab[4][12] ), .B(\ab[4][9] ), .Y(n11) );
  AND2X2M U11 ( .A(\ab[4][5] ), .B(\ab[4][2] ), .Y(n12) );
  AND2X2M U12 ( .A(\ab[4][4] ), .B(\ab[4][1] ), .Y(n13) );
  AND2X2M U13 ( .A(\ab[4][13] ), .B(\ab[4][10] ), .Y(n14) );
  AND2X2M U14 ( .A(\ab[4][15] ), .B(\ab[4][12] ), .Y(n15) );
  AND2X2M U15 ( .A(\SUMB[4][11] ), .B(\CARRYB[4][10] ), .Y(n16) );
  AND2X2M U16 ( .A(\ab[4][0] ), .B(\ab[4][3] ), .Y(n17) );
  CLKXOR2X2M U17 ( .A(n36), .B(\SUMB[5][2] ), .Y(\A1[5] ) );
  CLKXOR2X2M U18 ( .A(n38), .B(\SUMB[5][4] ), .Y(\A1[7] ) );
  CLKXOR2X2M U19 ( .A(n39), .B(\SUMB[5][6] ), .Y(\A1[9] ) );
  CLKXOR2X2M U20 ( .A(n40), .B(\SUMB[5][8] ), .Y(\A1[11] ) );
  CLKXOR2X2M U21 ( .A(n42), .B(\SUMB[5][10] ), .Y(\A1[13] ) );
  CLKXOR2X2M U22 ( .A(n43), .B(\SUMB[5][12] ), .Y(\A1[15] ) );
  CLKXOR2X2M U23 ( .A(n37), .B(\SUMB[5][3] ), .Y(\A1[6] ) );
  CLKXOR2X2M U24 ( .A(n31), .B(\SUMB[5][5] ), .Y(\A1[8] ) );
  CLKXOR2X2M U25 ( .A(n32), .B(\SUMB[5][7] ), .Y(\A1[10] ) );
  CLKXOR2X2M U26 ( .A(n41), .B(\SUMB[5][9] ), .Y(\A1[12] ) );
  AND2X2M U27 ( .A(n38), .B(\SUMB[5][4] ), .Y(n18) );
  AND2X2M U28 ( .A(n39), .B(\SUMB[5][6] ), .Y(n19) );
  CLKXOR2X2M U29 ( .A(n35), .B(\SUMB[5][1] ), .Y(\A1[4] ) );
  CLKXOR2X2M U30 ( .A(n44), .B(\SUMB[5][14] ), .Y(\A1[17] ) );
  CLKXOR2X2M U31 ( .A(n33), .B(\SUMB[5][13] ), .Y(\A1[16] ) );
  AND2X2M U32 ( .A(n35), .B(\SUMB[5][1] ), .Y(n20) );
  AND2X2M U33 ( .A(n37), .B(\SUMB[5][3] ), .Y(n21) );
  AND2X2M U34 ( .A(n31), .B(\SUMB[5][5] ), .Y(n22) );
  AND2X2M U35 ( .A(n32), .B(\SUMB[5][7] ), .Y(n23) );
  AND2X2M U36 ( .A(n41), .B(\SUMB[5][9] ), .Y(n24) );
  AND2X2M U37 ( .A(n33), .B(\SUMB[5][13] ), .Y(n25) );
  AND2X2M U38 ( .A(n36), .B(\SUMB[5][2] ), .Y(n26) );
  AND2X2M U39 ( .A(n40), .B(\SUMB[5][8] ), .Y(n27) );
  AND2X2M U40 ( .A(n42), .B(\SUMB[5][10] ), .Y(n28) );
  AND2X2M U41 ( .A(n43), .B(\SUMB[5][12] ), .Y(n29) );
  AND2X2M U42 ( .A(n44), .B(\SUMB[5][14] ), .Y(n30) );
  CLKXOR2X2M U43 ( .A(\CARRYB[4][3] ), .B(\SUMB[4][4] ), .Y(\SUMB[5][3] ) );
  CLKXOR2X2M U44 ( .A(\CARRYB[4][2] ), .B(\SUMB[4][3] ), .Y(\SUMB[5][2] ) );
  CLKXOR2X2M U45 ( .A(\CARRYB[4][4] ), .B(\SUMB[4][5] ), .Y(\SUMB[5][4] ) );
  CLKXOR2X2M U46 ( .A(\CARRYB[4][6] ), .B(\SUMB[4][7] ), .Y(\SUMB[5][6] ) );
  CLKXOR2X2M U47 ( .A(\CARRYB[4][5] ), .B(\SUMB[4][6] ), .Y(\SUMB[5][5] ) );
  CLKXOR2X2M U48 ( .A(\CARRYB[4][8] ), .B(\SUMB[4][9] ), .Y(\SUMB[5][8] ) );
  CLKXOR2X2M U49 ( .A(\CARRYB[4][7] ), .B(\SUMB[4][8] ), .Y(\SUMB[5][7] ) );
  CLKXOR2X2M U50 ( .A(\CARRYB[4][9] ), .B(\SUMB[4][10] ), .Y(\SUMB[5][9] ) );
  CLKXOR2X2M U51 ( .A(\CARRYB[4][10] ), .B(\SUMB[4][11] ), .Y(\SUMB[5][10] )
         );
  CLKXOR2X2M U52 ( .A(\CARRYB[4][12] ), .B(\SUMB[4][13] ), .Y(\SUMB[5][12] )
         );
  AND2X2M U53 ( .A(\SUMB[4][5] ), .B(\CARRYB[4][4] ), .Y(n31) );
  AND2X2M U54 ( .A(\SUMB[4][7] ), .B(\CARRYB[4][6] ), .Y(n32) );
  INVX2M U55 ( .A(\SUMB[4][12] ), .Y(n52) );
  CLKXOR2X2M U56 ( .A(\CARRYB[4][1] ), .B(\SUMB[4][2] ), .Y(\SUMB[5][1] ) );
  CLKXOR2X2M U57 ( .A(n47), .B(\SUMB[4][14] ), .Y(\SUMB[5][13] ) );
  CLKXOR2X2M U58 ( .A(\CARRYB[4][14] ), .B(\SUMB[4][15] ), .Y(\SUMB[5][14] )
         );
  CLKXOR2X2M U59 ( .A(n34), .B(n48), .Y(\A1[18] ) );
  XNOR2X2M U60 ( .A(\CARRYB[4][0] ), .B(n51), .Y(\SUMB[5][0] ) );
  AND2X2M U61 ( .A(\SUMB[4][13] ), .B(\CARRYB[4][12] ), .Y(n33) );
  AND2X2M U62 ( .A(\SUMB[4][15] ), .B(\CARRYB[4][14] ), .Y(n34) );
  AND2X2M U63 ( .A(\SUMB[4][1] ), .B(\CARRYB[4][0] ), .Y(n35) );
  AND2X2M U64 ( .A(\SUMB[4][2] ), .B(\CARRYB[4][1] ), .Y(n36) );
  AND2X2M U65 ( .A(\SUMB[4][3] ), .B(\CARRYB[4][2] ), .Y(n37) );
  AND2X2M U66 ( .A(\SUMB[4][4] ), .B(\CARRYB[4][3] ), .Y(n38) );
  AND2X2M U67 ( .A(\SUMB[4][6] ), .B(\CARRYB[4][5] ), .Y(n39) );
  AND2X2M U68 ( .A(\SUMB[4][8] ), .B(\CARRYB[4][7] ), .Y(n40) );
  AND2X2M U69 ( .A(\SUMB[4][9] ), .B(\CARRYB[4][8] ), .Y(n41) );
  AND2X2M U70 ( .A(\SUMB[4][10] ), .B(\CARRYB[4][9] ), .Y(n42) );
  AND2X2M U71 ( .A(\SUMB[4][12] ), .B(\CARRYB[4][11] ), .Y(n43) );
  AND2X2M U72 ( .A(\SUMB[4][14] ), .B(n47), .Y(n44) );
  INVX2M U73 ( .A(\SUMB[4][1] ), .Y(n51) );
  AND2X2M U74 ( .A(n34), .B(n48), .Y(n45) );
  CLKXOR2X2M U75 ( .A(\ab[4][14] ), .B(\ab[2][16] ), .Y(\SUMB[3][14] ) );
  CLKXOR2X2M U76 ( .A(\ab[4][13] ), .B(\SUMB[3][14] ), .Y(\SUMB[4][13] ) );
  XNOR2X2M U77 ( .A(\ab[4][5] ), .B(n58), .Y(\SUMB[3][5] ) );
  XNOR2X2M U78 ( .A(\ab[4][7] ), .B(n60), .Y(\SUMB[3][7] ) );
  XNOR2X2M U79 ( .A(\ab[4][4] ), .B(n57), .Y(\SUMB[3][4] ) );
  XNOR2X2M U80 ( .A(\ab[4][6] ), .B(n59), .Y(\SUMB[3][6] ) );
  XNOR2X2M U81 ( .A(\ab[4][9] ), .B(n62), .Y(\SUMB[3][9] ) );
  XNOR2X2M U82 ( .A(\ab[4][8] ), .B(n61), .Y(\SUMB[3][8] ) );
  XNOR2X2M U83 ( .A(\ab[4][10] ), .B(n63), .Y(\SUMB[3][10] ) );
  XNOR2X2M U84 ( .A(\ab[4][11] ), .B(n64), .Y(\SUMB[3][11] ) );
  XNOR2X2M U85 ( .A(\ab[4][12] ), .B(n65), .Y(\SUMB[3][12] ) );
  XNOR2X2M U86 ( .A(\CARRYB[4][11] ), .B(n52), .Y(\SUMB[5][11] ) );
  INVX2M U87 ( .A(\ab[4][15] ), .Y(n65) );
  INVX2M U88 ( .A(\ab[4][7] ), .Y(n57) );
  INVX2M U89 ( .A(\ab[4][8] ), .Y(n58) );
  INVX2M U90 ( .A(\ab[4][10] ), .Y(n60) );
  INVX2M U91 ( .A(\ab[4][9] ), .Y(n59) );
  INVX2M U92 ( .A(\ab[4][12] ), .Y(n62) );
  INVX2M U93 ( .A(\ab[4][11] ), .Y(n61) );
  INVX2M U94 ( .A(\ab[4][14] ), .Y(n64) );
  INVX2M U95 ( .A(\ab[4][13] ), .Y(n63) );
  CLKXOR2X2M U96 ( .A(n46), .B(\ab[4][15] ), .Y(\SUMB[4][15] ) );
  XNOR2X2M U97 ( .A(\ab[4][3] ), .B(n56), .Y(\SUMB[3][3] ) );
  XNOR2X2M U98 ( .A(\ab[4][2] ), .B(n55), .Y(\SUMB[3][2] ) );
  XNOR2X2M U99 ( .A(\ab[4][15] ), .B(n66), .Y(\SUMB[3][15] ) );
  XNOR2X2M U100 ( .A(\ab[4][1] ), .B(n54), .Y(\SUMB[3][1] ) );
  INVX2M U101 ( .A(\ab[2][16] ), .Y(n66) );
  INVX2M U102 ( .A(\ab[4][5] ), .Y(n55) );
  INVX2M U103 ( .A(\ab[4][6] ), .Y(n56) );
  INVX2M U104 ( .A(\ab[4][4] ), .Y(n54) );
  AND2X2M U105 ( .A(\ab[2][16] ), .B(\ab[4][15] ), .Y(n46) );
  AND2X2M U106 ( .A(\SUMB[3][14] ), .B(\ab[4][13] ), .Y(n47) );
  XNOR2X2M U107 ( .A(\ab[4][0] ), .B(n53), .Y(\A1[1] ) );
  INVX2M U108 ( .A(\ab[4][3] ), .Y(n53) );
  AND2X2M U109 ( .A(\ab[4][15] ), .B(n46), .Y(n48) );
  BUFX2M U110 ( .A(\ab[4][1] ), .Y(PRODUCT[1]) );
  BUFX2M U111 ( .A(\ab[4][0] ), .Y(PRODUCT[0]) );
  CLKINVX1M U114 ( .A(n66), .Y(\A1[20] ) );
endmodule


module hfb_1_1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74;

  INVX2M U2 ( .A(n21), .Y(n8) );
  INVX2M U3 ( .A(n69), .Y(n6) );
  INVX2M U4 ( .A(n28), .Y(n9) );
  INVX2M U5 ( .A(n49), .Y(n5) );
  INVX2M U6 ( .A(n66), .Y(n7) );
  AOI21BX2M U7 ( .A0(n15), .A1(n14), .B0N(n16), .Y(n10) );
  INVX2M U8 ( .A(n55), .Y(n4) );
  XNOR2X2M U9 ( .A(B[19]), .B(n33), .Y(SUM[19]) );
  BUFX2M U10 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U11 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U12 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2X1M U13 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n7), .B(n12), .Y(n11) );
  XNOR2X1M U15 ( .A(n13), .B(n14), .Y(SUM[8]) );
  CLKNAND2X2M U16 ( .A(n15), .B(n16), .Y(n13) );
  CLKXOR2X2M U17 ( .A(n17), .B(n18), .Y(SUM[7]) );
  NOR2BX1M U18 ( .AN(n19), .B(n20), .Y(n18) );
  OAI21X1M U19 ( .A0(n21), .A1(n22), .B0(n23), .Y(n17) );
  CLKXOR2X2M U20 ( .A(n24), .B(n22), .Y(SUM[6]) );
  AOI2B1X1M U21 ( .A1N(n25), .A0(n26), .B0(n9), .Y(n22) );
  CLKNAND2X2M U22 ( .A(n8), .B(n23), .Y(n24) );
  CLKXOR2X2M U23 ( .A(n26), .B(n27), .Y(SUM[5]) );
  NOR2X1M U24 ( .A(n9), .B(n25), .Y(n27) );
  OAI21X1M U25 ( .A0(n29), .A1(n30), .B0(n31), .Y(n26) );
  CLKXOR2X2M U26 ( .A(n30), .B(n32), .Y(SUM[4]) );
  NAND2BX1M U27 ( .AN(n29), .B(n31), .Y(n32) );
  OA21X1M U28 ( .A0(B[3]), .A1(A[3]), .B0(n30), .Y(SUM[3]) );
  OAI2BB1X1M U29 ( .A0N(n34), .A1N(A[18]), .B0(n35), .Y(n33) );
  OAI21X1M U30 ( .A0(A[18]), .A1(n34), .B0(B[18]), .Y(n35) );
  XOR3XLM U31 ( .A(B[18]), .B(A[18]), .C(n34), .Y(SUM[18]) );
  AO22X1M U32 ( .A0(n36), .A1(A[17]), .B0(n37), .B1(B[17]), .Y(n34) );
  OR2X1M U33 ( .A(A[17]), .B(n36), .Y(n37) );
  XOR3XLM U34 ( .A(B[17]), .B(A[17]), .C(n36), .Y(SUM[17]) );
  OAI21X1M U35 ( .A0(n38), .A1(n39), .B0(n40), .Y(n36) );
  CLKXOR2X2M U36 ( .A(n41), .B(n39), .Y(SUM[16]) );
  AOI2BB1X1M U37 ( .A0N(n42), .A1N(n43), .B0(n44), .Y(n39) );
  AOI21BX1M U38 ( .A0(n45), .A1(n4), .B0N(n46), .Y(n43) );
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
  AOI2B1X1M U50 ( .A1N(n47), .A0(n58), .B0(n5), .Y(n56) );
  CLKNAND2X2M U51 ( .A(n4), .B(n46), .Y(n57) );
  CLKNAND2X2M U52 ( .A(B[14]), .B(A[14]), .Y(n46) );
  NOR2X1M U53 ( .A(B[14]), .B(A[14]), .Y(n55) );
  CLKXOR2X2M U54 ( .A(n58), .B(n59), .Y(SUM[13]) );
  NOR2X1M U55 ( .A(n5), .B(n47), .Y(n59) );
  NOR2X1M U56 ( .A(B[13]), .B(A[13]), .Y(n47) );
  CLKNAND2X2M U57 ( .A(B[13]), .B(A[13]), .Y(n49) );
  OAI21X1M U58 ( .A0(n51), .A1(n50), .B0(n52), .Y(n58) );
  CLKXOR2X2M U59 ( .A(n60), .B(n50), .Y(SUM[12]) );
  OA21X1M U60 ( .A0(n61), .A1(n62), .B0(n63), .Y(n50) );
  AOI21BX1M U61 ( .A0(n64), .A1(n6), .B0N(n65), .Y(n62) );
  OAI21X1M U62 ( .A0(n12), .A1(n10), .B0(n66), .Y(n64) );
  NAND2BX1M U63 ( .AN(n51), .B(n52), .Y(n60) );
  CLKNAND2X2M U64 ( .A(B[12]), .B(A[12]), .Y(n52) );
  NOR2X1M U65 ( .A(B[12]), .B(A[12]), .Y(n51) );
  CLKXOR2X2M U66 ( .A(n67), .B(n68), .Y(SUM[11]) );
  NOR2BX1M U67 ( .AN(n63), .B(n61), .Y(n68) );
  NOR2X1M U68 ( .A(B[11]), .B(A[11]), .Y(n61) );
  CLKNAND2X2M U69 ( .A(B[11]), .B(A[11]), .Y(n63) );
  OAI21X1M U70 ( .A0(n69), .A1(n70), .B0(n65), .Y(n67) );
  CLKXOR2X2M U71 ( .A(n71), .B(n70), .Y(SUM[10]) );
  AOI2BB1X1M U72 ( .A0N(n10), .A1N(n12), .B0(n7), .Y(n70) );
  CLKNAND2X2M U73 ( .A(B[9]), .B(A[9]), .Y(n66) );
  NOR2X1M U74 ( .A(B[9]), .B(A[9]), .Y(n12) );
  CLKNAND2X2M U75 ( .A(B[8]), .B(A[8]), .Y(n16) );
  OAI21X1M U76 ( .A0(n20), .A1(n72), .B0(n19), .Y(n14) );
  CLKNAND2X2M U77 ( .A(B[7]), .B(A[7]), .Y(n19) );
  AOI21BX1M U78 ( .A0(n73), .A1(n8), .B0N(n23), .Y(n72) );
  CLKNAND2X2M U79 ( .A(B[6]), .B(A[6]), .Y(n23) );
  NOR2X1M U80 ( .A(B[6]), .B(A[6]), .Y(n21) );
  OAI21X1M U81 ( .A0(n25), .A1(n74), .B0(n28), .Y(n73) );
  CLKNAND2X2M U82 ( .A(B[5]), .B(A[5]), .Y(n28) );
  OA21X1M U83 ( .A0(n30), .A1(n29), .B0(n31), .Y(n74) );
  CLKNAND2X2M U84 ( .A(B[4]), .B(A[4]), .Y(n31) );
  NOR2X1M U85 ( .A(B[4]), .B(A[4]), .Y(n29) );
  CLKNAND2X2M U86 ( .A(B[3]), .B(A[3]), .Y(n30) );
  NOR2X1M U87 ( .A(B[5]), .B(A[5]), .Y(n25) );
  NOR2X1M U88 ( .A(B[7]), .B(A[7]), .Y(n20) );
  OR2X1M U89 ( .A(B[8]), .B(A[8]), .Y(n15) );
  CLKNAND2X2M U90 ( .A(n6), .B(n65), .Y(n71) );
  CLKNAND2X2M U91 ( .A(B[10]), .B(A[10]), .Y(n65) );
  NOR2X1M U92 ( .A(B[10]), .B(A[10]), .Y(n69) );
endmodule


module hfb_1_1_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [4:0] A;
  input [16:0] B;
  output [21:0] PRODUCT;
  input TC;
  wire   \ab[4][16] , \ab[1][15] , \ab[1][14] , \ab[1][13] , \ab[1][12] ,
         \ab[1][11] , \ab[1][10] , \ab[1][9] , \ab[1][8] , \ab[1][7] ,
         \ab[1][6] , \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] ,
         \ab[1][1] , \ab[1][0] , \SUMB[4][15] , \SUMB[4][14] , \SUMB[4][13] ,
         \SUMB[4][12] , \SUMB[4][11] , \SUMB[4][10] , \SUMB[4][9] ,
         \SUMB[4][8] , \SUMB[4][7] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[4][0] , \SUMB[1][15] ,
         \A1[17] , \A1[16] , \A1[15] , \A1[14] , \A1[13] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] ,
         \A1[3] , \A2[15] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  assign \ab[4][16]  = B[16];
  assign \ab[1][15]  = B[15];
  assign \ab[1][14]  = B[14];
  assign \ab[1][13]  = B[13];
  assign \ab[1][12]  = B[12];
  assign \ab[1][11]  = B[11];
  assign \ab[1][10]  = B[10];
  assign \ab[1][9]  = B[9];
  assign \ab[1][8]  = B[8];
  assign \ab[1][7]  = B[7];
  assign \ab[1][6]  = B[6];
  assign \ab[1][5]  = B[5];
  assign \ab[1][4]  = B[4];
  assign \ab[1][3]  = B[3];
  assign \ab[1][2]  = B[2];
  assign \ab[1][1]  = B[1];
  assign \ab[1][0]  = B[0];

  hfb_1_1_DW01_add_9 FS_1 ( .A({1'b1, n36, \A1[17] , \A1[16] , \A1[15] , 
        \A1[14] , \A1[13] , \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] , 
        \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , n50, \ab[1][2] , 
        \ab[1][1] }), .B({n33, n19, n18, n4, \A2[15] , n15, n14, n16, n13, n12, 
        n11, n17, n10, n7, n9, n8, \SUMB[4][0] , 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[21:2]) );
  ADDFX2M S14_16_0 ( .A(\ab[4][16] ), .B(n3), .CI(\SUMB[4][12] ), .CO(\A2[15] ), .S(\A1[14] ) );
  AND2X2M U2 ( .A(\ab[1][14] ), .B(n41), .Y(n3) );
  CLKXOR2X2M U3 ( .A(n5), .B(\SUMB[4][13] ), .Y(\A1[15] ) );
  AND2X2M U4 ( .A(n5), .B(\SUMB[4][13] ), .Y(n4) );
  CLKXOR2X2M U5 ( .A(n39), .B(n20), .Y(\SUMB[4][13] ) );
  AND2X2M U6 ( .A(\SUMB[1][15] ), .B(n40), .Y(n5) );
  INVX2M U7 ( .A(\SUMB[1][15] ), .Y(n35) );
  CLKXOR2X2M U8 ( .A(n21), .B(\SUMB[4][15] ), .Y(\A1[17] ) );
  CLKXOR2X2M U9 ( .A(n24), .B(\SUMB[4][4] ), .Y(\A1[6] ) );
  CLKXOR2X2M U10 ( .A(n25), .B(\SUMB[4][2] ), .Y(\A1[4] ) );
  CLKXOR2X2M U11 ( .A(n27), .B(\SUMB[4][5] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(n28), .B(\SUMB[4][7] ), .Y(\A1[9] ) );
  CLKXOR2X2M U13 ( .A(n29), .B(\SUMB[4][8] ), .Y(\A1[10] ) );
  CLKXOR2X2M U14 ( .A(n30), .B(\SUMB[4][9] ), .Y(\A1[11] ) );
  CLKXOR2X2M U15 ( .A(n32), .B(\SUMB[4][11] ), .Y(\A1[13] ) );
  CLKXOR2X2M U16 ( .A(n6), .B(\SUMB[4][14] ), .Y(\A1[16] ) );
  CLKXOR2X2M U17 ( .A(n26), .B(\SUMB[4][6] ), .Y(\A1[8] ) );
  INVX2M U18 ( .A(\SUMB[4][0] ), .Y(n50) );
  CLKXOR2X2M U19 ( .A(n23), .B(\SUMB[4][1] ), .Y(\A1[3] ) );
  CLKXOR2X2M U20 ( .A(n22), .B(\SUMB[4][3] ), .Y(\A1[5] ) );
  CLKXOR2X2M U21 ( .A(n31), .B(\SUMB[4][10] ), .Y(\A1[12] ) );
  AND2X2M U22 ( .A(n20), .B(n39), .Y(n6) );
  AND2X2M U23 ( .A(n22), .B(\SUMB[4][3] ), .Y(n7) );
  AND2X2M U24 ( .A(n23), .B(\SUMB[4][1] ), .Y(n8) );
  AND2X2M U25 ( .A(n25), .B(\SUMB[4][2] ), .Y(n9) );
  AND2X2M U26 ( .A(n24), .B(\SUMB[4][4] ), .Y(n10) );
  AND2X2M U27 ( .A(n26), .B(\SUMB[4][6] ), .Y(n11) );
  AND2X2M U28 ( .A(n28), .B(\SUMB[4][7] ), .Y(n12) );
  AND2X2M U29 ( .A(n29), .B(\SUMB[4][8] ), .Y(n13) );
  AND2X2M U30 ( .A(n31), .B(\SUMB[4][10] ), .Y(n14) );
  AND2X2M U31 ( .A(n32), .B(\SUMB[4][11] ), .Y(n15) );
  AND2X2M U32 ( .A(n30), .B(\SUMB[4][9] ), .Y(n16) );
  AND2X2M U33 ( .A(n27), .B(\SUMB[4][5] ), .Y(n17) );
  AND2X2M U34 ( .A(n6), .B(\SUMB[4][14] ), .Y(n18) );
  AND2X2M U35 ( .A(n21), .B(\SUMB[4][15] ), .Y(n19) );
  INVX2M U36 ( .A(n33), .Y(n36) );
  CLKXOR2X2M U37 ( .A(\ab[1][15] ), .B(\ab[4][16] ), .Y(\SUMB[1][15] ) );
  XNOR2X2M U38 ( .A(n40), .B(n35), .Y(\SUMB[4][12] ) );
  AND2X2M U39 ( .A(\ab[4][16] ), .B(\ab[1][15] ), .Y(n20) );
  CLKXOR2X2M U40 ( .A(n48), .B(\ab[1][7] ), .Y(\SUMB[4][4] ) );
  CLKXOR2X2M U41 ( .A(n51), .B(\ab[1][5] ), .Y(\SUMB[4][2] ) );
  CLKXOR2X2M U42 ( .A(n47), .B(\ab[1][8] ), .Y(\SUMB[4][5] ) );
  CLKXOR2X2M U43 ( .A(n45), .B(\ab[1][10] ), .Y(\SUMB[4][7] ) );
  CLKXOR2X2M U44 ( .A(n46), .B(\ab[1][9] ), .Y(\SUMB[4][6] ) );
  CLKXOR2X2M U45 ( .A(n43), .B(\ab[1][12] ), .Y(\SUMB[4][9] ) );
  CLKXOR2X2M U46 ( .A(n41), .B(\ab[1][14] ), .Y(\SUMB[4][11] ) );
  CLKXOR2X2M U47 ( .A(n38), .B(\ab[4][16] ), .Y(\SUMB[4][14] ) );
  CLKXOR2X2M U48 ( .A(n37), .B(\ab[4][16] ), .Y(\SUMB[4][15] ) );
  CLKXOR2X2M U49 ( .A(n53), .B(\ab[1][3] ), .Y(\SUMB[4][0] ) );
  INVX2M U50 ( .A(\ab[1][4] ), .Y(n48) );
  INVX2M U51 ( .A(\ab[1][7] ), .Y(n45) );
  INVX2M U52 ( .A(\ab[1][6] ), .Y(n46) );
  INVX2M U53 ( .A(\ab[1][8] ), .Y(n44) );
  INVX2M U54 ( .A(\ab[1][9] ), .Y(n43) );
  INVX2M U55 ( .A(\ab[1][11] ), .Y(n41) );
  INVX2M U56 ( .A(\ab[1][13] ), .Y(n39) );
  INVX2M U57 ( .A(\ab[1][12] ), .Y(n40) );
  INVX2M U58 ( .A(\ab[1][14] ), .Y(n38) );
  INVX2M U59 ( .A(\ab[1][15] ), .Y(n37) );
  AND2X2M U60 ( .A(\ab[4][16] ), .B(n38), .Y(n21) );
  CLKXOR2X2M U61 ( .A(n49), .B(\ab[1][6] ), .Y(\SUMB[4][3] ) );
  CLKXOR2X2M U62 ( .A(n52), .B(\ab[1][4] ), .Y(\SUMB[4][1] ) );
  CLKXOR2X2M U63 ( .A(n44), .B(\ab[1][11] ), .Y(\SUMB[4][8] ) );
  CLKXOR2X2M U64 ( .A(n42), .B(\ab[1][13] ), .Y(\SUMB[4][10] ) );
  AND2X2M U65 ( .A(\ab[1][5] ), .B(n51), .Y(n22) );
  AND2X2M U66 ( .A(\ab[1][3] ), .B(n53), .Y(n23) );
  AND2X2M U67 ( .A(\ab[1][6] ), .B(n49), .Y(n24) );
  AND2X2M U68 ( .A(\ab[1][4] ), .B(n52), .Y(n25) );
  AND2X2M U69 ( .A(\ab[1][8] ), .B(n47), .Y(n26) );
  AND2X2M U70 ( .A(\ab[1][7] ), .B(n48), .Y(n27) );
  AND2X2M U71 ( .A(\ab[1][9] ), .B(n46), .Y(n28) );
  AND2X2M U72 ( .A(\ab[1][10] ), .B(n45), .Y(n29) );
  AND2X2M U73 ( .A(\ab[1][11] ), .B(n44), .Y(n30) );
  AND2X2M U74 ( .A(\ab[1][12] ), .B(n43), .Y(n31) );
  AND2X2M U75 ( .A(\ab[1][13] ), .B(n42), .Y(n32) );
  INVX2M U76 ( .A(\ab[1][0] ), .Y(n53) );
  INVX2M U77 ( .A(\ab[1][3] ), .Y(n49) );
  INVX2M U78 ( .A(\ab[1][5] ), .Y(n47) );
  INVX2M U79 ( .A(\ab[1][10] ), .Y(n42) );
  AND2X2M U80 ( .A(\ab[4][16] ), .B(n37), .Y(n33) );
  INVX2M U81 ( .A(\ab[1][2] ), .Y(n51) );
  INVX2M U82 ( .A(\ab[1][1] ), .Y(n52) );
  BUFX2M U83 ( .A(\ab[1][0] ), .Y(PRODUCT[1]) );
endmodule


module hfb_1_1_DW01_add_8 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:1] carry;

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


module hfb_1_1_DW01_add_7 ( A, B, CI, SUM, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [20:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(carry[4]), .S(SUM[3]) );
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
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3XLM U1_20 ( .A(A[20]), .B(B[20]), .C(carry[20]), .Y(SUM[20]) );
  AND2X2M U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XNOR2X2M U2 ( .A(B[2]), .B(n4), .Y(SUM[2]) );
  INVX2M U3 ( .A(A[2]), .Y(n4) );
  BUFX2M U4 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U5 ( .A(A[1]), .Y(SUM[1]) );
endmodule


module hfb_1_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [25:0] carry;

  ADDFX2M U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n21), .CI(n22), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2M U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFX2M U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFX2M U2_12 ( .A(A[12]), .B(n10), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFX2M U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2M U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_11 ( .A(A[11]), .B(n11), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFX2M U2_8 ( .A(A[8]), .B(n14), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2M U2_15 ( .A(A[15]), .B(n7), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFX2M U2_4 ( .A(A[4]), .B(n18), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n17), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3XLM U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFX2M U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFX2M U2_19 ( .A(A[19]), .B(n3), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFX2M U2_17 ( .A(A[17]), .B(n5), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFX2M U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFX2M U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFX2M U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFX2M U2_18 ( .A(A[18]), .B(n4), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  INVX2M U1 ( .A(B[18]), .Y(n4) );
  INVX2M U2 ( .A(B[16]), .Y(n6) );
  INVX2M U3 ( .A(B[17]), .Y(n5) );
  INVX2M U4 ( .A(B[19]), .Y(n3) );
  INVX2M U5 ( .A(B[5]), .Y(n17) );
  INVX2M U6 ( .A(B[4]), .Y(n18) );
  INVX2M U7 ( .A(B[15]), .Y(n7) );
  INVX2M U8 ( .A(B[8]), .Y(n14) );
  INVX2M U9 ( .A(B[11]), .Y(n11) );
  INVX2M U10 ( .A(B[6]), .Y(n16) );
  INVX2M U11 ( .A(B[7]), .Y(n15) );
  INVX2M U12 ( .A(B[9]), .Y(n13) );
  INVX2M U13 ( .A(B[10]), .Y(n12) );
  INVX2M U14 ( .A(B[12]), .Y(n10) );
  INVX2M U15 ( .A(B[13]), .Y(n9) );
  INVX2M U16 ( .A(B[14]), .Y(n8) );
  INVX2M U17 ( .A(B[24]), .Y(n2) );
  INVX2M U18 ( .A(B[3]), .Y(n19) );
  INVX2M U19 ( .A(B[0]), .Y(n22) );
  INVX2M U20 ( .A(B[1]), .Y(n21) );
  INVX2M U21 ( .A(B[2]), .Y(n20) );
  BUFX2M U22 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module hfb_1_1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [23:1] carry;

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
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
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
  wire   [24:1] carry;

  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(n1), .CO(carry[3]), .S(SUM[2]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
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
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
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
  wire   [24:1] carry;

  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFX2M U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
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
  wire   [24:1] carry;

  XOR3XLM U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
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


module hfb_1_1 ( clk, reset, data_in, even_out, odd_out );
  input [15:0] data_in;
  output [15:0] even_out;
  output [15:0] odd_out;
  input clk, reset;
  wire   \d[0][15] , \d[0][14] , \d[0][13] , \d[0][12] , \d[0][11] ,
         \d[0][10] , \d[0][9] , \d[0][8] , \d[0][7] , \d[0][6] , \d[0][5] ,
         \d[0][4] , \d[0][3] , \d[0][2] , \d[0][1] , \d[0][0] , \d[1][15] ,
         \d[1][14] , \d[1][13] , \d[1][12] , \d[1][11] , \d[1][10] , \d[1][9] ,
         \d[1][8] , \d[1][7] , \d[1][6] , \d[1][5] , \d[1][4] , \d[1][3] ,
         \d[1][2] , \d[1][1] , \d[1][0] , \d[2][15] , \d[2][14] , \d[2][13] ,
         \d[2][12] , \d[2][11] , \d[2][10] , \d[2][9] , \d[2][8] , \d[2][7] ,
         \d[2][6] , \d[2][5] , \d[2][4] , \d[2][3] , \d[2][2] , \d[2][1] ,
         \d[2][0] , \d[3][15] , \d[3][14] , \d[3][13] , \d[3][12] , \d[3][11] ,
         \d[3][10] , \d[3][9] , \d[3][8] , \d[3][7] , \d[3][6] , \d[3][5] ,
         \d[3][4] , \d[3][3] , \d[3][2] , \d[3][1] , \d[3][0] , \d[4][15] ,
         \d[4][14] , \d[4][13] , \d[4][12] , \d[4][11] , \d[4][10] , \d[4][9] ,
         \d[4][8] , \d[4][7] , \d[4][6] , \d[4][5] , \d[4][4] , \d[4][3] ,
         \d[4][2] , \d[4][1] , \d[4][0] , \d[5][15] , \d[5][14] , \d[5][13] ,
         \d[5][12] , \d[5][11] , \d[5][10] , \d[5][9] , \d[5][8] , \d[5][7] ,
         \d[5][6] , \d[5][5] , \d[5][4] , \d[5][3] , \d[5][2] , \d[5][1] ,
         \d[5][0] , \d[6][15] , \d[6][14] , \d[6][13] , \d[6][12] , \d[6][11] ,
         \d[6][10] , \d[6][9] , \d[6][8] , \d[6][7] , \d[6][6] , \d[6][5] ,
         \d[6][4] , \d[6][3] , \d[6][2] , \d[6][1] , \d[6][0] , \d[7][15] ,
         \d[7][14] , \d[7][13] , \d[7][12] , \d[7][11] , \d[7][10] , \d[7][9] ,
         \d[7][8] , \d[7][7] , \d[7][6] , \d[7][5] , \d[7][4] , \d[7][3] ,
         \d[7][2] , \d[7][1] , \d[7][0] , \d[8][15] , \d[8][14] , \d[8][13] ,
         \d[8][12] , \d[8][11] , \d[8][10] , \d[8][9] , \d[8][8] , \d[8][7] ,
         \d[8][6] , \d[8][5] , \d[8][4] , \d[8][3] , \d[8][2] , \d[8][1] ,
         \d[8][0] , \d[9][15] , \d[9][14] , \d[9][13] , \d[9][12] , \d[9][11] ,
         \d[9][10] , \d[9][9] , \d[9][8] , \d[9][7] , \d[9][6] , \d[9][5] ,
         \d[9][4] , \d[9][3] , \d[9][2] , \d[9][1] , \d[9][0] , \d[10][15] ,
         \d[10][14] , \d[10][13] , \d[10][12] , \d[10][11] , \d[10][10] ,
         \d[10][9] , \d[10][8] , \d[10][7] , \d[10][6] , \d[10][5] ,
         \d[10][4] , \d[10][3] , \d[10][2] , \d[10][1] , \d[10][0] ,
         \d[11][15] , \d[11][14] , \d[11][13] , \d[11][12] , \d[11][11] ,
         \d[11][10] , \d[11][9] , \d[11][8] , \d[11][7] , \d[11][6] ,
         \d[11][5] , \d[11][4] , \d[11][3] , \d[11][2] , \d[11][1] ,
         \d[11][0] , \d[12][15] , \d[12][14] , \d[12][13] , \d[12][12] ,
         \d[12][11] , \d[12][10] , \d[12][9] , \d[12][8] , \d[12][7] ,
         \d[12][6] , \d[12][5] , \d[12][4] , \d[12][3] , \d[12][2] ,
         \d[12][1] , \d[12][0] , \d[13][15] , \d[13][14] , \d[13][13] ,
         \d[13][12] , \d[13][11] , \d[13][10] , \d[13][9] , \d[13][8] ,
         \d[13][7] , \d[13][6] , \d[13][5] , \d[13][4] , \d[13][3] ,
         \d[13][2] , \d[13][1] , \d[13][0] , \d[14][15] , \d[14][14] ,
         \d[14][13] , \d[14][12] , \d[14][11] , \d[14][10] , \d[14][9] ,
         \d[14][8] , \d[14][7] , \d[14][6] , \d[14][5] , \d[14][4] ,
         \d[14][3] , \d[14][2] , \d[14][1] , \d[14][0] , \d[15][15] ,
         \d[15][14] , \d[15][13] , \d[15][12] , \d[15][11] , \d[15][10] ,
         \d[15][9] , \d[15][8] , \d[15][7] , \d[15][6] , \d[15][5] ,
         \d[15][4] , \d[15][3] , \d[15][2] , \d[15][1] , \d[15][0] , N35, N36,
         N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50,
         N51, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83,
         N84, N85, N86, N87, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, N144, N145, N9, N8, N7, N6,
         N5, N401, N400, N4, N399, N398, N397, N396, N395, N394, N393, N392,
         N391, N390, N389, N388, N387, N386, N385, N384, N383, N382, N381,
         N380, N379, N378, N377, N376, N375, N374, N373, N372, N371, N370,
         N369, N368, N367, N366, N365, N364, N363, N362, N361, N360, N334,
         N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323,
         N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312,
         N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N3,
         N299, N298, N297, N296, N295, N294, N269, N268, N267, N266, N265,
         N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232,
         N231, N230, N206, N205, N204, N203, N202, N201, N200, N2, N199, N198,
         N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187,
         N186, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175,
         N174, N173, N172, N171, N170, N169, N168, N16, N15, N14, N13, N128,
         N127, N126, N125, N124, N123, N122, N121, N120, N12, N119, N118, N117,
         N116, N115, N114, N113, N112, N111, N110, N11, N109, N108, N10, N1,
         N0, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157;
  wire   [24:9] acc;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12;

  hfb_1_1_DW01_add_0 add_40_I4 ( .A({\d[3][15] , \d[3][15] , \d[3][14] , 
        \d[3][13] , \d[3][12] , \d[3][11] , \d[3][10] , \d[3][9] , \d[3][8] , 
        \d[3][7] , \d[3][6] , \d[3][5] , \d[3][4] , \d[3][3] , \d[3][2] , 
        \d[3][1] , \d[3][0] }), .B({\d[12][15] , \d[12][15] , \d[12][14] , 
        \d[12][13] , \d[12][12] , \d[12][11] , \d[12][10] , \d[12][9] , 
        \d[12][8] , \d[12][7] , \d[12][6] , \d[12][5] , \d[12][4] , \d[12][3] , 
        \d[12][2] , \d[12][1] , \d[12][0] }), .CI(1'b0), .SUM({N145, N144, 
        N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, 
        N131, N130, N129}) );
  hfb_1_1_DW01_add_1 add_40_I3 ( .A({\d[2][15] , \d[2][15] , \d[2][14] , 
        \d[2][13] , \d[2][12] , \d[2][11] , \d[2][10] , \d[2][9] , \d[2][8] , 
        \d[2][7] , \d[2][6] , \d[2][5] , \d[2][4] , \d[2][3] , \d[2][2] , 
        \d[2][1] , \d[2][0] }), .B({\d[13][15] , \d[13][15] , \d[13][14] , 
        \d[13][13] , \d[13][12] , \d[13][11] , \d[13][10] , \d[13][9] , 
        \d[13][8] , \d[13][7] , \d[13][6] , \d[13][5] , \d[13][4] , \d[13][3] , 
        \d[13][2] , \d[13][1] , \d[13][0] }), .CI(1'b0), .SUM({N87, N86, N85, 
        N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, N71})
         );
  hfb_1_1_DW01_add_2 add_40_I2 ( .A({\d[1][15] , \d[1][15] , \d[1][14] , 
        \d[1][13] , \d[1][12] , \d[1][11] , \d[1][10] , \d[1][9] , \d[1][8] , 
        \d[1][7] , \d[1][6] , \d[1][5] , \d[1][4] , \d[1][3] , \d[1][2] , 
        \d[1][1] , \d[1][0] }), .B({\d[14][15] , \d[14][15] , \d[14][14] , 
        \d[14][13] , \d[14][12] , \d[14][11] , \d[14][10] , \d[14][9] , 
        \d[14][8] , \d[14][7] , \d[14][6] , \d[14][5] , \d[14][4] , \d[14][3] , 
        \d[14][2] , \d[14][1] , \d[14][0] }), .CI(1'b0), .SUM({N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35})
         );
  hfb_1_1_DW01_add_17 add_40_I8 ( .A({\d[7][15] , \d[7][15] , \d[7][14] , 
        \d[7][13] , \d[7][12] , \d[7][11] , \d[7][10] , \d[7][9] , \d[7][8] , 
        \d[7][7] , \d[7][6] , \d[7][5] , \d[7][4] , \d[7][3] , \d[7][2] , 
        \d[7][1] , \d[7][0] }), .B({\d[8][15] , \d[8][15] , \d[8][14] , 
        \d[8][13] , \d[8][12] , \d[8][11] , \d[8][10] , \d[8][9] , \d[8][8] , 
        \d[8][7] , \d[8][6] , \d[8][5] , \d[8][4] , \d[8][3] , \d[8][2] , 
        \d[8][1] , \d[8][0] }), .CI(1'b0), .SUM({N376, N375, N374, N373, N372, 
        N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, N361, N360}) );
  hfb_1_1_DW01_add_16 add_40_I7 ( .A({\d[6][15] , \d[6][15] , \d[6][14] , 
        \d[6][13] , \d[6][12] , \d[6][11] , \d[6][10] , \d[6][9] , \d[6][8] , 
        \d[6][7] , \d[6][6] , \d[6][5] , \d[6][4] , \d[6][3] , \d[6][2] , 
        \d[6][1] , \d[6][0] }), .B({\d[9][15] , \d[9][15] , \d[9][14] , 
        \d[9][13] , \d[9][12] , \d[9][11] , \d[9][10] , \d[9][9] , \d[9][8] , 
        \d[9][7] , \d[9][6] , \d[9][5] , \d[9][4] , \d[9][3] , \d[9][2] , 
        \d[9][1] , \d[9][0] }), .CI(1'b0), .SUM({N310, N309, N308, N307, N306, 
        N305, N304, N303, N302, N301, N300, N299, N298, N297, N296, N295, N294}) );
  hfb_1_1_DW01_add_15 add_40_I6 ( .A({\d[5][15] , \d[5][15] , \d[5][14] , 
        \d[5][13] , \d[5][12] , \d[5][11] , \d[5][10] , \d[5][9] , \d[5][8] , 
        \d[5][7] , \d[5][6] , \d[5][5] , \d[5][4] , \d[5][3] , \d[5][2] , 
        \d[5][1] , \d[5][0] }), .B({\d[10][15] , \d[10][15] , \d[10][14] , 
        \d[10][13] , \d[10][12] , \d[10][11] , \d[10][10] , \d[10][9] , 
        \d[10][8] , \d[10][7] , \d[10][6] , \d[10][5] , \d[10][4] , \d[10][3] , 
        \d[10][2] , \d[10][1] , \d[10][0] }), .CI(1'b0), .SUM({N246, N245, 
        N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, 
        N232, N231, N230}) );
  hfb_1_1_DW01_add_14 add_40_I5 ( .A({\d[4][15] , \d[4][15] , \d[4][14] , 
        \d[4][13] , \d[4][12] , \d[4][11] , \d[4][10] , \d[4][9] , \d[4][8] , 
        \d[4][7] , \d[4][6] , \d[4][5] , \d[4][4] , \d[4][3] , \d[4][2] , 
        \d[4][1] , \d[4][0] }), .B({\d[11][15] , \d[11][15] , \d[11][14] , 
        \d[11][13] , \d[11][12] , \d[11][11] , \d[11][10] , \d[11][9] , 
        \d[11][8] , \d[11][7] , \d[11][6] , \d[11][5] , \d[11][4] , \d[11][3] , 
        \d[11][2] , \d[11][1] , \d[11][0] }), .CI(1'b0), .SUM({N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168}) );
  hfb_1_1_DW01_add_13 add_40 ( .A({\d[0][15] , \d[0][15] , \d[0][14] , 
        \d[0][13] , \d[0][12] , \d[0][11] , \d[0][10] , \d[0][9] , \d[0][8] , 
        \d[0][7] , \d[0][6] , \d[0][5] , \d[0][4] , \d[0][3] , \d[0][2] , 
        \d[0][1] , \d[0][0] }), .B({\d[15][15] , \d[15][15] , \d[15][14] , 
        \d[15][13] , \d[15][12] , \d[15][11] , \d[15][10] , \d[15][9] , 
        \d[15][8] , \d[15][7] , \d[15][6] , \d[15][5] , \d[15][4] , \d[15][3] , 
        \d[15][2] , \d[15][1] , \d[15][0] }), .CI(1'b0), .SUM({N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  hfb_1_1_DW02_mult_3 mult_40_I8 ( .A({1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1}), .B({N376, N375, N374, N373, N372, N371, N370, N369, 
        N368, N367, N366, N365, N364, N363, N362, N361, N360}), .TC(1'b1), 
        .PRODUCT({SYNOPSYS_UNCONNECTED__0, N401, N400, N399, N398, N397, N396, 
        N395, N394, N393, N392, N391, N390, N389, N388, N387, N386, N385, N384, 
        N383, N382, N381, N380, N379, N378, N377}) );
  hfb_1_1_DW02_mult_2 mult_40_I7 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0}), .B({N310, N309, N308, N307, N306, N305, N304, N303, N302, N301, 
        N300, N299, N298, N297, N296, N295, N294}), .TC(1'b1), .PRODUCT({N334, 
        N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, N322, 
        N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 
        SYNOPSYS_UNCONNECTED__1}) );
  hfb_1_1_DW02_mult_1 mult_40_I6 ( .A({1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1}), 
        .B({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, N234, N233, N232, N231, N230}), .TC(1'b1), .PRODUCT({N269, N268, 
        N267, N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247}) );
  hfb_1_1_DW02_mult_0 mult_40_I5 ( .A({1'b1, 1'b0, 1'b0, 1'b1, 1'b0}), .B({
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, 
        N172, N171, N170, N169, N168}), .TC(1'b1), .PRODUCT({N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, SYNOPSYS_UNCONNECTED__2}) );
  hfb_1_1_DW01_add_8 add_8_root_add_40_2_I8 ( .A({N51, N51, N51, N51, N50, N49, 
        N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35, 
        1'b0}), .B({N145, N145, N144, N143, N142, N141, N140, N139, N138, N137, 
        N136, N135, N134, N133, N132, N131, N130, N129, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({n38, n70, n81, n92, n103, n114, n125, n136, n147, n39, 
        n50, n61, n63, n64, n65, n66, n67, n68, n69, n71, 
        SYNOPSYS_UNCONNECTED__3}) );
  hfb_1_1_DW01_add_7 add_5_root_add_40_2_I8 ( .A({N16, N16, N16, N16, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        {N87, N87, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, 
        N75, N74, N73, N72, N71, 1'b0, 1'b0}), .CI(1'b0), .SUM({N128, N127, 
        N126, N125, N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109, N108}) );
  hfb_1_1_DW01_sub_0 sub_3_root_add_2_root_add_40_2_I8 ( .A({n38, n38, n38, 
        n38, n38, n70, n81, n92, n103, n114, n125, n136, n147, n39, n50, n61, 
        n63, n64, n65, n66, n67, n68, n69, n71, 1'b0}), .B({N128, N128, N128, 
        N128, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, N112, N111, N110, N109, N108}), .CI(1'b0), .DIFF({n99, n100, n101, n102, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, 
        n126}) );
  hfb_1_1_DW01_add_6 add_7_root_add_40_2_I8 ( .A({N206, N206, N206, N205, N204, 
        N203, N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, 1'b0}), .B({N269, N269, N268, N267, 
        N266, N265, N264, N263, N262, N261, N260, N259, N258, N257, N256, N255, 
        N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({n73, 
        n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, n88, 
        n89, n90, n91, n93, n94, n95, n96, n97, n98}) );
  hfb_1_1_DW01_add_5 add_2_root_add_2_root_add_40_2_I8 ( .A({n99, n100, n101, 
        n102, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n115, 
        n116, n117, n118, n119, n120, n121, n122, n123, n124, n126}), .B({N334, 
        N334, N333, N332, N331, N330, N329, N328, N327, N326, N325, N324, N323, 
        N322, N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, 1'b0}), .CI(1'b0), .SUM({n154, n155, n156, n157, n40, n41, n42, n43, n44, n45, n46, 
        n47, n48, n49, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n62})
         );
  hfb_1_1_DW01_add_4 add_1_root_add_2_root_add_40_2_I8 ( .A({N401, N400, N399, 
        N398, N397, N396, N395, N394, N393, N392, N391, N390, N389, N388, N387, 
        N386, N385, N384, N383, N382, N381, N380, N379, N378, N377}), .B({n73, 
        n73, n74, n75, n76, n77, n78, n79, n80, n82, n83, n84, n85, n86, n87, 
        n88, n89, n90, n91, n93, n94, n95, n96, n97, n98}), .CI(1'b0), .SUM({
        n127, n128, n129, n130, n131, n132, n133, n134, n135, n137, n138, n139, 
        n140, n141, n142, n143, n144, n145, n146, n148, n149, n150, n151, n152, 
        n153}) );
  hfb_1_1_DW01_add_3 add_0_root_add_2_root_add_40_2_I8 ( .A({n154, n155, n156, 
        n157, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, 
        n54, n55, n56, n57, n58, n59, n60, n62}), .B({n127, n128, n129, n130, 
        n131, n132, n133, n134, n135, n137, n138, n139, n140, n141, n142, n143, 
        n144, n145, n146, n148, n149, n150, n151, n152, n153}), .CI(1'b0), 
        .SUM({acc, SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
  DFFRQX2M \d_reg[1][15]  ( .D(\d[0][15] ), .CK(clk), .RN(n5), .Q(\d[1][15] )
         );
  DFFRQX2M \d_reg[12][14]  ( .D(\d[11][14] ), .CK(clk), .RN(n18), .Q(
        \d[12][14] ) );
  DFFRQX2M \d_reg[12][13]  ( .D(\d[11][13] ), .CK(clk), .RN(n18), .Q(
        \d[12][13] ) );
  DFFRQX2M \d_reg[12][12]  ( .D(\d[11][12] ), .CK(clk), .RN(n19), .Q(
        \d[12][12] ) );
  DFFRQX2M \d_reg[13][14]  ( .D(\d[12][14] ), .CK(clk), .RN(n20), .Q(
        \d[13][14] ) );
  DFFRQX2M \d_reg[13][13]  ( .D(\d[12][13] ), .CK(clk), .RN(n20), .Q(
        \d[13][13] ) );
  DFFRQX2M \d_reg[13][12]  ( .D(\d[12][12] ), .CK(clk), .RN(n20), .Q(
        \d[13][12] ) );
  DFFRQX2M \d_reg[2][14]  ( .D(\d[1][14] ), .CK(clk), .RN(n6), .Q(\d[2][14] )
         );
  DFFRQX2M \d_reg[2][13]  ( .D(\d[1][13] ), .CK(clk), .RN(n6), .Q(\d[2][13] )
         );
  DFFRQX2M \d_reg[3][14]  ( .D(\d[2][14] ), .CK(clk), .RN(n7), .Q(\d[3][14] )
         );
  DFFRQX2M \d_reg[3][13]  ( .D(\d[2][13] ), .CK(clk), .RN(n7), .Q(\d[3][13] )
         );
  DFFRQX2M \d_reg[3][12]  ( .D(\d[2][12] ), .CK(clk), .RN(n7), .Q(\d[3][12] )
         );
  DFFRQX2M \d_reg[12][15]  ( .D(\d[11][15] ), .CK(clk), .RN(n18), .Q(
        \d[12][15] ) );
  DFFRQX2M \d_reg[13][15]  ( .D(\d[12][15] ), .CK(clk), .RN(n20), .Q(
        \d[13][15] ) );
  DFFRQX2M \d_reg[14][15]  ( .D(\d[13][15] ), .CK(clk), .RN(n21), .Q(
        \d[14][15] ) );
  DFFRQX2M \d_reg[2][15]  ( .D(\d[1][15] ), .CK(clk), .RN(n6), .Q(\d[2][15] )
         );
  DFFRQX2M \d_reg[3][15]  ( .D(\d[2][15] ), .CK(clk), .RN(n7), .Q(\d[3][15] )
         );
  DFFRQX2M \d_reg[12][11]  ( .D(\d[11][11] ), .CK(clk), .RN(n19), .Q(
        \d[12][11] ) );
  DFFRQX2M \d_reg[12][10]  ( .D(\d[11][10] ), .CK(clk), .RN(n19), .Q(
        \d[12][10] ) );
  DFFRQX2M \d_reg[12][9]  ( .D(\d[11][9] ), .CK(clk), .RN(n19), .Q(\d[12][9] )
         );
  DFFRQX2M \d_reg[12][8]  ( .D(\d[11][8] ), .CK(clk), .RN(n19), .Q(\d[12][8] )
         );
  DFFRQX2M \d_reg[13][11]  ( .D(\d[12][11] ), .CK(clk), .RN(n20), .Q(
        \d[13][11] ) );
  DFFRQX2M \d_reg[13][10]  ( .D(\d[12][10] ), .CK(clk), .RN(n20), .Q(
        \d[13][10] ) );
  DFFRQX2M \d_reg[13][9]  ( .D(\d[12][9] ), .CK(clk), .RN(n20), .Q(\d[13][9] )
         );
  DFFRQX2M \d_reg[13][8]  ( .D(\d[12][8] ), .CK(clk), .RN(n20), .Q(\d[13][8] )
         );
  DFFRQX2M \d_reg[14][14]  ( .D(\d[13][14] ), .CK(clk), .RN(n21), .Q(
        \d[14][14] ) );
  DFFRQX2M \d_reg[14][13]  ( .D(\d[13][13] ), .CK(clk), .RN(n21), .Q(
        \d[14][13] ) );
  DFFRQX2M \d_reg[14][12]  ( .D(\d[13][12] ), .CK(clk), .RN(n21), .Q(
        \d[14][12] ) );
  DFFRQX2M \d_reg[14][11]  ( .D(\d[13][11] ), .CK(clk), .RN(n21), .Q(
        \d[14][11] ) );
  DFFRQX2M \d_reg[14][10]  ( .D(\d[13][10] ), .CK(clk), .RN(n21), .Q(
        \d[14][10] ) );
  DFFRQX2M \d_reg[1][14]  ( .D(\d[0][14] ), .CK(clk), .RN(n5), .Q(\d[1][14] )
         );
  DFFRQX2M \d_reg[1][13]  ( .D(\d[0][13] ), .CK(clk), .RN(n5), .Q(\d[1][13] )
         );
  DFFRQX2M \d_reg[1][12]  ( .D(\d[0][12] ), .CK(clk), .RN(n5), .Q(\d[1][12] )
         );
  DFFRQX2M \d_reg[1][11]  ( .D(\d[0][11] ), .CK(clk), .RN(n5), .Q(\d[1][11] )
         );
  DFFRQX2M \d_reg[1][10]  ( .D(\d[0][10] ), .CK(clk), .RN(n5), .Q(\d[1][10] )
         );
  DFFRQX2M \d_reg[2][12]  ( .D(\d[1][12] ), .CK(clk), .RN(n6), .Q(\d[2][12] )
         );
  DFFRQX2M \d_reg[2][11]  ( .D(\d[1][11] ), .CK(clk), .RN(n6), .Q(\d[2][11] )
         );
  DFFRQX2M \d_reg[2][10]  ( .D(\d[1][10] ), .CK(clk), .RN(n6), .Q(\d[2][10] )
         );
  DFFRQX2M \d_reg[2][9]  ( .D(\d[1][9] ), .CK(clk), .RN(n6), .Q(\d[2][9] ) );
  DFFRQX2M \d_reg[2][8]  ( .D(\d[1][8] ), .CK(clk), .RN(n7), .Q(\d[2][8] ) );
  DFFRQX2M \d_reg[3][11]  ( .D(\d[2][11] ), .CK(clk), .RN(n8), .Q(\d[3][11] )
         );
  DFFRQX2M \d_reg[3][10]  ( .D(\d[2][10] ), .CK(clk), .RN(n8), .Q(\d[3][10] )
         );
  DFFRQX2M \d_reg[3][9]  ( .D(\d[2][9] ), .CK(clk), .RN(n8), .Q(\d[3][9] ) );
  DFFRQX2M \d_reg[3][8]  ( .D(\d[2][8] ), .CK(clk), .RN(n8), .Q(\d[3][8] ) );
  DFFRQX2M \d_reg[10][15]  ( .D(\d[9][15] ), .CK(clk), .RN(n16), .Q(
        \d[10][15] ) );
  DFFRQX2M \d_reg[15][15]  ( .D(\d[14][15] ), .CK(clk), .RN(n22), .Q(
        \d[15][15] ) );
  DFFRQX2M \d_reg[0][15]  ( .D(data_in[15]), .CK(clk), .RN(n4), .Q(\d[0][15] )
         );
  DFFRQX2M \d_reg[15][14]  ( .D(\d[14][14] ), .CK(clk), .RN(n22), .Q(
        \d[15][14] ) );
  DFFRQX2M \d_reg[15][13]  ( .D(\d[14][13] ), .CK(clk), .RN(n22), .Q(
        \d[15][13] ) );
  DFFRQX2M \d_reg[9][14]  ( .D(\d[8][14] ), .CK(clk), .RN(n15), .Q(\d[9][14] )
         );
  DFFRQX2M \d_reg[10][14]  ( .D(\d[9][14] ), .CK(clk), .RN(n16), .Q(
        \d[10][14] ) );
  DFFRQX2M \d_reg[10][13]  ( .D(\d[9][13] ), .CK(clk), .RN(n16), .Q(
        \d[10][13] ) );
  DFFRQX2M \d_reg[10][12]  ( .D(\d[9][12] ), .CK(clk), .RN(n16), .Q(
        \d[10][12] ) );
  DFFRQX2M \d_reg[11][14]  ( .D(\d[10][14] ), .CK(clk), .RN(n17), .Q(
        \d[11][14] ) );
  DFFRQX2M \d_reg[12][7]  ( .D(\d[11][7] ), .CK(clk), .RN(n19), .Q(\d[12][7] )
         );
  DFFRQX2M \d_reg[12][6]  ( .D(\d[11][6] ), .CK(clk), .RN(n19), .Q(\d[12][6] )
         );
  DFFRQX2M \d_reg[12][5]  ( .D(\d[11][5] ), .CK(clk), .RN(n19), .Q(\d[12][5] )
         );
  DFFRQX2M \d_reg[12][4]  ( .D(\d[11][4] ), .CK(clk), .RN(n19), .Q(\d[12][4] )
         );
  DFFRQX2M \d_reg[12][3]  ( .D(\d[11][3] ), .CK(clk), .RN(n19), .Q(\d[12][3] )
         );
  DFFRQX2M \d_reg[13][7]  ( .D(\d[12][7] ), .CK(clk), .RN(n20), .Q(\d[13][7] )
         );
  DFFRQX2M \d_reg[13][6]  ( .D(\d[12][6] ), .CK(clk), .RN(n20), .Q(\d[13][6] )
         );
  DFFRQX2M \d_reg[13][5]  ( .D(\d[12][5] ), .CK(clk), .RN(n20), .Q(\d[13][5] )
         );
  DFFRQX2M \d_reg[13][4]  ( .D(\d[12][4] ), .CK(clk), .RN(n20), .Q(\d[13][4] )
         );
  DFFRQX2M \d_reg[14][9]  ( .D(\d[13][9] ), .CK(clk), .RN(n21), .Q(\d[14][9] )
         );
  DFFRQX2M \d_reg[14][8]  ( .D(\d[13][8] ), .CK(clk), .RN(n21), .Q(\d[14][8] )
         );
  DFFRQX2M \d_reg[14][7]  ( .D(\d[13][7] ), .CK(clk), .RN(n21), .Q(\d[14][7] )
         );
  DFFRQX2M \d_reg[14][6]  ( .D(\d[13][6] ), .CK(clk), .RN(n21), .Q(\d[14][6] )
         );
  DFFRQX2M \d_reg[8][14]  ( .D(\d[7][14] ), .CK(clk), .RN(n13), .Q(\d[8][14] )
         );
  DFFRQX2M \d_reg[8][13]  ( .D(\d[7][13] ), .CK(clk), .RN(n14), .Q(\d[8][13] )
         );
  DFFRQX2M \d_reg[8][12]  ( .D(\d[7][12] ), .CK(clk), .RN(n14), .Q(\d[8][12] )
         );
  DFFRQX2M \d_reg[0][14]  ( .D(data_in[14]), .CK(clk), .RN(n4), .Q(\d[0][14] )
         );
  DFFRQX2M \d_reg[0][13]  ( .D(data_in[13]), .CK(clk), .RN(n4), .Q(\d[0][13] )
         );
  DFFRQX2M \d_reg[1][9]  ( .D(\d[0][9] ), .CK(clk), .RN(n5), .Q(\d[1][9] ) );
  DFFRQX2M \d_reg[1][8]  ( .D(\d[0][8] ), .CK(clk), .RN(n5), .Q(\d[1][8] ) );
  DFFRQX2M \d_reg[1][7]  ( .D(\d[0][7] ), .CK(clk), .RN(n5), .Q(\d[1][7] ) );
  DFFRQX2M \d_reg[1][6]  ( .D(\d[0][6] ), .CK(clk), .RN(n5), .Q(\d[1][6] ) );
  DFFRQX2M \d_reg[2][7]  ( .D(\d[1][7] ), .CK(clk), .RN(n7), .Q(\d[2][7] ) );
  DFFRQX2M \d_reg[2][6]  ( .D(\d[1][6] ), .CK(clk), .RN(n7), .Q(\d[2][6] ) );
  DFFRQX2M \d_reg[2][5]  ( .D(\d[1][5] ), .CK(clk), .RN(n7), .Q(\d[2][5] ) );
  DFFRQX2M \d_reg[2][4]  ( .D(\d[1][4] ), .CK(clk), .RN(n7), .Q(\d[2][4] ) );
  DFFRQX2M \d_reg[3][7]  ( .D(\d[2][7] ), .CK(clk), .RN(n8), .Q(\d[3][7] ) );
  DFFRQX2M \d_reg[3][6]  ( .D(\d[2][6] ), .CK(clk), .RN(n8), .Q(\d[3][6] ) );
  DFFRQX2M \d_reg[3][5]  ( .D(\d[2][5] ), .CK(clk), .RN(n8), .Q(\d[3][5] ) );
  DFFRQX2M \d_reg[3][4]  ( .D(\d[2][4] ), .CK(clk), .RN(n8), .Q(\d[3][4] ) );
  DFFRQX2M \d_reg[4][14]  ( .D(\d[3][14] ), .CK(clk), .RN(n9), .Q(\d[4][14] )
         );
  DFFRQX2M \d_reg[5][14]  ( .D(\d[4][14] ), .CK(clk), .RN(n10), .Q(\d[5][14] )
         );
  DFFRQX2M \d_reg[5][13]  ( .D(\d[4][13] ), .CK(clk), .RN(n10), .Q(\d[5][13] )
         );
  DFFRQX2M \d_reg[5][12]  ( .D(\d[4][12] ), .CK(clk), .RN(n10), .Q(\d[5][12] )
         );
  DFFRQX2M \d_reg[6][14]  ( .D(\d[5][14] ), .CK(clk), .RN(n11), .Q(\d[6][14] )
         );
  DFFRQX2M \d_reg[7][14]  ( .D(\d[6][14] ), .CK(clk), .RN(n12), .Q(\d[7][14] )
         );
  DFFRQX2M \d_reg[7][13]  ( .D(\d[6][13] ), .CK(clk), .RN(n12), .Q(\d[7][13] )
         );
  DFFRQX2M \d_reg[7][12]  ( .D(\d[6][12] ), .CK(clk), .RN(n12), .Q(\d[7][12] )
         );
  DFFRQX2M \d_reg[9][15]  ( .D(\d[8][15] ), .CK(clk), .RN(n15), .Q(\d[9][15] )
         );
  DFFRQX2M \d_reg[11][15]  ( .D(\d[10][15] ), .CK(clk), .RN(n17), .Q(
        \d[11][15] ) );
  DFFRQX2M \d_reg[8][15]  ( .D(\d[7][15] ), .CK(clk), .RN(n13), .Q(\d[8][15] )
         );
  DFFRQX2M \d_reg[4][15]  ( .D(\d[3][15] ), .CK(clk), .RN(n8), .Q(\d[4][15] )
         );
  DFFRQX2M \d_reg[5][15]  ( .D(\d[4][15] ), .CK(clk), .RN(n10), .Q(\d[5][15] )
         );
  DFFRQX2M \d_reg[6][15]  ( .D(\d[5][15] ), .CK(clk), .RN(n11), .Q(\d[6][15] )
         );
  DFFRQX2M \d_reg[7][15]  ( .D(\d[6][15] ), .CK(clk), .RN(n12), .Q(\d[7][15] )
         );
  DFFRQX2M \d_reg[15][12]  ( .D(\d[14][12] ), .CK(clk), .RN(n22), .Q(
        \d[15][12] ) );
  DFFRQX2M \d_reg[15][11]  ( .D(\d[14][11] ), .CK(clk), .RN(n22), .Q(
        \d[15][11] ) );
  DFFRQX2M \d_reg[15][10]  ( .D(\d[14][10] ), .CK(clk), .RN(n22), .Q(
        \d[15][10] ) );
  DFFRQX2M \d_reg[15][9]  ( .D(\d[14][9] ), .CK(clk), .RN(n22), .Q(\d[15][9] )
         );
  DFFRQX2M \d_reg[9][13]  ( .D(\d[8][13] ), .CK(clk), .RN(n15), .Q(\d[9][13] )
         );
  DFFRQX2M \d_reg[9][12]  ( .D(\d[8][12] ), .CK(clk), .RN(n15), .Q(\d[9][12] )
         );
  DFFRQX2M \d_reg[9][11]  ( .D(\d[8][11] ), .CK(clk), .RN(n15), .Q(\d[9][11] )
         );
  DFFRQX2M \d_reg[9][10]  ( .D(\d[8][10] ), .CK(clk), .RN(n15), .Q(\d[9][10] )
         );
  DFFRQX2M \d_reg[10][11]  ( .D(\d[9][11] ), .CK(clk), .RN(n16), .Q(
        \d[10][11] ) );
  DFFRQX2M \d_reg[10][10]  ( .D(\d[9][10] ), .CK(clk), .RN(n16), .Q(
        \d[10][10] ) );
  DFFRQX2M \d_reg[10][9]  ( .D(\d[9][9] ), .CK(clk), .RN(n16), .Q(\d[10][9] )
         );
  DFFRQX2M \d_reg[10][8]  ( .D(\d[9][8] ), .CK(clk), .RN(n16), .Q(\d[10][8] )
         );
  DFFRQX2M \d_reg[11][13]  ( .D(\d[10][13] ), .CK(clk), .RN(n17), .Q(
        \d[11][13] ) );
  DFFRQX2M \d_reg[11][12]  ( .D(\d[10][12] ), .CK(clk), .RN(n17), .Q(
        \d[11][12] ) );
  DFFRQX2M \d_reg[11][11]  ( .D(\d[10][11] ), .CK(clk), .RN(n17), .Q(
        \d[11][11] ) );
  DFFRQX2M \d_reg[11][10]  ( .D(\d[10][10] ), .CK(clk), .RN(n17), .Q(
        \d[11][10] ) );
  DFFRQX2M \d_reg[12][2]  ( .D(\d[11][2] ), .CK(clk), .RN(n19), .Q(\d[12][2] )
         );
  DFFRQX2M \d_reg[12][1]  ( .D(\d[11][1] ), .CK(clk), .RN(n19), .Q(\d[12][1] )
         );
  DFFRQX2M \d_reg[13][3]  ( .D(\d[12][3] ), .CK(clk), .RN(n20), .Q(\d[13][3] )
         );
  DFFRQX2M \d_reg[13][2]  ( .D(\d[12][2] ), .CK(clk), .RN(n21), .Q(\d[13][2] )
         );
  DFFRQX2M \d_reg[13][1]  ( .D(\d[12][1] ), .CK(clk), .RN(n21), .Q(\d[13][1] )
         );
  DFFRQX2M \d_reg[14][5]  ( .D(\d[13][5] ), .CK(clk), .RN(n22), .Q(\d[14][5] )
         );
  DFFRQX2M \d_reg[14][4]  ( .D(\d[13][4] ), .CK(clk), .RN(n22), .Q(\d[14][4] )
         );
  DFFRQX2M \d_reg[14][3]  ( .D(\d[13][3] ), .CK(clk), .RN(n22), .Q(\d[14][3] )
         );
  DFFRQX2M \d_reg[14][2]  ( .D(\d[13][2] ), .CK(clk), .RN(n22), .Q(\d[14][2] )
         );
  DFFRQX2M \d_reg[14][1]  ( .D(\d[13][1] ), .CK(clk), .RN(n22), .Q(\d[14][1] )
         );
  DFFRQX2M \d_reg[8][11]  ( .D(\d[7][11] ), .CK(clk), .RN(n14), .Q(\d[8][11] )
         );
  DFFRQX2M \d_reg[8][10]  ( .D(\d[7][10] ), .CK(clk), .RN(n14), .Q(\d[8][10] )
         );
  DFFRQX2M \d_reg[8][9]  ( .D(\d[7][9] ), .CK(clk), .RN(n14), .Q(\d[8][9] ) );
  DFFRQX2M \d_reg[8][8]  ( .D(\d[7][8] ), .CK(clk), .RN(n14), .Q(\d[8][8] ) );
  DFFRQX2M \d_reg[0][12]  ( .D(data_in[12]), .CK(clk), .RN(n4), .Q(\d[0][12] )
         );
  DFFRQX2M \d_reg[0][11]  ( .D(data_in[11]), .CK(clk), .RN(n4), .Q(\d[0][11] )
         );
  DFFRQX2M \d_reg[0][10]  ( .D(data_in[10]), .CK(clk), .RN(n4), .Q(\d[0][10] )
         );
  DFFRQX2M \d_reg[0][9]  ( .D(data_in[9]), .CK(clk), .RN(n4), .Q(\d[0][9] ) );
  DFFRQX2M \d_reg[1][5]  ( .D(\d[0][5] ), .CK(clk), .RN(n6), .Q(\d[1][5] ) );
  DFFRQX2M \d_reg[1][4]  ( .D(\d[0][4] ), .CK(clk), .RN(n6), .Q(\d[1][4] ) );
  DFFRQX2M \d_reg[1][3]  ( .D(\d[0][3] ), .CK(clk), .RN(n6), .Q(\d[1][3] ) );
  DFFRQX2M \d_reg[1][2]  ( .D(\d[0][2] ), .CK(clk), .RN(n6), .Q(\d[1][2] ) );
  DFFRQX2M \d_reg[1][1]  ( .D(\d[0][1] ), .CK(clk), .RN(n6), .Q(\d[1][1] ) );
  DFFRQX2M \d_reg[2][3]  ( .D(\d[1][3] ), .CK(clk), .RN(n7), .Q(\d[2][3] ) );
  DFFRQX2M \d_reg[2][2]  ( .D(\d[1][2] ), .CK(clk), .RN(n7), .Q(\d[2][2] ) );
  DFFRQX2M \d_reg[2][1]  ( .D(\d[1][1] ), .CK(clk), .RN(n7), .Q(\d[2][1] ) );
  DFFRQX2M \d_reg[3][3]  ( .D(\d[2][3] ), .CK(clk), .RN(n8), .Q(\d[3][3] ) );
  DFFRQX2M \d_reg[3][2]  ( .D(\d[2][2] ), .CK(clk), .RN(n8), .Q(\d[3][2] ) );
  DFFRQX2M \d_reg[3][1]  ( .D(\d[2][1] ), .CK(clk), .RN(n8), .Q(\d[3][1] ) );
  DFFRQX2M \d_reg[4][13]  ( .D(\d[3][13] ), .CK(clk), .RN(n9), .Q(\d[4][13] )
         );
  DFFRQX2M \d_reg[4][12]  ( .D(\d[3][12] ), .CK(clk), .RN(n9), .Q(\d[4][12] )
         );
  DFFRQX2M \d_reg[4][11]  ( .D(\d[3][11] ), .CK(clk), .RN(n9), .Q(\d[4][11] )
         );
  DFFRQX2M \d_reg[4][10]  ( .D(\d[3][10] ), .CK(clk), .RN(n9), .Q(\d[4][10] )
         );
  DFFRQX2M \d_reg[5][11]  ( .D(\d[4][11] ), .CK(clk), .RN(n10), .Q(\d[5][11] )
         );
  DFFRQX2M \d_reg[5][10]  ( .D(\d[4][10] ), .CK(clk), .RN(n10), .Q(\d[5][10] )
         );
  DFFRQX2M \d_reg[5][9]  ( .D(\d[4][9] ), .CK(clk), .RN(n10), .Q(\d[5][9] ) );
  DFFRQX2M \d_reg[5][8]  ( .D(\d[4][8] ), .CK(clk), .RN(n10), .Q(\d[5][8] ) );
  DFFRQX2M \d_reg[6][13]  ( .D(\d[5][13] ), .CK(clk), .RN(n11), .Q(\d[6][13] )
         );
  DFFRQX2M \d_reg[6][12]  ( .D(\d[5][12] ), .CK(clk), .RN(n11), .Q(\d[6][12] )
         );
  DFFRQX2M \d_reg[6][11]  ( .D(\d[5][11] ), .CK(clk), .RN(n11), .Q(\d[6][11] )
         );
  DFFRQX2M \d_reg[6][10]  ( .D(\d[5][10] ), .CK(clk), .RN(n11), .Q(\d[6][10] )
         );
  DFFRQX2M \d_reg[7][11]  ( .D(\d[6][11] ), .CK(clk), .RN(n12), .Q(\d[7][11] )
         );
  DFFRQX2M \d_reg[7][10]  ( .D(\d[6][10] ), .CK(clk), .RN(n13), .Q(\d[7][10] )
         );
  DFFRQX2M \d_reg[7][9]  ( .D(\d[6][9] ), .CK(clk), .RN(n13), .Q(\d[7][9] ) );
  DFFRQX2M \d_reg[7][8]  ( .D(\d[6][8] ), .CK(clk), .RN(n13), .Q(\d[7][8] ) );
  DFFRQX2M \d_reg[12][0]  ( .D(\d[11][0] ), .CK(clk), .RN(n19), .Q(\d[12][0] )
         );
  DFFRQX2M \d_reg[13][0]  ( .D(\d[12][0] ), .CK(clk), .RN(n21), .Q(\d[13][0] )
         );
  DFFRQX2M \d_reg[14][0]  ( .D(\d[13][0] ), .CK(clk), .RN(n22), .Q(\d[14][0] )
         );
  DFFRQX2M \d_reg[1][0]  ( .D(\d[0][0] ), .CK(clk), .RN(n6), .Q(\d[1][0] ) );
  DFFRQX2M \d_reg[2][0]  ( .D(\d[1][0] ), .CK(clk), .RN(n7), .Q(\d[2][0] ) );
  DFFRQX2M \d_reg[3][0]  ( .D(\d[2][0] ), .CK(clk), .RN(n8), .Q(\d[3][0] ) );
  DFFRQX2M \d_reg[15][8]  ( .D(\d[14][8] ), .CK(clk), .RN(n23), .Q(\d[15][8] )
         );
  DFFRQX2M \d_reg[15][7]  ( .D(\d[14][7] ), .CK(clk), .RN(n23), .Q(\d[15][7] )
         );
  DFFRQX2M \d_reg[15][6]  ( .D(\d[14][6] ), .CK(clk), .RN(n23), .Q(\d[15][6] )
         );
  DFFRQX2M \d_reg[15][5]  ( .D(\d[14][5] ), .CK(clk), .RN(n23), .Q(\d[15][5] )
         );
  DFFRQX2M \d_reg[15][4]  ( .D(\d[14][4] ), .CK(clk), .RN(n23), .Q(\d[15][4] )
         );
  DFFRQX2M \d_reg[9][9]  ( .D(\d[8][9] ), .CK(clk), .RN(n15), .Q(\d[9][9] ) );
  DFFRQX2M \d_reg[9][8]  ( .D(\d[8][8] ), .CK(clk), .RN(n15), .Q(\d[9][8] ) );
  DFFRQX2M \d_reg[9][7]  ( .D(\d[8][7] ), .CK(clk), .RN(n15), .Q(\d[9][7] ) );
  DFFRQX2M \d_reg[9][6]  ( .D(\d[8][6] ), .CK(clk), .RN(n15), .Q(\d[9][6] ) );
  DFFRQX2M \d_reg[9][5]  ( .D(\d[8][5] ), .CK(clk), .RN(n15), .Q(\d[9][5] ) );
  DFFRQX2M \d_reg[10][7]  ( .D(\d[9][7] ), .CK(clk), .RN(n16), .Q(\d[10][7] )
         );
  DFFRQX2M \d_reg[10][6]  ( .D(\d[9][6] ), .CK(clk), .RN(n17), .Q(\d[10][6] )
         );
  DFFRQX2M \d_reg[10][5]  ( .D(\d[9][5] ), .CK(clk), .RN(n17), .Q(\d[10][5] )
         );
  DFFRQX2M \d_reg[10][4]  ( .D(\d[9][4] ), .CK(clk), .RN(n17), .Q(\d[10][4] )
         );
  DFFRQX2M \d_reg[11][9]  ( .D(\d[10][9] ), .CK(clk), .RN(n18), .Q(\d[11][9] )
         );
  DFFRQX2M \d_reg[11][8]  ( .D(\d[10][8] ), .CK(clk), .RN(n18), .Q(\d[11][8] )
         );
  DFFRQX2M \d_reg[11][7]  ( .D(\d[10][7] ), .CK(clk), .RN(n18), .Q(\d[11][7] )
         );
  DFFRQX2M \d_reg[11][6]  ( .D(\d[10][6] ), .CK(clk), .RN(n18), .Q(\d[11][6] )
         );
  DFFRQX2M \d_reg[11][5]  ( .D(\d[10][5] ), .CK(clk), .RN(n18), .Q(\d[11][5] )
         );
  DFFRQX2M \d_reg[8][7]  ( .D(\d[7][7] ), .CK(clk), .RN(n14), .Q(\d[8][7] ) );
  DFFRQX2M \d_reg[8][6]  ( .D(\d[7][6] ), .CK(clk), .RN(n14), .Q(\d[8][6] ) );
  DFFRQX2M \d_reg[8][5]  ( .D(\d[7][5] ), .CK(clk), .RN(n14), .Q(\d[8][5] ) );
  DFFRQX2M \d_reg[8][4]  ( .D(\d[7][4] ), .CK(clk), .RN(n14), .Q(\d[8][4] ) );
  DFFRQX2M \d_reg[0][8]  ( .D(data_in[8]), .CK(clk), .RN(n4), .Q(\d[0][8] ) );
  DFFRQX2M \d_reg[0][7]  ( .D(data_in[7]), .CK(clk), .RN(n4), .Q(\d[0][7] ) );
  DFFRQX2M \d_reg[0][6]  ( .D(data_in[6]), .CK(clk), .RN(n4), .Q(\d[0][6] ) );
  DFFRQX2M \d_reg[0][5]  ( .D(data_in[5]), .CK(clk), .RN(n4), .Q(\d[0][5] ) );
  DFFRQX2M \d_reg[0][4]  ( .D(data_in[4]), .CK(clk), .RN(n4), .Q(\d[0][4] ) );
  DFFRQX2M \d_reg[4][9]  ( .D(\d[3][9] ), .CK(clk), .RN(n9), .Q(\d[4][9] ) );
  DFFRQX2M \d_reg[4][8]  ( .D(\d[3][8] ), .CK(clk), .RN(n9), .Q(\d[4][8] ) );
  DFFRQX2M \d_reg[4][7]  ( .D(\d[3][7] ), .CK(clk), .RN(n9), .Q(\d[4][7] ) );
  DFFRQX2M \d_reg[4][6]  ( .D(\d[3][6] ), .CK(clk), .RN(n9), .Q(\d[4][6] ) );
  DFFRQX2M \d_reg[5][7]  ( .D(\d[4][7] ), .CK(clk), .RN(n10), .Q(\d[5][7] ) );
  DFFRQX2M \d_reg[5][6]  ( .D(\d[4][6] ), .CK(clk), .RN(n10), .Q(\d[5][6] ) );
  DFFRQX2M \d_reg[5][5]  ( .D(\d[4][5] ), .CK(clk), .RN(n10), .Q(\d[5][5] ) );
  DFFRQX2M \d_reg[5][4]  ( .D(\d[4][4] ), .CK(clk), .RN(n11), .Q(\d[5][4] ) );
  DFFRQX2M \d_reg[6][9]  ( .D(\d[5][9] ), .CK(clk), .RN(n11), .Q(\d[6][9] ) );
  DFFRQX2M \d_reg[6][8]  ( .D(\d[5][8] ), .CK(clk), .RN(n11), .Q(\d[6][8] ) );
  DFFRQX2M \d_reg[6][7]  ( .D(\d[5][7] ), .CK(clk), .RN(n12), .Q(\d[6][7] ) );
  DFFRQX2M \d_reg[6][6]  ( .D(\d[5][6] ), .CK(clk), .RN(n12), .Q(\d[6][6] ) );
  DFFRQX2M \d_reg[6][5]  ( .D(\d[5][5] ), .CK(clk), .RN(n12), .Q(\d[6][5] ) );
  DFFRQX2M \d_reg[7][7]  ( .D(\d[6][7] ), .CK(clk), .RN(n13), .Q(\d[7][7] ) );
  DFFRQX2M \d_reg[7][6]  ( .D(\d[6][6] ), .CK(clk), .RN(n13), .Q(\d[7][6] ) );
  DFFRQX2M \d_reg[7][5]  ( .D(\d[6][5] ), .CK(clk), .RN(n13), .Q(\d[7][5] ) );
  DFFRQX2M \d_reg[7][4]  ( .D(\d[6][4] ), .CK(clk), .RN(n13), .Q(\d[7][4] ) );
  DFFRQX2M \d_reg[15][3]  ( .D(\d[14][3] ), .CK(clk), .RN(n23), .Q(\d[15][3] )
         );
  DFFRQX2M \d_reg[15][2]  ( .D(\d[14][2] ), .CK(clk), .RN(n23), .Q(\d[15][2] )
         );
  DFFRQX2M \d_reg[15][1]  ( .D(\d[14][1] ), .CK(clk), .RN(n23), .Q(\d[15][1] )
         );
  DFFRQX2M \d_reg[9][4]  ( .D(\d[8][4] ), .CK(clk), .RN(n15), .Q(\d[9][4] ) );
  DFFRQX2M \d_reg[9][3]  ( .D(\d[8][3] ), .CK(clk), .RN(n16), .Q(\d[9][3] ) );
  DFFRQX2M \d_reg[9][2]  ( .D(\d[8][2] ), .CK(clk), .RN(n16), .Q(\d[9][2] ) );
  DFFRQX2M \d_reg[9][1]  ( .D(\d[8][1] ), .CK(clk), .RN(n16), .Q(\d[9][1] ) );
  DFFRQX2M \d_reg[10][3]  ( .D(\d[9][3] ), .CK(clk), .RN(n17), .Q(\d[10][3] )
         );
  DFFRQX2M \d_reg[10][2]  ( .D(\d[9][2] ), .CK(clk), .RN(n17), .Q(\d[10][2] )
         );
  DFFRQX2M \d_reg[10][1]  ( .D(\d[9][1] ), .CK(clk), .RN(n17), .Q(\d[10][1] )
         );
  DFFRQX2M \d_reg[11][4]  ( .D(\d[10][4] ), .CK(clk), .RN(n18), .Q(\d[11][4] )
         );
  DFFRQX2M \d_reg[11][3]  ( .D(\d[10][3] ), .CK(clk), .RN(n18), .Q(\d[11][3] )
         );
  DFFRQX2M \d_reg[11][2]  ( .D(\d[10][2] ), .CK(clk), .RN(n18), .Q(\d[11][2] )
         );
  DFFRQX2M \d_reg[11][1]  ( .D(\d[10][1] ), .CK(clk), .RN(n18), .Q(\d[11][1] )
         );
  DFFRQX2M \d_reg[8][3]  ( .D(\d[7][3] ), .CK(clk), .RN(n14), .Q(\d[8][3] ) );
  DFFRQX2M \d_reg[8][2]  ( .D(\d[7][2] ), .CK(clk), .RN(n14), .Q(\d[8][2] ) );
  DFFRQX2M \d_reg[8][1]  ( .D(\d[7][1] ), .CK(clk), .RN(n14), .Q(\d[8][1] ) );
  DFFRQX2M \d_reg[0][3]  ( .D(data_in[3]), .CK(clk), .RN(n4), .Q(\d[0][3] ) );
  DFFRQX2M \d_reg[0][2]  ( .D(data_in[2]), .CK(clk), .RN(n5), .Q(\d[0][2] ) );
  DFFRQX2M \d_reg[0][1]  ( .D(data_in[1]), .CK(clk), .RN(n5), .Q(\d[0][1] ) );
  DFFRQX2M \d_reg[4][5]  ( .D(\d[3][5] ), .CK(clk), .RN(n9), .Q(\d[4][5] ) );
  DFFRQX2M \d_reg[4][4]  ( .D(\d[3][4] ), .CK(clk), .RN(n9), .Q(\d[4][4] ) );
  DFFRQX2M \d_reg[4][3]  ( .D(\d[3][3] ), .CK(clk), .RN(n9), .Q(\d[4][3] ) );
  DFFRQX2M \d_reg[4][2]  ( .D(\d[3][2] ), .CK(clk), .RN(n9), .Q(\d[4][2] ) );
  DFFRQX2M \d_reg[4][1]  ( .D(\d[3][1] ), .CK(clk), .RN(n10), .Q(\d[4][1] ) );
  DFFRQX2M \d_reg[5][3]  ( .D(\d[4][3] ), .CK(clk), .RN(n11), .Q(\d[5][3] ) );
  DFFRQX2M \d_reg[5][2]  ( .D(\d[4][2] ), .CK(clk), .RN(n11), .Q(\d[5][2] ) );
  DFFRQX2M \d_reg[5][1]  ( .D(\d[4][1] ), .CK(clk), .RN(n11), .Q(\d[5][1] ) );
  DFFRQX2M \d_reg[6][4]  ( .D(\d[5][4] ), .CK(clk), .RN(n12), .Q(\d[6][4] ) );
  DFFRQX2M \d_reg[6][3]  ( .D(\d[5][3] ), .CK(clk), .RN(n12), .Q(\d[6][3] ) );
  DFFRQX2M \d_reg[6][2]  ( .D(\d[5][2] ), .CK(clk), .RN(n12), .Q(\d[6][2] ) );
  DFFRQX2M \d_reg[6][1]  ( .D(\d[5][1] ), .CK(clk), .RN(n12), .Q(\d[6][1] ) );
  DFFRQX2M \d_reg[7][3]  ( .D(\d[6][3] ), .CK(clk), .RN(n13), .Q(\d[7][3] ) );
  DFFRQX2M \d_reg[7][2]  ( .D(\d[6][2] ), .CK(clk), .RN(n13), .Q(\d[7][2] ) );
  DFFRQX2M \d_reg[7][1]  ( .D(\d[6][1] ), .CK(clk), .RN(n13), .Q(\d[7][1] ) );
  DFFRQX2M \d_reg[15][0]  ( .D(\d[14][0] ), .CK(clk), .RN(n23), .Q(\d[15][0] )
         );
  DFFRQX2M \d_reg[8][0]  ( .D(\d[7][0] ), .CK(clk), .RN(n15), .Q(\d[8][0] ) );
  DFFRQX2M \d_reg[9][0]  ( .D(\d[8][0] ), .CK(clk), .RN(n16), .Q(\d[9][0] ) );
  DFFRQX2M \d_reg[10][0]  ( .D(\d[9][0] ), .CK(clk), .RN(n17), .Q(\d[10][0] )
         );
  DFFRQX2M \d_reg[11][0]  ( .D(\d[10][0] ), .CK(clk), .RN(n18), .Q(\d[11][0] )
         );
  DFFRQX2M \d_reg[0][0]  ( .D(data_in[0]), .CK(clk), .RN(n5), .Q(\d[0][0] ) );
  DFFRQX2M \d_reg[4][0]  ( .D(\d[3][0] ), .CK(clk), .RN(n10), .Q(\d[4][0] ) );
  DFFRQX2M \d_reg[5][0]  ( .D(\d[4][0] ), .CK(clk), .RN(n11), .Q(\d[5][0] ) );
  DFFRQX2M \d_reg[6][0]  ( .D(\d[5][0] ), .CK(clk), .RN(n12), .Q(\d[6][0] ) );
  DFFRQX2M \d_reg[7][0]  ( .D(\d[6][0] ), .CK(clk), .RN(n13), .Q(\d[7][0] ) );
  DFFRQX2M \even_out_reg[14]  ( .D(acc[23]), .CK(clk), .RN(n25), .Q(
        even_out[14]) );
  DFFRQX2M \even_out_reg[13]  ( .D(acc[22]), .CK(clk), .RN(n25), .Q(
        even_out[13]) );
  DFFRQX2M \even_out_reg[12]  ( .D(acc[21]), .CK(clk), .RN(n25), .Q(
        even_out[12]) );
  DFFRQX2M \odd_out_reg[14]  ( .D(\d[8][15] ), .CK(clk), .RN(n23), .Q(
        odd_out[14]) );
  DFFRQX2M \odd_out_reg[13]  ( .D(\d[8][14] ), .CK(clk), .RN(n23), .Q(
        odd_out[13]) );
  DFFRQX2M \odd_out_reg[12]  ( .D(\d[8][13] ), .CK(clk), .RN(n23), .Q(
        odd_out[12]) );
  DFFRQX2M \even_out_reg[15]  ( .D(acc[24]), .CK(clk), .RN(n24), .Q(
        even_out[15]) );
  DFFRQX2M \odd_out_reg[15]  ( .D(\d[8][15] ), .CK(clk), .RN(n23), .Q(
        odd_out[15]) );
  DFFRQX2M \even_out_reg[11]  ( .D(acc[20]), .CK(clk), .RN(n25), .Q(
        even_out[11]) );
  DFFRQX2M \even_out_reg[10]  ( .D(acc[19]), .CK(clk), .RN(n25), .Q(
        even_out[10]) );
  DFFRQX2M \even_out_reg[9]  ( .D(acc[18]), .CK(clk), .RN(n25), .Q(even_out[9]) );
  DFFRQX2M \even_out_reg[8]  ( .D(acc[17]), .CK(clk), .RN(n25), .Q(even_out[8]) );
  DFFRQX2M \odd_out_reg[11]  ( .D(\d[8][12] ), .CK(clk), .RN(n24), .Q(
        odd_out[11]) );
  DFFRQX2M \odd_out_reg[10]  ( .D(\d[8][11] ), .CK(clk), .RN(n24), .Q(
        odd_out[10]) );
  DFFRQX2M \odd_out_reg[9]  ( .D(\d[8][10] ), .CK(clk), .RN(n24), .Q(
        odd_out[9]) );
  DFFRQX2M \odd_out_reg[8]  ( .D(\d[8][9] ), .CK(clk), .RN(n24), .Q(odd_out[8]) );
  DFFRQX2M \odd_out_reg[7]  ( .D(\d[8][8] ), .CK(clk), .RN(n24), .Q(odd_out[7]) );
  DFFRQX2M \even_out_reg[7]  ( .D(acc[16]), .CK(clk), .RN(n25), .Q(even_out[7]) );
  DFFRQX2M \even_out_reg[6]  ( .D(acc[15]), .CK(clk), .RN(n25), .Q(even_out[6]) );
  DFFRQX2M \even_out_reg[5]  ( .D(acc[14]), .CK(clk), .RN(n25), .Q(even_out[5]) );
  DFFRQX2M \odd_out_reg[6]  ( .D(\d[8][7] ), .CK(clk), .RN(n24), .Q(odd_out[6]) );
  DFFRQX2M \odd_out_reg[5]  ( .D(\d[8][6] ), .CK(clk), .RN(n24), .Q(odd_out[5]) );
  DFFRQX2M \even_out_reg[3]  ( .D(acc[12]), .CK(clk), .RN(n25), .Q(even_out[3]) );
  DFFRQX2M \even_out_reg[2]  ( .D(acc[11]), .CK(clk), .RN(n25), .Q(even_out[2]) );
  DFFRQX2M \even_out_reg[1]  ( .D(acc[10]), .CK(clk), .RN(n26), .Q(even_out[1]) );
  DFFRQX2M \even_out_reg[0]  ( .D(acc[9]), .CK(clk), .RN(n26), .Q(even_out[0])
         );
  DFFRQX2M \odd_out_reg[3]  ( .D(\d[8][4] ), .CK(clk), .RN(n24), .Q(odd_out[3]) );
  DFFRQX2M \odd_out_reg[2]  ( .D(\d[8][3] ), .CK(clk), .RN(n24), .Q(odd_out[2]) );
  DFFRQX2M \odd_out_reg[1]  ( .D(\d[8][2] ), .CK(clk), .RN(n24), .Q(odd_out[1]) );
  DFFRQX2M \odd_out_reg[0]  ( .D(\d[8][1] ), .CK(clk), .RN(n24), .Q(odd_out[0]) );
  DFFRQX2M \even_out_reg[4]  ( .D(acc[13]), .CK(clk), .RN(n25), .Q(even_out[4]) );
  DFFRQX2M \odd_out_reg[4]  ( .D(\d[8][5] ), .CK(clk), .RN(n24), .Q(odd_out[4]) );
  BUFX2M U6 ( .A(n34), .Y(n5) );
  BUFX2M U7 ( .A(n27), .Y(n25) );
  BUFX2M U8 ( .A(n27), .Y(n24) );
  BUFX2M U9 ( .A(n28), .Y(n23) );
  BUFX2M U10 ( .A(n28), .Y(n22) );
  BUFX2M U11 ( .A(n28), .Y(n21) );
  BUFX2M U12 ( .A(n29), .Y(n20) );
  BUFX2M U13 ( .A(n29), .Y(n19) );
  BUFX2M U14 ( .A(n29), .Y(n18) );
  BUFX2M U15 ( .A(n30), .Y(n17) );
  BUFX2M U16 ( .A(n30), .Y(n16) );
  BUFX2M U17 ( .A(n30), .Y(n15) );
  BUFX2M U18 ( .A(n31), .Y(n14) );
  BUFX2M U19 ( .A(n31), .Y(n13) );
  BUFX2M U20 ( .A(n31), .Y(n12) );
  BUFX2M U21 ( .A(n32), .Y(n11) );
  BUFX2M U22 ( .A(n32), .Y(n10) );
  BUFX2M U23 ( .A(n32), .Y(n9) );
  BUFX2M U24 ( .A(n33), .Y(n8) );
  BUFX2M U25 ( .A(n33), .Y(n7) );
  BUFX2M U26 ( .A(n33), .Y(n6) );
  BUFX2M U27 ( .A(n34), .Y(n4) );
  BUFX2M U28 ( .A(n27), .Y(n26) );
  BUFX2M U29 ( .A(n37), .Y(n27) );
  BUFX2M U30 ( .A(n37), .Y(n28) );
  BUFX2M U31 ( .A(n36), .Y(n29) );
  BUFX2M U32 ( .A(n36), .Y(n30) );
  BUFX2M U33 ( .A(n36), .Y(n31) );
  BUFX2M U34 ( .A(n35), .Y(n32) );
  BUFX2M U35 ( .A(n35), .Y(n33) );
  BUFX2M U36 ( .A(n35), .Y(n34) );
  BUFX2M U37 ( .A(reset), .Y(n36) );
  BUFX2M U38 ( .A(reset), .Y(n35) );
  BUFX2M U39 ( .A(reset), .Y(n37) );
endmodule


module counter_1 ( clk, reset, SEL );
  input clk, reset;
  output SEL;
  wire   n2;

  DFFRHQX2M SEL_reg ( .D(n2), .CK(clk), .RN(reset), .Q(SEL) );
  INVXLM U3 ( .A(SEL), .Y(n2) );
endmodule


module up4_filter_2_DW01_add_33 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148;

  OAI21X2M U2 ( .A0(n42), .A1(n43), .B0(n44), .Y(n40) );
  NOR2X2M U3 ( .A(n47), .B(n48), .Y(n42) );
  NAND2X2M U4 ( .A(n52), .B(n53), .Y(n48) );
  OR2X1M U5 ( .A(B[17]), .B(A[17]), .Y(n45) );
  XNOR2XLM U6 ( .A(n41), .B(n40), .Y(SUM[19]) );
  AOI21X2M U7 ( .A0(n45), .A1(n48), .B0(n47), .Y(n49) );
  OR2X2M U8 ( .A(B[5]), .B(A[5]), .Y(n28) );
  OR2X2M U9 ( .A(B[12]), .B(A[12]), .Y(n110) );
  NAND2X2M U10 ( .A(n135), .B(n136), .Y(n23) );
  XNOR2X2M U11 ( .A(n30), .B(n31), .Y(SUM[21]) );
  AOI2B1X1M U12 ( .A1N(n33), .A0(n34), .B0(n2), .Y(n30) );
  XNOR2X2M U13 ( .A(n54), .B(n55), .Y(SUM[17]) );
  XNOR2X2M U14 ( .A(B[21]), .B(n37), .Y(n36) );
  XNOR2X2M U15 ( .A(n98), .B(n99), .Y(SUM[15]) );
  XNOR2X2M U16 ( .A(n49), .B(n50), .Y(SUM[18]) );
  AND2X2M U17 ( .A(B[2]), .B(A[2]), .Y(n1) );
  AND2X2M U18 ( .A(B[21]), .B(A[20]), .Y(n2) );
  XNOR2X2M U19 ( .A(n66), .B(n4), .Y(SUM[16]) );
  INVX1M U20 ( .A(B[2]), .Y(n147) );
  NOR2X1M U21 ( .A(B[15]), .B(A[15]), .Y(n6) );
  NAND2XLM U22 ( .A(n135), .B(n136), .Y(n89) );
  NAND2X2M U23 ( .A(n45), .B(n46), .Y(n43) );
  NAND2XLM U24 ( .A(B[19]), .B(A[19]), .Y(n39) );
  OR2X1M U25 ( .A(B[19]), .B(A[19]), .Y(n38) );
  NAND2XLM U26 ( .A(B[18]), .B(A[18]), .Y(n44) );
  NOR3X1M U27 ( .A(n26), .B(n90), .C(n91), .Y(n139) );
  NAND2XLM U28 ( .A(B[10]), .B(A[10]), .Y(n115) );
  NAND2XLM U29 ( .A(B[17]), .B(A[17]), .Y(n51) );
  NAND2XLM U30 ( .A(n53), .B(n52), .Y(n55) );
  NAND2X2M U31 ( .A(n95), .B(n96), .Y(n3) );
  OR2X2M U32 ( .A(B[10]), .B(A[10]), .Y(n81) );
  NAND2XLM U33 ( .A(B[15]), .B(A[15]), .Y(n61) );
  NOR2BXLM U34 ( .AN(n79), .B(n75), .Y(n74) );
  NAND2BX1M U35 ( .AN(n10), .B(n11), .Y(n127) );
  NAND2XLM U36 ( .A(B[13]), .B(A[13]), .Y(n97) );
  NAND2X2M U37 ( .A(B[16]), .B(A[16]), .Y(n52) );
  OR2X1M U38 ( .A(B[13]), .B(A[13]), .Y(n105) );
  INVXLM U39 ( .A(B[14]), .Y(n95) );
  CLKNAND2X2M U40 ( .A(n95), .B(n96), .Y(n101) );
  CLKNAND2X2M U41 ( .A(n70), .B(n71), .Y(n59) );
  INVXLM U42 ( .A(n21), .Y(n24) );
  NAND3X1M U43 ( .A(n113), .B(n78), .C(n77), .Y(n109) );
  NOR2BX1M U44 ( .AN(n61), .B(n6), .Y(n99) );
  AOI2B1XLM U45 ( .A1N(n6), .A0(n67), .B0(n68), .Y(n66) );
  NAND2XLM U46 ( .A(n63), .B(n62), .Y(n69) );
  INVXLM U47 ( .A(n78), .Y(n76) );
  NOR2XLM U48 ( .A(n87), .B(n80), .Y(n86) );
  OR2X2M U49 ( .A(B[16]), .B(A[16]), .Y(n65) );
  NAND2X1M U50 ( .A(n18), .B(n19), .Y(n17) );
  OR2X1M U51 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2XLM U52 ( .A(B[9]), .B(A[9]), .Y(n9) );
  NAND2X1M U53 ( .A(n27), .B(n20), .Y(n131) );
  INVX1M U54 ( .A(A[3]), .Y(n141) );
  XNOR2X2M U55 ( .A(n35), .B(n36), .Y(SUM[20]) );
  INVXLM U56 ( .A(A[20]), .Y(n37) );
  OAI2BB1X4M U57 ( .A0N(n38), .A1N(n40), .B0(n39), .Y(n34) );
  NOR2BXLM U58 ( .AN(n97), .B(n93), .Y(n107) );
  XNOR2X1M U59 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NOR2XLM U60 ( .A(n10), .B(n118), .Y(n116) );
  NAND2X2M U61 ( .A(n128), .B(n129), .Y(n11) );
  NAND2XLM U62 ( .A(n15), .B(n23), .Y(n130) );
  NAND2BX2M U63 ( .AN(n97), .B(n3), .Y(n63) );
  CLKNAND2X2M U64 ( .A(n108), .B(n79), .Y(n104) );
  CLKNAND2X2M U65 ( .A(n97), .B(n103), .Y(n100) );
  OAI211XLM U66 ( .A0(n10), .A1(n14), .B0(n9), .C0(n115), .Y(n114) );
  NAND2XLM U67 ( .A(n20), .B(n21), .Y(n19) );
  INVXLM U68 ( .A(n29), .Y(n90) );
  NAND2XLM U69 ( .A(A[4]), .B(B[4]), .Y(n133) );
  NAND2XLM U70 ( .A(B[5]), .B(A[5]), .Y(n134) );
  NAND2XLM U71 ( .A(B[14]), .B(A[14]), .Y(n62) );
  NAND2X2M U72 ( .A(B[12]), .B(A[12]), .Y(n79) );
  NAND3X2M U73 ( .A(n131), .B(n18), .C(n132), .Y(n85) );
  INVX3M U74 ( .A(A[21]), .Y(n32) );
  OR2X2M U75 ( .A(B[11]), .B(A[11]), .Y(n82) );
  OR2X2M U76 ( .A(B[6]), .B(A[6]), .Y(n20) );
  OR2X2M U77 ( .A(B[9]), .B(A[9]), .Y(n83) );
  OR2X2M U78 ( .A(B[18]), .B(A[18]), .Y(n46) );
  NAND2XLM U79 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NAND2XLM U80 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2XLM U81 ( .A(B[6]), .B(A[6]), .Y(n18) );
  CLKINVX2M U82 ( .A(n140), .Y(n87) );
  CLKNAND2X2M U83 ( .A(n144), .B(n1), .Y(n143) );
  NAND2X1M U84 ( .A(n142), .B(n141), .Y(n145) );
  CLKINVX2M U85 ( .A(A[2]), .Y(n148) );
  INVXLM U86 ( .A(n34), .Y(n35) );
  NOR2X2M U87 ( .A(n118), .B(n117), .Y(n138) );
  NAND3X2M U88 ( .A(n89), .B(n140), .C(n139), .Y(n117) );
  NAND2X2M U89 ( .A(n39), .B(n38), .Y(n41) );
  INVX2M U90 ( .A(n23), .Y(n84) );
  OAI2B1XLM U91 ( .A1N(n85), .A0(n84), .B0(n117), .Y(n13) );
  XNOR2X2M U92 ( .A(n119), .B(n120), .Y(SUM[11]) );
  NOR2BX2M U93 ( .AN(n78), .B(n121), .Y(n120) );
  AOI2B1X1M U94 ( .A1N(n122), .A0(n123), .B0(n124), .Y(n119) );
  INVX2M U95 ( .A(n82), .Y(n121) );
  XNOR2X2M U96 ( .A(n125), .B(n126), .Y(SUM[10]) );
  NOR2BX2M U97 ( .AN(n115), .B(n122), .Y(n126) );
  INVX2M U98 ( .A(n123), .Y(n125) );
  XNOR2X2M U99 ( .A(n7), .B(n8), .Y(SUM[9]) );
  NOR2BX2M U100 ( .AN(n9), .B(n10), .Y(n8) );
  INVX2M U101 ( .A(n11), .Y(n7) );
  NAND2X2M U102 ( .A(n14), .B(n15), .Y(n12) );
  NAND2X2M U103 ( .A(n127), .B(n9), .Y(n123) );
  NAND2BX2M U104 ( .AN(n130), .B(n85), .Y(n129) );
  NOR2X2M U105 ( .A(n137), .B(n138), .Y(n128) );
  INVX2M U106 ( .A(n20), .Y(n26) );
  INVX2M U107 ( .A(n81), .Y(n122) );
  AND2X2M U108 ( .A(n44), .B(n46), .Y(n50) );
  AND2X2M U109 ( .A(n65), .B(n52), .Y(n4) );
  XNOR2X2M U110 ( .A(n106), .B(n107), .Y(SUM[13]) );
  INVX2M U111 ( .A(n104), .Y(n106) );
  XNOR2X2M U112 ( .A(n111), .B(n112), .Y(SUM[12]) );
  INVX2M U113 ( .A(n109), .Y(n111) );
  NOR2BX2M U114 ( .AN(n79), .B(n94), .Y(n112) );
  XNOR2X2M U115 ( .A(n24), .B(n25), .Y(SUM[6]) );
  NOR2BXLM U116 ( .AN(n18), .B(n26), .Y(n25) );
  NAND3X2M U117 ( .A(n114), .B(n81), .C(n82), .Y(n77) );
  NAND2BX2M U118 ( .AN(n69), .B(n59), .Y(n67) );
  INVX2M U119 ( .A(n61), .Y(n68) );
  AOI21BX2M U120 ( .A0(n101), .A1(n100), .B0N(n62), .Y(n98) );
  NAND2X2M U121 ( .A(n56), .B(n57), .Y(n53) );
  NAND3BX2M U122 ( .AN(n58), .B(n59), .C(n60), .Y(n57) );
  NOR2X2M U123 ( .A(n64), .B(n6), .Y(n56) );
  INVX2M U124 ( .A(n63), .Y(n58) );
  NAND2BX2M U125 ( .AN(n76), .B(n77), .Y(n75) );
  INVX2M U126 ( .A(A[7]), .Y(n136) );
  NAND4XLM U127 ( .A(n116), .B(n13), .C(n81), .D(n82), .Y(n113) );
  NAND4X2M U128 ( .A(n81), .B(n82), .C(n83), .D(n15), .Y(n73) );
  INVX2M U129 ( .A(n83), .Y(n10) );
  INVX2M U130 ( .A(A[14]), .Y(n96) );
  INVX2M U131 ( .A(n28), .Y(n91) );
  NAND2XLM U132 ( .A(n109), .B(n110), .Y(n108) );
  OAI21X2M U133 ( .A0(n72), .A1(n73), .B0(n74), .Y(n71) );
  NOR3X2M U134 ( .A(n92), .B(n93), .C(n94), .Y(n70) );
  AOI2B1XLM U135 ( .A1N(n84), .A0(n85), .B0(n86), .Y(n72) );
  INVX2M U136 ( .A(n51), .Y(n47) );
  INVX2M U137 ( .A(n110), .Y(n94) );
  INVX2M U138 ( .A(n105), .Y(n93) );
  INVX2M U139 ( .A(n15), .Y(n118) );
  XNOR2X2M U140 ( .A(n100), .B(n102), .Y(SUM[14]) );
  NAND2XLM U141 ( .A(n101), .B(n62), .Y(n102) );
  NAND2X2M U142 ( .A(n104), .B(n105), .Y(n103) );
  AO21XLM U143 ( .A0(n140), .A1(n5), .B0(n27), .Y(n21) );
  AND2X2M U144 ( .A(n28), .B(n29), .Y(n5) );
  NAND2X2M U145 ( .A(n51), .B(n45), .Y(n54) );
  INVX2M U146 ( .A(n14), .Y(n137) );
  AND2X2M U147 ( .A(n61), .B(n62), .Y(n60) );
  INVX2M U148 ( .A(n115), .Y(n124) );
  INVX2M U149 ( .A(n65), .Y(n64) );
  NAND3XLM U150 ( .A(n88), .B(n20), .C(n89), .Y(n80) );
  NOR2XLM U151 ( .A(n90), .B(n91), .Y(n88) );
  NAND2X2M U152 ( .A(B[7]), .B(A[7]), .Y(n132) );
  OAI21X2M U153 ( .A0(n91), .A1(n133), .B0(n134), .Y(n27) );
  XNOR2X2M U154 ( .A(n16), .B(n17), .Y(SUM[7]) );
  NAND2XLM U155 ( .A(n22), .B(n23), .Y(n16) );
  NOR2XLM U156 ( .A(A[14]), .B(B[14]), .Y(n92) );
  NAND2X2M U157 ( .A(B[11]), .B(A[11]), .Y(n78) );
  INVX2M U158 ( .A(B[7]), .Y(n135) );
  OR2X2M U159 ( .A(B[4]), .B(A[4]), .Y(n29) );
  OAI21X2M U160 ( .A0(n141), .A1(n142), .B0(n143), .Y(n140) );
  AND2X2M U161 ( .A(n146), .B(n145), .Y(n144) );
  NAND2X2M U162 ( .A(n147), .B(n148), .Y(n146) );
  XNOR2X4M U163 ( .A(B[21]), .B(n32), .Y(n31) );
  NOR2XLM U164 ( .A(A[20]), .B(B[21]), .Y(n33) );
  INVXLM U165 ( .A(B[3]), .Y(n142) );
endmodule


module up4_filter_2_DW01_add_25 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152;

  INVX3M U2 ( .A(B[16]), .Y(n72) );
  AOI2B1X1M U3 ( .A1N(n55), .A0(n45), .B0(n56), .Y(n53) );
  NOR2BX4M U4 ( .AN(n40), .B(n52), .Y(n51) );
  OA21X4M U5 ( .A0(n4), .A1(n14), .B0(n11), .Y(n1) );
  NAND2X1M U6 ( .A(n1), .B(n3), .Y(n122) );
  NOR2X8M U7 ( .A(B[9]), .B(A[9]), .Y(n4) );
  NAND2X1M U8 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2X1M U9 ( .A(B[10]), .B(A[10]), .Y(n3) );
  OR2X12M U10 ( .A(B[7]), .B(A[7]), .Y(n20) );
  NAND2X3M U11 ( .A(B[13]), .B(A[13]), .Y(n112) );
  OR2X6M U12 ( .A(B[11]), .B(A[11]), .Y(n90) );
  XNOR2X2M U13 ( .A(n119), .B(n118), .Y(SUM[12]) );
  INVX2M U14 ( .A(n15), .Y(n91) );
  INVX2M U15 ( .A(n112), .Y(n100) );
  INVX4M U16 ( .A(B[14]), .Y(n98) );
  INVX2M U17 ( .A(A[14]), .Y(n99) );
  NAND2BX2M U18 ( .AN(B[19]), .B(n35), .Y(n36) );
  NAND2X2M U19 ( .A(B[16]), .B(A[16]), .Y(n47) );
  INVX2M U20 ( .A(n109), .Y(n104) );
  NAND2X2M U21 ( .A(n98), .B(n99), .Y(n109) );
  INVX2M U22 ( .A(n132), .Y(n134) );
  XNOR2X4M U23 ( .A(n9), .B(n10), .Y(SUM[9]) );
  AOI2B1X1M U24 ( .A1N(n104), .A0(n105), .B0(n106), .Y(n102) );
  NAND2X2M U25 ( .A(B[6]), .B(A[6]), .Y(n26) );
  XNOR2X4M U26 ( .A(n69), .B(n70), .Y(SUM[16]) );
  NAND3XLM U27 ( .A(n62), .B(n63), .C(n64), .Y(n61) );
  AND2X2M U28 ( .A(B[20]), .B(A[21]), .Y(n2) );
  OAI2B2X1M U29 ( .A1N(n145), .A0(n146), .B0(n147), .B1(n148), .Y(n92) );
  INVX1M U30 ( .A(n105), .Y(n107) );
  NOR2BX4M U31 ( .AN(n11), .B(n4), .Y(n10) );
  NAND4X4M U32 ( .A(n143), .B(n92), .C(n27), .D(n20), .Y(n138) );
  INVX4M U33 ( .A(n89), .Y(n131) );
  XNOR2X1M U34 ( .A(n39), .B(n38), .Y(SUM[19]) );
  NAND2X2M U35 ( .A(n66), .B(n63), .Y(n76) );
  NOR2XLM U36 ( .A(n53), .B(n54), .Y(n50) );
  INVX4M U37 ( .A(B[10]), .Y(n124) );
  OR2X6M U38 ( .A(B[12]), .B(A[12]), .Y(n95) );
  XOR2X1M U39 ( .A(B[20]), .B(n35), .Y(n8) );
  OAI2BB1X4M U40 ( .A0N(n36), .A1N(n38), .B0(n37), .Y(n34) );
  NAND2BX4M U41 ( .AN(n77), .B(n78), .Y(n62) );
  NAND3X2M U42 ( .A(n95), .B(n96), .C(n97), .Y(n77) );
  CLKNAND2X2M U43 ( .A(n68), .B(n47), .Y(n71) );
  AOI2B1XLM U44 ( .A1N(n131), .A0(n132), .B0(n133), .Y(n128) );
  NAND2X1M U45 ( .A(B[10]), .B(A[10]), .Y(n126) );
  NAND3X2M U46 ( .A(n122), .B(n123), .C(n90), .Y(n84) );
  NAND4X2M U47 ( .A(n127), .B(n13), .C(n89), .D(n90), .Y(n121) );
  NAND2X4M U48 ( .A(n124), .B(n125), .Y(n89) );
  NAND2X4M U49 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OAI21X4M U50 ( .A0(n9), .A1(n4), .B0(n11), .Y(n132) );
  NAND3X2M U51 ( .A(n121), .B(n85), .C(n84), .Y(n117) );
  NAND2X2M U52 ( .A(n117), .B(n95), .Y(n116) );
  OR2X4M U53 ( .A(B[13]), .B(A[13]), .Y(n96) );
  XNOR2X4M U54 ( .A(n102), .B(n103), .Y(SUM[15]) );
  NOR2BX2M U55 ( .AN(n86), .B(n120), .Y(n119) );
  NAND2BX2M U56 ( .AN(n91), .B(n13), .Y(n137) );
  XNOR2X1M U57 ( .A(n12), .B(n13), .Y(SUM[8]) );
  OR2X2M U58 ( .A(B[6]), .B(A[6]), .Y(n27) );
  NOR2BX4M U59 ( .AN(n112), .B(n115), .Y(n114) );
  CLKINVX2M U60 ( .A(n96), .Y(n115) );
  CLKINVX1M U61 ( .A(n95), .Y(n120) );
  NOR2X1M U62 ( .A(n74), .B(n7), .Y(n69) );
  XNOR2X2M U63 ( .A(n134), .B(n135), .Y(SUM[10]) );
  INVX3M U64 ( .A(n136), .Y(n9) );
  CLKNAND2X2M U65 ( .A(B[15]), .B(A[15]), .Y(n75) );
  AOI2B1XLM U66 ( .A1N(n76), .A0(n62), .B0(n6), .Y(n74) );
  INVX1M U67 ( .A(n117), .Y(n118) );
  NAND2X2M U68 ( .A(A[12]), .B(B[12]), .Y(n86) );
  NAND2X1M U69 ( .A(n40), .B(n41), .Y(n38) );
  AND2X1M U70 ( .A(n46), .B(n47), .Y(n44) );
  CLKINVX2M U71 ( .A(n47), .Y(n55) );
  NAND2XLM U72 ( .A(n44), .B(n45), .Y(n43) );
  CLKNAND2X4M U73 ( .A(n72), .B(n73), .Y(n68) );
  CLKNAND2X2M U74 ( .A(B[18]), .B(A[18]), .Y(n40) );
  CLKNAND2X2M U75 ( .A(B[19]), .B(A[21]), .Y(n37) );
  CLKINVX2M U76 ( .A(n45), .Y(n59) );
  NAND2X2M U77 ( .A(n60), .B(n61), .Y(n45) );
  CLKNAND2X2M U78 ( .A(n116), .B(n86), .Y(n111) );
  NAND2X1M U79 ( .A(n37), .B(n36), .Y(n39) );
  XNOR2X4M U80 ( .A(n50), .B(n51), .Y(SUM[18]) );
  NAND2X1M U81 ( .A(B[1]), .B(A[1]), .Y(n151) );
  XNOR2X2M U82 ( .A(n107), .B(n108), .Y(SUM[14]) );
  AOI21X1M U83 ( .A0(B[14]), .A1(A[14]), .B0(n104), .Y(n108) );
  NAND2BX4M U84 ( .AN(n42), .B(n43), .Y(n41) );
  XNOR2X2M U85 ( .A(n31), .B(n32), .Y(SUM[21]) );
  CLKNAND2X2M U86 ( .A(n140), .B(n29), .Y(n28) );
  NAND2X1M U87 ( .A(n141), .B(n142), .Y(n140) );
  NAND2X2M U88 ( .A(n100), .B(n101), .Y(n66) );
  OR2X6M U89 ( .A(B[18]), .B(A[18]), .Y(n49) );
  NOR2BX2M U90 ( .AN(n75), .B(n6), .Y(n103) );
  OR2X4M U91 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2XLM U92 ( .A(n98), .B(n99), .Y(n101) );
  NOR2BXLM U93 ( .AN(n86), .B(n82), .Y(n81) );
  NAND2X2M U94 ( .A(B[17]), .B(A[17]), .Y(n46) );
  OR2X2M U95 ( .A(B[5]), .B(A[5]), .Y(n29) );
  INVXLM U96 ( .A(n85), .Y(n83) );
  CLKNAND2X2M U97 ( .A(n48), .B(n49), .Y(n42) );
  NOR2XLM U98 ( .A(n67), .B(n6), .Y(n60) );
  NOR2X2M U99 ( .A(n65), .B(n7), .Y(n64) );
  NAND3XLM U100 ( .A(n88), .B(n89), .C(n90), .Y(n80) );
  OR2X2M U101 ( .A(B[17]), .B(A[17]), .Y(n48) );
  XOR2X4M U102 ( .A(B[21]), .B(A[21]), .Y(n32) );
  NOR2X1M U103 ( .A(A[21]), .B(B[20]), .Y(n33) );
  AOI2B1X2M U104 ( .A1N(n33), .A0(n34), .B0(n2), .Y(n31) );
  NAND2XLM U105 ( .A(n14), .B(n15), .Y(n12) );
  NOR2BX2M U106 ( .AN(n30), .B(n152), .Y(n143) );
  AOI2B1XLM U107 ( .A1N(n87), .A0(n92), .B0(n93), .Y(n79) );
  NOR2XLM U108 ( .A(n4), .B(n91), .Y(n127) );
  OAI2BB1XLM U109 ( .A0N(n92), .A1N(n5), .B0(n28), .Y(n22) );
  NAND2XLM U110 ( .A(n98), .B(n99), .Y(n97) );
  CLKINVX2M U111 ( .A(n26), .Y(n23) );
  NOR2BXLM U112 ( .AN(n26), .B(n21), .Y(n25) );
  INVXLM U113 ( .A(n22), .Y(n24) );
  NAND4XLM U114 ( .A(n27), .B(n20), .C(n29), .D(n30), .Y(n87) );
  NOR2X2M U115 ( .A(B[15]), .B(A[15]), .Y(n6) );
  NAND2XLM U116 ( .A(B[14]), .B(A[14]), .Y(n63) );
  NAND2XLM U117 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2X2M U118 ( .A(B[11]), .B(A[11]), .Y(n85) );
  OR2X2M U119 ( .A(B[4]), .B(A[4]), .Y(n30) );
  INVXLM U120 ( .A(n111), .Y(n113) );
  INVXLM U121 ( .A(A[21]), .Y(n35) );
  INVX2M U122 ( .A(n49), .Y(n52) );
  INVX2M U123 ( .A(n66), .Y(n65) );
  INVX2M U124 ( .A(n63), .Y(n106) );
  XNOR2X2M U125 ( .A(n57), .B(n58), .Y(SUM[17]) );
  NOR2X2M U126 ( .A(n59), .B(n55), .Y(n57) );
  NOR2BX2M U127 ( .AN(n46), .B(n56), .Y(n58) );
  INVX2M U128 ( .A(n46), .Y(n54) );
  NOR2BX2M U129 ( .AN(n126), .B(n131), .Y(n135) );
  NAND2X2M U130 ( .A(n124), .B(n125), .Y(n123) );
  NAND3X2M U131 ( .A(n139), .B(n27), .C(n20), .Y(n94) );
  NAND2BX2M U132 ( .AN(n23), .B(n28), .Y(n139) );
  NAND3X2M U133 ( .A(n138), .B(n18), .C(n94), .Y(n13) );
  NAND2BX2M U134 ( .AN(n100), .B(n110), .Y(n105) );
  NAND2X2M U135 ( .A(n111), .B(n96), .Y(n110) );
  XNOR2X2M U136 ( .A(n128), .B(n129), .Y(SUM[11]) );
  NOR2BX2M U137 ( .AN(n85), .B(n130), .Y(n129) );
  INVXLM U138 ( .A(n3), .Y(n133) );
  OAI21X2M U139 ( .A0(n79), .A1(n80), .B0(n81), .Y(n78) );
  INVX2M U140 ( .A(n68), .Y(n67) );
  INVX2M U141 ( .A(n90), .Y(n130) );
  INVX2M U142 ( .A(n48), .Y(n56) );
  INVX2M U143 ( .A(n29), .Y(n152) );
  CLKNAND2X2M U144 ( .A(n137), .B(n14), .Y(n136) );
  INVX2M U145 ( .A(n71), .Y(n70) );
  AND2X2M U146 ( .A(n29), .B(n30), .Y(n5) );
  XNOR2X2M U147 ( .A(n16), .B(n17), .Y(SUM[7]) );
  NOR2BX2M U148 ( .AN(n18), .B(n19), .Y(n17) );
  AOI2B1X1M U149 ( .A1N(n21), .A0(n22), .B0(n23), .Y(n16) );
  INVX2M U150 ( .A(n20), .Y(n19) );
  XNOR2X2M U151 ( .A(n24), .B(n25), .Y(SUM[6]) );
  NAND2BXLM U152 ( .AN(n83), .B(n84), .Y(n82) );
  NOR2XLM U153 ( .A(n91), .B(n4), .Y(n88) );
  INVX2M U154 ( .A(B[3]), .Y(n148) );
  INVX2M U155 ( .A(n27), .Y(n21) );
  NAND2XLM U156 ( .A(n94), .B(n18), .Y(n93) );
  INVX2M U157 ( .A(A[16]), .Y(n73) );
  NAND2X2M U158 ( .A(B[4]), .B(A[4]), .Y(n142) );
  NAND2XLM U159 ( .A(B[5]), .B(A[5]), .Y(n141) );
  INVX2M U160 ( .A(A[10]), .Y(n125) );
  AND2X1M U161 ( .A(B[15]), .B(A[15]), .Y(n7) );
  XNOR2X2M U162 ( .A(n34), .B(n8), .Y(SUM[20]) );
  NAND2X2M U163 ( .A(n149), .B(n144), .Y(n146) );
  CLKNAND2X2M U164 ( .A(n148), .B(n147), .Y(n145) );
  INVX2M U165 ( .A(A[3]), .Y(n147) );
  XNOR2X4M U166 ( .A(n113), .B(n114), .Y(SUM[13]) );
  OR2X1M U167 ( .A(B[2]), .B(A[2]), .Y(n144) );
  CLKNAND2X2M U168 ( .A(n150), .B(n151), .Y(n149) );
  NAND2XLM U169 ( .A(B[2]), .B(A[2]), .Y(n150) );
endmodule


module up4_filter_2_DW01_add_19 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165;

  NAND2X2M U2 ( .A(n120), .B(n121), .Y(n3) );
  CLKNAND2X8M U3 ( .A(n1), .B(n2), .Y(n4) );
  NAND2X4M U4 ( .A(n3), .B(n4), .Y(SUM[15]) );
  INVX5M U5 ( .A(n120), .Y(n1) );
  INVX4M U6 ( .A(n121), .Y(n2) );
  NAND2X1M U7 ( .A(n147), .B(n148), .Y(n7) );
  NAND2X3M U8 ( .A(n5), .B(n6), .Y(n8) );
  CLKNAND2X4M U9 ( .A(n7), .B(n8), .Y(SUM[11]) );
  CLKINVX2M U10 ( .A(n147), .Y(n5) );
  CLKINVX4M U11 ( .A(n148), .Y(n6) );
  AOI2B1X4M U12 ( .A1N(n150), .A0(n151), .B0(n152), .Y(n147) );
  AOI2B1X4M U13 ( .A1N(n123), .A0(n124), .B0(n125), .Y(n120) );
  OAI2B1X4M U14 ( .A1N(n117), .A0(n129), .B0(n97), .Y(n124) );
  XNOR2X4M U15 ( .A(n124), .B(n126), .Y(SUM[14]) );
  OAI21X4M U16 ( .A0(n19), .A1(n22), .B0(n21), .Y(n151) );
  CLKNAND2X2M U17 ( .A(n132), .B(n104), .Y(n130) );
  NAND2X2M U18 ( .A(n133), .B(n116), .Y(n132) );
  CLKNAND2X2M U19 ( .A(B[13]), .B(A[13]), .Y(n97) );
  XNOR2X2M U20 ( .A(n88), .B(n87), .Y(SUM[16]) );
  OAI2BB1X2M U21 ( .A0N(n18), .A1N(n66), .B0(n65), .Y(n62) );
  BUFX2M U22 ( .A(B[1]), .Y(n16) );
  NAND4BX1M U23 ( .AN(n68), .B(n60), .C(n161), .D(n51), .Y(n115) );
  AND3X2M U24 ( .A(n160), .B(n115), .C(n49), .Y(n14) );
  NOR2X2M U25 ( .A(n162), .B(n163), .Y(n160) );
  INVX2M U26 ( .A(n114), .Y(n162) );
  OAI21X4M U27 ( .A0(n14), .A1(n43), .B0(n44), .Y(n40) );
  OR2X2M U28 ( .A(B[15]), .B(A[15]), .Y(n93) );
  OR2X2M U29 ( .A(B[7]), .B(A[7]), .Y(n31) );
  OR2X2M U30 ( .A(B[12]), .B(A[12]), .Y(n116) );
  NAND2X2M U31 ( .A(n12), .B(n105), .Y(n133) );
  NAND2X2M U32 ( .A(n127), .B(n128), .Y(n92) );
  INVX2M U33 ( .A(B[14]), .Y(n127) );
  NAND2X2M U34 ( .A(B[14]), .B(A[14]), .Y(n98) );
  INVX2M U35 ( .A(n130), .Y(n129) );
  NAND2X2M U36 ( .A(n84), .B(n83), .Y(n80) );
  NAND2X2M U37 ( .A(B[17]), .B(A[17]), .Y(n77) );
  XNOR2X2M U38 ( .A(n33), .B(n37), .Y(SUM[6]) );
  XNOR2X2M U39 ( .A(n131), .B(n130), .Y(SUM[13]) );
  XNOR2X2M U40 ( .A(n133), .B(n136), .Y(SUM[12]) );
  NAND2X2M U41 ( .A(n104), .B(n116), .Y(n136) );
  NAND2X2M U42 ( .A(n98), .B(n92), .Y(n126) );
  XNOR2X2M U43 ( .A(n70), .B(n66), .Y(SUM[19]) );
  NAND4X2M U44 ( .A(n36), .B(n31), .C(n41), .D(n46), .Y(n106) );
  NAND2X1M U45 ( .A(n156), .B(n31), .Y(n109) );
  INVX2M U46 ( .A(n24), .Y(n137) );
  OAI21X2M U47 ( .A0(n9), .A1(n106), .B0(n109), .Y(n24) );
  OAI21X2M U48 ( .A0(n90), .A1(n89), .B0(n91), .Y(n87) );
  CLKNAND2X2M U49 ( .A(B[7]), .B(A[7]), .Y(n29) );
  BUFX2M U50 ( .A(n14), .Y(n9) );
  NAND2XLM U51 ( .A(n35), .B(n36), .Y(n37) );
  OR2X6M U52 ( .A(B[9]), .B(A[9]), .Y(n143) );
  CLKNAND2X2M U53 ( .A(n146), .B(n144), .Y(n153) );
  NAND2X1M U54 ( .A(B[16]), .B(A[16]), .Y(n86) );
  CLKINVX2M U55 ( .A(B[16]), .Y(n118) );
  NAND2X1M U56 ( .A(n138), .B(n139), .Y(n105) );
  CLKNAND2X2M U57 ( .A(n24), .B(n11), .Y(n12) );
  OR2X2M U58 ( .A(B[6]), .B(A[6]), .Y(n36) );
  XNOR2X1M U59 ( .A(n23), .B(n24), .Y(SUM[8]) );
  NAND2X2M U60 ( .A(B[19]), .B(A[19]), .Y(n65) );
  NAND2X4M U61 ( .A(n134), .B(n135), .Y(n117) );
  NOR2BX4M U62 ( .AN(n91), .B(n122), .Y(n121) );
  CLKINVX4M U63 ( .A(B[13]), .Y(n134) );
  NAND2X1M U64 ( .A(B[15]), .B(A[15]), .Y(n91) );
  INVX1M U65 ( .A(n51), .Y(n50) );
  XNOR2X1M U66 ( .A(n9), .B(n45), .Y(SUM[4]) );
  NAND2X1M U67 ( .A(B[4]), .B(A[4]), .Y(n44) );
  XNOR2X2M U68 ( .A(n40), .B(n42), .Y(SUM[5]) );
  NOR2BX4M U69 ( .AN(n21), .B(n22), .Y(n20) );
  CLKINVX4M U70 ( .A(n143), .Y(n22) );
  CLKNAND2X4M U71 ( .A(B[11]), .B(A[11]), .Y(n145) );
  NAND2X4M U72 ( .A(n40), .B(n41), .Y(n38) );
  INVXLM U73 ( .A(n163), .Y(n10) );
  INVX2M U74 ( .A(n113), .Y(n163) );
  NAND2X1M U75 ( .A(n54), .B(n51), .Y(n113) );
  NAND2XLM U76 ( .A(A[3]), .B(B[3]), .Y(n49) );
  XNOR2X4M U77 ( .A(n27), .B(n28), .Y(SUM[7]) );
  XNOR2X2M U78 ( .A(n62), .B(n61), .Y(SUM[20]) );
  CLKNAND2X2M U79 ( .A(B[10]), .B(A[10]), .Y(n146) );
  NAND4X2M U80 ( .A(n144), .B(n139), .C(n143), .D(n26), .Y(n100) );
  OR2X6M U81 ( .A(B[11]), .B(A[11]), .Y(n139) );
  XNOR2X4M U82 ( .A(n19), .B(n20), .Y(SUM[9]) );
  CLKINVX1M U83 ( .A(n100), .Y(n11) );
  NAND3X1M U84 ( .A(n159), .B(n41), .C(n36), .Y(n158) );
  CLKINVX2M U85 ( .A(n36), .Y(n32) );
  NOR2BX2M U86 ( .AN(n29), .B(n30), .Y(n28) );
  CLKINVX2M U87 ( .A(n31), .Y(n30) );
  CLKINVX2M U88 ( .A(n109), .Y(n108) );
  NAND2X1M U89 ( .A(n77), .B(n78), .Y(n17) );
  CLKINVX2M U90 ( .A(n92), .Y(n123) );
  OR2X6M U91 ( .A(A[3]), .B(B[3]), .Y(n51) );
  AOI2B1X4M U92 ( .A1N(n32), .A0(n33), .B0(n34), .Y(n27) );
  NAND2X4M U93 ( .A(n38), .B(n39), .Y(n33) );
  NAND2XLM U94 ( .A(n44), .B(n39), .Y(n159) );
  NAND2X2M U95 ( .A(B[5]), .B(A[5]), .Y(n39) );
  CLKINVX2M U96 ( .A(n144), .Y(n150) );
  NAND2X1M U97 ( .A(B[6]), .B(A[6]), .Y(n35) );
  NAND2X2M U98 ( .A(B[18]), .B(A[18]), .Y(n72) );
  INVX1M U99 ( .A(n139), .Y(n149) );
  INVX2M U100 ( .A(A[14]), .Y(n128) );
  CLKNAND2X4M U101 ( .A(B[9]), .B(A[9]), .Y(n21) );
  NAND2X1M U102 ( .A(B[8]), .B(A[8]), .Y(n25) );
  NAND2X2M U103 ( .A(B[2]), .B(A[2]), .Y(n57) );
  CLKNAND2X4M U104 ( .A(n77), .B(n80), .Y(n82) );
  XNOR2X4M U105 ( .A(n151), .B(n153), .Y(SUM[10]) );
  OAI2BB1X2M U106 ( .A0N(n71), .A1N(n73), .B0(n72), .Y(n66) );
  NAND2X2M U107 ( .A(n97), .B(n117), .Y(n131) );
  NAND3XLM U108 ( .A(n142), .B(n143), .C(n144), .Y(n141) );
  CLKNAND2X2M U109 ( .A(B[12]), .B(A[12]), .Y(n104) );
  INVXLM U110 ( .A(A[16]), .Y(n119) );
  INVX2M U111 ( .A(A[13]), .Y(n135) );
  INVXLM U112 ( .A(n146), .Y(n152) );
  INVX2M U113 ( .A(A[19]), .Y(n75) );
  NOR2BX2M U114 ( .AN(n57), .B(n52), .Y(n56) );
  AO21XLM U115 ( .A0(n16), .A1(A[1]), .B0(n69), .Y(n13) );
  OR2X2M U116 ( .A(B[10]), .B(A[10]), .Y(n144) );
  NAND2BX1M U117 ( .AN(B[0]), .B(n165), .Y(n164) );
  INVXLM U118 ( .A(n164), .Y(n67) );
  OAI21XLM U119 ( .A0(n99), .A1(n100), .B0(n101), .Y(n95) );
  NOR2XLM U120 ( .A(n110), .B(n106), .Y(n107) );
  NAND2BX1M U121 ( .AN(n15), .B(n58), .Y(n53) );
  NOR2BXLM U122 ( .AN(n44), .B(n43), .Y(n45) );
  INVXLM U123 ( .A(n53), .Y(n55) );
  XNOR2X2M U124 ( .A(n13), .B(n59), .Y(SUM[1]) );
  NAND2XLM U125 ( .A(n29), .B(n35), .Y(n157) );
  NAND2BX2M U126 ( .AN(B[18]), .B(n81), .Y(n71) );
  OR2X2M U127 ( .A(n16), .B(A[1]), .Y(n60) );
  INVXLM U128 ( .A(n68), .Y(n59) );
  NOR2XLM U129 ( .A(n111), .B(n112), .Y(n110) );
  AOI2B1X1M U130 ( .A1N(n94), .A0(n95), .B0(n96), .Y(n89) );
  OR2X2M U131 ( .A(B[5]), .B(A[5]), .Y(n41) );
  CLKINVX2M U132 ( .A(A[17]), .Y(n84) );
  OR2X2M U133 ( .A(B[2]), .B(A[2]), .Y(n161) );
  OR2X2M U134 ( .A(B[8]), .B(A[8]), .Y(n26) );
  OR2X2M U135 ( .A(B[4]), .B(A[4]), .Y(n46) );
  NAND2X2M U136 ( .A(n118), .B(n119), .Y(n85) );
  XNOR2XLM U137 ( .A(B[21]), .B(A[21]), .Y(n61) );
  NAND2X2M U138 ( .A(n64), .B(n65), .Y(n70) );
  NOR2X2M U139 ( .A(n107), .B(n108), .Y(n99) );
  NOR2X2M U140 ( .A(n102), .B(n103), .Y(n101) );
  NAND2X2M U141 ( .A(n59), .B(n60), .Y(n58) );
  INVX2M U142 ( .A(n105), .Y(n102) );
  NAND2X2M U143 ( .A(n41), .B(n39), .Y(n42) );
  NAND2X2M U144 ( .A(n25), .B(n26), .Y(n23) );
  XNOR2X4M U145 ( .A(n17), .B(n76), .Y(SUM[18]) );
  NAND2X2M U146 ( .A(n72), .B(n71), .Y(n76) );
  INVXLM U147 ( .A(n98), .Y(n125) );
  NOR2BX2M U148 ( .AN(n145), .B(n149), .Y(n148) );
  XNOR2X4M U149 ( .A(n79), .B(n82), .Y(SUM[17]) );
  OAI2BB1X2M U150 ( .A0N(n85), .A1N(n87), .B0(n86), .Y(n79) );
  NAND2XLM U151 ( .A(n97), .B(n98), .Y(n96) );
  NAND2BX2M U152 ( .AN(n157), .B(n158), .Y(n156) );
  INVX2M U153 ( .A(n35), .Y(n34) );
  NAND2BX2M U154 ( .AN(n140), .B(n141), .Y(n138) );
  NAND2X2M U155 ( .A(n145), .B(n146), .Y(n140) );
  NAND2X2M U156 ( .A(n86), .B(n85), .Y(n88) );
  INVX2M U157 ( .A(n154), .Y(n19) );
  OAI21X2M U158 ( .A0(n137), .A1(n155), .B0(n25), .Y(n154) );
  INVX2M U159 ( .A(n26), .Y(n155) );
  INVX2M U160 ( .A(n93), .Y(n122) );
  INVX2M U161 ( .A(B[19]), .Y(n74) );
  INVXLM U162 ( .A(n60), .Y(n69) );
  XNOR2X2M U163 ( .A(n55), .B(n56), .Y(SUM[2]) );
  NAND3X2M U164 ( .A(n161), .B(n15), .C(n51), .Y(n114) );
  INVX2M U165 ( .A(n57), .Y(n54) );
  XNOR2X2M U166 ( .A(n47), .B(n48), .Y(SUM[3]) );
  NOR2BX2M U167 ( .AN(n49), .B(n50), .Y(n48) );
  AOI2B1XLM U168 ( .A1N(n52), .A0(n53), .B0(n54), .Y(n47) );
  AND2X2M U169 ( .A(n16), .B(A[1]), .Y(n15) );
  INVX2M U170 ( .A(n46), .Y(n43) );
  INVX2M U171 ( .A(n161), .Y(n52) );
  NAND2X2M U172 ( .A(n25), .B(n21), .Y(n142) );
  INVX2M U173 ( .A(n104), .Y(n103) );
  NAND2XLM U174 ( .A(n116), .B(n117), .Y(n94) );
  NAND2XLM U175 ( .A(n10), .B(n114), .Y(n112) );
  NAND2XLM U176 ( .A(n49), .B(n115), .Y(n111) );
  NAND2XLM U177 ( .A(n92), .B(n93), .Y(n90) );
  NOR2X2M U178 ( .A(A[21]), .B(B[21]), .Y(n63) );
  INVX2M U179 ( .A(B[17]), .Y(n83) );
  NAND2XLM U180 ( .A(B[0]), .B(A[0]), .Y(n68) );
  NOR2BXLM U181 ( .AN(n68), .B(n67), .Y(SUM[0]) );
  INVXLM U182 ( .A(A[0]), .Y(n165) );
  CLKNAND2X2M U183 ( .A(n77), .B(n78), .Y(n73) );
  NAND2X2M U184 ( .A(n79), .B(n80), .Y(n78) );
  CLKNAND2X2M U185 ( .A(n74), .B(n75), .Y(n18) );
  NAND2X2M U186 ( .A(n74), .B(n75), .Y(n64) );
  INVX3M U187 ( .A(A[18]), .Y(n81) );
  AOI2B1X1M U188 ( .A1N(n61), .A0(n62), .B0(n63), .Y(SUM[21]) );
endmodule


module up4_filter_2_DW01_add_29 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106;

  INVXLM U2 ( .A(A[3]), .Y(n106) );
  AOI2B1X1M U3 ( .A1N(n21), .A0(n22), .B0(n23), .Y(n16) );
  OA21X2M U4 ( .A0(n36), .A1(n69), .B0(n68), .Y(n3) );
  AOI2B1X1M U5 ( .A1N(n54), .A0(n55), .B0(n56), .Y(n52) );
  AOI2B1X1M U6 ( .A1N(n60), .A0(n61), .B0(n62), .Y(n58) );
  NOR2BX2M U7 ( .AN(n40), .B(n4), .Y(n38) );
  AND2X2M U8 ( .A(n41), .B(n42), .Y(n4) );
  DLY1X1M U9 ( .A(A[2]), .Y(SUM[2]) );
  AND2X2M U10 ( .A(n36), .B(n37), .Y(SUM[3]) );
  CLKNAND2X2M U11 ( .A(n29), .B(n30), .Y(n27) );
  OAI21X2M U12 ( .A0(n36), .A1(n32), .B0(n33), .Y(n29) );
  INVX2M U13 ( .A(n35), .Y(n32) );
  NOR2X2M U14 ( .A(n66), .B(n67), .Y(n63) );
  INVXLM U15 ( .A(n20), .Y(n19) );
  OAI2BB1X2M U16 ( .A0N(n47), .A1N(n49), .B0(n48), .Y(n45) );
  XNOR2X1M U17 ( .A(n81), .B(n83), .Y(SUM[12]) );
  CLKNAND2X2M U18 ( .A(n82), .B(n70), .Y(n83) );
  AOI2B1XLM U19 ( .A1N(n54), .A0(n74), .B0(n56), .Y(n71) );
  INVXLM U20 ( .A(n82), .Y(n62) );
  NAND2BX1M U21 ( .AN(n62), .B(n80), .Y(n78) );
  NAND2XLM U22 ( .A(n81), .B(n70), .Y(n80) );
  NAND2X2M U23 ( .A(n84), .B(n85), .Y(n65) );
  XNOR2X2M U24 ( .A(n22), .B(n26), .Y(SUM[6]) );
  XNOR2X2M U25 ( .A(n3), .B(n13), .Y(SUM[8]) );
  NAND2XLM U26 ( .A(n59), .B(n57), .Y(n79) );
  CLKNAND2X2M U27 ( .A(n28), .B(n30), .Y(n31) );
  CLKINVX2M U28 ( .A(n12), .Y(n101) );
  NAND2BX2M U29 ( .AN(n101), .B(n9), .Y(n100) );
  NAND2XLM U30 ( .A(n33), .B(n28), .Y(n105) );
  XOR2X2M U31 ( .A(n41), .B(n5), .Y(SUM[18]) );
  MXI2XLM U32 ( .A(n5), .B(n6), .S0(n38), .Y(SUM[20]) );
  MXI2XLM U33 ( .A(n5), .B(n6), .S0(n38), .Y(SUM[21]) );
  OAI21XLM U34 ( .A0(n3), .A1(n64), .B0(n65), .Y(n81) );
  CLKNAND2X2M U35 ( .A(n44), .B(n43), .Y(n46) );
  INVXLM U36 ( .A(n68), .Y(n67) );
  OAI2BB1XLM U37 ( .A0N(n43), .A1N(n45), .B0(n44), .Y(n41) );
  AND2X1M U38 ( .A(n39), .B(n8), .Y(n6) );
  NOR2BXLM U39 ( .AN(n18), .B(n19), .Y(n17) );
  NAND2XLM U40 ( .A(n24), .B(n25), .Y(n26) );
  CLKINVX2M U41 ( .A(n92), .Y(n15) );
  INVXLM U42 ( .A(n25), .Y(n21) );
  INVXLM U43 ( .A(n88), .Y(n96) );
  NAND2BX1M U44 ( .AN(B[3]), .B(n106), .Y(n37) );
  CLKINVX2M U45 ( .A(n51), .Y(n73) );
  OAI2B1X2M U46 ( .A1N(n51), .A0(n52), .B0(n53), .Y(n49) );
  NAND4XLM U47 ( .A(n85), .B(n88), .C(n12), .D(n92), .Y(n64) );
  NAND2XLM U48 ( .A(n90), .B(n91), .Y(n86) );
  NAND3XLM U49 ( .A(n88), .B(n12), .C(n89), .Y(n87) );
  NAND2XLM U50 ( .A(n14), .B(n11), .Y(n89) );
  INVXLM U51 ( .A(n70), .Y(n60) );
  CLKNAND2X2M U52 ( .A(B[20]), .B(A[21]), .Y(n40) );
  NAND2XLM U53 ( .A(B[6]), .B(A[6]), .Y(n24) );
  NAND2XLM U54 ( .A(B[10]), .B(A[10]), .Y(n91) );
  NAND2XLM U55 ( .A(B[5]), .B(A[5]), .Y(n28) );
  NAND2XLM U56 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NAND2XLM U57 ( .A(B[13]), .B(A[13]), .Y(n59) );
  NAND2XLM U58 ( .A(B[14]), .B(A[14]), .Y(n75) );
  OR2X1M U59 ( .A(B[14]), .B(A[14]), .Y(n76) );
  NAND2XLM U60 ( .A(B[16]), .B(A[16]), .Y(n48) );
  NAND2XLM U61 ( .A(B[15]), .B(A[15]), .Y(n53) );
  OR2X1M U62 ( .A(B[16]), .B(A[16]), .Y(n47) );
  XNOR2X2M U63 ( .A(n38), .B(n5), .Y(SUM[19]) );
  XNOR2X2M U64 ( .A(n46), .B(n45), .Y(SUM[17]) );
  OAI21X2M U65 ( .A0(n63), .A1(n64), .B0(n65), .Y(n61) );
  NOR2XLM U66 ( .A(n36), .B(n69), .Y(n66) );
  NAND2X2M U67 ( .A(n8), .B(n39), .Y(n42) );
  AND2X2M U68 ( .A(n42), .B(n40), .Y(n5) );
  INVX2M U69 ( .A(B[21]), .Y(n8) );
  XNOR2X2M U70 ( .A(n97), .B(n99), .Y(SUM[10]) );
  NAND2X2M U71 ( .A(n91), .B(n88), .Y(n99) );
  NOR2BX2M U72 ( .AN(n14), .B(n15), .Y(n13) );
  XNOR2X2M U73 ( .A(n36), .B(n34), .Y(SUM[4]) );
  NOR2BX2M U74 ( .AN(n33), .B(n32), .Y(n34) );
  XNOR2X2M U75 ( .A(n9), .B(n10), .Y(SUM[9]) );
  NAND2X2M U76 ( .A(n11), .B(n12), .Y(n10) );
  XNOR2X2M U77 ( .A(n29), .B(n31), .Y(SUM[5]) );
  OAI21X2M U78 ( .A0(n3), .A1(n15), .B0(n14), .Y(n9) );
  NAND4X2M U79 ( .A(n20), .B(n25), .C(n30), .D(n35), .Y(n69) );
  NAND2XLM U80 ( .A(B[3]), .B(A[3]), .Y(n36) );
  XNOR2X2M U81 ( .A(n16), .B(n17), .Y(SUM[7]) );
  NAND2X2M U82 ( .A(n102), .B(n20), .Y(n68) );
  NAND2BX2M U83 ( .AN(n103), .B(n104), .Y(n102) );
  NAND2X2M U84 ( .A(n18), .B(n24), .Y(n103) );
  NAND3X2M U85 ( .A(n25), .B(n30), .C(n105), .Y(n104) );
  CLKNAND2X2M U86 ( .A(n100), .B(n11), .Y(n97) );
  NAND2X2M U87 ( .A(n27), .B(n28), .Y(n22) );
  INVX2M U88 ( .A(n24), .Y(n23) );
  XNOR2X2M U89 ( .A(n71), .B(n72), .Y(SUM[15]) );
  NOR2BX2M U90 ( .AN(n53), .B(n73), .Y(n72) );
  XNOR2X2M U91 ( .A(n74), .B(n77), .Y(SUM[14]) );
  NAND2X2M U92 ( .A(n75), .B(n76), .Y(n77) );
  XNOR2X2M U93 ( .A(n79), .B(n78), .Y(SUM[13]) );
  XNOR2X2M U94 ( .A(n50), .B(n49), .Y(SUM[16]) );
  NAND2X2M U95 ( .A(n48), .B(n47), .Y(n50) );
  OAI2B1X2M U96 ( .A1N(n57), .A0(n58), .B0(n59), .Y(n55) );
  OAI2BB1X2M U97 ( .A0N(n57), .A1N(n78), .B0(n59), .Y(n74) );
  XNOR2X2M U98 ( .A(n93), .B(n94), .Y(SUM[11]) );
  NOR2BX2M U99 ( .AN(n90), .B(n95), .Y(n94) );
  AOI2B1XLM U100 ( .A1N(n96), .A0(n97), .B0(n98), .Y(n93) );
  INVX2M U101 ( .A(n85), .Y(n95) );
  NAND2BX2M U102 ( .AN(n86), .B(n87), .Y(n84) );
  INVX2M U103 ( .A(n75), .Y(n56) );
  INVX2M U104 ( .A(n91), .Y(n98) );
  INVX2M U105 ( .A(n76), .Y(n54) );
  NAND2X2M U106 ( .A(B[17]), .B(A[21]), .Y(n44) );
  NAND2BX2M U107 ( .AN(B[17]), .B(n39), .Y(n43) );
  INVX2M U108 ( .A(A[21]), .Y(n39) );
  OR2X1M U109 ( .A(B[6]), .B(A[6]), .Y(n25) );
  OR2X1M U110 ( .A(B[5]), .B(A[5]), .Y(n30) );
  OR2X1M U111 ( .A(B[7]), .B(A[7]), .Y(n20) );
  NAND2XLM U112 ( .A(B[4]), .B(A[4]), .Y(n33) );
  OR2X1M U113 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NAND2XLM U114 ( .A(B[7]), .B(A[7]), .Y(n18) );
  OR2X1M U115 ( .A(B[9]), .B(A[9]), .Y(n12) );
  OR2X1M U116 ( .A(B[12]), .B(A[12]), .Y(n70) );
  NAND2XLM U117 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2XLM U118 ( .A(B[12]), .B(A[12]), .Y(n82) );
  OR2X1M U119 ( .A(B[8]), .B(A[8]), .Y(n92) );
  OR2X1M U120 ( .A(B[13]), .B(A[13]), .Y(n57) );
  NAND2XLM U121 ( .A(B[11]), .B(A[11]), .Y(n90) );
  OR2X1M U122 ( .A(B[15]), .B(A[15]), .Y(n51) );
  OR2X1M U123 ( .A(B[11]), .B(A[11]), .Y(n85) );
  OR2X1M U124 ( .A(B[10]), .B(A[10]), .Y(n88) );
endmodule


module up4_filter_2_DW01_add_21 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134;

  XNOR2X2M U2 ( .A(n41), .B(n43), .Y(SUM[20]) );
  OAI21X2M U3 ( .A0(n70), .A1(n71), .B0(n72), .Y(n68) );
  AOI2B1X1M U4 ( .A1N(n79), .A0(n80), .B0(n81), .Y(n75) );
  XNOR2X2M U5 ( .A(n51), .B(n52), .Y(SUM[19]) );
  NAND2BX2M U6 ( .AN(n46), .B(n47), .Y(n45) );
  AND2X2M U7 ( .A(n133), .B(n134), .Y(n1) );
  NAND2X1M U8 ( .A(B[5]), .B(A[5]), .Y(n27) );
  NAND2BX1M U9 ( .AN(B[18]), .B(n44), .Y(n57) );
  NAND2XLM U10 ( .A(B[18]), .B(A[21]), .Y(n58) );
  NAND2XLM U11 ( .A(B[11]), .B(A[11]), .Y(n114) );
  OR2X1M U12 ( .A(B[5]), .B(A[5]), .Y(n29) );
  OR2X1M U13 ( .A(B[10]), .B(A[10]), .Y(n113) );
  NAND2X1M U14 ( .A(B[15]), .B(A[15]), .Y(n72) );
  OR2X1M U15 ( .A(B[15]), .B(A[15]), .Y(n74) );
  NAND2XLM U16 ( .A(B[12]), .B(A[12]), .Y(n88) );
  OR2X1M U17 ( .A(B[12]), .B(A[12]), .Y(n82) );
  OR2X1M U18 ( .A(B[11]), .B(A[11]), .Y(n108) );
  INVX1M U19 ( .A(A[2]), .Y(n132) );
  NAND2BX1M U20 ( .AN(B[17]), .B(n44), .Y(n65) );
  OR2X1M U21 ( .A(B[4]), .B(A[4]), .Y(n33) );
  CLKNAND2X2M U22 ( .A(n32), .B(n27), .Y(n130) );
  INVXLM U23 ( .A(B[3]), .Y(n133) );
  CLKNAND2X2M U24 ( .A(n107), .B(n108), .Y(n87) );
  NAND4X2M U25 ( .A(n113), .B(n108), .C(n112), .D(n116), .Y(n84) );
  NAND2XLM U26 ( .A(n73), .B(n74), .Y(n71) );
  CLKNAND2X2M U27 ( .A(n125), .B(n7), .Y(n121) );
  INVX1M U28 ( .A(n74), .Y(n91) );
  CLKINVX2M U29 ( .A(n35), .Y(n131) );
  NAND2XLM U30 ( .A(B[10]), .B(A[10]), .Y(n115) );
  INVXLM U31 ( .A(n82), .Y(n106) );
  NAND2X2M U32 ( .A(n114), .B(n115), .Y(n109) );
  NAND2X2M U33 ( .A(n26), .B(n27), .Y(n20) );
  AOI2B1X1M U34 ( .A1N(n19), .A0(n20), .B0(n21), .Y(n14) );
  INVXLM U35 ( .A(n18), .Y(n17) );
  NOR2BX2M U36 ( .AN(n88), .B(n106), .Y(n105) );
  NAND2X1M U37 ( .A(n127), .B(n18), .Y(n86) );
  CLKINVX2M U38 ( .A(n73), .Y(n92) );
  NAND2XLM U39 ( .A(n82), .B(n83), .Y(n81) );
  XNOR2X1M U40 ( .A(n37), .B(n38), .Y(SUM[21]) );
  NOR2X2M U41 ( .A(n41), .B(n42), .Y(n40) );
  NOR2BX2M U42 ( .AN(n50), .B(n53), .Y(n52) );
  NOR2BX1M U43 ( .AN(n58), .B(n61), .Y(n60) );
  INVXLM U44 ( .A(n57), .Y(n61) );
  NAND2XLM U45 ( .A(n62), .B(n65), .Y(n69) );
  XNOR2XLM U46 ( .A(n69), .B(n64), .Y(SUM[17]) );
  NOR2X2M U47 ( .A(n75), .B(n76), .Y(n70) );
  NAND2BX1M U48 ( .AN(B[19]), .B(n44), .Y(n49) );
  XNOR2XLM U49 ( .A(n10), .B(n11), .Y(SUM[8]) );
  XNOR2X1M U50 ( .A(n117), .B(n118), .Y(SUM[11]) );
  CLKNAND2X2M U51 ( .A(n102), .B(n88), .Y(n98) );
  INVXLM U52 ( .A(n108), .Y(n119) );
  NAND2XLM U53 ( .A(B[13]), .B(A[13]), .Y(n77) );
  OR2X1M U54 ( .A(B[13]), .B(A[13]), .Y(n83) );
  OAI2B1X1M U55 ( .A1N(n131), .A0(n85), .B0(n86), .Y(n126) );
  OA21XLM U56 ( .A0(n35), .A1(n85), .B0(n86), .Y(n2) );
  INVX2M U57 ( .A(n45), .Y(n41) );
  NOR2BXLM U58 ( .AN(n72), .B(n91), .Y(n90) );
  INVXLM U59 ( .A(n78), .Y(n94) );
  XNOR2XLM U60 ( .A(B[20]), .B(n44), .Y(n43) );
  INVXLM U61 ( .A(n48), .Y(n51) );
  XOR2X2M U62 ( .A(n3), .B(n68), .Y(SUM[16]) );
  AND2X1M U63 ( .A(n67), .B(n66), .Y(n3) );
  INVXLM U64 ( .A(n115), .Y(n122) );
  NAND2X2M U65 ( .A(n97), .B(n77), .Y(n93) );
  NAND2XLM U66 ( .A(n77), .B(n78), .Y(n76) );
  NAND2X1M U67 ( .A(n103), .B(n82), .Y(n102) );
  NAND3XLM U68 ( .A(n111), .B(n112), .C(n113), .Y(n110) );
  NAND2X2M U69 ( .A(n62), .B(n63), .Y(n56) );
  CLKNAND2X2M U70 ( .A(n64), .B(n65), .Y(n63) );
  CLKINVX2M U71 ( .A(n112), .Y(n8) );
  INVXLM U72 ( .A(n121), .Y(n123) );
  XNOR2X1M U73 ( .A(n30), .B(n28), .Y(SUM[5]) );
  OAI21X2M U74 ( .A0(n10), .A1(n13), .B0(n12), .Y(n9) );
  NAND2XLM U75 ( .A(n12), .B(n7), .Y(n111) );
  NOR2BXLM U76 ( .AN(n35), .B(n1), .Y(SUM[3]) );
  INVXLM U77 ( .A(n22), .Y(n21) );
  CLKNAND2X2M U78 ( .A(n16), .B(n22), .Y(n128) );
  CLKINVX2M U79 ( .A(n25), .Y(n19) );
  XNOR2XLM U80 ( .A(A[21]), .B(n39), .Y(n38) );
  NAND2XLM U81 ( .A(B[17]), .B(A[21]), .Y(n62) );
  INVX2M U82 ( .A(n126), .Y(n10) );
  OAI21X2M U83 ( .A0(n10), .A1(n84), .B0(n87), .Y(n103) );
  OR2X2M U84 ( .A(n2), .B(n84), .Y(n80) );
  XNOR2X2M U85 ( .A(n14), .B(n15), .Y(SUM[7]) );
  NOR2BX2M U86 ( .AN(n16), .B(n17), .Y(n15) );
  NAND2X2M U87 ( .A(n29), .B(n27), .Y(n30) );
  XNOR2X2M U88 ( .A(n123), .B(n124), .Y(SUM[10]) );
  NOR2BX2M U89 ( .AN(n115), .B(n120), .Y(n124) );
  XNOR2X2M U90 ( .A(n5), .B(n6), .Y(SUM[9]) );
  NOR2BX2M U91 ( .AN(n7), .B(n8), .Y(n6) );
  INVX2M U92 ( .A(n9), .Y(n5) );
  XNOR2X2M U93 ( .A(n23), .B(n24), .Y(SUM[6]) );
  NOR2BX2M U94 ( .AN(n22), .B(n19), .Y(n24) );
  INVX2M U95 ( .A(n20), .Y(n23) );
  NAND2X2M U96 ( .A(n31), .B(n32), .Y(n28) );
  NAND2X2M U97 ( .A(n131), .B(n33), .Y(n31) );
  INVX2M U98 ( .A(n49), .Y(n53) );
  NAND2BX1M U99 ( .AN(n8), .B(n9), .Y(n125) );
  NAND2X2M U100 ( .A(n28), .B(n29), .Y(n26) );
  NAND2BX2M U101 ( .AN(n128), .B(n129), .Y(n127) );
  NAND3X2M U102 ( .A(n25), .B(n29), .C(n130), .Y(n129) );
  NAND2XLM U103 ( .A(n48), .B(n49), .Y(n47) );
  INVXLM U104 ( .A(n50), .Y(n46) );
  XNOR2X2M U105 ( .A(n95), .B(n96), .Y(SUM[14]) );
  INVX2M U106 ( .A(n93), .Y(n95) );
  NOR2BX2M U107 ( .AN(n78), .B(n92), .Y(n96) );
  XNOR2X2M U108 ( .A(n89), .B(n90), .Y(SUM[15]) );
  AOI2B1X1M U109 ( .A1N(n92), .A0(n93), .B0(n94), .Y(n89) );
  XNOR2X2M U110 ( .A(n59), .B(n60), .Y(SUM[18]) );
  INVX2M U111 ( .A(n56), .Y(n59) );
  XNOR2X2M U112 ( .A(n99), .B(n100), .Y(SUM[13]) );
  INVX2M U113 ( .A(n98), .Y(n99) );
  NOR2BX2M U114 ( .AN(n77), .B(n101), .Y(n100) );
  INVX2M U115 ( .A(n83), .Y(n101) );
  XNOR2X2M U116 ( .A(n104), .B(n105), .Y(SUM[12]) );
  INVX2M U117 ( .A(n103), .Y(n104) );
  NOR2BX2M U118 ( .AN(n12), .B(n13), .Y(n11) );
  XNOR2X2M U119 ( .A(n34), .B(n131), .Y(SUM[4]) );
  NAND2XLM U120 ( .A(n32), .B(n33), .Y(n34) );
  OAI2BB1XLM U121 ( .A0N(n66), .A1N(n68), .B0(n67), .Y(n64) );
  NAND4X2M U122 ( .A(n18), .B(n25), .C(n29), .D(n33), .Y(n85) );
  NAND2BX2M U123 ( .AN(n54), .B(n55), .Y(n48) );
  NAND2X2M U124 ( .A(n56), .B(n57), .Y(n55) );
  INVX2M U125 ( .A(n58), .Y(n54) );
  AOI2B1XLM U126 ( .A1N(n120), .A0(n121), .B0(n122), .Y(n117) );
  NOR2BX2M U127 ( .AN(n114), .B(n119), .Y(n118) );
  NAND2BX2M U128 ( .AN(n109), .B(n110), .Y(n107) );
  INVX2M U129 ( .A(n116), .Y(n13) );
  NAND2X1M U130 ( .A(n98), .B(n83), .Y(n97) );
  INVX2M U131 ( .A(n113), .Y(n120) );
  NAND2XLM U132 ( .A(n88), .B(n87), .Y(n79) );
  NOR2X2M U133 ( .A(n40), .B(n4), .Y(n37) );
  INVX2M U134 ( .A(B[21]), .Y(n39) );
  NOR2XLM U135 ( .A(A[21]), .B(B[20]), .Y(n42) );
  OR2X1M U136 ( .A(B[7]), .B(A[7]), .Y(n18) );
  NAND2XLM U137 ( .A(B[8]), .B(A[8]), .Y(n12) );
  NAND2XLM U138 ( .A(B[9]), .B(A[9]), .Y(n7) );
  OR2X1M U139 ( .A(B[6]), .B(A[6]), .Y(n25) );
  NAND2XLM U140 ( .A(B[16]), .B(A[16]), .Y(n67) );
  NAND2XLM U141 ( .A(B[6]), .B(A[6]), .Y(n22) );
  NAND2XLM U142 ( .A(B[14]), .B(A[14]), .Y(n78) );
  NAND2XLM U143 ( .A(B[7]), .B(A[7]), .Y(n16) );
  OR2X1M U144 ( .A(B[8]), .B(A[8]), .Y(n116) );
  OR2X1M U145 ( .A(B[14]), .B(A[14]), .Y(n73) );
  OR2X1M U146 ( .A(B[16]), .B(A[16]), .Y(n66) );
  NAND2XLM U147 ( .A(B[3]), .B(A[3]), .Y(n35) );
  OR2X1M U148 ( .A(B[9]), .B(A[9]), .Y(n112) );
  INVXLM U149 ( .A(A[3]), .Y(n134) );
  AND2X1M U150 ( .A(B[20]), .B(A[21]), .Y(n4) );
  INVX2M U151 ( .A(n132), .Y(SUM[2]) );
  INVX2M U152 ( .A(A[21]), .Y(n44) );
  NAND2XLM U153 ( .A(B[4]), .B(A[4]), .Y(n32) );
  NAND2XLM U154 ( .A(B[19]), .B(A[21]), .Y(n50) );
endmodule


module up4_filter_2_DW01_add_23 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140;

  NAND2X2M U2 ( .A(B[19]), .B(A[19]), .Y(n42) );
  OAI2B1X2M U3 ( .A1N(n40), .A0(n41), .B0(n42), .Y(n38) );
  OR2X2M U4 ( .A(B[8]), .B(A[8]), .Y(n19) );
  NOR2BX2M U5 ( .AN(n42), .B(n44), .Y(n43) );
  OR2X2M U6 ( .A(B[5]), .B(A[5]), .Y(n33) );
  OR2X2M U7 ( .A(B[6]), .B(A[6]), .Y(n29) );
  OR2X2M U8 ( .A(B[15]), .B(A[15]), .Y(n66) );
  OR2X2M U9 ( .A(B[19]), .B(A[19]), .Y(n40) );
  OR2X2M U10 ( .A(B[7]), .B(A[7]), .Y(n22) );
  XNOR2X2M U11 ( .A(n104), .B(n105), .Y(SUM[12]) );
  XOR2X2M U12 ( .A(n39), .B(n2), .Y(SUM[20]) );
  INVXLM U13 ( .A(A[3]), .Y(n127) );
  AND2X2M U14 ( .A(n122), .B(n18), .Y(n1) );
  CLKXOR2X2M U15 ( .A(B[20]), .B(n12), .Y(n2) );
  XNOR2XLM U16 ( .A(n1), .B(n13), .Y(SUM[9]) );
  NAND2X2M U17 ( .A(n51), .B(n52), .Y(n50) );
  NAND2X1M U18 ( .A(B[12]), .B(A[12]), .Y(n78) );
  NAND2XLM U19 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NAND2XLM U20 ( .A(n53), .B(n54), .Y(n48) );
  CLKINVX1M U21 ( .A(n47), .Y(n46) );
  NAND3X1M U22 ( .A(n107), .B(n108), .C(n82), .Y(n80) );
  NAND2X1M U23 ( .A(n103), .B(n87), .Y(n102) );
  NAND2X1M U24 ( .A(B[10]), .B(A[10]), .Y(n111) );
  INVXLM U25 ( .A(n19), .Y(n115) );
  NAND2XLM U26 ( .A(n30), .B(n31), .Y(n24) );
  NAND2X2M U27 ( .A(n67), .B(n54), .Y(n68) );
  AO21X2M U28 ( .A0(n56), .A1(n51), .B0(n57), .Y(n5) );
  OR2X2M U29 ( .A(B[9]), .B(A[9]), .Y(n83) );
  OR2X2M U30 ( .A(n69), .B(n70), .Y(n4) );
  NAND2XLM U31 ( .A(B[18]), .B(A[18]), .Y(n47) );
  OAI21X2M U32 ( .A0(n1), .A1(n15), .B0(n14), .Y(n118) );
  NAND3X1M U33 ( .A(n106), .B(n79), .C(n80), .Y(n103) );
  INVXLM U34 ( .A(n33), .Y(n133) );
  NAND2X2M U35 ( .A(n102), .B(n78), .Y(n97) );
  CLKINVX2M U36 ( .A(n30), .Y(n137) );
  NAND2X2M U37 ( .A(n19), .B(n123), .Y(n122) );
  AND2X1M U38 ( .A(n79), .B(n82), .Y(n117) );
  AOI21BX1M U39 ( .A0(n118), .A1(n81), .B0N(n111), .Y(n116) );
  INVX2M U40 ( .A(n98), .Y(n88) );
  AO21XLM U41 ( .A0(B[14]), .A1(A[14]), .B0(n9), .Y(n6) );
  NAND2X2M U42 ( .A(B[15]), .B(A[15]), .Y(n71) );
  OAI211XLM U43 ( .A0(A[14]), .A1(B[14]), .B0(n86), .C0(n87), .Y(n73) );
  NAND2BX1M U44 ( .AN(n73), .B(n74), .Y(n65) );
  CLKINVX2M U45 ( .A(A[10]), .Y(n110) );
  NAND2X2M U46 ( .A(B[5]), .B(A[5]), .Y(n139) );
  NAND2XLM U47 ( .A(n47), .B(n52), .Y(n55) );
  XNOR2X2M U48 ( .A(n4), .B(n68), .Y(SUM[16]) );
  XNOR2X2M U49 ( .A(n92), .B(n93), .Y(SUM[15]) );
  NOR2BX2M U50 ( .AN(n71), .B(n72), .Y(n93) );
  NAND2XLM U51 ( .A(B[17]), .B(A[17]), .Y(n53) );
  AOI21XLM U52 ( .A0(n7), .A1(n65), .B0(n72), .Y(n69) );
  CLKNAND2X2M U53 ( .A(n109), .B(n110), .Y(n81) );
  CLKAND2X4M U54 ( .A(n90), .B(n91), .Y(n9) );
  XNOR2X2M U55 ( .A(n5), .B(n55), .Y(SUM[18]) );
  CLKNAND2X2M U56 ( .A(n88), .B(n89), .Y(n62) );
  NAND2XLM U57 ( .A(n90), .B(n91), .Y(n89) );
  NOR2BX2M U58 ( .AN(n32), .B(n133), .Y(n124) );
  NAND3XLM U59 ( .A(n84), .B(n32), .C(n33), .Y(n31) );
  NAND2XLM U60 ( .A(n18), .B(n19), .Y(n16) );
  INVXLM U61 ( .A(n29), .Y(n23) );
  AND4XLM U62 ( .A(n29), .B(n22), .C(n33), .D(n32), .Y(n11) );
  XNOR2XLM U63 ( .A(n6), .B(n94), .Y(SUM[14]) );
  NAND2BX4M U64 ( .AN(n60), .B(n61), .Y(n49) );
  NAND2XLM U65 ( .A(B[15]), .B(A[15]), .Y(n63) );
  NAND2XLM U66 ( .A(B[14]), .B(A[14]), .Y(n64) );
  NAND2X2M U67 ( .A(n134), .B(n22), .Y(n113) );
  CLKNAND2X2M U68 ( .A(n137), .B(n29), .Y(n135) );
  OR2X2M U69 ( .A(B[12]), .B(A[12]), .Y(n87) );
  OR2X2M U70 ( .A(B[13]), .B(A[13]), .Y(n86) );
  NAND3BX2M U71 ( .AN(n132), .B(n125), .C(n126), .Y(n129) );
  AOI21BX2M U72 ( .A0(B[7]), .A1(A[7]), .B0N(n22), .Y(n21) );
  OR2X1M U73 ( .A(B[4]), .B(A[4]), .Y(n32) );
  CLKNAND2X2M U74 ( .A(n128), .B(n127), .Y(n126) );
  INVXLM U75 ( .A(B[2]), .Y(n130) );
  INVXLM U76 ( .A(n38), .Y(n39) );
  INVX2M U77 ( .A(n53), .Y(n57) );
  INVX2M U78 ( .A(n103), .Y(n104) );
  INVX2M U79 ( .A(n24), .Y(n27) );
  INVX2M U80 ( .A(n40), .Y(n44) );
  NAND2X2M U81 ( .A(n54), .B(n49), .Y(n56) );
  INVX2M U82 ( .A(n71), .Y(n70) );
  XNOR2X2M U83 ( .A(n58), .B(n59), .Y(SUM[17]) );
  NAND2X2M U84 ( .A(n54), .B(n49), .Y(n59) );
  NAND2X2M U85 ( .A(n53), .B(n51), .Y(n58) );
  XNOR2X2M U86 ( .A(n119), .B(n120), .Y(SUM[10]) );
  NOR2BX2M U87 ( .AN(n111), .B(n121), .Y(n120) );
  INVX2M U88 ( .A(n118), .Y(n119) );
  INVX2M U89 ( .A(n81), .Y(n121) );
  NOR2BX2M U90 ( .AN(n14), .B(n15), .Y(n13) );
  NAND4X2M U91 ( .A(n124), .B(n84), .C(n29), .D(n22), .Y(n114) );
  OR2X2M U92 ( .A(B[17]), .B(A[17]), .Y(n51) );
  INVX2M U93 ( .A(n83), .Y(n15) );
  INVX2M U94 ( .A(B[10]), .Y(n109) );
  NOR2X2M U95 ( .A(A[20]), .B(B[20]), .Y(n37) );
  OR2X2M U96 ( .A(B[18]), .B(A[18]), .Y(n52) );
  INVX2M U97 ( .A(n66), .Y(n72) );
  AOI2B1X1M U98 ( .A1N(n9), .A0(n94), .B0(n95), .Y(n92) );
  NAND2BX2M U99 ( .AN(n85), .B(n114), .Y(n123) );
  INVX2M U100 ( .A(n113), .Y(n85) );
  NAND2XLM U101 ( .A(n109), .B(n110), .Y(n108) );
  OAI211XLM U102 ( .A0(n15), .A1(n18), .B0(n14), .C0(n111), .Y(n107) );
  AND2X2M U103 ( .A(n62), .B(n64), .Y(n7) );
  AOI2B1X1M U104 ( .A1N(n23), .A0(n24), .B0(n25), .Y(n20) );
  INVX2M U105 ( .A(n26), .Y(n25) );
  NAND2BX2M U106 ( .AN(n88), .B(n96), .Y(n94) );
  NAND2X2M U107 ( .A(n97), .B(n86), .Y(n96) );
  NAND4XLM U108 ( .A(n112), .B(n17), .C(n81), .D(n82), .Y(n106) );
  NOR2XLM U109 ( .A(n15), .B(n115), .Y(n112) );
  NAND4XLM U110 ( .A(n81), .B(n82), .C(n83), .D(n19), .Y(n76) );
  AND2X2M U111 ( .A(n78), .B(n87), .Y(n105) );
  NOR2BX2M U112 ( .AN(n26), .B(n23), .Y(n28) );
  XNOR2X2M U113 ( .A(n99), .B(n100), .Y(SUM[13]) );
  INVX2M U114 ( .A(n97), .Y(n99) );
  NOR2BX2M U115 ( .AN(n98), .B(n101), .Y(n100) );
  INVX2M U116 ( .A(n86), .Y(n101) );
  NAND2XLM U117 ( .A(n113), .B(n114), .Y(n17) );
  AND2X2M U118 ( .A(n8), .B(n78), .Y(n77) );
  AND2X1M U119 ( .A(n79), .B(n80), .Y(n8) );
  INVX2M U120 ( .A(B[14]), .Y(n90) );
  INVX2M U121 ( .A(n64), .Y(n95) );
  AND2X2M U122 ( .A(B[20]), .B(A[20]), .Y(n10) );
  NAND2X2M U123 ( .A(B[16]), .B(A[16]), .Y(n54) );
  XNOR2X2M U124 ( .A(n34), .B(n35), .Y(SUM[21]) );
  XNOR2X2M U125 ( .A(A[20]), .B(n36), .Y(n35) );
  INVX2M U126 ( .A(B[21]), .Y(n36) );
  NAND3X2M U127 ( .A(n135), .B(n26), .C(n136), .Y(n134) );
  NAND2X2M U128 ( .A(B[7]), .B(A[7]), .Y(n136) );
  NAND2X2M U129 ( .A(n138), .B(n33), .Y(n30) );
  CLKNAND2X2M U130 ( .A(n139), .B(n140), .Y(n138) );
  NAND2X2M U131 ( .A(B[4]), .B(A[4]), .Y(n140) );
  OR2X2M U132 ( .A(B[16]), .B(A[16]), .Y(n67) );
  OAI21X2M U133 ( .A0(n127), .A1(n128), .B0(n129), .Y(n84) );
  NAND2X2M U134 ( .A(n130), .B(n131), .Y(n125) );
  OR2X2M U135 ( .A(B[11]), .B(A[11]), .Y(n82) );
  NAND2X2M U136 ( .A(B[11]), .B(A[11]), .Y(n79) );
  NAND4XLM U137 ( .A(n62), .B(n63), .C(n64), .D(n65), .Y(n61) );
  NAND2XLM U138 ( .A(n66), .B(n67), .Y(n60) );
  NAND2X2M U139 ( .A(B[8]), .B(A[8]), .Y(n18) );
  NAND2X2M U140 ( .A(B[9]), .B(A[9]), .Y(n14) );
  NAND2X2M U141 ( .A(B[13]), .B(A[13]), .Y(n98) );
  OAI21X2M U142 ( .A0(n75), .A1(n76), .B0(n77), .Y(n74) );
  AOI21XLM U143 ( .A0(n11), .A1(n84), .B0(n85), .Y(n75) );
  INVX2M U144 ( .A(A[14]), .Y(n91) );
  INVX2M U145 ( .A(B[3]), .Y(n128) );
  INVX2M U146 ( .A(A[21]), .Y(n12) );
  XNOR2X2M U147 ( .A(n16), .B(n17), .Y(SUM[8]) );
  XNOR2X2M U148 ( .A(n27), .B(n28), .Y(SUM[6]) );
  XNOR2X2M U149 ( .A(n20), .B(n21), .Y(SUM[7]) );
  NAND2XLM U150 ( .A(B[2]), .B(A[2]), .Y(n132) );
  INVXLM U151 ( .A(A[2]), .Y(n131) );
  AOI2B1X1M U152 ( .A1N(n37), .A0(n38), .B0(n10), .Y(n34) );
  XNOR2X1M U153 ( .A(n41), .B(n43), .Y(SUM[19]) );
  NOR2X4M U154 ( .A(n45), .B(n46), .Y(n41) );
  AOI2B1X8M U155 ( .A1N(n48), .A0(n49), .B0(n50), .Y(n45) );
  XNOR2X8M U156 ( .A(n116), .B(n117), .Y(SUM[11]) );
endmodule


module up4_filter_2_DW01_add_35 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130;

  NAND2XLM U2 ( .A(B[4]), .B(A[4]), .Y(n40) );
  OA21X2M U3 ( .A0(n91), .A1(n90), .B0(n89), .Y(n9) );
  AOI2B1X1M U4 ( .A1N(n39), .A0(n1), .B0(n31), .Y(n36) );
  AO21XLM U5 ( .A0(n26), .A1(n27), .B0(n28), .Y(n7) );
  AND2X2M U6 ( .A(n92), .B(n44), .Y(n1) );
  OA21X2M U7 ( .A0(n9), .A1(n22), .B0(n21), .Y(n6) );
  NAND2XLM U8 ( .A(B[18]), .B(A[20]), .Y(n60) );
  NAND2BX1M U9 ( .AN(B[18]), .B(n16), .Y(n59) );
  OR2X1M U10 ( .A(B[10]), .B(A[10]), .Y(n114) );
  NAND2XLM U11 ( .A(B[15]), .B(A[15]), .Y(n71) );
  NAND2BX1M U12 ( .AN(B[15]), .B(n97), .Y(n96) );
  NAND2XLM U13 ( .A(B[12]), .B(A[12]), .Y(n87) );
  AND2X1M U14 ( .A(B[20]), .B(A[17]), .Y(n14) );
  NOR2XLM U15 ( .A(A[18]), .B(B[20]), .Y(n50) );
  OR2X1M U16 ( .A(B[12]), .B(A[12]), .Y(n83) );
  OR2X1M U17 ( .A(B[11]), .B(A[11]), .Y(n109) );
  NAND2XLM U18 ( .A(B[11]), .B(A[11]), .Y(n115) );
  OR2X1M U19 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NAND2XLM U20 ( .A(n83), .B(n84), .Y(n82) );
  NOR2BX1M U21 ( .AN(n34), .B(n38), .Y(n37) );
  NAND2XLM U22 ( .A(B[3]), .B(A[3]), .Y(n42) );
  OR2X1M U23 ( .A(B[3]), .B(A[3]), .Y(n44) );
  NOR2XLM U24 ( .A(n76), .B(n77), .Y(n75) );
  NAND2XLM U25 ( .A(B[10]), .B(A[10]), .Y(n116) );
  NAND2XLM U26 ( .A(n87), .B(n83), .Y(n107) );
  CLKNAND2X2M U27 ( .A(n40), .B(n34), .Y(n128) );
  NAND2X1M U28 ( .A(n125), .B(n25), .Y(n89) );
  INVX2M U29 ( .A(n117), .Y(n22) );
  INVXLM U30 ( .A(n109), .Y(n120) );
  INVXLM U31 ( .A(n60), .Y(n56) );
  OAI21X2M U32 ( .A0(n6), .A1(n19), .B0(n18), .Y(n122) );
  CLKNAND2X2M U33 ( .A(n105), .B(n87), .Y(n103) );
  NAND2XLM U34 ( .A(n106), .B(n83), .Y(n105) );
  NAND2XLM U35 ( .A(n103), .B(n84), .Y(n102) );
  NAND4XLM U36 ( .A(n114), .B(n109), .C(n113), .D(n117), .Y(n93) );
  NAND3XLM U37 ( .A(n112), .B(n113), .C(n114), .Y(n111) );
  NAND2XLM U38 ( .A(n115), .B(n116), .Y(n110) );
  OAI21XLM U39 ( .A0(n80), .A1(n82), .B0(n15), .Y(n73) );
  NAND2XLM U40 ( .A(n24), .B(n29), .Y(n126) );
  INVXLM U41 ( .A(n87), .Y(n86) );
  NAND2XLM U42 ( .A(B[17]), .B(A[20]), .Y(n62) );
  NAND2BX2M U43 ( .AN(n56), .B(n57), .Y(n52) );
  NOR2BX2M U44 ( .AN(n71), .B(n76), .Y(n95) );
  INVXLM U45 ( .A(n79), .Y(n99) );
  XNOR2X2M U46 ( .A(n98), .B(n101), .Y(SUM[14]) );
  NAND2XLM U47 ( .A(n79), .B(n100), .Y(n101) );
  NAND2X2M U48 ( .A(n71), .B(n72), .Y(n69) );
  NAND2X2M U49 ( .A(n108), .B(n109), .Y(n88) );
  CLKINVX2M U50 ( .A(n100), .Y(n77) );
  NOR2BX2M U51 ( .AN(n21), .B(n22), .Y(n20) );
  AOI2B1X1M U52 ( .A1N(n121), .A0(n122), .B0(n123), .Y(n118) );
  AOI21XLM U53 ( .A0(n31), .A1(n32), .B0(n33), .Y(n8) );
  INVXLM U54 ( .A(A[15]), .Y(n97) );
  INVXLM U55 ( .A(A[2]), .Y(n130) );
  NAND2XLM U56 ( .A(n54), .B(n53), .Y(n55) );
  CLKAND2X4M U57 ( .A(n52), .B(n53), .Y(n12) );
  OAI21XLM U58 ( .A0(n9), .A1(n93), .B0(n88), .Y(n106) );
  OR2X1M U59 ( .A(n90), .B(n91), .Y(n10) );
  XNOR2XLM U60 ( .A(B[20]), .B(n16), .Y(n51) );
  XNOR2X2M U61 ( .A(n7), .B(n23), .Y(SUM[7]) );
  NOR2X1M U62 ( .A(n11), .B(n50), .Y(n49) );
  XNOR2X2M U63 ( .A(n122), .B(n124), .Y(SUM[10]) );
  OAI2BB1XLM U64 ( .A0N(n67), .A1N(n69), .B0(n68), .Y(n64) );
  INVXLM U65 ( .A(n116), .Y(n123) );
  OAI2BB1X2M U66 ( .A0N(n1), .A1N(n13), .B0(n8), .Y(n27) );
  CLKINVX2M U67 ( .A(n113), .Y(n19) );
  OAI21X1M U68 ( .A0(n73), .A1(n74), .B0(n75), .Y(n72) );
  NAND2X2M U69 ( .A(n62), .B(n63), .Y(n58) );
  NAND2XLM U70 ( .A(n64), .B(n65), .Y(n63) );
  INVXLM U71 ( .A(n114), .Y(n121) );
  NOR2BXLM U72 ( .AN(n40), .B(n39), .Y(n41) );
  NAND2XLM U73 ( .A(n21), .B(n18), .Y(n112) );
  CLKINVX2M U74 ( .A(n35), .Y(n39) );
  NAND2XLM U75 ( .A(n24), .B(n25), .Y(n23) );
  NOR2BXLM U76 ( .AN(n42), .B(n43), .Y(SUM[3]) );
  INVXLM U77 ( .A(n44), .Y(n43) );
  NAND2XLM U78 ( .A(B[13]), .B(A[13]), .Y(n78) );
  NAND2XLM U79 ( .A(B[14]), .B(A[14]), .Y(n79) );
  NAND2BX1M U80 ( .AN(B[17]), .B(n16), .Y(n65) );
  OR2X1M U81 ( .A(B[5]), .B(A[5]), .Y(n32) );
  OR2X1M U82 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NAND2XLM U83 ( .A(B[6]), .B(A[6]), .Y(n29) );
  NAND2XLM U84 ( .A(B[5]), .B(A[5]), .Y(n34) );
  XNOR2X2M U85 ( .A(n52), .B(n55), .Y(SUM[19]) );
  XNOR2X2M U86 ( .A(n58), .B(n61), .Y(SUM[18]) );
  NAND2X2M U87 ( .A(n60), .B(n59), .Y(n61) );
  NAND2X2M U88 ( .A(n58), .B(n59), .Y(n57) );
  OR2X2M U89 ( .A(n82), .B(n81), .Y(n15) );
  NOR2X2M U90 ( .A(n85), .B(n86), .Y(n81) );
  AO21XLM U91 ( .A0(n10), .A1(n89), .B0(n93), .Y(n80) );
  NOR2BX2M U92 ( .AN(n54), .B(n12), .Y(n11) );
  INVX2M U93 ( .A(n88), .Y(n85) );
  NAND2BX1M U94 ( .AN(B[19]), .B(n16), .Y(n53) );
  XNOR2X2M U95 ( .A(n11), .B(n51), .Y(SUM[20]) );
  XNOR2X2M U96 ( .A(n6), .B(n17), .Y(SUM[9]) );
  NOR2BX2M U97 ( .AN(n18), .B(n19), .Y(n17) );
  XNOR2X2M U98 ( .A(n118), .B(n119), .Y(SUM[11]) );
  NOR2BX2M U99 ( .AN(n115), .B(n120), .Y(n119) );
  XNOR2XLM U100 ( .A(n9), .B(n20), .Y(SUM[8]) );
  XNOR2X2M U101 ( .A(n36), .B(n37), .Y(SUM[5]) );
  XNOR2X2M U102 ( .A(n70), .B(n69), .Y(SUM[16]) );
  NAND2X2M U103 ( .A(n68), .B(n67), .Y(n70) );
  XNOR2X2M U104 ( .A(n103), .B(n104), .Y(SUM[13]) );
  NAND2X2M U105 ( .A(n78), .B(n84), .Y(n104) );
  XNOR2X2M U106 ( .A(n106), .B(n107), .Y(SUM[12]) );
  XNOR2X2M U107 ( .A(n27), .B(n30), .Y(SUM[6]) );
  NAND2X2M U108 ( .A(n29), .B(n26), .Y(n30) );
  XNOR2X2M U109 ( .A(n64), .B(n66), .Y(SUM[17]) );
  NAND2X2M U110 ( .A(n62), .B(n65), .Y(n66) );
  AND2X2M U111 ( .A(n32), .B(n35), .Y(n13) );
  NAND2X2M U112 ( .A(n78), .B(n79), .Y(n74) );
  NAND3X2M U113 ( .A(n129), .B(n26), .C(n25), .Y(n90) );
  NOR2X2M U114 ( .A(n39), .B(n38), .Y(n129) );
  XNOR2X2M U115 ( .A(n94), .B(n95), .Y(SUM[15]) );
  AOI2B1X1M U116 ( .A1N(n77), .A0(n98), .B0(n99), .Y(n94) );
  NAND2BX2M U117 ( .AN(n126), .B(n127), .Y(n125) );
  NAND3X2M U118 ( .A(n128), .B(n32), .C(n26), .Y(n127) );
  NAND2BX2M U119 ( .AN(n110), .B(n111), .Y(n108) );
  NAND2X2M U120 ( .A(n102), .B(n78), .Y(n98) );
  INVX2M U121 ( .A(n32), .Y(n38) );
  NAND2X2M U122 ( .A(n116), .B(n114), .Y(n124) );
  XNOR2X2M U123 ( .A(n46), .B(n47), .Y(SUM[21]) );
  XNOR2X2M U124 ( .A(A[17]), .B(n48), .Y(n47) );
  NOR2X2M U125 ( .A(n49), .B(n14), .Y(n46) );
  INVX2M U126 ( .A(n34), .Y(n33) );
  INVX2M U127 ( .A(n29), .Y(n28) );
  XNOR2X2M U128 ( .A(n91), .B(n41), .Y(SUM[4]) );
  INVX2M U129 ( .A(n40), .Y(n31) );
  INVX2M U130 ( .A(n42), .Y(n92) );
  NAND2XLM U131 ( .A(n92), .B(n44), .Y(n91) );
  INVX2M U132 ( .A(A[21]), .Y(n16) );
  OR2X1M U133 ( .A(B[7]), .B(A[7]), .Y(n25) );
  OR2X1M U134 ( .A(B[13]), .B(A[13]), .Y(n84) );
  NAND2XLM U135 ( .A(B[7]), .B(A[7]), .Y(n24) );
  NAND2XLM U136 ( .A(B[8]), .B(A[8]), .Y(n21) );
  NAND2XLM U137 ( .A(B[9]), .B(A[9]), .Y(n18) );
  OR2X1M U138 ( .A(B[9]), .B(A[9]), .Y(n113) );
  OR2X1M U139 ( .A(B[14]), .B(A[14]), .Y(n100) );
  NAND2XLM U140 ( .A(B[16]), .B(A[16]), .Y(n68) );
  OR2X1M U141 ( .A(B[8]), .B(A[8]), .Y(n117) );
  OR2X1M U142 ( .A(B[16]), .B(A[16]), .Y(n67) );
  INVX2M U143 ( .A(n96), .Y(n76) );
  INVX2M U144 ( .A(n130), .Y(SUM[2]) );
  INVX2M U145 ( .A(B[21]), .Y(n48) );
  NAND2X1M U146 ( .A(B[19]), .B(A[19]), .Y(n54) );
endmodule


module up4_filter_2_DW01_add_31 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140;

  NOR2BX8M U2 ( .AN(n73), .B(n79), .Y(n78) );
  INVX4M U3 ( .A(n76), .Y(n79) );
  CLKNAND2X2M U4 ( .A(n103), .B(n100), .Y(n3) );
  NAND2X4M U5 ( .A(n1), .B(n2), .Y(n4) );
  NAND2X4M U6 ( .A(n3), .B(n4), .Y(SUM[14]) );
  INVX4M U7 ( .A(n103), .Y(n1) );
  INVX4M U8 ( .A(n100), .Y(n2) );
  CLKNAND2X4M U9 ( .A(n87), .B(n102), .Y(n103) );
  XNOR2X2M U10 ( .A(n20), .B(n21), .Y(SUM[7]) );
  NAND2X1M U11 ( .A(n86), .B(n91), .Y(n107) );
  OR2X6M U12 ( .A(B[12]), .B(A[12]), .Y(n90) );
  CLKNAND2X2M U13 ( .A(B[12]), .B(A[12]), .Y(n97) );
  NAND2BX2M U14 ( .AN(n138), .B(n139), .Y(n137) );
  OR2X6M U15 ( .A(B[11]), .B(A[11]), .Y(n115) );
  NOR2BX2M U16 ( .AN(n14), .B(n15), .Y(n13) );
  NAND2BX4M U17 ( .AN(B[16]), .B(n11), .Y(n76) );
  OR2X2M U18 ( .A(B[9]), .B(A[9]), .Y(n119) );
  OR2X2M U19 ( .A(B[6]), .B(A[6]), .Y(n31) );
  INVX2M U20 ( .A(n102), .Y(n85) );
  INVX2M U21 ( .A(n119), .Y(n15) );
  NAND2X2M U22 ( .A(B[9]), .B(A[9]), .Y(n14) );
  OR2X4M U23 ( .A(B[10]), .B(A[10]), .Y(n120) );
  NOR2BX2M U24 ( .AN(n97), .B(n112), .Y(n111) );
  INVX2M U25 ( .A(n90), .Y(n112) );
  NOR2BX4M U26 ( .AN(n58), .B(n65), .Y(n64) );
  INVX2M U27 ( .A(n61), .Y(n65) );
  NAND2BX2M U28 ( .AN(B[18]), .B(n11), .Y(n61) );
  XNOR2X2M U29 ( .A(n16), .B(n17), .Y(SUM[8]) );
  INVX2M U30 ( .A(n11), .Y(n10) );
  CLKXOR2X2M U31 ( .A(n51), .B(n52), .Y(SUM[20]) );
  INVX4M U32 ( .A(n17), .Y(n113) );
  INVX1M U33 ( .A(n109), .Y(n110) );
  INVXLM U34 ( .A(A[2]), .Y(n134) );
  AND3X4M U35 ( .A(n135), .B(n31), .C(n24), .Y(n5) );
  NAND2X1M U36 ( .A(B[5]), .B(A[5]), .Y(n33) );
  NAND2X2M U37 ( .A(n137), .B(n24), .Y(n93) );
  OAI21X4M U38 ( .A0(n12), .A1(n15), .B0(n14), .Y(n127) );
  OAI21X6M U39 ( .A0(n113), .A1(n132), .B0(n18), .Y(n131) );
  CLKINVX6M U40 ( .A(n131), .Y(n12) );
  OR2X2M U41 ( .A(B[5]), .B(A[5]), .Y(n32) );
  NAND2X2M U42 ( .A(n36), .B(n37), .Y(n34) );
  INVX1M U43 ( .A(n31), .Y(n25) );
  INVX2M U44 ( .A(n115), .Y(n125) );
  NAND2XLM U45 ( .A(B[10]), .B(A[10]), .Y(n122) );
  NAND2X1M U46 ( .A(n58), .B(n59), .Y(n55) );
  NAND2X1M U47 ( .A(n80), .B(n81), .Y(n75) );
  INVX2M U48 ( .A(n87), .Y(n101) );
  NOR2X4M U49 ( .A(B[15]), .B(A[15]), .Y(n9) );
  XNOR2X4M U50 ( .A(n12), .B(n13), .Y(SUM[9]) );
  CLKINVX3M U51 ( .A(B[19]), .Y(n62) );
  XNOR2X4M U52 ( .A(n29), .B(n30), .Y(SUM[6]) );
  NAND2X1M U53 ( .A(n22), .B(n28), .Y(n138) );
  OR2X6M U54 ( .A(B[7]), .B(A[7]), .Y(n24) );
  NAND2X1M U55 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NAND2X4M U56 ( .A(n5), .B(n42), .Y(n133) );
  NOR2BX2M U57 ( .AN(n22), .B(n23), .Y(n21) );
  NAND2XLM U58 ( .A(n114), .B(n115), .Y(n6) );
  NAND3X2M U59 ( .A(n118), .B(n119), .C(n120), .Y(n117) );
  CLKNAND2X4M U60 ( .A(n114), .B(n115), .Y(n96) );
  NAND2X2M U61 ( .A(B[13]), .B(A[13]), .Y(n86) );
  NAND2X1M U62 ( .A(n121), .B(n122), .Y(n116) );
  CLKNAND2X2M U63 ( .A(n108), .B(n97), .Y(n104) );
  AOI2B1X1M U64 ( .A1N(n85), .A0(n100), .B0(n101), .Y(n98) );
  XNOR2X8M U65 ( .A(n129), .B(n130), .Y(SUM[10]) );
  INVX2M U66 ( .A(n127), .Y(n129) );
  NOR2X1M U67 ( .A(n9), .B(n85), .Y(n84) );
  CLKINVX1M U68 ( .A(n75), .Y(n77) );
  NAND2BX4M U69 ( .AN(n116), .B(n117), .Y(n114) );
  NAND2X1M U70 ( .A(B[11]), .B(A[11]), .Y(n121) );
  XNOR2X2M U71 ( .A(B[20]), .B(n11), .Y(n52) );
  NOR2BX2M U72 ( .AN(n121), .B(n125), .Y(n124) );
  NAND2X2M U73 ( .A(n109), .B(n90), .Y(n108) );
  NAND2X1M U74 ( .A(B[17]), .B(n10), .Y(n66) );
  NAND2X4M U75 ( .A(n105), .B(n106), .Y(n102) );
  NAND2XLM U76 ( .A(n86), .B(n87), .Y(n83) );
  AOI2B1X1M U77 ( .A1N(n50), .A0(n51), .B0(n8), .Y(n47) );
  OAI2BB1X2M U78 ( .A0N(n53), .A1N(n55), .B0(n54), .Y(n51) );
  NOR2BX4M U79 ( .AN(n122), .B(n126), .Y(n130) );
  CLKNAND2X2M U80 ( .A(B[16]), .B(n10), .Y(n73) );
  OAI2BB1X4M U81 ( .A0N(n91), .A1N(n104), .B0(n86), .Y(n100) );
  XNOR2X4M U82 ( .A(n57), .B(n55), .Y(SUM[19]) );
  CLKNAND2X4M U83 ( .A(n54), .B(n53), .Y(n57) );
  OAI21X4M U84 ( .A0(n113), .A1(n92), .B0(n96), .Y(n109) );
  XNOR2X4M U85 ( .A(n110), .B(n111), .Y(SUM[12]) );
  NAND2X1M U86 ( .A(B[18]), .B(n10), .Y(n58) );
  XNOR2X4M U87 ( .A(n98), .B(n99), .Y(SUM[15]) );
  CLKNAND2X4M U88 ( .A(B[15]), .B(A[15]), .Y(n80) );
  NOR2BX4M U89 ( .AN(n80), .B(n9), .Y(n99) );
  NAND3X1M U90 ( .A(n140), .B(n32), .C(n31), .Y(n139) );
  CLKNAND2X2M U91 ( .A(B[19]), .B(n10), .Y(n54) );
  NAND2BX2M U92 ( .AN(B[17]), .B(n11), .Y(n69) );
  XNOR2X4M U93 ( .A(n63), .B(n64), .Y(SUM[18]) );
  NAND2XLM U94 ( .A(B[3]), .B(A[3]), .Y(n43) );
  NAND4X2M U95 ( .A(n120), .B(n115), .C(n119), .D(n19), .Y(n92) );
  NAND2X4M U96 ( .A(n93), .B(n133), .Y(n17) );
  OR2X1M U97 ( .A(B[3]), .B(A[3]), .Y(n44) );
  XNOR2X4M U98 ( .A(n77), .B(n78), .Y(SUM[16]) );
  CLKINVX2M U99 ( .A(n60), .Y(n63) );
  NAND2X1M U100 ( .A(n18), .B(n19), .Y(n16) );
  CLKNAND2X2M U101 ( .A(B[14]), .B(A[14]), .Y(n87) );
  XNOR2X2M U102 ( .A(n47), .B(n48), .Y(SUM[21]) );
  AOI2B1XLM U103 ( .A1N(n88), .A0(n7), .B0(n89), .Y(n82) );
  CLKNAND2X2M U104 ( .A(n37), .B(n33), .Y(n140) );
  INVX2M U105 ( .A(A[1]), .Y(n46) );
  NAND2XLM U106 ( .A(n60), .B(n61), .Y(n59) );
  XNOR2X2M U107 ( .A(n41), .B(n42), .Y(SUM[4]) );
  AOI2B1XLM U108 ( .A1N(n126), .A0(n127), .B0(n128), .Y(n123) );
  INVXLM U109 ( .A(n122), .Y(n128) );
  NAND2XLM U110 ( .A(n33), .B(n32), .Y(n35) );
  XNOR2X2M U111 ( .A(n107), .B(n104), .Y(SUM[13]) );
  OAI21X1M U112 ( .A0(n82), .A1(n83), .B0(n84), .Y(n81) );
  NOR2XLM U113 ( .A(n10), .B(B[20]), .Y(n50) );
  CLKNAND2X2M U114 ( .A(n95), .B(n44), .Y(n40) );
  OAI2BB1XLM U115 ( .A0N(n32), .A1N(n34), .B0(n33), .Y(n26) );
  AND2X1M U116 ( .A(n43), .B(n44), .Y(SUM[3]) );
  NAND2XLM U117 ( .A(n73), .B(n74), .Y(n68) );
  NAND2XLM U118 ( .A(n75), .B(n76), .Y(n74) );
  NOR2BX2M U119 ( .AN(n38), .B(n136), .Y(n135) );
  NAND2XLM U120 ( .A(n90), .B(n91), .Y(n89) );
  AND2X1M U121 ( .A(B[20]), .B(n10), .Y(n8) );
  NAND2X4M U122 ( .A(n62), .B(n11), .Y(n53) );
  INVXLM U123 ( .A(n24), .Y(n23) );
  AO21XLM U124 ( .A0(n93), .A1(n94), .B0(n92), .Y(n7) );
  XNOR2XLM U125 ( .A(n10), .B(n49), .Y(n48) );
  NAND2X1M U126 ( .A(B[8]), .B(A[8]), .Y(n18) );
  OR2X1M U127 ( .A(B[4]), .B(A[4]), .Y(n38) );
  NAND2X1M U128 ( .A(B[6]), .B(A[6]), .Y(n28) );
  OR2X2M U129 ( .A(B[13]), .B(A[13]), .Y(n91) );
  NAND2XLM U130 ( .A(B[4]), .B(A[4]), .Y(n37) );
  CLKINVX2M U131 ( .A(n46), .Y(SUM[1]) );
  INVX2M U132 ( .A(n40), .Y(n42) );
  AOI2B1X1M U133 ( .A1N(n25), .A0(n26), .B0(n27), .Y(n20) );
  INVX2M U134 ( .A(n28), .Y(n27) );
  XNOR2X2M U135 ( .A(n123), .B(n124), .Y(SUM[11]) );
  XNOR2X2M U136 ( .A(n70), .B(n71), .Y(SUM[17]) );
  INVX2M U137 ( .A(n68), .Y(n70) );
  NOR2BX2M U138 ( .AN(n66), .B(n72), .Y(n71) );
  INVX2M U139 ( .A(n69), .Y(n72) );
  NAND2X2M U140 ( .A(n66), .B(n67), .Y(n60) );
  NAND2X2M U141 ( .A(n68), .B(n69), .Y(n67) );
  INVX2M U142 ( .A(n19), .Y(n132) );
  INVX2M U143 ( .A(n120), .Y(n126) );
  NAND2X2M U144 ( .A(n37), .B(n38), .Y(n41) );
  INVX2M U145 ( .A(n26), .Y(n29) );
  NOR2BX2M U146 ( .AN(n28), .B(n25), .Y(n30) );
  XNOR2X2M U147 ( .A(n35), .B(n34), .Y(SUM[5]) );
  NAND3XLM U148 ( .A(n95), .B(n44), .C(n5), .Y(n94) );
  NAND2X2M U149 ( .A(n38), .B(n39), .Y(n36) );
  INVX2M U150 ( .A(n40), .Y(n39) );
  NAND2X2M U151 ( .A(n18), .B(n14), .Y(n118) );
  INVX2M U152 ( .A(n43), .Y(n95) );
  INVX2M U153 ( .A(n32), .Y(n136) );
  NAND2XLM U154 ( .A(n97), .B(n6), .Y(n88) );
  INVX2M U155 ( .A(A[21]), .Y(n11) );
  INVX2M U156 ( .A(B[21]), .Y(n49) );
  OR2X4M U157 ( .A(B[8]), .B(A[8]), .Y(n19) );
  INVX2M U158 ( .A(A[14]), .Y(n106) );
  CLKINVX4M U159 ( .A(B[14]), .Y(n105) );
  INVX2M U160 ( .A(n134), .Y(SUM[2]) );
endmodule


module up4_filter_2_DW01_add_27 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152;

  OR2X8M U2 ( .A(B[14]), .B(A[14]), .Y(n91) );
  NAND2X2M U3 ( .A(B[14]), .B(A[14]), .Y(n115) );
  NAND2XLM U4 ( .A(n108), .B(n10), .Y(n1) );
  NAND3X2M U5 ( .A(n2), .B(n137), .C(n103), .Y(n131) );
  INVX2M U6 ( .A(n1), .Y(n2) );
  NAND2X1M U7 ( .A(n30), .B(n31), .Y(n5) );
  CLKNAND2X4M U8 ( .A(n3), .B(n4), .Y(n6) );
  NAND2X4M U9 ( .A(n5), .B(n6), .Y(SUM[7]) );
  INVX2M U10 ( .A(n30), .Y(n3) );
  INVX2M U11 ( .A(n31), .Y(n4) );
  AOI2B1X4M U12 ( .A1N(n35), .A0(n36), .B0(n37), .Y(n30) );
  NOR2BX4M U13 ( .AN(n32), .B(n33), .Y(n31) );
  XNOR2X4M U14 ( .A(n125), .B(n126), .Y(SUM[13]) );
  CLKNAND2X2M U15 ( .A(n129), .B(n112), .Y(n128) );
  OR2X6M U16 ( .A(B[19]), .B(A[19]), .Y(n68) );
  INVX2M U17 ( .A(n108), .Y(n144) );
  XNOR2X2M U18 ( .A(B[21]), .B(n59), .Y(n58) );
  NOR2X2M U19 ( .A(n60), .B(n7), .Y(n57) );
  OR2X2M U20 ( .A(B[5]), .B(A[5]), .Y(n45) );
  NAND3X2M U21 ( .A(n131), .B(n101), .C(n100), .Y(n129) );
  BUFX2M U22 ( .A(n27), .Y(n10) );
  OR2X6M U23 ( .A(B[12]), .B(A[12]), .Y(n112) );
  OR2X4M U24 ( .A(B[8]), .B(A[8]), .Y(n29) );
  CLKNAND2X4M U25 ( .A(n134), .B(n135), .Y(n108) );
  NOR2BX4M U26 ( .AN(n24), .B(n25), .Y(n23) );
  XNOR2X2M U27 ( .A(n69), .B(n70), .Y(SUM[19]) );
  NOR2BX2M U28 ( .AN(n65), .B(n71), .Y(n70) );
  INVX2M U29 ( .A(n68), .Y(n71) );
  NOR2BX4M U30 ( .AN(n82), .B(n84), .Y(n83) );
  INVX4M U31 ( .A(n80), .Y(n84) );
  NAND2X2M U32 ( .A(n20), .B(n21), .Y(SUM[15]) );
  NAND2X2M U33 ( .A(n12), .B(n13), .Y(n15) );
  XOR2X8M U34 ( .A(n120), .B(n122), .Y(SUM[14]) );
  INVX4M U35 ( .A(n91), .Y(n119) );
  AND2X2M U36 ( .A(B[20]), .B(A[20]), .Y(n7) );
  INVXLM U37 ( .A(B[12]), .Y(n8) );
  INVX2M U38 ( .A(n8), .Y(n9) );
  NAND3X2M U39 ( .A(n147), .B(n32), .C(n105), .Y(n27) );
  NOR2X2M U40 ( .A(n85), .B(n86), .Y(n81) );
  NAND2X2M U41 ( .A(B[9]), .B(A[9]), .Y(n24) );
  OR2X4M U42 ( .A(B[18]), .B(A[18]), .Y(n72) );
  NAND2X1M U43 ( .A(B[18]), .B(A[18]), .Y(n73) );
  NAND2X2M U44 ( .A(B[10]), .B(A[10]), .Y(n136) );
  NAND2X2M U45 ( .A(n146), .B(n28), .Y(n145) );
  OR2X8M U46 ( .A(B[6]), .B(A[6]), .Y(n41) );
  XNOR2X4M U47 ( .A(n129), .B(n17), .Y(SUM[12]) );
  AOI2B1X2M U48 ( .A1N(n88), .A0(n89), .B0(n90), .Y(n85) );
  NAND2X2M U49 ( .A(n11), .B(n92), .Y(n90) );
  NOR2X4M U50 ( .A(n61), .B(n62), .Y(n60) );
  XNOR2X2M U51 ( .A(n64), .B(n63), .Y(SUM[20]) );
  NOR2BX8M U52 ( .AN(n115), .B(n119), .Y(n122) );
  OAI211X1M U53 ( .A0(n25), .A1(n28), .B0(n24), .C0(n136), .Y(n132) );
  NAND2X1M U54 ( .A(B[11]), .B(A[11]), .Y(n101) );
  OR2X4M U55 ( .A(B[11]), .B(A[11]), .Y(n103) );
  INVX3M U56 ( .A(n109), .Y(n25) );
  NAND2BX2M U57 ( .AN(n138), .B(n27), .Y(n146) );
  OR2X8M U58 ( .A(B[7]), .B(A[7]), .Y(n34) );
  INVX2M U59 ( .A(n140), .Y(n142) );
  CLKNAND2X2M U60 ( .A(B[8]), .B(A[8]), .Y(n28) );
  OR2X8M U61 ( .A(B[16]), .B(A[16]), .Y(n80) );
  CLKINVX1M U62 ( .A(n119), .Y(n11) );
  INVX3M U63 ( .A(n112), .Y(n130) );
  NOR2BX2M U64 ( .AN(n114), .B(n127), .Y(n126) );
  NAND2X2M U65 ( .A(n124), .B(n113), .Y(n123) );
  NAND2X3M U66 ( .A(n128), .B(n99), .Y(n124) );
  NAND2X2M U67 ( .A(n101), .B(n103), .Y(n139) );
  AOI21X4M U68 ( .A0(B[10]), .A1(A[10]), .B0(n144), .Y(n143) );
  AO21X4M U69 ( .A0(n9), .A1(A[12]), .B0(n130), .Y(n17) );
  INVX4M U70 ( .A(B[10]), .Y(n134) );
  NAND2X2M U71 ( .A(B[7]), .B(A[7]), .Y(n32) );
  CLKINVX2M U72 ( .A(n87), .Y(n86) );
  INVX4M U73 ( .A(n92), .Y(n118) );
  OR2X8M U74 ( .A(B[15]), .B(A[15]), .Y(n92) );
  INVX1M U75 ( .A(n117), .Y(n19) );
  NAND2X1M U76 ( .A(n116), .B(n117), .Y(n20) );
  AO21X2M U77 ( .A0(n108), .A1(n140), .B0(n141), .Y(n16) );
  XNOR2X4M U78 ( .A(n22), .B(n23), .Y(SUM[9]) );
  NAND2X1M U79 ( .A(n77), .B(n76), .Y(n79) );
  XNOR2X4M U80 ( .A(n142), .B(n143), .Y(SUM[10]) );
  XNOR2X4M U81 ( .A(n57), .B(n58), .Y(SUM[21]) );
  NOR2BX4M U82 ( .AN(n87), .B(n118), .Y(n117) );
  NAND2X2M U83 ( .A(B[15]), .B(A[15]), .Y(n87) );
  NAND2X1M U84 ( .A(n75), .B(n74), .Y(n14) );
  AOI2B1X2M U85 ( .A1N(n119), .A0(n120), .B0(n121), .Y(n116) );
  CLKINVX2M U86 ( .A(n67), .Y(n69) );
  NAND2X4M U87 ( .A(n14), .B(n15), .Y(SUM[18]) );
  XNOR2X4M U88 ( .A(n16), .B(n139), .Y(SUM[11]) );
  CLKINVX3M U89 ( .A(n63), .Y(n61) );
  NAND2X1M U90 ( .A(B[13]), .B(A[13]), .Y(n114) );
  CLKINVX2M U91 ( .A(n75), .Y(n12) );
  CLKNAND2X2M U92 ( .A(n73), .B(n72), .Y(n75) );
  INVX2M U93 ( .A(n34), .Y(n33) );
  NAND2X2M U94 ( .A(n19), .B(n18), .Y(n21) );
  CLKNAND2X2M U95 ( .A(n95), .B(n96), .Y(n94) );
  CLKINVX2M U96 ( .A(n74), .Y(n13) );
  OAI2BB1X2M U97 ( .A0N(n76), .A1N(n78), .B0(n77), .Y(n74) );
  OAI2B1X1M U98 ( .A1N(n80), .A0(n81), .B0(n82), .Y(n78) );
  CLKINVX2M U99 ( .A(n107), .Y(n150) );
  XNOR2X1M U100 ( .A(n46), .B(n44), .Y(SUM[5]) );
  NAND2X2M U101 ( .A(B[19]), .B(A[19]), .Y(n65) );
  INVXLM U102 ( .A(n116), .Y(n18) );
  NAND2XLM U103 ( .A(n45), .B(n43), .Y(n46) );
  NAND2X1M U104 ( .A(n42), .B(n43), .Y(n36) );
  NAND2XLM U105 ( .A(n112), .B(n113), .Y(n93) );
  CLKNAND2X2M U106 ( .A(n67), .B(n68), .Y(n66) );
  OAI21X2M U107 ( .A0(n22), .A1(n25), .B0(n24), .Y(n140) );
  NAND2XLM U108 ( .A(n134), .B(n135), .Y(n133) );
  INVXLM U109 ( .A(n115), .Y(n121) );
  OAI2B11X1M U110 ( .A1N(n45), .A0(n48), .B0(n43), .C0(n38), .Y(n148) );
  OAI2BB1XLM U111 ( .A0N(n72), .A1N(n74), .B0(n73), .Y(n67) );
  NAND2X2M U112 ( .A(n65), .B(n66), .Y(n63) );
  NOR2BXLM U113 ( .AN(n48), .B(n47), .Y(n49) );
  NAND2XLM U114 ( .A(n28), .B(n29), .Y(n26) );
  NAND2BX2M U115 ( .AN(n54), .B(n55), .Y(n151) );
  NOR2XLM U116 ( .A(n150), .B(n47), .Y(n149) );
  NAND2XLM U117 ( .A(B[17]), .B(A[17]), .Y(n77) );
  NAND4XLM U118 ( .A(n41), .B(n34), .C(n45), .D(n111), .Y(n110) );
  AND2X1M U119 ( .A(n54), .B(n55), .Y(SUM[2]) );
  INVXLM U120 ( .A(n53), .Y(n52) );
  NAND2XLM U121 ( .A(B[12]), .B(A[12]), .Y(n99) );
  NAND2XLM U122 ( .A(B[5]), .B(A[5]), .Y(n43) );
  OR2X4M U123 ( .A(B[13]), .B(A[13]), .Y(n113) );
  OR2X2M U124 ( .A(B[4]), .B(A[4]), .Y(n111) );
  NAND2XLM U125 ( .A(B[3]), .B(A[3]), .Y(n51) );
  CLKINVX2M U126 ( .A(n152), .Y(SUM[1]) );
  XNOR2X2M U127 ( .A(n79), .B(n78), .Y(SUM[17]) );
  XNOR2X2M U128 ( .A(B[20]), .B(A[20]), .Y(n64) );
  XNOR2X2M U129 ( .A(n26), .B(n27), .Y(SUM[8]) );
  INVX2M U130 ( .A(n38), .Y(n37) );
  XNOR2X4M U131 ( .A(n81), .B(n83), .Y(SUM[16]) );
  NAND3X2M U132 ( .A(n132), .B(n133), .C(n103), .Y(n100) );
  NAND3X2M U133 ( .A(n148), .B(n41), .C(n34), .Y(n105) );
  NAND2BX2M U134 ( .AN(n93), .B(n94), .Y(n89) );
  NAND4X2M U135 ( .A(n149), .B(n45), .C(n41), .D(n34), .Y(n147) );
  NOR2X2M U136 ( .A(A[20]), .B(B[20]), .Y(n62) );
  NOR2XLM U137 ( .A(n25), .B(n138), .Y(n137) );
  INVX2M U138 ( .A(n124), .Y(n125) );
  INVX2M U139 ( .A(n113), .Y(n127) );
  NAND2X2M U140 ( .A(n123), .B(n114), .Y(n120) );
  INVX2M U141 ( .A(n145), .Y(n22) );
  OR2X2M U142 ( .A(B[17]), .B(A[17]), .Y(n76) );
  NAND2X2M U143 ( .A(n114), .B(n115), .Y(n88) );
  INVX2M U144 ( .A(n29), .Y(n138) );
  INVX2M U145 ( .A(n136), .Y(n141) );
  XNOR2X2M U146 ( .A(n39), .B(n40), .Y(SUM[6]) );
  INVX2M U147 ( .A(n36), .Y(n39) );
  NOR2BX2M U148 ( .AN(n38), .B(n35), .Y(n40) );
  XNOR2XLM U149 ( .A(n150), .B(n49), .Y(SUM[4]) );
  OAI2B1X2M U150 ( .A1N(n53), .A0(n151), .B0(n51), .Y(n107) );
  OAI21X2M U151 ( .A0(n150), .A1(n47), .B0(n48), .Y(n44) );
  NAND2X2M U152 ( .A(n44), .B(n45), .Y(n42) );
  INVX2M U153 ( .A(n111), .Y(n47) );
  AND3XLM U154 ( .A(n29), .B(n108), .C(n109), .Y(n102) );
  NAND2XLM U155 ( .A(n100), .B(n101), .Y(n97) );
  XNOR2X2M U156 ( .A(n54), .B(n50), .Y(SUM[3]) );
  NOR2BX2M U157 ( .AN(n51), .B(n52), .Y(n50) );
  NAND3X2M U158 ( .A(n102), .B(n103), .C(n104), .Y(n95) );
  NOR2X2M U159 ( .A(n97), .B(n98), .Y(n96) );
  NAND3XLM U160 ( .A(n105), .B(n32), .C(n106), .Y(n104) );
  INVX2M U161 ( .A(n41), .Y(n35) );
  INVX2M U162 ( .A(n99), .Y(n98) );
  NAND2BXLM U163 ( .AN(n110), .B(n107), .Y(n106) );
  INVX2M U164 ( .A(A[21]), .Y(n59) );
  OR2X4M U165 ( .A(B[9]), .B(A[9]), .Y(n109) );
  NAND2X2M U166 ( .A(B[2]), .B(A[2]), .Y(n54) );
  NAND2X2M U167 ( .A(B[4]), .B(A[4]), .Y(n48) );
  NAND2X2M U168 ( .A(B[6]), .B(A[6]), .Y(n38) );
  OR2X2M U169 ( .A(B[2]), .B(A[2]), .Y(n55) );
  INVX2M U170 ( .A(A[10]), .Y(n135) );
  OR2X2M U171 ( .A(B[3]), .B(A[3]), .Y(n53) );
  INVX2M U172 ( .A(B[1]), .Y(n152) );
  NAND2X2M U173 ( .A(B[16]), .B(A[16]), .Y(n82) );
endmodule


module up4_filter_2_DW01_add_36 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144;

  INVXLM U2 ( .A(A[15]), .Y(n93) );
  XNOR2X4M U3 ( .A(n97), .B(n96), .Y(SUM[14]) );
  NAND2XLM U4 ( .A(B[11]), .B(A[11]), .Y(n113) );
  INVX4M U5 ( .A(B[21]), .Y(n53) );
  NAND2X2M U6 ( .A(n48), .B(n49), .Y(n45) );
  XOR2X2M U7 ( .A(n47), .B(n45), .Y(SUM[19]) );
  AOI21X1M U8 ( .A0(A[19]), .A1(B[21]), .B0(n52), .Y(n47) );
  INVX2M U9 ( .A(n46), .Y(n52) );
  NAND2X2M U10 ( .A(n45), .B(n46), .Y(n44) );
  NOR2BX2M U11 ( .AN(n81), .B(n108), .Y(n107) );
  INVX2M U12 ( .A(n86), .Y(n108) );
  CLKNAND2X2M U13 ( .A(n125), .B(n17), .Y(n121) );
  CLKNAND2X2M U14 ( .A(n71), .B(n12), .Y(n68) );
  INVX2M U15 ( .A(n94), .Y(n96) );
  XNOR2X2M U16 ( .A(n90), .B(n91), .Y(SUM[15]) );
  INVX2M U17 ( .A(n19), .Y(n18) );
  NOR2X2M U18 ( .A(n29), .B(n36), .Y(n126) );
  NAND2BX4M U19 ( .AN(n6), .B(n116), .Y(n5) );
  OR2X2M U20 ( .A(B[5]), .B(A[5]), .Y(n37) );
  NAND2X2M U21 ( .A(n74), .B(n75), .Y(n73) );
  OR2X2M U22 ( .A(B[12]), .B(A[12]), .Y(n86) );
  OAI21X2M U23 ( .A0(n6), .A1(n79), .B0(n82), .Y(n105) );
  INVX2M U24 ( .A(B[15]), .Y(n92) );
  NAND2X2M U25 ( .A(n99), .B(n100), .Y(n98) );
  INVX2M U26 ( .A(B[14]), .Y(n99) );
  INVX2M U27 ( .A(A[14]), .Y(n100) );
  NAND2X2M U28 ( .A(n53), .B(n54), .Y(n46) );
  INVX2M U29 ( .A(A[19]), .Y(n54) );
  OR2X2M U30 ( .A(B[8]), .B(A[8]), .Y(n116) );
  OR2X4M U31 ( .A(A[11]), .B(B[11]), .Y(n110) );
  INVX4M U32 ( .A(n131), .Y(n29) );
  NAND2BX2M U33 ( .AN(B[13]), .B(n103), .Y(n87) );
  INVX2M U34 ( .A(A[13]), .Y(n103) );
  NAND2X2M U35 ( .A(B[12]), .B(A[12]), .Y(n81) );
  NAND2X2M U36 ( .A(B[14]), .B(A[14]), .Y(n75) );
  INVX2M U37 ( .A(n98), .Y(n72) );
  NAND2X2M U38 ( .A(n101), .B(n77), .Y(n94) );
  NAND2X2M U39 ( .A(n102), .B(n87), .Y(n101) );
  NAND2X2M U40 ( .A(n104), .B(n81), .Y(n102) );
  XNOR2X2M U41 ( .A(B[21]), .B(n41), .Y(n40) );
  AOI2B1X1M U42 ( .A1N(n42), .A0(n43), .B0(n10), .Y(n39) );
  INVX2M U43 ( .A(n121), .Y(n123) );
  XNOR2X2M U44 ( .A(n88), .B(n68), .Y(SUM[16]) );
  NOR2BX2M U45 ( .AN(n58), .B(n64), .Y(n63) );
  OA21X8M U46 ( .A0(n83), .A1(n132), .B0(n85), .Y(n6) );
  OAI21X4M U47 ( .A0(n126), .A1(n127), .B0(n3), .Y(n85) );
  NAND2X2M U48 ( .A(n92), .B(n93), .Y(n14) );
  XNOR2X2M U49 ( .A(n1), .B(n8), .Y(SUM[13]) );
  NAND2BX2M U50 ( .AN(n92), .B(A[15]), .Y(n70) );
  INVX2M U51 ( .A(n116), .Y(n23) );
  CLKNAND2X2M U52 ( .A(B[6]), .B(A[6]), .Y(n32) );
  AND2X2M U53 ( .A(n82), .B(n81), .Y(n80) );
  NAND2X2M U54 ( .A(n105), .B(n86), .Y(n104) );
  NOR2X2M U55 ( .A(A[15]), .B(B[15]), .Y(n7) );
  AOI2B1X1M U56 ( .A1N(n72), .A0(n94), .B0(n95), .Y(n90) );
  NOR2BX4M U57 ( .AN(n70), .B(n7), .Y(n91) );
  NAND2X1M U58 ( .A(A[13]), .B(B[13]), .Y(n77) );
  NAND2X1M U59 ( .A(B[21]), .B(A[16]), .Y(n66) );
  INVX3M U60 ( .A(A[16]), .Y(n89) );
  NAND3X2M U61 ( .A(n114), .B(n19), .C(n115), .Y(n111) );
  OR2X6M U62 ( .A(B[9]), .B(A[9]), .Y(n19) );
  NAND2X1M U63 ( .A(n86), .B(n87), .Y(n76) );
  NAND2X1M U64 ( .A(B[8]), .B(A[8]), .Y(n22) );
  XNOR2X2M U65 ( .A(n6), .B(n21), .Y(SUM[8]) );
  NAND3X1M U66 ( .A(n111), .B(n112), .C(n113), .Y(n109) );
  INVX4M U67 ( .A(A[18]), .Y(n57) );
  OA21X4M U68 ( .A0(n76), .A1(n9), .B0(n77), .Y(n74) );
  NAND2X2M U69 ( .A(n68), .B(n69), .Y(n67) );
  NAND2XLM U70 ( .A(n104), .B(n81), .Y(n1) );
  INVX1M U71 ( .A(n75), .Y(n95) );
  NOR2BX4M U72 ( .AN(n112), .B(n120), .Y(n124) );
  NOR2BX1M U73 ( .AN(n26), .B(n27), .Y(n25) );
  XNOR2X4M U74 ( .A(n123), .B(n124), .Y(SUM[10]) );
  NOR2BX2M U75 ( .AN(n17), .B(n18), .Y(n16) );
  XNOR2X4M U76 ( .A(n106), .B(n107), .Y(SUM[12]) );
  OA21XLM U77 ( .A0(n126), .A1(n127), .B0(n3), .Y(n2) );
  OA21X2M U78 ( .A0(n78), .A1(n79), .B0(n80), .Y(n9) );
  NAND2X1M U79 ( .A(n77), .B(n87), .Y(n8) );
  XNOR2X2M U80 ( .A(n15), .B(n16), .Y(SUM[9]) );
  NAND2X2M U81 ( .A(n128), .B(n37), .Y(n36) );
  OR2X2M U82 ( .A(B[7]), .B(A[7]), .Y(n3) );
  CLKAND2X2M U83 ( .A(n58), .B(n59), .Y(n13) );
  CLKNAND2X2M U84 ( .A(n66), .B(n67), .Y(n60) );
  NAND2X2M U85 ( .A(B[10]), .B(A[10]), .Y(n112) );
  NAND2X2M U86 ( .A(B[9]), .B(A[9]), .Y(n17) );
  NAND2X2M U87 ( .A(n110), .B(n109), .Y(n82) );
  AOI2B1XLM U88 ( .A1N(n120), .A0(n121), .B0(n122), .Y(n117) );
  NAND2X2M U89 ( .A(A[17]), .B(B[21]), .Y(n58) );
  CLKNAND2X2M U90 ( .A(n53), .B(n57), .Y(n51) );
  NAND2X3M U91 ( .A(n65), .B(n53), .Y(n61) );
  NAND2X3M U92 ( .A(n53), .B(n89), .Y(n69) );
  CLKNAND2X4M U93 ( .A(n5), .B(n22), .Y(n20) );
  NAND3X2M U94 ( .A(n98), .B(n73), .C(n14), .Y(n71) );
  OR2X4M U95 ( .A(B[10]), .B(A[10]), .Y(n115) );
  OR2X4M U96 ( .A(B[6]), .B(A[6]), .Y(n131) );
  NAND2X2M U97 ( .A(n19), .B(n20), .Y(n125) );
  NAND4X4M U98 ( .A(n115), .B(n110), .C(n19), .D(n116), .Y(n79) );
  NOR2BX4M U99 ( .AN(n75), .B(n72), .Y(n97) );
  CLKNAND2X2M U100 ( .A(B[7]), .B(A[7]), .Y(n26) );
  XNOR2X2M U101 ( .A(n39), .B(n40), .Y(SUM[21]) );
  NAND4X4M U102 ( .A(n28), .B(n131), .C(n38), .D(n37), .Y(n83) );
  NOR2BX2M U103 ( .AN(n48), .B(n56), .Y(n55) );
  XNOR2X1M U104 ( .A(n43), .B(n4), .Y(SUM[20]) );
  XNOR2X1M U105 ( .A(B[21]), .B(A[20]), .Y(n4) );
  XNOR2X2M U106 ( .A(n13), .B(n55), .Y(SUM[18]) );
  NOR2XLM U107 ( .A(A[20]), .B(B[21]), .Y(n42) );
  OAI2B11X2M U108 ( .A1N(n144), .A0(n141), .B0(n142), .C0(n143), .Y(n138) );
  INVXLM U109 ( .A(n3), .Y(n27) );
  XNOR2X2M U110 ( .A(n24), .B(n25), .Y(SUM[7]) );
  AOI2B1XLM U111 ( .A1N(n83), .A0(n84), .B0(n2), .Y(n78) );
  OR2X1M U112 ( .A(B[4]), .B(A[4]), .Y(n38) );
  NAND2XLM U113 ( .A(A[0]), .B(B[0]), .Y(n141) );
  NAND2XLM U114 ( .A(n37), .B(n38), .Y(n35) );
  INVXLM U115 ( .A(n112), .Y(n122) );
  INVXLM U116 ( .A(n30), .Y(n33) );
  NAND2XLM U117 ( .A(n22), .B(n17), .Y(n114) );
  OAI21X2M U118 ( .A0(n135), .A1(n136), .B0(n137), .Y(n84) );
  NAND2X1M U119 ( .A(B[2]), .B(A[2]), .Y(n143) );
  AND2X1M U120 ( .A(A[20]), .B(B[21]), .Y(n10) );
  INVXLM U121 ( .A(B[2]), .Y(n139) );
  NAND2X1M U122 ( .A(B[4]), .B(A[4]), .Y(n130) );
  NAND2BX4M U123 ( .AN(n11), .B(n44), .Y(n43) );
  NAND2X2M U124 ( .A(n60), .B(n61), .Y(n59) );
  INVX2M U125 ( .A(A[2]), .Y(n140) );
  INVX2M U126 ( .A(n51), .Y(n56) );
  XNOR2X2M U127 ( .A(n62), .B(n63), .Y(SUM[17]) );
  INVX2M U128 ( .A(n60), .Y(n62) );
  INVX2M U129 ( .A(n61), .Y(n64) );
  NAND2X2M U130 ( .A(n66), .B(n69), .Y(n88) );
  INVX2M U131 ( .A(n20), .Y(n15) );
  NAND2X2M U132 ( .A(n50), .B(n51), .Y(n49) );
  NAND2XLM U133 ( .A(n58), .B(n59), .Y(n50) );
  XNOR2X2M U134 ( .A(n117), .B(n118), .Y(SUM[11]) );
  NOR2BX2M U135 ( .AN(n113), .B(n119), .Y(n118) );
  NAND2X2M U136 ( .A(n26), .B(n32), .Y(n127) );
  INVX2M U137 ( .A(n115), .Y(n120) );
  INVX2M U138 ( .A(n110), .Y(n119) );
  INVX2M U139 ( .A(n84), .Y(n132) );
  OAI21XLM U140 ( .A0(n132), .A1(n35), .B0(n36), .Y(n30) );
  NOR2BX2M U141 ( .AN(n22), .B(n23), .Y(n21) );
  AOI2B1XLM U142 ( .A1N(n29), .A0(n30), .B0(n31), .Y(n24) );
  XNOR2X2M U143 ( .A(n33), .B(n34), .Y(SUM[6]) );
  NOR2BXLM U144 ( .AN(n32), .B(n29), .Y(n34) );
  INVX2M U145 ( .A(A[3]), .Y(n135) );
  INVX2M U146 ( .A(n32), .Y(n31) );
  NAND3X2M U147 ( .A(n138), .B(n133), .C(n134), .Y(n137) );
  CLKNAND2X2M U148 ( .A(n136), .B(n135), .Y(n134) );
  CLKNAND2X2M U149 ( .A(n139), .B(n140), .Y(n133) );
  NAND2XLM U150 ( .A(B[1]), .B(A[1]), .Y(n142) );
  CLKNAND2X2M U151 ( .A(n129), .B(n130), .Y(n128) );
  NAND2XLM U152 ( .A(B[5]), .B(A[5]), .Y(n129) );
  AND2X1M U153 ( .A(A[19]), .B(B[21]), .Y(n11) );
  OR2X4M U154 ( .A(A[7]), .B(B[7]), .Y(n28) );
  OR2X2M U155 ( .A(B[1]), .B(A[1]), .Y(n144) );
  INVX2M U156 ( .A(B[3]), .Y(n136) );
  NAND2X4M U157 ( .A(A[18]), .B(B[21]), .Y(n48) );
  INVX4M U158 ( .A(A[17]), .Y(n65) );
  NAND2XLM U159 ( .A(B[15]), .B(A[15]), .Y(n12) );
  INVX2M U160 ( .A(n105), .Y(n106) );
  INVX2M U161 ( .A(A[21]), .Y(n41) );
endmodule


module up4_filter_2 ( clk, rst_n, in_data, b0, b1, b2, b3 );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n;
  wire   N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192,
         N194, N195, N99, N98, N97, N96, N95, N94, N93, N92, N137, N132, N131,
         N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120,
         N119, N118, N117, N116, N115, N114, N113, N108, N107, N106, N105,
         N104, N103, N102, N101, N100, N327, N326, N325, N324, N323, N322,
         N321, N320, N319, N318, N317, N316, N315, N314, N313, N312, N311,
         N310, N309, N308, N282, N281, N280, N279, N278, N277, N276, N275,
         N274, N273, N272, N271, N270, N269, N9, N88, N87, N86, N85, N84, N83,
         N82, N81, N80, N8, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70,
         N7, N69, N68, N67, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N42, N41, N40, N4, N39, N38,
         N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27, N26, N25,
         N24, N23, N20, N2, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10,
         N1, N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252,
         N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, N240,
         N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229,
         N228, N227, N226, N225, N224, N223, N222, N221, N220, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N157, N156, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396;
  wire   [15:0] x_n1;
  wire   [15:0] x_n3;
  wire   [15:0] x_n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31;
  assign N157 = in_data[1];
  assign N156 = in_data[0];

  up4_filter_2_DW01_add_33 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({n175, n175, N282, 
        N281, N280, n32, N278, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, n59, n108, n173, n35, 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  up4_filter_2_DW01_add_25 add_0_root_add_0_root_add_38_6 ( .A({n175, n175, 
        n175, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, n59, n108, n173, n35, 1'b0}), .B({N240, N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11}) );
  up4_filter_2_DW01_add_19 add_1_root_sub_0_root_add_30_3 ( .A({n176, n176, 
        N42, N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, 
        N28, N27, N26, N25, N24, n157}), .B({n172, n172, N20, N19, N18, N17, 
        N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .CI(1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_2_DW01_add_29 add_3_root_add_0_root_add_38_6 ( .A({n172, n172, 
        n172, n172, n172, x_n1[14:2], N137, N1, 1'b0, 1'b0}), .B({n176, n176, 
        n176, n176, n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, 
        n161, n160, n159, n158, n157, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  up4_filter_2_DW01_add_21 add_1_root_add_0_root_add_34_4 ( .A({n175, n175, 
        n175, n175, n175, in_data[14:4], n174, n29, n173, n35, 1'b0, 1'b0}), 
        .B({n172, N195, N194, n54, N192, N191, N190, N189, n30, N187, N186, 
        N185, N184, N183, N182, n15, n140, N137, N1, 1'b0, 1'b0, 1'b0}), .CI(
        1'b0), .SUM({N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15}) );
  up4_filter_2_DW01_add_23 add_0_root_add_0_root_add_34_4 ( .A({n176, n176, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, n158, n157, 1'b0, 1'b0}), .B({N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, N118, 
        N117, N116, N115, N114, N113, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21}) );
  up4_filter_2_DW01_add_35 add_1_root_add_0_root_add_42_4 ( .A({n176, n176, 
        n176, n176, n176, n171, n170, n169, n168, n167, n166, n165, n164, n163, 
        n162, n161, n160, n159, n158, n156, 1'b0, 1'b0}), .B({n172, N195, N194, 
        n54, N192, N191, N190, N189, n31, N187, N186, N185, N184, N183, N182, 
        n15, n140, N137, N1, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23}) );
  up4_filter_2_DW01_add_31 add_2_root_add_0_root_add_38_6 ( .A({n176, n176, 
        n176, n176, n176, n176, n171, n170, n169, n168, n167, n166, n165, n164, 
        n163, n162, n161, n160, n159, n158, n156, 1'b0}), .B({n172, N195, N194, 
        n54, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, 
        n15, n140, N137, N1, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N262, N261, 
        N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, 
        N248, N247, N246, N245, N244, N243, N242, SYNOPSYS_UNCONNECTED__24})
         );
  up4_filter_2_DW01_add_27 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED__25}) );
  up4_filter_2_DW01_add_36 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({n396, n396, n396, n396, n396, n396, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, 
        N45}), .CI(1'b0), .SUM({b0, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31}) );
  DFFRQX2M \x_n3_reg[0]  ( .D(n157), .CK(clk), .RN(n183), .Q(x_n3[0]) );
  DFFRHQX4M \x_n1_reg[0]  ( .D(n35), .CK(clk), .RN(n181), .Q(N1) );
  DFFRHQX4M \x_n1_reg[1]  ( .D(n173), .CK(clk), .RN(n181), .Q(N137) );
  DFFRQX2M \x_n3_reg[15]  ( .D(n176), .CK(clk), .RN(n181), .Q(x_n3[15]) );
  DFFRQX2M \x_n3_reg[14]  ( .D(n171), .CK(clk), .RN(n181), .Q(x_n3[14]) );
  DFFRQX2M \x_n3_reg[9]  ( .D(n166), .CK(clk), .RN(n182), .Q(x_n3[9]) );
  DFFRQX2M \x_n1_reg[15]  ( .D(n175), .CK(clk), .RN(n180), .Q(x_n1[15]) );
  DFFRQX2M \x_n3_reg[13]  ( .D(n170), .CK(clk), .RN(n181), .Q(x_n3[13]) );
  DFFRQX2M \x_n3_reg[12]  ( .D(n169), .CK(clk), .RN(n181), .Q(x_n3[12]) );
  DFFRQX2M \x_n3_reg[11]  ( .D(n168), .CK(clk), .RN(n181), .Q(x_n3[11]) );
  DFFRQX2M \x_n3_reg[8]  ( .D(n165), .CK(clk), .RN(n182), .Q(x_n3[8]) );
  DFFRQX2M \x_n3_reg[10]  ( .D(n167), .CK(clk), .RN(n182), .Q(x_n3[10]) );
  DFFRQX2M \x_n3_reg[7]  ( .D(n164), .CK(clk), .RN(n182), .Q(x_n3[7]) );
  DFFRQX2M \x_n3_reg[6]  ( .D(n163), .CK(clk), .RN(n182), .Q(x_n3[6]) );
  DFFRQX2M \x_n1_reg[14]  ( .D(in_data[14]), .CK(clk), .RN(n180), .Q(x_n1[14])
         );
  DFFRQX2M \x_n3_reg[2]  ( .D(n159), .CK(clk), .RN(n183), .Q(x_n3[2]) );
  DFFRQX2M \x_n3_reg[4]  ( .D(n161), .CK(clk), .RN(n183), .Q(x_n3[4]) );
  DFFRQX2M \x_n3_reg[3]  ( .D(n160), .CK(clk), .RN(n183), .Q(x_n3[3]) );
  DFFRQX2M \x_n3_reg[5]  ( .D(n162), .CK(clk), .RN(n182), .Q(x_n3[5]) );
  DFFRQX2M \x_n1_reg[9]  ( .D(in_data[9]), .CK(clk), .RN(n180), .Q(x_n1[9]) );
  DFFRQX2M \x_n1_reg[8]  ( .D(in_data[8]), .CK(clk), .RN(n180), .Q(x_n1[8]) );
  DFFRQX2M \x_n2_reg[9]  ( .D(x_n1[9]), .CK(clk), .RN(n182), .Q(x_n2[9]) );
  DFFRQX2M \x_n2_reg[8]  ( .D(x_n1[8]), .CK(clk), .RN(n182), .Q(x_n2[8]) );
  DFFRQX2M \x_n2_reg[4]  ( .D(x_n1[4]), .CK(clk), .RN(n182), .Q(x_n2[4]) );
  DFFRQX2M \x_n2_reg[14]  ( .D(x_n1[14]), .CK(clk), .RN(n181), .Q(x_n2[14]) );
  DFFRQX2M \x_n2_reg[15]  ( .D(n172), .CK(clk), .RN(n181), .Q(x_n2[15]) );
  DFFRQX2M \x_n1_reg[7]  ( .D(in_data[7]), .CK(clk), .RN(n180), .Q(x_n1[7]) );
  DFFRHQX4M \x_n1_reg[2]  ( .D(n29), .CK(clk), .RN(n181), .Q(x_n1[2]) );
  DFFRQX2M \x_n2_reg[7]  ( .D(x_n1[7]), .CK(clk), .RN(n182), .Q(x_n2[7]) );
  DFFRQX2M \x_n2_reg[6]  ( .D(x_n1[6]), .CK(clk), .RN(n182), .Q(x_n2[6]) );
  DFFRHQX2M \x_n2_reg[2]  ( .D(x_n1[2]), .CK(clk), .RN(n183), .Q(x_n2[2]) );
  DFFRHQX2M \x_n2_reg[3]  ( .D(x_n1[3]), .CK(clk), .RN(n183), .Q(x_n2[3]) );
  DFFRHQX2M \x_n2_reg[0]  ( .D(N1), .CK(clk), .RN(n183), .Q(N23) );
  DFFRHQX2M \x_n2_reg[1]  ( .D(N137), .CK(clk), .RN(n183), .Q(N92) );
  DFFRX1M \x_n3_reg[1]  ( .D(n158), .CK(clk), .RN(rst_n), .Q(x_n3[1]), .QN(
        n359) );
  DFFRQX2M \x_n1_reg[11]  ( .D(in_data[11]), .CK(clk), .RN(n180), .Q(x_n1[11])
         );
  DFFRQX2M \x_n1_reg[12]  ( .D(in_data[12]), .CK(clk), .RN(n180), .Q(x_n1[12])
         );
  DFFRQX2M \x_n1_reg[13]  ( .D(in_data[13]), .CK(clk), .RN(n180), .Q(x_n1[13])
         );
  DFFRQX2M \x_n1_reg[10]  ( .D(in_data[10]), .CK(clk), .RN(n180), .Q(x_n1[10])
         );
  DFFRQX2M \x_n2_reg[13]  ( .D(x_n1[13]), .CK(clk), .RN(n181), .Q(x_n2[13]) );
  DFFRQX2M \x_n2_reg[12]  ( .D(x_n1[12]), .CK(clk), .RN(n181), .Q(x_n2[12]) );
  DFFRQX2M \x_n2_reg[11]  ( .D(x_n1[11]), .CK(clk), .RN(n181), .Q(x_n2[11]) );
  DFFRQX2M \x_n2_reg[10]  ( .D(x_n1[10]), .CK(clk), .RN(n182), .Q(x_n2[10]) );
  DFFRHQX4M \x_n1_reg[3]  ( .D(n174), .CK(clk), .RN(n180), .Q(x_n1[3]) );
  DFFRQX2M \x_n2_reg[5]  ( .D(x_n1[5]), .CK(clk), .RN(n182), .Q(x_n2[5]) );
  DFFRQX4M \x_n1_reg[5]  ( .D(in_data[5]), .CK(clk), .RN(n180), .Q(x_n1[5]) );
  DFFRQX2M \x_n1_reg[6]  ( .D(in_data[6]), .CK(clk), .RN(n180), .Q(x_n1[6]) );
  DFFRHQX4M \x_n1_reg[4]  ( .D(in_data[4]), .CK(clk), .RN(n180), .Q(x_n1[4])
         );
  OAI2BB1X2M U3 ( .A0N(x_n1[5]), .A1N(x_n1[3]), .B0(n130), .Y(n229) );
  OAI2BB1X4M U4 ( .A0N(x_n1[4]), .A1N(x_n1[2]), .B0(n134), .Y(n230) );
  AO21X2M U5 ( .A0(n222), .A1(n224), .B0(n109), .Y(n218) );
  OAI2BB1X2M U6 ( .A0N(x_n1[5]), .A1N(x_n1[7]), .B0(n127), .Y(n224) );
  INVX1M U7 ( .A(n224), .Y(n225) );
  AO21X2M U8 ( .A0(n218), .A1(n216), .B0(n113), .Y(n212) );
  INVXLM U9 ( .A(n218), .Y(n219) );
  NAND3X3M U10 ( .A(n382), .B(n381), .C(n383), .Y(n362) );
  OAI21X4M U11 ( .A0(in_data[6]), .A1(x_n3[6]), .B0(n380), .Y(n364) );
  OAI2BB1X4M U12 ( .A0N(n19), .A1N(n153), .B0(n372), .Y(n129) );
  OA21X8M U13 ( .A0(n163), .A1(n300), .B0(n312), .Y(n56) );
  NAND2X2M U14 ( .A(n1), .B(n2), .Y(n3) );
  NAND2X4M U15 ( .A(n3), .B(n315), .Y(n107) );
  INVXLM U16 ( .A(n160), .Y(n1) );
  INVX2M U17 ( .A(n297), .Y(n2) );
  NAND2X4M U18 ( .A(n4), .B(n5), .Y(n6) );
  NAND2X4M U19 ( .A(n6), .B(n229), .Y(n18) );
  INVXLM U20 ( .A(x_n1[4]), .Y(n4) );
  INVX2M U21 ( .A(x_n1[6]), .Y(n5) );
  OR2X4M U22 ( .A(n50), .B(n52), .Y(n7) );
  NAND2X4M U23 ( .A(n7), .B(n145), .Y(n346) );
  INVX2M U24 ( .A(n329), .Y(n52) );
  NAND2X4M U25 ( .A(n53), .B(n347), .Y(n145) );
  XNOR3X8M U26 ( .A(x_n1[6]), .B(x_n1[11]), .C(n346), .Y(N12) );
  OR2X2M U27 ( .A(x_n1[8]), .B(n335), .Y(n8) );
  NAND2X4M U28 ( .A(n8), .B(n344), .Y(n123) );
  OAI2BB1X4M U29 ( .A0N(x_n1[8]), .A1N(n335), .B0(n123), .Y(n342) );
  AND2X2M U30 ( .A(n298), .B(n171), .Y(n9) );
  NOR2X2M U31 ( .A(n9), .B(n60), .Y(n304) );
  NOR2X8M U32 ( .A(n13), .B(n302), .Y(n60) );
  CLKNAND2X2M U33 ( .A(n10), .B(n11), .Y(n12) );
  CLKNAND2X2M U34 ( .A(n12), .B(n230), .Y(n130) );
  INVXLM U35 ( .A(x_n1[5]), .Y(n10) );
  INVXLM U36 ( .A(x_n1[3]), .Y(n11) );
  CLKAND2X6M U37 ( .A(n165), .B(n303), .Y(n13) );
  XOR2XLM U38 ( .A(n46), .B(n60), .Y(N37) );
  OR2X1M U39 ( .A(x_n1[6]), .B(n330), .Y(n14) );
  NAND2X4M U40 ( .A(n14), .B(n346), .Y(n124) );
  XNOR3XLM U41 ( .A(x_n1[8]), .B(x_n1[13]), .C(n344), .Y(N14) );
  OAI2B1X4M U42 ( .A1N(x_n1[7]), .A0(x_n1[12]), .B0(n125), .Y(n344) );
  OR2X12M U43 ( .A(N137), .B(N1), .Y(n356) );
  XOR3X4M U44 ( .A(x_n1[5]), .B(x_n1[3]), .C(n230), .Y(N183) );
  OR2X12M U45 ( .A(n354), .B(n21), .Y(n351) );
  INVX1M U46 ( .A(x_n1[5]), .Y(n50) );
  CLKBUFX6M U47 ( .A(n141), .Y(n15) );
  XNOR3XLM U48 ( .A(x_n1[3]), .B(N137), .C(n232), .Y(n141) );
  OAI2BB1X2M U49 ( .A0N(n50), .A1N(n325), .B0(n228), .Y(n127) );
  OR2X2M U50 ( .A(n157), .B(n158), .Y(n42) );
  INVX2M U51 ( .A(n169), .Y(n301) );
  INVX2M U52 ( .A(x_n1[8]), .Y(n327) );
  AO21X4M U53 ( .A0(n40), .A1(n359), .B0(n394), .Y(n387) );
  CLKNAND2X4M U54 ( .A(n173), .B(x_n3[1]), .Y(n388) );
  NAND2BX2M U55 ( .AN(n360), .B(x_n3[2]), .Y(n389) );
  OR2X2M U56 ( .A(n113), .B(n217), .Y(n221) );
  INVX2M U57 ( .A(n114), .Y(n26) );
  OR2X2M U58 ( .A(n114), .B(n205), .Y(n209) );
  INVX2M U59 ( .A(n115), .Y(n24) );
  INVX2M U60 ( .A(in_data[8]), .Y(n275) );
  OAI2B11X2M U61 ( .A1N(n20), .A0(in_data[5]), .B0(n362), .C0(n385), .Y(n363)
         );
  INVX2M U62 ( .A(x_n3[5]), .Y(n20) );
  NAND2X2M U63 ( .A(n40), .B(n37), .Y(n38) );
  MX2X2M U64 ( .A(n272), .B(n271), .S0(n270), .Y(N274) );
  CLKINVX12M U65 ( .A(n370), .Y(n396) );
  AOI21X4M U66 ( .A0(x_n3[15]), .A1(n175), .B0(n371), .Y(n62) );
  OR2X2M U67 ( .A(n158), .B(n157), .Y(n321) );
  AO21X2M U68 ( .A0(x_n1[3]), .A1(n327), .B0(n326), .Y(n348) );
  XOR2X4M U69 ( .A(n160), .B(n320), .Y(N26) );
  OR2X6M U70 ( .A(n159), .B(n321), .Y(n320) );
  NAND2X2M U71 ( .A(N156), .B(x_n3[0]), .Y(n394) );
  MX2X2M U72 ( .A(n215), .B(n214), .S0(n213), .Y(N188) );
  XNOR3X2M U73 ( .A(x_n1[4]), .B(x_n1[9]), .C(n348), .Y(N10) );
  XNOR3X2M U74 ( .A(n166), .B(n161), .C(n314), .Y(N32) );
  OR2X2M U75 ( .A(n42), .B(n43), .Y(n319) );
  XOR3XLM U76 ( .A(n162), .B(n157), .C(n318), .Y(N28) );
  OAI2BB1X2M U77 ( .A0N(x_n1[10]), .A1N(n333), .B0(n133), .Y(n340) );
  OAI21X2M U78 ( .A0(x_n1[10]), .A1(n333), .B0(n341), .Y(n133) );
  INVX2M U79 ( .A(n345), .Y(n155) );
  INVX4M U80 ( .A(n212), .Y(n213) );
  OAI2BB1X2M U81 ( .A0N(x_n1[9]), .A1N(n332), .B0(n135), .Y(n341) );
  OAI21X2M U82 ( .A0(x_n1[9]), .A1(n332), .B0(n342), .Y(n135) );
  INVX2M U83 ( .A(n112), .Y(n17) );
  OAI21X2M U84 ( .A0(x_n1[12]), .A1(n333), .B0(n339), .Y(n137) );
  OAI21X4M U85 ( .A0(n301), .A1(n147), .B0(n146), .Y(n308) );
  OR2X2M U86 ( .A(n109), .B(n223), .Y(n227) );
  OR2X2M U87 ( .A(in_data[7]), .B(in_data[9]), .Y(n266) );
  BUFX2M U88 ( .A(N23), .Y(n156) );
  CLKINVX2M U89 ( .A(n174), .Y(n37) );
  INVX2M U90 ( .A(n389), .Y(n390) );
  XOR3X2M U91 ( .A(n176), .B(n168), .C(n152), .Y(N39) );
  OA21X2M U92 ( .A0(n299), .A1(n147), .B0(n154), .Y(n152) );
  XNOR3X2M U93 ( .A(x_n1[7]), .B(x_n1[12]), .C(n345), .Y(N13) );
  INVX2M U94 ( .A(n198), .Y(n199) );
  XNOR3X2M U95 ( .A(n176), .B(n167), .C(n309), .Y(N38) );
  MX2X3M U96 ( .A(n142), .B(n338), .S0(n189), .Y(n54) );
  XNOR2X2M U97 ( .A(x_n1[12]), .B(n332), .Y(n194) );
  OR2X2M U98 ( .A(n118), .B(n191), .Y(n195) );
  AO21X4M U99 ( .A0(n190), .A1(n192), .B0(n118), .Y(n189) );
  AO21X2M U100 ( .A0(n276), .A1(n273), .B0(n116), .Y(n269) );
  OR2X2M U101 ( .A(n395), .B(n360), .Y(n281) );
  OA21X4M U102 ( .A0(x_n3[11]), .A1(in_data[11]), .B0(n375), .Y(n368) );
  OAI21X2M U103 ( .A0(n167), .A1(n165), .B0(n288), .Y(n104) );
  AO21X4M U104 ( .A0(n244), .A1(n247), .B0(n71), .Y(n243) );
  MXI2X1M U105 ( .A(n73), .B(n74), .S0(n265), .Y(N275) );
  XOR3XLM U106 ( .A(x_n3[11]), .B(in_data[11]), .C(n375), .Y(N56) );
  MXI2X1M U107 ( .A(n75), .B(n76), .S0(n276), .Y(N273) );
  XOR3XLM U108 ( .A(x_n3[7]), .B(in_data[7]), .C(n379), .Y(N52) );
  XOR3XLM U109 ( .A(x_n3[13]), .B(in_data[13]), .C(n373), .Y(N58) );
  XOR3XLM U110 ( .A(x_n3[12]), .B(in_data[12]), .C(n374), .Y(N57) );
  MX2X2M U111 ( .A(n257), .B(n256), .S0(n255), .Y(N277) );
  XNOR3X2M U112 ( .A(n19), .B(in_data[14]), .C(n372), .Y(N59) );
  XOR3XLM U113 ( .A(n170), .B(n168), .C(n285), .Y(N104) );
  MX2X2M U114 ( .A(n250), .B(n249), .S0(n248), .Y(N278) );
  INVX2M U115 ( .A(n247), .Y(n248) );
  MXI2X1M U116 ( .A(n80), .B(n81), .S0(n243), .Y(N279) );
  MXI2X2M U117 ( .A(n83), .B(n84), .S0(n236), .Y(N281) );
  AO21X2M U118 ( .A0(n234), .A1(n236), .B0(n66), .Y(N282) );
  OAI2B1X4M U119 ( .A1N(x_n3[14]), .A0(n153), .B0(n129), .Y(n371) );
  XOR3XLM U120 ( .A(in_data[5]), .B(n174), .C(n28), .Y(N270) );
  INVX2M U121 ( .A(in_data[2]), .Y(n360) );
  BUFX8M U122 ( .A(x_n2[2]), .Y(n159) );
  BUFX4M U123 ( .A(x_n2[6]), .Y(n163) );
  BUFX2M U124 ( .A(x_n2[10]), .Y(n167) );
  BUFX2M U125 ( .A(x_n2[11]), .Y(n168) );
  BUFX2M U126 ( .A(x_n2[12]), .Y(n169) );
  BUFX2M U127 ( .A(x_n2[13]), .Y(n170) );
  BUFX2M U128 ( .A(in_data[15]), .Y(n175) );
  BUFX2M U129 ( .A(x_n2[9]), .Y(n166) );
  BUFX6M U130 ( .A(N23), .Y(n157) );
  AOI2BB1X4M U131 ( .A0N(x_n3[15]), .A1N(n175), .B0(n62), .Y(n369) );
  CLKNAND2X4M U132 ( .A(n45), .B(n316), .Y(n99) );
  XNOR3X2M U133 ( .A(n164), .B(n159), .C(n316), .Y(N30) );
  OAI21X2M U134 ( .A0(x_n1[2]), .A1(n325), .B0(n349), .Y(n139) );
  OAI21X3M U135 ( .A0(x_n1[11]), .A1(n333), .B0(n340), .Y(n132) );
  OAI2B1X4M U136 ( .A1N(x_n3[10]), .A0(n264), .B0(n149), .Y(n375) );
  XNOR2X8M U137 ( .A(n308), .B(n120), .Y(N41) );
  OAI21X2M U138 ( .A0(n176), .A1(n170), .B0(n283), .Y(n98) );
  XNOR3XLM U139 ( .A(n163), .B(n158), .C(n317), .Y(N29) );
  XNOR2XLM U140 ( .A(n158), .B(n322), .Y(N24) );
  INVX2M U141 ( .A(x_n1[7]), .Y(n325) );
  BUFX4M U142 ( .A(N157), .Y(n173) );
  INVX2M U143 ( .A(n29), .Y(n36) );
  INVX2M U144 ( .A(x_n1[6]), .Y(n323) );
  OAI2BB1X2M U145 ( .A0N(n33), .A1N(n36), .B0(n280), .Y(n97) );
  BUFX2M U146 ( .A(x_n2[7]), .Y(n164) );
  BUFX4M U147 ( .A(N92), .Y(n158) );
  INVX2M U148 ( .A(in_data[4]), .Y(n33) );
  INVX2M U149 ( .A(x_n3[14]), .Y(n19) );
  INVX2M U150 ( .A(x_n1[10]), .Y(n329) );
  NOR2X2M U151 ( .A(x_n1[10]), .B(x_n1[12]), .Y(n16) );
  BUFX2M U152 ( .A(x_n2[8]), .Y(n165) );
  INVX2M U153 ( .A(n165), .Y(n297) );
  NOR2X6M U154 ( .A(n43), .B(n161), .Y(n34) );
  AOI21X4M U155 ( .A0(n168), .A1(n177), .B0(n306), .Y(n103) );
  INVX1M U156 ( .A(n342), .Y(n343) );
  OAI2BB1X2M U157 ( .A0N(in_data[4]), .A1N(n29), .B0(n97), .Y(n279) );
  OAI21X1M U158 ( .A0(in_data[5]), .A1(in_data[7]), .B0(n277), .Y(n91) );
  OAI21X2M U159 ( .A0(in_data[4]), .A1(in_data[6]), .B0(n278), .Y(n92) );
  OAI2BB1X4M U160 ( .A0N(n212), .A1N(n210), .B0(n17), .Y(n206) );
  BUFX4M U161 ( .A(in_data[3]), .Y(n174) );
  OAI2BB1X4M U162 ( .A0N(n163), .A1N(n57), .B0(n317), .Y(n58) );
  XNOR2X1M U163 ( .A(x_n1[2]), .B(n357), .Y(N3) );
  INVXLM U164 ( .A(n356), .Y(n357) );
  NAND2X4M U165 ( .A(n49), .B(n231), .Y(n134) );
  XNOR2X1M U166 ( .A(x_n1[4]), .B(n353), .Y(N5) );
  CLKINVX2M U167 ( .A(n352), .Y(n353) );
  INVX8M U168 ( .A(n162), .Y(n295) );
  OAI2BB1X2M U169 ( .A0N(n323), .A1N(N137), .B0(n324), .Y(n349) );
  NAND2BX8M U170 ( .AN(n358), .B(x_n1[2]), .Y(n232) );
  MX2X3M U171 ( .A(n201), .B(n200), .S0(n199), .Y(N191) );
  OAI21X2M U172 ( .A0(n323), .A1(N137), .B0(n350), .Y(n324) );
  XNOR2X4M U173 ( .A(x_n1[3]), .B(n355), .Y(N4) );
  AO21X8M U174 ( .A0(n166), .A1(n305), .B0(n304), .Y(n309) );
  OAI2BB1X4M U175 ( .A0N(x_n1[11]), .A1N(n333), .B0(n132), .Y(n339) );
  INVX4M U176 ( .A(N1), .Y(n358) );
  CLKINVX2M U177 ( .A(n354), .Y(n355) );
  CLKINVX2M U178 ( .A(n354), .Y(n22) );
  OR2X6M U179 ( .A(x_n1[2]), .B(n356), .Y(n354) );
  OAI21BX2M U180 ( .A0(n16), .A1(n27), .B0N(n117), .Y(n198) );
  OAI21X4M U181 ( .A0(n161), .A1(n298), .B0(n314), .Y(n106) );
  AO21X1M U182 ( .A0(n189), .A1(n188), .B0(n110), .Y(n186) );
  AOI2BB1X2M U183 ( .A0N(x_n1[3]), .A1N(n327), .B0(n138), .Y(n326) );
  OAI2BB2X2M U184 ( .B0(n351), .B1(x_n1[5]), .A0N(N1), .A1N(n50), .Y(n350) );
  XOR3X2M U185 ( .A(x_n1[4]), .B(x_n1[6]), .C(n229), .Y(N184) );
  XOR3X4M U186 ( .A(x_n1[4]), .B(x_n1[2]), .C(n231), .Y(N182) );
  AO21X4M U187 ( .A0(x_n1[3]), .A1(N137), .B0(n184), .Y(n231) );
  NAND2BX1M U188 ( .AN(x_n1[3]), .B(n22), .Y(n352) );
  OAI21X1M U189 ( .A0(n160), .A1(n158), .B0(n65), .Y(n96) );
  OAI2B1X4M U190 ( .A1N(x_n1[4]), .A0(n323), .B0(n18), .Y(n228) );
  OAI2BB1X2M U191 ( .A0N(in_data[6]), .A1N(in_data[4]), .B0(n92), .Y(n277) );
  OAI2BB1XLM U192 ( .A0N(in_data[6]), .A1N(in_data[4]), .B0(n92), .Y(n25) );
  AOI21XLM U193 ( .A0(n385), .A1(n386), .B0(n384), .Y(n64) );
  NOR2X2M U194 ( .A(n395), .B(n360), .Y(n41) );
  NAND2X4M U195 ( .A(n23), .B(n24), .Y(n265) );
  INVXLM U196 ( .A(N156), .Y(n395) );
  AOI21BX8M U197 ( .A0(n297), .A1(n170), .B0N(n310), .Y(n302) );
  OAI2BB1X4M U198 ( .A0N(n160), .A1N(n297), .B0(n107), .Y(n314) );
  OR2X1M U199 ( .A(x_n1[3]), .B(x_n1[4]), .Y(n21) );
  XOR2X1M U200 ( .A(n161), .B(n319), .Y(N27) );
  CLKNAND2X4M U201 ( .A(n266), .B(n269), .Y(n23) );
  OAI2BB1X2M U202 ( .A0N(in_data[7]), .A1N(in_data[5]), .B0(n91), .Y(n276) );
  OAI2BB1X4M U203 ( .A0N(in_data[5]), .A1N(x_n3[5]), .B0(n363), .Y(n380) );
  NOR2BX2M U204 ( .AN(in_data[7]), .B(n268), .Y(n115) );
  MXI2X1M U205 ( .A(n77), .B(n78), .S0(n261), .Y(N276) );
  MX2X3M U206 ( .A(n209), .B(n208), .S0(n207), .Y(N189) );
  CLKINVX4M U207 ( .A(n206), .Y(n207) );
  OAI211X4M U208 ( .A0(n174), .A1(x_n3[3]), .B0(n361), .C0(n391), .Y(n381) );
  AO21X8M U209 ( .A0(n265), .A1(n262), .B0(n68), .Y(n261) );
  XOR2X3M U210 ( .A(n51), .B(n228), .Y(N185) );
  NAND3X4M U211 ( .A(n388), .B(n387), .C(n389), .Y(n361) );
  XOR2X2M U212 ( .A(n159), .B(n321), .Y(N25) );
  AOI21BX8M U213 ( .A0(n204), .A1(n206), .B0N(n26), .Y(n27) );
  AO21X8M U214 ( .A0(n237), .A1(n240), .B0(n72), .Y(n236) );
  OAI21XLM U215 ( .A0(n33), .A1(n36), .B0(n97), .Y(n28) );
  INVX1M U216 ( .A(n360), .Y(n29) );
  MX2X1M U217 ( .A(n215), .B(n214), .S0(n213), .Y(n30) );
  MX2X1M U218 ( .A(n215), .B(n214), .S0(n213), .Y(n31) );
  MXI2X1M U219 ( .A(n80), .B(n81), .S0(n243), .Y(n32) );
  MX2X3M U220 ( .A(n203), .B(n202), .S0(n27), .Y(N190) );
  INVX2M U221 ( .A(N157), .Y(n40) );
  NAND2BX8M U222 ( .AN(n42), .B(n34), .Y(n318) );
  OA21X8M U223 ( .A0(n164), .A1(n301), .B0(n311), .Y(n55) );
  INVXLM U224 ( .A(n395), .Y(n35) );
  OAI2BB1X4M U225 ( .A0N(n173), .A1N(n174), .B0(n233), .Y(n280) );
  OR2X2M U226 ( .A(x_n3[2]), .B(in_data[2]), .Y(n391) );
  CLKNAND2X4M U227 ( .A(n38), .B(n41), .Y(n233) );
  OAI2BB1X2M U228 ( .A0N(n299), .A1N(n147), .B0(n309), .Y(n150) );
  AOI21X3M U229 ( .A0(n170), .A1(n177), .B0(n307), .Y(n79) );
  AO21X8M U230 ( .A0(n258), .A1(n261), .B0(n70), .Y(n254) );
  XNOR3X1M U231 ( .A(n167), .B(n162), .C(n313), .Y(N33) );
  OAI21X4M U232 ( .A0(x_n3[8]), .A1(in_data[8]), .B0(n378), .Y(n39) );
  OAI21X4M U233 ( .A0(in_data[7]), .A1(x_n3[7]), .B0(n379), .Y(n367) );
  XOR2X1M U234 ( .A(N1), .B(x_n1[2]), .Y(n140) );
  XNOR3X1M U235 ( .A(n169), .B(n164), .C(n311), .Y(N35) );
  CLKINVX3M U236 ( .A(n192), .Y(n193) );
  MXI2X2M U237 ( .A(n195), .B(n194), .S0(n193), .Y(n122) );
  OAI21X1M U238 ( .A0(in_data[5]), .A1(n174), .B0(n279), .Y(n88) );
  OAI2B1X4M U239 ( .A1N(x_n3[8]), .A0(n275), .B0(n39), .Y(n377) );
  MX2X3M U240 ( .A(n337), .B(n144), .S0(n187), .Y(N194) );
  XOR3X2M U241 ( .A(n176), .B(n169), .C(n103), .Y(N40) );
  XNOR3X2M U242 ( .A(x_n3[1]), .B(n173), .C(n394), .Y(N46) );
  XOR3X1M U243 ( .A(x_n3[10]), .B(in_data[10]), .C(n376), .Y(N55) );
  XOR2X1M U244 ( .A(n35), .B(n29), .Y(n108) );
  AO21X4M U245 ( .A0(n164), .A1(n301), .B0(n55), .Y(n310) );
  XNOR3X4M U246 ( .A(x_n1[5]), .B(x_n1[10]), .C(n347), .Y(N11) );
  AOI2BB1X4M U247 ( .A0N(x_n1[3]), .A1N(N137), .B0(n232), .Y(n184) );
  OAI2BB1X4M U248 ( .A0N(n162), .A1N(n299), .B0(n87), .Y(n312) );
  OAI21X4M U249 ( .A0(n162), .A1(n299), .B0(n313), .Y(n87) );
  AOI21BX4M U250 ( .A0(x_n1[2]), .A1(n325), .B0N(n139), .Y(n138) );
  XNOR3X4M U251 ( .A(x_n1[10]), .B(n172), .C(n341), .Y(N16) );
  NAND2X1M U252 ( .A(n387), .B(n388), .Y(n393) );
  MX2X4M U253 ( .A(n227), .B(n226), .S0(n225), .Y(N186) );
  OAI2BB2X8M U254 ( .B0(n318), .B1(n162), .A0N(n157), .A1N(n295), .Y(n317) );
  AO21X4M U255 ( .A0(n301), .A1(n147), .B0(n103), .Y(n146) );
  AO21X8M U256 ( .A0(n163), .A1(n300), .B0(n56), .Y(n311) );
  OAI2BB1X4M U257 ( .A0N(n161), .A1N(n298), .B0(n106), .Y(n313) );
  XNOR3X4M U258 ( .A(n168), .B(n163), .C(n312), .Y(N34) );
  OAI2BB1XLM U259 ( .A0N(n161), .A1N(n159), .B0(n93), .Y(n293) );
  OAI21X1M U260 ( .A0(n161), .A1(n159), .B0(n294), .Y(n93) );
  OR2X4M U261 ( .A(n160), .B(n159), .Y(n43) );
  OAI21X4M U262 ( .A0(x_n3[10]), .A1(in_data[10]), .B0(n376), .Y(n149) );
  XOR2X8M U263 ( .A(n371), .B(n143), .Y(N60) );
  NAND2X2M U264 ( .A(n44), .B(n164), .Y(n45) );
  INVXLM U265 ( .A(n159), .Y(n44) );
  OAI2B1X4M U266 ( .A1N(n296), .A0(n57), .B0(n58), .Y(n316) );
  OAI2B1X4M U267 ( .A1N(n159), .A0(n164), .B0(n99), .Y(n315) );
  XOR2X1M U268 ( .A(n166), .B(n171), .Y(n46) );
  MXI2X4M U269 ( .A(n85), .B(n86), .S0(n240), .Y(N280) );
  AO21X1M U270 ( .A0(n186), .A1(n185), .B0(n121), .Y(N195) );
  CLKINVX2M U271 ( .A(x_n1[9]), .Y(n328) );
  NAND2X2M U272 ( .A(n47), .B(n48), .Y(n49) );
  INVXLM U273 ( .A(x_n1[4]), .Y(n47) );
  INVXLM U274 ( .A(x_n1[2]), .Y(n48) );
  CLKAND2X4M U275 ( .A(n151), .B(n150), .Y(n148) );
  OAI21XLM U276 ( .A0(n170), .A1(n168), .B0(n285), .Y(n95) );
  OAI21XLM U277 ( .A0(n171), .A1(n169), .B0(n284), .Y(n89) );
  XOR2XLM U278 ( .A(x_n1[7]), .B(x_n1[5]), .Y(n51) );
  INVXLM U279 ( .A(n158), .Y(n57) );
  OAI2BB1XLM U280 ( .A0N(n167), .A1N(n165), .B0(n104), .Y(n287) );
  BUFX2M U281 ( .A(x_n2[14]), .Y(n171) );
  INVX2M U282 ( .A(x_n1[11]), .Y(n330) );
  INVXLM U283 ( .A(n251), .Y(n252) );
  XOR2X4M U284 ( .A(n119), .B(n79), .Y(N42) );
  CLKMX2X2M U285 ( .A(n142), .B(n338), .S0(n136), .Y(N19) );
  OAI21XLM U286 ( .A0(n166), .A1(n164), .B0(n289), .Y(n102) );
  NOR2XLM U287 ( .A(n323), .B(n327), .Y(n109) );
  XNOR3X4M U288 ( .A(x_n1[12]), .B(n172), .C(n339), .Y(N18) );
  INVX2M U289 ( .A(x_n1[12]), .Y(n331) );
  BUFX2M U290 ( .A(x_n1[15]), .Y(n172) );
  NAND2X2M U291 ( .A(n50), .B(n52), .Y(n53) );
  OAI2BB1X2M U292 ( .A0N(x_n1[4]), .A1N(n328), .B0(n63), .Y(n347) );
  XOR2XLM U293 ( .A(in_data[12]), .B(n153), .Y(n80) );
  NOR2X2M U294 ( .A(n66), .B(n235), .Y(n84) );
  XNOR2XLM U295 ( .A(in_data[11]), .B(n246), .Y(n249) );
  AO21X4M U296 ( .A0(n172), .A1(n335), .B0(n136), .Y(n334) );
  XOR2XLM U297 ( .A(in_data[9]), .B(n260), .Y(n77) );
  XOR2XLM U298 ( .A(in_data[8]), .B(n264), .Y(n73) );
  OAI2BB1X2M U299 ( .A0N(n176), .A1N(n170), .B0(n98), .Y(n282) );
  NOR2X2M U300 ( .A(n72), .B(n238), .Y(n86) );
  NOR2BXLM U301 ( .AN(in_data[6]), .B(n275), .Y(n116) );
  OAI2BB1X2M U302 ( .A0N(n171), .A1N(n169), .B0(n89), .Y(n283) );
  XOR3XLM U303 ( .A(n166), .B(n164), .C(n289), .Y(N100) );
  OA21X4M U304 ( .A0(n169), .A1(n167), .B0(n286), .Y(n61) );
  XOR3XLM U305 ( .A(n169), .B(n167), .C(n286), .Y(N103) );
  NAND2BX2M U306 ( .AN(n110), .B(n188), .Y(n338) );
  XOR3XLM U307 ( .A(x_n3[6]), .B(in_data[6]), .C(n380), .Y(N51) );
  XOR3XLM U308 ( .A(x_n1[3]), .B(x_n1[8]), .C(n138), .Y(N9) );
  OR2X2M U309 ( .A(n111), .B(n197), .Y(n201) );
  MX2X3M U310 ( .A(n221), .B(n220), .S0(n219), .Y(N187) );
  INVX3M U311 ( .A(n122), .Y(N192) );
  BUFX10M U312 ( .A(x_n2[5]), .Y(n162) );
  OAI21X4M U313 ( .A0(x_n3[9]), .A1(in_data[9]), .B0(n377), .Y(n126) );
  XOR3XLM U314 ( .A(x_n3[9]), .B(in_data[9]), .C(n377), .Y(N54) );
  AO21XLM U315 ( .A0(n391), .A1(n393), .B0(n390), .Y(n392) );
  XOR3XLM U316 ( .A(x_n3[3]), .B(n174), .C(n392), .Y(N48) );
  INVX1M U317 ( .A(x_n1[14]), .Y(n332) );
  INVX1M U318 ( .A(x_n1[13]), .Y(n335) );
  INVX2M U319 ( .A(x_n2[15]), .Y(n177) );
  INVXLM U320 ( .A(n273), .Y(n274) );
  INVXLM U321 ( .A(n262), .Y(n263) );
  INVXLM U322 ( .A(n266), .Y(n267) );
  NOR2XLM U323 ( .A(n264), .B(n253), .Y(n69) );
  NOR2XLM U324 ( .A(n260), .B(n246), .Y(n71) );
  INVXLM U325 ( .A(n258), .Y(n259) );
  NOR2XLM U326 ( .A(n253), .B(n153), .Y(n67) );
  NOR2XLM U327 ( .A(n246), .B(n239), .Y(n72) );
  NOR2XLM U328 ( .A(n153), .B(n239), .Y(n66) );
  OR2X1M U329 ( .A(n299), .B(n147), .Y(n151) );
  NOR2XLM U330 ( .A(n70), .B(n259), .Y(n78) );
  NOR2XLM U331 ( .A(n68), .B(n263), .Y(n74) );
  XOR2XLM U332 ( .A(in_data[6]), .B(n275), .Y(n75) );
  NOR2XLM U333 ( .A(n116), .B(n274), .Y(n76) );
  XOR3XLM U334 ( .A(in_data[5]), .B(in_data[7]), .C(n25), .Y(N272) );
  CLKINVX2M U335 ( .A(n186), .Y(n187) );
  XNOR2XLM U336 ( .A(in_data[7]), .B(n268), .Y(n271) );
  OR2X1M U337 ( .A(n115), .B(n267), .Y(n272) );
  INVXLM U338 ( .A(n269), .Y(n270) );
  NAND2XLM U339 ( .A(n381), .B(n382), .Y(n386) );
  MX2X3M U340 ( .A(n144), .B(n337), .S0(n336), .Y(N20) );
  OA21X4M U341 ( .A0(n172), .A1(n335), .B0(n334), .Y(n336) );
  XNOR3XLM U342 ( .A(n174), .B(n173), .C(n281), .Y(n59) );
  XNOR3XLM U343 ( .A(n170), .B(n165), .C(n310), .Y(N36) );
  OAI2BB1XLM U344 ( .A0N(n162), .A1N(n160), .B0(n105), .Y(n292) );
  OAI21XLM U345 ( .A0(n162), .A1(n160), .B0(n293), .Y(n105) );
  OAI2BB1XLM U346 ( .A0N(n160), .A1N(n158), .B0(n96), .Y(n294) );
  INVXLM U347 ( .A(n216), .Y(n217) );
  INVXLM U348 ( .A(n222), .Y(n223) );
  INVX2M U349 ( .A(n177), .Y(n176) );
  AO21X4M U350 ( .A0(n169), .A1(n167), .B0(n61), .Y(n285) );
  INVXLM U351 ( .A(n204), .Y(n205) );
  INVXLM U352 ( .A(n210), .Y(n211) );
  XOR2XLM U353 ( .A(n176), .B(n171), .Y(n119) );
  NOR2XLM U354 ( .A(n332), .B(n333), .Y(n121) );
  XOR2XLM U355 ( .A(n176), .B(n170), .Y(n120) );
  CLKINVX2M U356 ( .A(n175), .Y(n239) );
  NOR2XLM U357 ( .A(n335), .B(n333), .Y(n110) );
  OR2X1M U358 ( .A(in_data[13]), .B(n175), .Y(n237) );
  OR2X1M U359 ( .A(in_data[14]), .B(n175), .Y(n234) );
  CLKINVX2M U360 ( .A(n190), .Y(n191) );
  INVXLM U361 ( .A(n196), .Y(n197) );
  INVXLM U362 ( .A(in_data[6]), .Y(n366) );
  OAI2BB1X2M U363 ( .A0N(n47), .A1N(x_n1[9]), .B0(n348), .Y(n63) );
  OAI2BB1X4M U364 ( .A0N(in_data[7]), .A1N(x_n3[7]), .B0(n367), .Y(n378) );
  XNOR3XLM U365 ( .A(x_n1[11]), .B(n172), .C(n340), .Y(N17) );
  NAND2XLM U366 ( .A(n174), .B(x_n3[3]), .Y(n382) );
  NAND2XLM U367 ( .A(in_data[4]), .B(x_n3[4]), .Y(n383) );
  XNOR3X2M U368 ( .A(x_n3[5]), .B(in_data[5]), .C(n64), .Y(N50) );
  XNOR2XLM U369 ( .A(x_n1[8]), .B(n329), .Y(n214) );
  OR2X2M U370 ( .A(n112), .B(n211), .Y(n215) );
  OAI2BB1X4M U371 ( .A0N(x_n3[13]), .A1N(in_data[13]), .B0(n128), .Y(n372) );
  OAI21X4M U372 ( .A0(x_n3[13]), .A1(in_data[13]), .B0(n373), .Y(n128) );
  XNOR2XLM U373 ( .A(x_n1[11]), .B(n335), .Y(n200) );
  XNOR2XLM U374 ( .A(x_n1[9]), .B(n330), .Y(n208) );
  BUFX10M U375 ( .A(x_n2[4]), .Y(n161) );
  XOR2X2M U376 ( .A(x_n3[15]), .B(n175), .Y(n143) );
  XOR2XLM U377 ( .A(x_n1[13]), .B(n172), .Y(n142) );
  XOR2XLM U378 ( .A(x_n1[14]), .B(n172), .Y(n144) );
  OR2X1M U379 ( .A(x_n1[14]), .B(n172), .Y(n185) );
  CLKXOR2X2M U380 ( .A(n120), .B(n283), .Y(N106) );
  CLKXOR2X2M U381 ( .A(n119), .B(n282), .Y(N107) );
  NOR2X2M U382 ( .A(n322), .B(n44), .Y(n65) );
  NOR2X2M U383 ( .A(n275), .B(n264), .Y(n68) );
  NOR2X2M U384 ( .A(n268), .B(n260), .Y(n70) );
  INVX2M U385 ( .A(n241), .Y(n242) );
  INVX2M U386 ( .A(n244), .Y(n245) );
  INVX2M U387 ( .A(n234), .Y(n235) );
  INVX2M U388 ( .A(n237), .Y(n238) );
  BUFX2M U389 ( .A(n178), .Y(n181) );
  BUFX2M U390 ( .A(n179), .Y(n182) );
  BUFX2M U391 ( .A(n178), .Y(n180) );
  BUFX2M U392 ( .A(n179), .Y(n183) );
  OR2X2M U393 ( .A(n71), .B(n245), .Y(n250) );
  NOR2X2M U394 ( .A(n67), .B(n242), .Y(n81) );
  XOR3XLM U395 ( .A(n171), .B(n169), .C(n284), .Y(N105) );
  INVX2M U396 ( .A(n163), .Y(n296) );
  OAI2BB1X2M U397 ( .A0N(n176), .A1N(n171), .B0(n82), .Y(N108) );
  OAI21X2M U398 ( .A0(n176), .A1(n171), .B0(n282), .Y(n82) );
  CLKXOR2X2M U399 ( .A(in_data[14]), .B(n239), .Y(n83) );
  XNOR2X2M U400 ( .A(in_data[10]), .B(n253), .Y(n256) );
  OR2X2M U401 ( .A(n69), .B(n252), .Y(n257) );
  INVXLM U402 ( .A(n254), .Y(n255) );
  INVX2M U403 ( .A(n171), .Y(n305) );
  CLKXOR2X2M U404 ( .A(in_data[13]), .B(n239), .Y(n85) );
  OAI2BB1X2M U405 ( .A0N(in_data[5]), .A1N(n174), .B0(n88), .Y(n278) );
  OAI2BB1X2M U406 ( .A0N(n162), .A1N(n164), .B0(n90), .Y(n290) );
  OAI21X2M U407 ( .A0(n164), .A1(n162), .B0(n291), .Y(n90) );
  OAI2BB1X2M U408 ( .A0N(n161), .A1N(n163), .B0(n94), .Y(n291) );
  OAI21X2M U409 ( .A0(n163), .A1(n161), .B0(n292), .Y(n94) );
  OAI2BB1X2M U410 ( .A0N(n170), .A1N(n168), .B0(n95), .Y(n284) );
  INVX2M U411 ( .A(n170), .Y(n303) );
  OAI2BB1X2M U412 ( .A0N(n168), .A1N(n166), .B0(n100), .Y(n286) );
  OAI21X2M U413 ( .A0(n168), .A1(n166), .B0(n287), .Y(n100) );
  OAI2BB1X2M U414 ( .A0N(n165), .A1N(n163), .B0(n101), .Y(n289) );
  OAI21X2M U415 ( .A0(n165), .A1(n163), .B0(n290), .Y(n101) );
  OAI2BB1X2M U416 ( .A0N(n166), .A1N(n164), .B0(n102), .Y(n288) );
  INVXLM U417 ( .A(n157), .Y(n322) );
  XOR3XLM U418 ( .A(n161), .B(n159), .C(n294), .Y(N95) );
  XOR3XLM U419 ( .A(n167), .B(n165), .C(n288), .Y(N101) );
  XOR3XLM U420 ( .A(n165), .B(n163), .C(n290), .Y(N99) );
  XOR3XLM U421 ( .A(n162), .B(n160), .C(n293), .Y(N96) );
  XOR3XLM U422 ( .A(n164), .B(n162), .C(n291), .Y(N98) );
  XOR3XLM U423 ( .A(n168), .B(n166), .C(n287), .Y(N102) );
  XNOR3XLM U424 ( .A(n165), .B(n160), .C(n315), .Y(N31) );
  XOR3XLM U425 ( .A(n163), .B(n161), .C(n292), .Y(N97) );
  XOR3XLM U426 ( .A(in_data[4]), .B(in_data[6]), .C(n278), .Y(N271) );
  XOR3XLM U427 ( .A(n160), .B(n158), .C(n65), .Y(N94) );
  INVX2M U428 ( .A(in_data[10]), .Y(n264) );
  OR2X2M U429 ( .A(in_data[12]), .B(in_data[14]), .Y(n241) );
  OR2X2M U430 ( .A(in_data[6]), .B(in_data[8]), .Y(n273) );
  OR2X2M U431 ( .A(in_data[10]), .B(in_data[12]), .Y(n251) );
  OR2X2M U432 ( .A(in_data[9]), .B(in_data[11]), .Y(n258) );
  OR2X2M U433 ( .A(in_data[11]), .B(in_data[13]), .Y(n244) );
  OR2X2M U434 ( .A(in_data[8]), .B(in_data[10]), .Y(n262) );
  INVX2M U435 ( .A(n172), .Y(n333) );
  INVX2M U436 ( .A(in_data[12]), .Y(n253) );
  INVX2M U437 ( .A(in_data[11]), .Y(n260) );
  INVX2M U438 ( .A(in_data[13]), .Y(n246) );
  INVX2M U439 ( .A(in_data[9]), .Y(n268) );
  NOR2X2M U440 ( .A(n330), .B(n335), .Y(n111) );
  INVX2M U441 ( .A(n167), .Y(n299) );
  INVX2M U442 ( .A(n168), .Y(n300) );
  INVX2M U443 ( .A(n166), .Y(n298) );
  NOR2X2M U444 ( .A(n327), .B(n329), .Y(n112) );
  NOR2X2M U445 ( .A(n325), .B(n328), .Y(n113) );
  NOR2X2M U446 ( .A(n328), .B(n330), .Y(n114) );
  NOR2X2M U447 ( .A(n329), .B(n331), .Y(n117) );
  NOR2X2M U448 ( .A(n331), .B(n332), .Y(n118) );
  NAND2BX2M U449 ( .AN(n121), .B(n185), .Y(n337) );
  INVX2M U450 ( .A(n177), .Y(n147) );
  BUFX2M U451 ( .A(rst_n), .Y(n179) );
  BUFX2M U452 ( .A(rst_n), .Y(n178) );
  XNOR2XLM U453 ( .A(x_n1[6]), .B(n327), .Y(n226) );
  XNOR3X2M U454 ( .A(x_n1[2]), .B(x_n1[7]), .C(n349), .Y(N8) );
  XNOR2XLM U455 ( .A(x_n1[10]), .B(n331), .Y(n202) );
  OR2X2M U456 ( .A(n117), .B(n16), .Y(n203) );
  XNOR2XLM U457 ( .A(x_n1[7]), .B(n328), .Y(n220) );
  OAI21X4M U458 ( .A0(n366), .A1(n365), .B0(n364), .Y(n379) );
  INVXLM U459 ( .A(x_n3[6]), .Y(n365) );
  BUFX10M U460 ( .A(x_n2[3]), .Y(n160) );
  OAI2B1X4M U461 ( .A1N(x_n1[6]), .A0(x_n1[11]), .B0(n124), .Y(n345) );
  OAI21BX4M U462 ( .A0(x_n1[7]), .A1(n331), .B0N(n155), .Y(n125) );
  OAI2BB1X4M U463 ( .A0N(x_n3[9]), .A1N(in_data[9]), .B0(n126), .Y(n376) );
  INVX2M U464 ( .A(in_data[14]), .Y(n153) );
  OAI2BB1X4M U465 ( .A0N(x_n3[12]), .A1N(in_data[12]), .B0(n131), .Y(n373) );
  OAI21X4M U466 ( .A0(x_n3[12]), .A1(in_data[12]), .B0(n374), .Y(n131) );
  AOI21BX4M U467 ( .A0(x_n1[12]), .A1(n333), .B0N(n137), .Y(n136) );
  XNOR3XLM U468 ( .A(N137), .B(x_n1[6]), .C(n350), .Y(N7) );
  XOR3XLM U469 ( .A(x_n3[8]), .B(in_data[8]), .C(n378), .Y(N53) );
  XOR3XLM U470 ( .A(x_n3[4]), .B(in_data[4]), .C(n386), .Y(N49) );
  INVX2M U471 ( .A(n383), .Y(n384) );
  OR2X1M U472 ( .A(x_n3[4]), .B(in_data[4]), .Y(n385) );
  OR2X1M U473 ( .A(x_n1[6]), .B(x_n1[8]), .Y(n222) );
  OR2X1M U474 ( .A(x_n1[7]), .B(x_n1[9]), .Y(n216) );
  OR2X1M U475 ( .A(x_n1[9]), .B(x_n1[11]), .Y(n204) );
  OR2X1M U476 ( .A(x_n1[8]), .B(x_n1[10]), .Y(n210) );
  OR2X1M U477 ( .A(x_n1[11]), .B(x_n1[13]), .Y(n196) );
  OR2X1M U478 ( .A(x_n1[12]), .B(x_n1[14]), .Y(n190) );
  OR2X1M U479 ( .A(x_n1[13]), .B(n172), .Y(n188) );
  XOR3XLM U480 ( .A(x_n3[2]), .B(n29), .C(n393), .Y(N47) );
  XOR3XLM U481 ( .A(n280), .B(n29), .C(in_data[4]), .Y(N269) );
  AO21X8M U482 ( .A0(n251), .A1(n254), .B0(n69), .Y(n247) );
  XNOR2XLM U483 ( .A(x_n3[0]), .B(n395), .Y(N45) );
  XNOR2XLM U484 ( .A(N137), .B(n358), .Y(N2) );
  AOI21X4M U485 ( .A0(n300), .A1(n147), .B0(n148), .Y(n306) );
  AO21X8M U486 ( .A0(n241), .A1(n243), .B0(n67), .Y(n240) );
  OAI2BB1XLM U487 ( .A0N(n299), .A1N(n147), .B0(n309), .Y(n154) );
  AO21X8M U488 ( .A0(x_n3[11]), .A1(in_data[11]), .B0(n368), .Y(n374) );
  XOR3XLM U489 ( .A(x_n1[5]), .B(N1), .C(n351), .Y(N6) );
  XNOR2X8M U490 ( .A(n143), .B(n369), .Y(n370) );
  XNOR2XLM U491 ( .A(n157), .B(n44), .Y(N93) );
  AO21X4M U492 ( .A0(n196), .A1(n198), .B0(n111), .Y(n192) );
  OA21X4M U493 ( .A0(n170), .A1(n177), .B0(n308), .Y(n307) );
  XOR3X4M U494 ( .A(x_n1[9]), .B(x_n1[14]), .C(n343), .Y(N15) );
endmodule


module counter2bit_2 ( clk, reset, count );
  output [1:0] count;
  input clk, reset;
  wire   N2, n1;

  DFFRQX2M \count_reg[1]  ( .D(N2), .CK(clk), .RN(reset), .Q(count[1]) );
  DFFRQX2M \count_reg[0]  ( .D(n1), .CK(clk), .RN(reset), .Q(count[0]) );
  XOR2XLM U3 ( .A(count[1]), .B(count[0]), .Y(N2) );
  INVXLM U4 ( .A(count[0]), .Y(n1) );
endmodule


module mux4to1_2 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56;

  NAND2BX8M U1 ( .AN(n50), .B(n25), .Y(Y[9]) );
  NAND2X4M U2 ( .A(n17), .B(n18), .Y(Y[5]) );
  NAND4X6M U3 ( .A(n44), .B(n45), .C(n43), .D(n42), .Y(Y[7]) );
  NAND2X4M U4 ( .A(n47), .B(n49), .Y(n1) );
  NAND3X4M U5 ( .A(n2), .B(n48), .C(n46), .Y(Y[8]) );
  CLKINVX4M U6 ( .A(n1), .Y(n2) );
  CLKNAND2X4M U7 ( .A(I3[8]), .B(n54), .Y(n47) );
  NAND2X2M U8 ( .A(I3[9]), .B(n54), .Y(n3) );
  NAND2X2M U9 ( .A(I2[9]), .B(n10), .Y(n4) );
  AND2X4M U10 ( .A(n3), .B(n4), .Y(n25) );
  AO22X4M U11 ( .A0(I3[15]), .A1(n54), .B0(I2[15]), .B1(n10), .Y(n55) );
  CLKNAND2X2M U12 ( .A(I0[3]), .B(n52), .Y(n9) );
  CLKNAND2X2M U13 ( .A(I2[8]), .B(n10), .Y(n46) );
  NAND2X2M U14 ( .A(n19), .B(n20), .Y(Y[13]) );
  AOI22X1M U15 ( .A0(I1[13]), .A1(n53), .B0(I0[13]), .B1(n52), .Y(n19) );
  AOI22X1M U16 ( .A0(I3[13]), .A1(n54), .B0(I2[13]), .B1(n10), .Y(n20) );
  OR2X6M U17 ( .A(n56), .B(n55), .Y(Y[15]) );
  AO22X2M U18 ( .A0(I1[15]), .A1(n53), .B0(I0[15]), .B1(n52), .Y(n56) );
  OR2X6M U19 ( .A(n41), .B(n40), .Y(Y[2]) );
  NAND2X4M U20 ( .A(n11), .B(n12), .Y(Y[12]) );
  CLKNAND2X2M U21 ( .A(I2[4]), .B(n10), .Y(n6) );
  AND2X4M U22 ( .A(n8), .B(n9), .Y(n26) );
  INVX2M U23 ( .A(I3[11]), .Y(n7) );
  NAND2X2M U24 ( .A(I3[4]), .B(n54), .Y(n5) );
  AND2X2M U25 ( .A(n5), .B(n6), .Y(n29) );
  NAND2X2M U26 ( .A(n28), .B(n29), .Y(Y[4]) );
  NAND2X6M U27 ( .A(n23), .B(n24), .Y(Y[6]) );
  NAND2X6M U28 ( .A(n21), .B(n22), .Y(Y[10]) );
  AOI2BB2X4M U29 ( .B0(I2[11]), .B1(n10), .A0N(n7), .A1N(n34), .Y(n14) );
  NAND2X5M U30 ( .A(n13), .B(n14), .Y(Y[11]) );
  AOI22X2M U31 ( .A0(I3[3]), .A1(n54), .B0(I2[3]), .B1(n10), .Y(n27) );
  NAND2X2M U32 ( .A(I1[3]), .B(n53), .Y(n8) );
  NAND2X2M U33 ( .A(n26), .B(n27), .Y(Y[3]) );
  CLKNAND2X8M U34 ( .A(I2[7]), .B(n10), .Y(n42) );
  NAND2X4M U35 ( .A(n15), .B(n16), .Y(Y[14]) );
  AOI22X2M U36 ( .A0(I3[14]), .A1(n54), .B0(I2[14]), .B1(n10), .Y(n16) );
  CLKNAND2X4M U37 ( .A(I0[7]), .B(n52), .Y(n44) );
  CLKNAND2X4M U38 ( .A(I0[8]), .B(n52), .Y(n48) );
  CLKINVX4M U39 ( .A(n51), .Y(n15) );
  CLKINVX4M U40 ( .A(I1[9]), .Y(n30) );
  CLKNAND2X2M U41 ( .A(I1[8]), .B(n53), .Y(n49) );
  NOR2X4M U42 ( .A(S[0]), .B(n35), .Y(n10) );
  CLKNAND2X4M U43 ( .A(I1[7]), .B(n53), .Y(n45) );
  CLKNAND2X4M U44 ( .A(I3[7]), .B(n54), .Y(n43) );
  OR2X6M U45 ( .A(n37), .B(n36), .Y(Y[0]) );
  OR2X1M U46 ( .A(S[1]), .B(S[0]), .Y(n32) );
  OR2X1M U47 ( .A(S[1]), .B(n33), .Y(n31) );
  INVXLM U48 ( .A(S[0]), .Y(n33) );
  INVXLM U49 ( .A(S[1]), .Y(n35) );
  AOI22X4M U50 ( .A0(I1[12]), .A1(n53), .B0(I0[12]), .B1(n52), .Y(n11) );
  AOI22X4M U51 ( .A0(I3[12]), .A1(n54), .B0(I2[12]), .B1(n10), .Y(n12) );
  AOI22X4M U52 ( .A0(I1[11]), .A1(n53), .B0(I0[11]), .B1(n52), .Y(n13) );
  AOI22X4M U53 ( .A0(I1[5]), .A1(n53), .B0(I0[5]), .B1(n52), .Y(n17) );
  AOI22X4M U54 ( .A0(I3[5]), .A1(n54), .B0(I2[5]), .B1(n10), .Y(n18) );
  AOI22X4M U55 ( .A0(I1[10]), .A1(n53), .B0(I0[10]), .B1(n52), .Y(n21) );
  AOI22X4M U56 ( .A0(I3[10]), .A1(n54), .B0(I2[10]), .B1(n10), .Y(n22) );
  AOI22X4M U57 ( .A0(I1[6]), .A1(n53), .B0(I0[6]), .B1(n52), .Y(n23) );
  AOI22X4M U58 ( .A0(I3[6]), .A1(n54), .B0(I2[6]), .B1(n10), .Y(n24) );
  AOI22X4M U59 ( .A0(I1[4]), .A1(n53), .B0(I0[4]), .B1(n52), .Y(n28) );
  INVX2M U60 ( .A(n34), .Y(n54) );
  OR2X2M U61 ( .A(n35), .B(n33), .Y(n34) );
  INVX2M U62 ( .A(n31), .Y(n53) );
  INVX2M U63 ( .A(n32), .Y(n52) );
  OAI2B2X8M U64 ( .A1N(I0[9]), .A0(n32), .B0(n30), .B1(n31), .Y(n50) );
  AO2B2X4M U65 ( .B0(I1[14]), .B1(n53), .A0(I0[14]), .A1N(n32), .Y(n51) );
  AO22X4M U66 ( .A0(I1[0]), .A1(n53), .B0(I0[0]), .B1(n52), .Y(n37) );
  AO22X4M U67 ( .A0(I3[0]), .A1(n54), .B0(I2[0]), .B1(n10), .Y(n36) );
  AO22X4M U68 ( .A0(I1[1]), .A1(n53), .B0(I0[1]), .B1(n52), .Y(n39) );
  AO22X4M U69 ( .A0(I3[1]), .A1(n54), .B0(I2[1]), .B1(n10), .Y(n38) );
  OR2X6M U70 ( .A(n39), .B(n38), .Y(Y[1]) );
  AO22X4M U71 ( .A0(I1[2]), .A1(n53), .B0(I0[2]), .B1(n52), .Y(n41) );
  AO22X4M U72 ( .A0(I3[2]), .A1(n54), .B0(I2[2]), .B1(n10), .Y(n40) );
endmodule


module up4_filter_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [21:1] carry;

  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX1M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDFHX1M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX1M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX1M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHXLM U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX1M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR2XLM U1 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
  AND2X1M U2 ( .A(B[3]), .B(A[3]), .Y(n1) );
  BUFX2M U3 ( .A(B[2]), .Y(SUM[2]) );
endmodule


module up4_filter_1_DW01_add_6 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:1] carry;

  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX1M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX1M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFHX1M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHXLM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX1M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX1M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXLM U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CLKAND2X3M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XNOR2XLM U2 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U3 ( .A(A[2]), .Y(SUM[2]) );
  INVX2M U4 ( .A(A[3]), .Y(n3) );
endmodule


module up4_filter_1_DW01_add_10 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n7;
  wire   [21:1] carry;

  ADDFHX4M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX1M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(n1), .CO(carry[7]), .S(SUM[6]) );
  XOR3X4M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  BUFX8M U1 ( .A(B[1]), .Y(SUM[1]) );
  CLKAND2X3M U2 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XNOR2X2M U3 ( .A(B[5]), .B(n7), .Y(SUM[5]) );
  BUFX2M U4 ( .A(B[4]), .Y(SUM[4]) );
  BUFX2M U5 ( .A(B[0]), .Y(SUM[0]) );
  INVXLM U6 ( .A(A[5]), .Y(n7) );
  BUFX2M U7 ( .A(B[2]), .Y(SUM[2]) );
  BUFX2M U8 ( .A(B[3]), .Y(SUM[3]) );
endmodule


module up4_filter_1_DW01_add_9 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [21:1] carry;

  ADDFHX1M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFHX1M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX1M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4M U1_1 ( .A(A[1]), .B(B[1]), .CI(n4), .CO(carry[2]), .S(SUM[1]) );
  ADDFHX1M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX1M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX1M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFHX1M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX2M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFHX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX1M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFHX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX1M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFHX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  XOR3XLM U1 ( .A(carry[9]), .B(B[9]), .C(A[9]), .Y(SUM[9]) );
  NAND2X2M U2 ( .A(carry[9]), .B(B[9]), .Y(n1) );
  NAND2X2M U3 ( .A(carry[9]), .B(A[9]), .Y(n2) );
  NAND2X2M U4 ( .A(B[9]), .B(A[9]), .Y(n3) );
  NAND3X2M U5 ( .A(n3), .B(n2), .C(n1), .Y(carry[10]) );
  XOR2XLM U6 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  AND2X1M U7 ( .A(B[0]), .B(A[0]), .Y(n4) );
endmodule


module up4_filter_1_DW01_add_14 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n3;
  wire   [21:1] carry;

  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFX1M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  XOR3XLM U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXLM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXLM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX4M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFHX1M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKAND2X12M U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  CLKINVX2M U2 ( .A(A[3]), .Y(n3) );
  XNOR2X2M U3 ( .A(B[3]), .B(n3), .Y(SUM[3]) );
  BUFX2M U4 ( .A(A[2]), .Y(SUM[2]) );
endmodule


module up4_filter_1_DW01_add_13 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n4;
  wire   [21:1] carry;

  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFX2M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFX2M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX1M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFHX1M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFHX1M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFHX1M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFHX1M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX1M U1_4 ( .A(A[4]), .B(B[4]), .CI(n1), .CO(carry[5]), .S(SUM[4]) );
  ADDFX2M U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  BUFX8M U1 ( .A(A[2]), .Y(SUM[2]) );
  CLKAND2X4M U2 ( .A(B[3]), .B(A[3]), .Y(n1) );
  CLKINVX4M U3 ( .A(A[3]), .Y(n4) );
  DLY1X1M U4 ( .A(A[1]), .Y(SUM[1]) );
  XNOR2X2M U5 ( .A(B[3]), .B(n4), .Y(SUM[3]) );
endmodule


module up4_filter_1_DW01_add_12 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [21:1] carry;

  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFX2M U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFX2M U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  XOR3X2M U1_21 ( .A(A[21]), .B(B[21]), .C(carry[21]), .Y(SUM[21]) );
  ADDFX2M U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFX2M U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFX2M U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2M U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFHX2M U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFHX4M U1_3 ( .A(A[3]), .B(B[3]), .CI(n4), .CO(carry[4]), .S(SUM[3]) );
  ADDFHX4M U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFHX4M U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFHX4M U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFHX1M U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XOR3XLM U1 ( .A(carry[15]), .B(A[15]), .C(B[15]), .Y(SUM[15]) );
  NAND2X2M U2 ( .A(carry[15]), .B(A[15]), .Y(n1) );
  NAND2X2M U3 ( .A(carry[15]), .B(B[15]), .Y(n2) );
  NAND2X2M U4 ( .A(A[15]), .B(B[15]), .Y(n3) );
  NAND3X2M U5 ( .A(n3), .B(n2), .C(n1), .Y(carry[16]) );
  AND2X2M U6 ( .A(B[2]), .B(A[2]), .Y(n4) );
  XOR2XLM U7 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
  BUFX2M U8 ( .A(B[1]), .Y(SUM[1]) );
endmodule


module up4_filter_1_DW01_add_23 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;

  INVX2M U2 ( .A(n10), .Y(n9) );
  XNOR2X1M U3 ( .A(n31), .B(n32), .Y(SUM[21]) );
  AOI2B1X1M U4 ( .A1N(n34), .A0(n35), .B0(n2), .Y(n31) );
  XNOR2X2M U5 ( .A(n85), .B(n86), .Y(SUM[15]) );
  AOI21X2M U6 ( .A0(n6), .A1(n7), .B0(n5), .Y(n4) );
  AND2X2M U7 ( .A(n53), .B(n54), .Y(n7) );
  INVX2M U8 ( .A(A[18]), .Y(n49) );
  NAND2X2M U9 ( .A(A[18]), .B(n9), .Y(n43) );
  AOI21BX2M U10 ( .A0(n88), .A1(n87), .B0N(n64), .Y(n85) );
  OAI2BB1X2M U11 ( .A0N(n42), .A1N(n44), .B0(n43), .Y(n40) );
  XNOR2X2M U12 ( .A(n36), .B(n37), .Y(SUM[20]) );
  AND2X2M U13 ( .A(n112), .B(n113), .Y(n1) );
  AND2X2M U14 ( .A(A[20]), .B(n9), .Y(n2) );
  AND2X2M U15 ( .A(n114), .B(n15), .Y(n3) );
  NAND2X1M U16 ( .A(B[10]), .B(A[10]), .Y(n103) );
  NAND2X1M U17 ( .A(B[13]), .B(A[13]), .Y(n67) );
  NAND2XLM U18 ( .A(B[8]), .B(A[8]), .Y(n15) );
  OR2X1M U19 ( .A(B[8]), .B(A[8]), .Y(n16) );
  CLKNAND2X2M U20 ( .A(B[15]), .B(A[15]), .Y(n60) );
  OR2X1M U21 ( .A(B[15]), .B(A[15]), .Y(n53) );
  OR2X1M U22 ( .A(B[13]), .B(A[13]), .Y(n93) );
  CLKNAND2X2M U23 ( .A(B[7]), .B(A[7]), .Y(n19) );
  OR2X1M U24 ( .A(B[7]), .B(A[7]), .Y(n82) );
  NAND2XLM U25 ( .A(B[12]), .B(A[12]), .Y(n76) );
  OR2X1M U26 ( .A(B[11]), .B(A[11]), .Y(n80) );
  NOR2X1M U27 ( .A(A[14]), .B(B[14]), .Y(n66) );
  OR2X1M U28 ( .A(B[12]), .B(A[12]), .Y(n98) );
  NAND3XLM U29 ( .A(n83), .B(n19), .C(n84), .Y(n77) );
  NAND4X2M U30 ( .A(n77), .B(n78), .C(n79), .D(n80), .Y(n73) );
  CLKINVX2M U31 ( .A(A[21]), .Y(n33) );
  NOR2X2M U32 ( .A(n70), .B(n71), .Y(n72) );
  INVX2M U33 ( .A(n28), .Y(n125) );
  CLKINVX2M U34 ( .A(n30), .Y(n22) );
  NAND2X2M U35 ( .A(n10), .B(n48), .Y(n47) );
  NAND2X1M U36 ( .A(n39), .B(n38), .Y(n41) );
  NOR2BX2M U37 ( .AN(n27), .B(n125), .Y(n120) );
  INVXLM U38 ( .A(n87), .Y(n89) );
  INVXLM U39 ( .A(n97), .Y(n99) );
  OAI2BB1X2M U40 ( .A0N(n38), .A1N(n40), .B0(n39), .Y(n35) );
  INVX2M U41 ( .A(n52), .Y(n5) );
  OR2X2M U42 ( .A(n55), .B(n56), .Y(n6) );
  INVX1M U43 ( .A(n67), .Y(n90) );
  NAND4X1M U44 ( .A(n120), .B(n29), .C(n23), .D(n82), .Y(n115) );
  NAND2XLM U45 ( .A(B[14]), .B(A[14]), .Y(n64) );
  NOR2X1M U46 ( .A(n66), .B(n67), .Y(n65) );
  NAND3XLM U47 ( .A(B[14]), .B(n68), .C(n72), .Y(n61) );
  INVXLM U48 ( .A(n108), .Y(n110) );
  NAND4XLM U49 ( .A(n104), .B(n14), .C(n79), .D(n80), .Y(n101) );
  NOR2XLM U50 ( .A(n1), .B(n81), .Y(n104) );
  NOR2BXLM U51 ( .AN(n60), .B(n59), .Y(n86) );
  AOI2B1XLM U52 ( .A1N(n59), .A0(n56), .B0(n55), .Y(n57) );
  NAND2XLM U53 ( .A(n92), .B(n93), .Y(n91) );
  NAND2X2M U54 ( .A(n96), .B(n76), .Y(n92) );
  NAND2XLM U55 ( .A(n97), .B(n98), .Y(n96) );
  AND2X1M U56 ( .A(n52), .B(n54), .Y(n58) );
  INVXLM U57 ( .A(n53), .Y(n59) );
  NAND4XLM U58 ( .A(n29), .B(n27), .C(n28), .D(n23), .Y(n83) );
  INVXLM U59 ( .A(n82), .Y(n20) );
  INVXLM U60 ( .A(n79), .Y(n107) );
  NAND2XLM U61 ( .A(n16), .B(n14), .Y(n114) );
  AOI21XLM U62 ( .A0(n23), .A1(n21), .B0(n22), .Y(n17) );
  NOR2BXLM U63 ( .AN(n19), .B(n20), .Y(n18) );
  NAND2XLM U64 ( .A(n25), .B(n26), .Y(n21) );
  NAND3XLM U65 ( .A(n27), .B(n28), .C(n29), .Y(n26) );
  NAND2XLM U66 ( .A(n23), .B(n30), .Y(n24) );
  NAND2XLM U67 ( .A(n15), .B(n16), .Y(n13) );
  AOI21X2M U68 ( .A0(n9), .A1(A[17]), .B0(n51), .Y(n50) );
  NAND2XLM U69 ( .A(n10), .B(n49), .Y(n42) );
  NAND2XLM U70 ( .A(A[19]), .B(n9), .Y(n39) );
  NAND3X2M U71 ( .A(n61), .B(n62), .C(n63), .Y(n56) );
  OR2X1M U72 ( .A(B[14]), .B(A[14]), .Y(n88) );
  NAND2X2M U73 ( .A(n121), .B(n122), .Y(n29) );
  NAND2BX1M U74 ( .AN(n124), .B(n123), .Y(n121) );
  XNOR2X1M U75 ( .A(n94), .B(n95), .Y(SUM[13]) );
  XNOR2X1M U76 ( .A(n41), .B(n40), .Y(SUM[19]) );
  XNOR2X2M U77 ( .A(n105), .B(n106), .Y(SUM[11]) );
  XNOR2X1M U78 ( .A(n110), .B(n111), .Y(SUM[10]) );
  NOR2X2M U79 ( .A(n70), .B(n71), .Y(n69) );
  INVX2M U80 ( .A(B[21]), .Y(n10) );
  INVX2M U81 ( .A(n35), .Y(n36) );
  INVX2M U82 ( .A(n92), .Y(n94) );
  OAI2B2XLM U83 ( .A1N(n47), .A0(n4), .B0(n48), .B1(n10), .Y(n44) );
  XOR2XLM U84 ( .A(n9), .B(A[20]), .Y(n37) );
  NAND3XLM U85 ( .A(n101), .B(n75), .C(n74), .Y(n97) );
  NOR2XLM U86 ( .A(A[20]), .B(n9), .Y(n34) );
  NAND2BX2M U87 ( .AN(n90), .B(n91), .Y(n87) );
  NAND3X2M U88 ( .A(n102), .B(n79), .C(n80), .Y(n74) );
  OAI211X1M U89 ( .A0(n1), .A1(n15), .B0(n12), .C0(n103), .Y(n102) );
  NOR3X2M U90 ( .A(n1), .B(n20), .C(n81), .Y(n78) );
  INVX2M U91 ( .A(n98), .Y(n71) );
  INVX2M U92 ( .A(n93), .Y(n70) );
  INVX2M U93 ( .A(n16), .Y(n81) );
  INVX2M U94 ( .A(n60), .Y(n55) );
  NAND2XLM U95 ( .A(n43), .B(n42), .Y(n46) );
  AND2X2M U96 ( .A(n88), .B(n64), .Y(n8) );
  OAI21XLM U97 ( .A0(n3), .A1(n1), .B0(n12), .Y(n108) );
  AND2X1M U98 ( .A(n75), .B(n80), .Y(n106) );
  AOI2B1XLM U99 ( .A1N(n107), .A0(n108), .B0(n109), .Y(n105) );
  INVXLM U100 ( .A(n103), .Y(n109) );
  NAND3X2M U101 ( .A(n115), .B(n19), .C(n84), .Y(n14) );
  NOR2BXLM U102 ( .AN(n12), .B(n1), .Y(n11) );
  NAND3X2M U103 ( .A(n116), .B(n23), .C(n82), .Y(n84) );
  NAND2BX2M U104 ( .AN(n22), .B(n25), .Y(n116) );
  NOR2BXLM U105 ( .AN(n103), .B(n107), .Y(n111) );
  NOR2BXLM U106 ( .AN(n76), .B(n71), .Y(n100) );
  NOR2BXLM U107 ( .AN(n67), .B(n70), .Y(n95) );
  XNOR2XLM U108 ( .A(n4), .B(n50), .Y(SUM[17]) );
  INVXLM U109 ( .A(n47), .Y(n51) );
  OR2X1M U110 ( .A(B[10]), .B(A[10]), .Y(n79) );
  NOR2BX2M U111 ( .AN(n64), .B(n65), .Y(n63) );
  NAND3X2M U112 ( .A(A[14]), .B(n68), .C(n69), .Y(n62) );
  OR2X2M U113 ( .A(B[16]), .B(A[16]), .Y(n54) );
  NAND2XLM U114 ( .A(n10), .B(n45), .Y(n38) );
  INVX2M U115 ( .A(A[19]), .Y(n45) );
  NAND2X2M U116 ( .A(B[16]), .B(A[16]), .Y(n52) );
  INVX2M U117 ( .A(A[9]), .Y(n113) );
  OAI21X1M U118 ( .A0(A[5]), .A1(B[5]), .B0(n117), .Y(n25) );
  CLKNAND2X2M U119 ( .A(n118), .B(n119), .Y(n117) );
  NAND2XLM U120 ( .A(B[4]), .B(A[4]), .Y(n119) );
  NAND2XLM U121 ( .A(B[5]), .B(A[5]), .Y(n118) );
  OR2X1M U122 ( .A(B[4]), .B(A[4]), .Y(n27) );
  NAND2XLM U123 ( .A(B[6]), .B(A[6]), .Y(n30) );
  NAND2XLM U124 ( .A(B[3]), .B(A[3]), .Y(n122) );
  NAND2X2M U125 ( .A(A[2]), .B(B[2]), .Y(n124) );
  OR2X1M U126 ( .A(B[3]), .B(A[3]), .Y(n123) );
  INVX2M U127 ( .A(A[17]), .Y(n48) );
  OR2X1M U128 ( .A(B[5]), .B(A[5]), .Y(n28) );
  OR2X1M U129 ( .A(B[6]), .B(A[6]), .Y(n23) );
  XNOR2X2M U130 ( .A(n89), .B(n8), .Y(SUM[14]) );
  XNOR2X2M U131 ( .A(n57), .B(n58), .Y(SUM[16]) );
  XNOR2XLM U132 ( .A(n46), .B(n44), .Y(SUM[18]) );
  XNOR2XLM U133 ( .A(n9), .B(n33), .Y(n32) );
  XNOR2X2M U134 ( .A(n99), .B(n100), .Y(SUM[12]) );
  XNOR2XLM U135 ( .A(n13), .B(n14), .Y(SUM[8]) );
  XNOR2XLM U136 ( .A(n3), .B(n11), .Y(SUM[9]) );
  XNOR2X2M U137 ( .A(n17), .B(n18), .Y(SUM[7]) );
  XNOR2X2M U138 ( .A(n24), .B(n21), .Y(SUM[6]) );
  NAND2XLM U139 ( .A(B[9]), .B(A[9]), .Y(n12) );
  INVXLM U140 ( .A(B[9]), .Y(n112) );
  NAND2XLM U141 ( .A(B[11]), .B(A[11]), .Y(n75) );
  NAND4X2M U142 ( .A(n73), .B(n74), .C(n75), .D(n76), .Y(n68) );
endmodule


module up4_filter_1_DW01_add_21 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147;

  XNOR2X4M U2 ( .A(B[21]), .B(n36), .Y(n35) );
  INVX3M U3 ( .A(A[21]), .Y(n36) );
  XNOR2X4M U4 ( .A(n34), .B(n35), .Y(SUM[21]) );
  XNOR2X4M U5 ( .A(n38), .B(n5), .Y(SUM[20]) );
  XOR2X4M U6 ( .A(n4), .B(n39), .Y(n5) );
  NAND2XLM U7 ( .A(A[18]), .B(n4), .Y(n44) );
  AND2X2M U8 ( .A(n74), .B(n75), .Y(n6) );
  INVX2M U9 ( .A(A[19]), .Y(n48) );
  AOI2B1X1M U10 ( .A1N(n122), .A0(n123), .B0(n124), .Y(n119) );
  NOR2BX2M U11 ( .AN(n44), .B(n51), .Y(n50) );
  INVX2M U12 ( .A(B[21]), .Y(n11) );
  AND2X2M U13 ( .A(n104), .B(n83), .Y(n3) );
  INVX2M U14 ( .A(A[20]), .Y(n39) );
  NAND2XLM U15 ( .A(B[13]), .B(A[13]), .Y(n92) );
  NAND2X2M U16 ( .A(n11), .B(n97), .Y(n68) );
  CLKNAND2X2M U17 ( .A(A[16]), .B(B[19]), .Y(n62) );
  CLKNAND2X2M U18 ( .A(B[20]), .B(A[15]), .Y(n65) );
  NAND2X1M U19 ( .A(n129), .B(n32), .Y(n31) );
  INVX2M U20 ( .A(n102), .Y(n76) );
  NAND4XLM U21 ( .A(n30), .B(n23), .C(n32), .D(n33), .Y(n81) );
  NAND2XLM U22 ( .A(n89), .B(n21), .Y(n88) );
  NAND2XLM U23 ( .A(n130), .B(n131), .Y(n129) );
  CLKNAND2X2M U24 ( .A(n55), .B(n56), .Y(n54) );
  NAND4X2M U25 ( .A(n84), .B(n17), .C(n85), .D(n86), .Y(n80) );
  INVX2M U26 ( .A(n78), .Y(n77) );
  INVX2M U27 ( .A(A[16]), .Y(n93) );
  INVX2M U28 ( .A(A[15]), .Y(n97) );
  CLKNAND2X2M U29 ( .A(n69), .B(n70), .Y(n67) );
  AOI21X1M U30 ( .A0(n4), .A1(A[15]), .B0(n96), .Y(n95) );
  NAND2X1M U31 ( .A(n44), .B(n45), .Y(n42) );
  NAND2X2M U32 ( .A(n53), .B(n54), .Y(n46) );
  NAND2X2M U33 ( .A(n65), .B(n66), .Y(n63) );
  XNOR2X2M U34 ( .A(n94), .B(n95), .Y(SUM[15]) );
  INVX2M U35 ( .A(n11), .Y(n4) );
  CLKINVX1M U36 ( .A(n47), .Y(n51) );
  INVXLM U37 ( .A(n55), .Y(n57) );
  NAND4XLM U38 ( .A(n132), .B(n87), .C(n30), .D(n23), .Y(n127) );
  NAND2XLM U39 ( .A(n105), .B(n78), .Y(n104) );
  XNOR2X1M U40 ( .A(n19), .B(n20), .Y(SUM[7]) );
  OAI211X1M U41 ( .A0(n135), .A1(n142), .B0(n143), .C0(n144), .Y(n139) );
  XNOR2X2M U42 ( .A(n49), .B(n50), .Y(SUM[18]) );
  XNOR2X2M U43 ( .A(n57), .B(n58), .Y(SUM[17]) );
  NAND2X2M U44 ( .A(n74), .B(n75), .Y(n73) );
  NOR2X2M U45 ( .A(n6), .B(n92), .Y(n91) );
  XNOR2X2M U46 ( .A(n100), .B(n101), .Y(SUM[14]) );
  INVX2M U47 ( .A(n84), .Y(n14) );
  XNOR2X2M U48 ( .A(n119), .B(n120), .Y(SUM[11]) );
  INVXLM U49 ( .A(n86), .Y(n121) );
  NAND2XLM U50 ( .A(n79), .B(n107), .Y(n105) );
  INVX2M U51 ( .A(n32), .Y(n147) );
  NAND2BX1M U52 ( .AN(B[1]), .B(n146), .Y(n145) );
  INVXLM U53 ( .A(n68), .Y(n96) );
  NAND2X2M U54 ( .A(B[6]), .B(A[6]), .Y(n29) );
  NAND2XLM U55 ( .A(n46), .B(n47), .Y(n45) );
  AOI2B1X2M U56 ( .A1N(n37), .A0(n38), .B0(n9), .Y(n34) );
  CLKINVX2M U57 ( .A(A[18]), .Y(n52) );
  INVX1M U58 ( .A(n99), .Y(n90) );
  OAI2B1X1M U59 ( .A1N(n102), .A0(n3), .B0(n92), .Y(n98) );
  NAND2XLM U60 ( .A(n78), .B(n83), .Y(n106) );
  NOR2BXLM U61 ( .AN(n113), .B(n122), .Y(n126) );
  INVXLM U62 ( .A(n98), .Y(n100) );
  XNOR2X2M U63 ( .A(n3), .B(n103), .Y(SUM[13]) );
  NAND4XLM U64 ( .A(n108), .B(n16), .C(n85), .D(n86), .Y(n107) );
  INVXLM U65 ( .A(n17), .Y(n109) );
  NAND2XLM U66 ( .A(A[19]), .B(n4), .Y(n41) );
  NAND2XLM U67 ( .A(n11), .B(n48), .Y(n40) );
  INVXLM U68 ( .A(n85), .Y(n122) );
  INVXLM U69 ( .A(n25), .Y(n27) );
  NOR2BXLM U70 ( .AN(n29), .B(n24), .Y(n28) );
  INVXLM U71 ( .A(n23), .Y(n22) );
  NAND2X1M U72 ( .A(n140), .B(n141), .Y(n133) );
  NAND2X1M U73 ( .A(n137), .B(n136), .Y(n134) );
  AND2X1M U74 ( .A(n32), .B(n33), .Y(n10) );
  NOR2BX2M U75 ( .AN(n33), .B(n147), .Y(n132) );
  INVXLM U76 ( .A(n113), .Y(n124) );
  CLKINVX2M U77 ( .A(n110), .Y(n79) );
  NAND2XLM U78 ( .A(n111), .B(n112), .Y(n110) );
  NOR2XLM U79 ( .A(n115), .B(n116), .Y(n114) );
  NAND2XLM U80 ( .A(A[17]), .B(n4), .Y(n53) );
  NAND2XLM U81 ( .A(n11), .B(n60), .Y(n56) );
  CLKINVX2M U82 ( .A(A[17]), .Y(n60) );
  NAND2XLM U83 ( .A(n11), .B(n93), .Y(n61) );
  CLKNAND2X2M U84 ( .A(n67), .B(n68), .Y(n66) );
  OR2X2M U85 ( .A(B[6]), .B(A[6]), .Y(n30) );
  OAI2BB1X2M U86 ( .A0N(n40), .A1N(n42), .B0(n41), .Y(n38) );
  INVX2M U87 ( .A(n46), .Y(n49) );
  XNOR2XLM U88 ( .A(n43), .B(n42), .Y(SUM[19]) );
  NAND2X2M U89 ( .A(n41), .B(n40), .Y(n43) );
  OAI2BB1X2M U90 ( .A0N(n61), .A1N(n63), .B0(n62), .Y(n55) );
  OAI211X2M U91 ( .A0(n71), .A1(n110), .B0(n72), .C0(n73), .Y(n70) );
  OAI21X2M U92 ( .A0(n82), .A1(n80), .B0(n83), .Y(n71) );
  NOR2X2M U93 ( .A(n76), .B(n77), .Y(n72) );
  NOR2X2M U94 ( .A(n90), .B(n91), .Y(n69) );
  NOR2XLM U95 ( .A(A[20]), .B(n4), .Y(n37) );
  INVX2M U96 ( .A(B[14]), .Y(n74) );
  OAI21XLM U97 ( .A0(n7), .A1(n14), .B0(n13), .Y(n123) );
  NAND3X2M U98 ( .A(n127), .B(n21), .C(n89), .Y(n16) );
  NOR2BX2M U99 ( .AN(n53), .B(n59), .Y(n58) );
  INVX2M U100 ( .A(n56), .Y(n59) );
  NOR2BX2M U101 ( .AN(n111), .B(n121), .Y(n120) );
  NOR2BXLM U102 ( .AN(n99), .B(n6), .Y(n101) );
  NOR2BXLM U103 ( .AN(n92), .B(n76), .Y(n103) );
  XNOR2X2M U104 ( .A(n125), .B(n126), .Y(SUM[10]) );
  INVXLM U105 ( .A(n123), .Y(n125) );
  XNOR2X2M U106 ( .A(n64), .B(n63), .Y(SUM[16]) );
  NAND2X2M U107 ( .A(n62), .B(n61), .Y(n64) );
  XNOR2X2M U108 ( .A(n106), .B(n105), .Y(SUM[12]) );
  AOI2B1X1M U109 ( .A1N(n81), .A0(n87), .B0(n88), .Y(n82) );
  NAND3X2M U110 ( .A(n128), .B(n30), .C(n23), .Y(n89) );
  NAND2BX2M U111 ( .AN(n26), .B(n31), .Y(n128) );
  NAND2XLM U112 ( .A(n11), .B(n52), .Y(n47) );
  NOR2X2M U113 ( .A(n14), .B(n109), .Y(n108) );
  NOR2BXLM U114 ( .AN(n18), .B(n8), .Y(n7) );
  AND2X2M U115 ( .A(n17), .B(n16), .Y(n8) );
  INVX2M U116 ( .A(n29), .Y(n26) );
  AND2X1M U117 ( .A(A[20]), .B(n4), .Y(n9) );
  OAI2BB1XLM U118 ( .A0N(n87), .A1N(n10), .B0(n31), .Y(n25) );
  OAI21X2M U119 ( .A0(n136), .A1(n137), .B0(n138), .Y(n87) );
  NAND3X2M U120 ( .A(n139), .B(n133), .C(n134), .Y(n138) );
  XNOR2XLM U121 ( .A(n15), .B(n16), .Y(SUM[8]) );
  NAND2XLM U122 ( .A(n17), .B(n18), .Y(n15) );
  XNOR2X2M U123 ( .A(n27), .B(n28), .Y(SUM[6]) );
  AOI2B1XLM U124 ( .A1N(n24), .A0(n25), .B0(n26), .Y(n19) );
  NOR2BXLM U125 ( .AN(n21), .B(n22), .Y(n20) );
  XNOR2XLM U126 ( .A(n7), .B(n12), .Y(SUM[9]) );
  INVXLM U127 ( .A(B[2]), .Y(n140) );
  INVX2M U128 ( .A(n30), .Y(n24) );
  INVXLM U129 ( .A(B[3]), .Y(n137) );
  INVX2M U130 ( .A(n145), .Y(n135) );
  INVX2M U131 ( .A(A[1]), .Y(n146) );
  OR2X1M U132 ( .A(B[13]), .B(A[13]), .Y(n102) );
  OAI2B2XLM U133 ( .A1N(n113), .A0(n114), .B0(A[11]), .B1(B[11]), .Y(n112) );
  OR2X1M U134 ( .A(B[8]), .B(A[8]), .Y(n17) );
  OR2X1M U135 ( .A(B[7]), .B(A[7]), .Y(n23) );
  NOR2XLM U136 ( .A(A[10]), .B(B[10]), .Y(n115) );
  AOI2B1XLM U137 ( .A1N(n6), .A0(n98), .B0(n90), .Y(n94) );
  OR2X1M U138 ( .A(B[9]), .B(A[9]), .Y(n84) );
  OR2X1M U139 ( .A(B[12]), .B(A[12]), .Y(n78) );
  NAND2XLM U140 ( .A(B[12]), .B(A[12]), .Y(n83) );
  NAND2XLM U141 ( .A(B[10]), .B(A[10]), .Y(n113) );
  OR2X1M U142 ( .A(B[11]), .B(A[11]), .Y(n86) );
  OR2X1M U143 ( .A(B[10]), .B(A[10]), .Y(n85) );
  NAND2XLM U144 ( .A(B[14]), .B(A[14]), .Y(n99) );
  NAND2XLM U145 ( .A(B[11]), .B(A[11]), .Y(n111) );
  INVX2M U146 ( .A(A[14]), .Y(n75) );
  NAND2XLM U147 ( .A(A[0]), .B(B[0]), .Y(n142) );
  NAND2XLM U148 ( .A(B[1]), .B(A[1]), .Y(n143) );
  NAND2XLM U149 ( .A(B[2]), .B(A[2]), .Y(n144) );
  NAND2XLM U150 ( .A(B[4]), .B(A[4]), .Y(n131) );
  NAND2XLM U151 ( .A(B[5]), .B(A[5]), .Y(n130) );
  OR2X1M U152 ( .A(B[5]), .B(A[5]), .Y(n32) );
  OR2X1M U153 ( .A(B[4]), .B(A[4]), .Y(n33) );
  INVX2M U154 ( .A(A[3]), .Y(n136) );
  INVX2M U155 ( .A(A[2]), .Y(n141) );
  NAND2XLM U156 ( .A(B[7]), .B(A[7]), .Y(n21) );
  NAND2XLM U157 ( .A(B[8]), .B(A[8]), .Y(n18) );
  NAND2XLM U158 ( .A(B[9]), .B(A[9]), .Y(n13) );
  NOR2XLM U159 ( .A(n118), .B(n18), .Y(n117) );
  NOR2BX2M U160 ( .AN(n13), .B(n117), .Y(n116) );
  NOR2BX2M U161 ( .AN(n13), .B(n14), .Y(n12) );
  NOR2XLM U162 ( .A(A[9]), .B(B[9]), .Y(n118) );
endmodule


module up4_filter_1_DW01_add_17 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152;

  OAI2B1X8M U2 ( .A1N(n44), .A0(n45), .B0(n46), .Y(n43) );
  INVX2M U3 ( .A(A[21]), .Y(n34) );
  XNOR2X4M U4 ( .A(n40), .B(n41), .Y(SUM[20]) );
  NOR2X4M U5 ( .A(n42), .B(n36), .Y(n40) );
  XOR2X2M U6 ( .A(n7), .B(A[20]), .Y(n41) );
  XNOR2X4M U7 ( .A(n32), .B(n33), .Y(SUM[21]) );
  OR2X2M U8 ( .A(B[14]), .B(A[14]), .Y(n69) );
  NAND2X2M U9 ( .A(n107), .B(n106), .Y(n86) );
  AOI2B1X2M U10 ( .A1N(n71), .A0(n72), .B0(n73), .Y(n66) );
  NAND2X2M U11 ( .A(n69), .B(n70), .Y(n67) );
  NAND2X2M U12 ( .A(B[18]), .B(A[18]), .Y(n44) );
  NOR2X2M U13 ( .A(B[18]), .B(A[18]), .Y(n4) );
  NAND2X2M U14 ( .A(n7), .B(A[19]), .Y(n39) );
  INVX2M U15 ( .A(n48), .Y(n47) );
  AOI2B1X1M U16 ( .A1N(n124), .A0(n125), .B0(n126), .Y(n122) );
  XNOR2X2M U17 ( .A(n96), .B(n97), .Y(SUM[14]) );
  XNOR2X2M U18 ( .A(n90), .B(n91), .Y(SUM[15]) );
  AOI2B1X1M U19 ( .A1N(n64), .A0(n55), .B0(n6), .Y(n61) );
  NOR2BX2M U20 ( .AN(n44), .B(n4), .Y(n52) );
  AOI2B1X2M U21 ( .A1N(n35), .A0(n36), .B0(n37), .Y(n32) );
  XNOR2X1M U22 ( .A(n49), .B(n2), .Y(SUM[19]) );
  AND2X2M U23 ( .A(n131), .B(n22), .Y(n1) );
  AND2X2M U24 ( .A(n39), .B(n48), .Y(n2) );
  OAI21X4M U25 ( .A0(n66), .A1(n67), .B0(n68), .Y(n55) );
  XNOR2X4M U26 ( .A(n7), .B(n34), .Y(n33) );
  AOI2B1X1M U27 ( .A1N(n4), .A0(n45), .B0(n51), .Y(n49) );
  XNOR2X4M U28 ( .A(n55), .B(n3), .Y(SUM[16]) );
  CLKAND2X3M U29 ( .A(A[16]), .B(B[16]), .Y(n58) );
  XOR2X4M U30 ( .A(B[16]), .B(n65), .Y(n3) );
  INVX4M U31 ( .A(n43), .Y(n36) );
  INVX1M U32 ( .A(n57), .Y(n63) );
  XNOR2X2M U33 ( .A(n61), .B(n62), .Y(SUM[17]) );
  NAND2X6M U34 ( .A(n53), .B(n54), .Y(n45) );
  XOR2X1M U35 ( .A(n45), .B(n52), .Y(SUM[18]) );
  NAND3X2M U36 ( .A(n55), .B(n56), .C(n57), .Y(n54) );
  INVX1M U37 ( .A(n60), .Y(n59) );
  NAND2X1M U38 ( .A(B[17]), .B(A[17]), .Y(n60) );
  OR2X6M U39 ( .A(B[17]), .B(A[17]), .Y(n57) );
  NAND2X2M U40 ( .A(n74), .B(n75), .Y(n73) );
  NAND2X1M U41 ( .A(B[12]), .B(A[12]), .Y(n99) );
  OR2X2M U42 ( .A(B[5]), .B(A[5]), .Y(n31) );
  CLKNAND2X2M U43 ( .A(n120), .B(n121), .Y(n85) );
  NAND2X1M U44 ( .A(n17), .B(n11), .Y(n118) );
  CLKINVX2M U45 ( .A(B[6]), .Y(n135) );
  OR2X1M U46 ( .A(B[13]), .B(A[13]), .Y(n89) );
  NOR2BX2M U47 ( .AN(n75), .B(n93), .Y(n97) );
  AOI2B1X2M U48 ( .A1N(n93), .A0(n94), .B0(n95), .Y(n90) );
  NOR2X2M U49 ( .A(n102), .B(n103), .Y(n101) );
  NAND2X2M U50 ( .A(n98), .B(n74), .Y(n94) );
  NAND2X2M U51 ( .A(n116), .B(n117), .Y(n82) );
  NAND4XLM U52 ( .A(n113), .B(n13), .C(n85), .D(n86), .Y(n108) );
  OR2X6M U53 ( .A(B[15]), .B(A[15]), .Y(n70) );
  NAND2X2M U54 ( .A(B[14]), .B(A[14]), .Y(n75) );
  NOR2BXLM U55 ( .AN(n74), .B(n102), .Y(n105) );
  NAND2XLM U56 ( .A(n129), .B(n11), .Y(n125) );
  NAND2XLM U57 ( .A(n13), .B(n14), .Y(n129) );
  CLKNAND2X2M U58 ( .A(n79), .B(n87), .Y(n115) );
  INVXLM U59 ( .A(n26), .Y(n25) );
  NAND4X1M U60 ( .A(A[7]), .B(n30), .C(n31), .D(n151), .Y(n150) );
  NAND2X2M U61 ( .A(n149), .B(n150), .Y(n79) );
  AOI2B1X1M U62 ( .A1N(n81), .A0(n82), .B0(n83), .Y(n78) );
  INVX2M U63 ( .A(n56), .Y(n64) );
  NOR2BX2M U64 ( .AN(n68), .B(n92), .Y(n91) );
  XNOR2X2M U65 ( .A(n104), .B(n105), .Y(SUM[13]) );
  XNOR2X2M U66 ( .A(n110), .B(n111), .Y(SUM[12]) );
  NAND2XLM U67 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NAND2XLM U68 ( .A(B[8]), .B(A[8]), .Y(n17) );
  OR2X1M U69 ( .A(B[9]), .B(A[9]), .Y(n13) );
  NAND3X2M U70 ( .A(n132), .B(n26), .C(n133), .Y(n131) );
  NAND2X1M U71 ( .A(B[7]), .B(A[7]), .Y(n133) );
  NAND2X1M U72 ( .A(B[4]), .B(A[4]), .Y(n138) );
  NAND2X1M U73 ( .A(n137), .B(n138), .Y(n136) );
  NOR2BX2M U74 ( .AN(n60), .B(n63), .Y(n62) );
  INVXLM U75 ( .A(n39), .Y(n42) );
  OAI211X2M U76 ( .A0(n76), .A1(n77), .B0(n78), .C0(n80), .Y(n72) );
  XNOR2X2M U77 ( .A(n127), .B(n128), .Y(SUM[10]) );
  NOR2BXLM U78 ( .AN(n117), .B(n124), .Y(n128) );
  NAND4XLM U79 ( .A(n13), .B(n84), .C(n85), .D(n86), .Y(n77) );
  OAI2B1XLM U80 ( .A1N(n115), .A0(n1), .B0(n84), .Y(n130) );
  OAI211XLM U81 ( .A0(n106), .A1(n107), .B0(n108), .C0(n109), .Y(n100) );
  CLKINVX2M U82 ( .A(n84), .Y(n18) );
  INVX2M U83 ( .A(n114), .Y(n15) );
  NAND2BX1M U84 ( .AN(n1), .B(n115), .Y(n114) );
  XNOR2XLM U85 ( .A(n15), .B(n16), .Y(SUM[8]) );
  NOR2BXLM U86 ( .AN(n17), .B(n18), .Y(n16) );
  NAND2XLM U87 ( .A(n28), .B(n29), .Y(n24) );
  NAND3XLM U88 ( .A(n87), .B(n30), .C(n31), .Y(n29) );
  NAND2XLM U89 ( .A(n134), .B(n135), .Y(n151) );
  NAND2XLM U90 ( .A(B[13]), .B(A[13]), .Y(n74) );
  OR2X1M U91 ( .A(B[12]), .B(A[12]), .Y(n88) );
  NAND2XLM U92 ( .A(B[11]), .B(A[11]), .Y(n80) );
  NAND2XLM U93 ( .A(B[10]), .B(A[10]), .Y(n117) );
  OR2X2M U94 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NAND4XLM U95 ( .A(n31), .B(n30), .C(n152), .D(B[7]), .Y(n149) );
  NAND2XLM U96 ( .A(n134), .B(n135), .Y(n152) );
  XNOR2X1M U97 ( .A(n24), .B(n27), .Y(SUM[6]) );
  OR2X1M U98 ( .A(B[4]), .B(A[4]), .Y(n30) );
  CLKINVX2M U99 ( .A(A[11]), .Y(n106) );
  CLKINVX2M U100 ( .A(A[10]), .Y(n121) );
  INVX2M U101 ( .A(n8), .Y(n7) );
  INVX2M U102 ( .A(B[11]), .Y(n107) );
  INVXLM U103 ( .A(n44), .Y(n51) );
  INVX2M U104 ( .A(B[10]), .Y(n120) );
  INVX2M U105 ( .A(n86), .Y(n81) );
  INVX2M U106 ( .A(n85), .Y(n124) );
  INVX2M U107 ( .A(B[21]), .Y(n8) );
  INVX2M U108 ( .A(n70), .Y(n92) );
  INVX2M U109 ( .A(n94), .Y(n96) );
  NOR2X2M U110 ( .A(n47), .B(n4), .Y(n46) );
  OAI2B1X2M U111 ( .A1N(n99), .A0(n100), .B0(n101), .Y(n98) );
  NAND2BX2M U112 ( .AN(B[16]), .B(n65), .Y(n56) );
  INVX2M U113 ( .A(n89), .Y(n102) );
  INVX2M U114 ( .A(n99), .Y(n83) );
  INVX2M U115 ( .A(n69), .Y(n93) );
  INVXLM U116 ( .A(n75), .Y(n95) );
  NAND2X2M U117 ( .A(n88), .B(n89), .Y(n71) );
  NAND2XLM U118 ( .A(n82), .B(n86), .Y(n109) );
  NOR2X2M U119 ( .A(n15), .B(n18), .Y(n113) );
  AOI2B1XLM U120 ( .A1N(n103), .A0(n100), .B0(n83), .Y(n104) );
  INVX2M U121 ( .A(n125), .Y(n127) );
  XNOR2X2M U122 ( .A(n9), .B(n10), .Y(SUM[9]) );
  NOR2BX2M U123 ( .AN(n11), .B(n12), .Y(n10) );
  INVX2M U124 ( .A(n14), .Y(n9) );
  INVX2M U125 ( .A(n13), .Y(n12) );
  AOI21X2M U126 ( .A0(n79), .A1(n87), .B0(n1), .Y(n76) );
  NAND2X2M U127 ( .A(n130), .B(n17), .Y(n14) );
  NAND3X2M U128 ( .A(n118), .B(n13), .C(n119), .Y(n116) );
  NAND2X2M U129 ( .A(n120), .B(n121), .Y(n119) );
  NAND2X4M U130 ( .A(n8), .B(n50), .Y(n48) );
  INVX4M U131 ( .A(A[19]), .Y(n50) );
  NOR2XLM U132 ( .A(A[20]), .B(n7), .Y(n35) );
  OR2X2M U133 ( .A(n28), .B(n5), .Y(n132) );
  AND2X1M U134 ( .A(n134), .B(n135), .Y(n5) );
  NAND2XLM U135 ( .A(n38), .B(n39), .Y(n37) );
  NAND2XLM U136 ( .A(A[20]), .B(n7), .Y(n38) );
  INVX2M U137 ( .A(n88), .Y(n103) );
  NAND2X2M U138 ( .A(n142), .B(n141), .Y(n140) );
  INVX2M U139 ( .A(B[3]), .Y(n142) );
  INVX2M U140 ( .A(n22), .Y(n21) );
  INVX2M U141 ( .A(A[2]), .Y(n146) );
  NAND2X1M U142 ( .A(B[15]), .B(A[15]), .Y(n68) );
  AND2X1M U143 ( .A(B[16]), .B(A[16]), .Y(n6) );
  NAND2XLM U144 ( .A(B[6]), .B(A[6]), .Y(n26) );
  AOI21XLM U145 ( .A0(n82), .A1(n86), .B0(n112), .Y(n110) );
  AOI21XLM U146 ( .A0(B[12]), .A1(A[12]), .B0(n103), .Y(n111) );
  NAND2XLM U147 ( .A(n80), .B(n108), .Y(n112) );
  XNOR2X2M U148 ( .A(n122), .B(n123), .Y(SUM[11]) );
  AOI21XLM U149 ( .A0(B[11]), .A1(A[11]), .B0(n81), .Y(n123) );
  INVX2M U150 ( .A(n117), .Y(n126) );
  OR2X1M U151 ( .A(B[8]), .B(A[8]), .Y(n84) );
  CLKNAND2X2M U152 ( .A(n136), .B(n31), .Y(n28) );
  NAND2XLM U153 ( .A(B[5]), .B(A[5]), .Y(n137) );
  OAI21X2M U154 ( .A0(n141), .A1(n142), .B0(n143), .Y(n87) );
  NAND3X2M U155 ( .A(n144), .B(n139), .C(n140), .Y(n143) );
  NAND2X2M U156 ( .A(n145), .B(n146), .Y(n139) );
  NAND2X2M U157 ( .A(n147), .B(n148), .Y(n144) );
  XNOR2X2M U158 ( .A(n19), .B(n20), .Y(SUM[7]) );
  AOI2B1X1M U159 ( .A1N(n23), .A0(n24), .B0(n25), .Y(n19) );
  AOI21XLM U160 ( .A0(B[7]), .A1(A[7]), .B0(n21), .Y(n20) );
  NOR2XLM U161 ( .A(B[6]), .B(A[6]), .Y(n23) );
  OAI21XLM U162 ( .A0(B[6]), .A1(A[6]), .B0(n26), .Y(n27) );
  NAND2XLM U163 ( .A(B[2]), .B(A[2]), .Y(n148) );
  INVXLM U164 ( .A(B[2]), .Y(n145) );
  INVX2M U165 ( .A(A[16]), .Y(n65) );
  INVX2M U166 ( .A(A[6]), .Y(n134) );
  INVX2M U167 ( .A(A[3]), .Y(n141) );
  NAND2XLM U168 ( .A(B[1]), .B(A[1]), .Y(n147) );
  AOI21X8M U169 ( .A0(n58), .A1(n57), .B0(n59), .Y(n53) );
endmodule


module up4_filter_1_DW01_add_24 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161;

  XNOR2X2M U2 ( .A(n8), .B(n34), .Y(n33) );
  NAND2XLM U3 ( .A(B[18]), .B(A[18]), .Y(n51) );
  INVXLM U4 ( .A(n89), .Y(n68) );
  INVX2M U5 ( .A(A[18]), .Y(n81) );
  NAND2X2M U6 ( .A(n44), .B(n45), .Y(n58) );
  OAI21X2M U7 ( .A0(n68), .A1(n84), .B0(n85), .Y(n82) );
  AOI2B1XLM U8 ( .A1N(n86), .A0(n87), .B0(n71), .Y(n85) );
  XNOR2X2M U9 ( .A(n5), .B(n20), .Y(SUM[7]) );
  AO21XLM U10 ( .A0(n23), .A1(n24), .B0(n25), .Y(n5) );
  INVX2M U11 ( .A(B[19]), .Y(n44) );
  OR2X2M U12 ( .A(B[10]), .B(A[10]), .Y(n137) );
  NAND2X2M U13 ( .A(n145), .B(n146), .Y(n135) );
  OR2X2M U14 ( .A(B[7]), .B(A[7]), .Y(n22) );
  NAND2X2M U15 ( .A(B[11]), .B(A[11]), .Y(n141) );
  NAND2X2M U16 ( .A(n94), .B(n95), .Y(n89) );
  NAND2X2M U17 ( .A(n6), .B(n96), .Y(n95) );
  NAND3BX2M U18 ( .AN(n97), .B(n98), .C(n99), .Y(n96) );
  INVX2M U19 ( .A(A[20]), .Y(n46) );
  OR2X2M U20 ( .A(B[6]), .B(A[6]), .Y(n23) );
  XNOR2X2M U21 ( .A(n90), .B(n82), .Y(SUM[17]) );
  AOI2B1X1M U22 ( .A1N(n65), .A0(n48), .B0(n66), .Y(n63) );
  OAI21X2M U23 ( .A0(n62), .A1(n67), .B0(n51), .Y(n66) );
  CLKNAND2X2M U24 ( .A(B[14]), .B(A[14]), .Y(n94) );
  AND2X2M U25 ( .A(n151), .B(n12), .Y(n1) );
  AND2X2M U26 ( .A(n127), .B(n112), .Y(n2) );
  AND2X2M U27 ( .A(B[2]), .B(A[2]), .Y(n3) );
  NOR2X1M U28 ( .A(n56), .B(n62), .Y(n61) );
  INVX4M U29 ( .A(n42), .Y(n62) );
  OAI2B1X2M U30 ( .A1N(n125), .A0(n2), .B0(n99), .Y(n123) );
  NOR2BX1M U31 ( .AN(n51), .B(n62), .Y(n80) );
  AOI2B1X2M U32 ( .A1N(n47), .A0(n82), .B0(n7), .Y(n79) );
  NAND2BX2M U33 ( .AN(B[18]), .B(n81), .Y(n42) );
  XNOR2X2M U34 ( .A(n52), .B(n53), .Y(SUM[20]) );
  INVX2M U35 ( .A(B[11]), .Y(n145) );
  NAND2X1M U36 ( .A(B[19]), .B(A[19]), .Y(n37) );
  NAND2BX2M U37 ( .AN(n132), .B(n133), .Y(n128) );
  NAND2X1M U38 ( .A(n156), .B(n157), .Y(n155) );
  INVX1M U39 ( .A(n9), .Y(n8) );
  NAND4XLM U40 ( .A(n23), .B(n22), .C(n30), .D(n31), .Y(n105) );
  NAND2BX2M U41 ( .AN(n28), .B(n23), .Y(n154) );
  NAND2X1M U42 ( .A(n75), .B(n87), .Y(n84) );
  NAND2XLM U43 ( .A(B[8]), .B(A[8]), .Y(n18) );
  NAND2XLM U44 ( .A(B[5]), .B(A[5]), .Y(n156) );
  CLKNAND2X2M U45 ( .A(n117), .B(n118), .Y(n125) );
  NAND3X1M U46 ( .A(n154), .B(n26), .C(n21), .Y(n153) );
  NAND2XLM U47 ( .A(n122), .B(n123), .Y(n121) );
  OR2X2M U48 ( .A(B[15]), .B(A[15]), .Y(n75) );
  CLKNAND2X2M U49 ( .A(B[15]), .B(A[15]), .Y(n93) );
  OAI21X1M U50 ( .A0(A[15]), .A1(B[15]), .B0(n93), .Y(n119) );
  NAND2X1M U51 ( .A(A[15]), .B(B[15]), .Y(n86) );
  INVXLM U52 ( .A(n104), .Y(n106) );
  XNOR2X2M U53 ( .A(n119), .B(n120), .Y(SUM[15]) );
  OR2X1M U54 ( .A(B[17]), .B(A[17]), .Y(n60) );
  NAND2XLM U55 ( .A(B[17]), .B(A[17]), .Y(n83) );
  XNOR2X2M U56 ( .A(n63), .B(n64), .Y(SUM[19]) );
  NOR2X1M U57 ( .A(n40), .B(n41), .Y(n35) );
  XNOR2X2M U58 ( .A(n8), .B(n46), .Y(n53) );
  AO21X2M U59 ( .A0(n75), .A1(n89), .B0(n92), .Y(n4) );
  NAND2X2M U60 ( .A(n115), .B(n116), .Y(n114) );
  NOR2X1M U61 ( .A(n16), .B(n104), .Y(n134) );
  INVXLM U62 ( .A(n14), .Y(n13) );
  XOR2XLM U63 ( .A(n2), .B(n126), .Y(SUM[13]) );
  NAND2XLM U64 ( .A(n115), .B(n116), .Y(n122) );
  INVXLM U65 ( .A(n135), .Y(n111) );
  NAND2XLM U66 ( .A(B[16]), .B(A[16]), .Y(n88) );
  NAND2X1M U67 ( .A(B[9]), .B(A[9]), .Y(n12) );
  OAI2BB2XLM U68 ( .B0(n160), .B1(n161), .A0N(n158), .A1N(n3), .Y(n159) );
  NAND2X1M U69 ( .A(n161), .B(n160), .Y(n158) );
  CLKNAND2X2M U70 ( .A(n9), .B(n46), .Y(n39) );
  OAI2B1X2M U71 ( .A1N(n159), .A0(n105), .B0(n109), .Y(n152) );
  OAI21X2M U72 ( .A0(n68), .A1(n69), .B0(n70), .Y(n48) );
  NOR2XLM U73 ( .A(n71), .B(n72), .Y(n70) );
  NAND2XLM U74 ( .A(n77), .B(n78), .Y(n76) );
  NOR2BXLM U75 ( .AN(n37), .B(n56), .Y(n64) );
  OAI21XLM U76 ( .A0(n56), .A1(n51), .B0(n57), .Y(n55) );
  NOR2X2M U77 ( .A(n54), .B(n55), .Y(n52) );
  OAI2B1X1M U78 ( .A1N(n39), .A0(n37), .B0(n38), .Y(n36) );
  NAND2XLM U79 ( .A(n88), .B(n87), .Y(n91) );
  XNOR2X2M U80 ( .A(n4), .B(n91), .Y(SUM[16]) );
  NAND2XLM U81 ( .A(n125), .B(n99), .Y(n126) );
  NOR2BXLM U82 ( .AN(n112), .B(n110), .Y(n131) );
  NAND2XLM U83 ( .A(n14), .B(n15), .Y(n151) );
  NAND2X2M U84 ( .A(n138), .B(n135), .Y(n103) );
  NAND3X1M U85 ( .A(n139), .B(n140), .C(n141), .Y(n138) );
  NAND2X2M U86 ( .A(n128), .B(n129), .Y(n127) );
  NOR2BXLM U87 ( .AN(n18), .B(n19), .Y(n17) );
  XNOR2XLM U88 ( .A(n27), .B(n24), .Y(SUM[6]) );
  INVXLM U89 ( .A(n15), .Y(n10) );
  OAI21XLM U90 ( .A0(n108), .A1(n105), .B0(n109), .Y(n107) );
  NAND3XLM U91 ( .A(n159), .B(n30), .C(n31), .Y(n29) );
  NAND2XLM U92 ( .A(n94), .B(n121), .Y(n120) );
  NAND2XLM U93 ( .A(A[17]), .B(B[17]), .Y(n67) );
  NOR2X1M U94 ( .A(n73), .B(n74), .Y(n72) );
  NOR2XLM U95 ( .A(A[16]), .B(B[16]), .Y(n73) );
  NAND2XLM U96 ( .A(n50), .B(n51), .Y(n49) );
  NAND2XLM U97 ( .A(B[12]), .B(A[12]), .Y(n112) );
  OR2X1M U98 ( .A(B[12]), .B(A[12]), .Y(n129) );
  OR2X1M U99 ( .A(B[8]), .B(A[8]), .Y(n136) );
  OR2X2M U100 ( .A(B[9]), .B(A[9]), .Y(n14) );
  NAND2XLM U101 ( .A(B[7]), .B(A[7]), .Y(n21) );
  NAND2XLM U102 ( .A(B[6]), .B(A[6]), .Y(n26) );
  CLKINVX2M U103 ( .A(A[14]), .Y(n116) );
  CLKINVX2M U104 ( .A(A[13]), .Y(n118) );
  INVX2M U105 ( .A(n58), .Y(n56) );
  NOR2X2M U106 ( .A(n149), .B(n1), .Y(n148) );
  INVX2M U107 ( .A(n152), .Y(n16) );
  NAND2X2M U108 ( .A(n100), .B(n101), .Y(n98) );
  NOR2X2M U109 ( .A(n110), .B(n111), .Y(n100) );
  NAND2X2M U110 ( .A(n102), .B(n103), .Y(n101) );
  NAND2X2M U111 ( .A(n106), .B(n107), .Y(n102) );
  INVX2M U112 ( .A(B[21]), .Y(n9) );
  NAND2X2M U113 ( .A(n75), .B(n76), .Y(n69) );
  NAND2X2M U114 ( .A(n83), .B(n60), .Y(n90) );
  NAND2X2M U115 ( .A(n8), .B(A[20]), .Y(n38) );
  INVX2M U116 ( .A(n93), .Y(n92) );
  XNOR2X2M U117 ( .A(n123), .B(n124), .Y(SUM[14]) );
  NAND2X2M U118 ( .A(n122), .B(n94), .Y(n124) );
  NAND2X2M U119 ( .A(n60), .B(n42), .Y(n65) );
  NAND2X2M U120 ( .A(n77), .B(n78), .Y(n87) );
  NAND3XLM U121 ( .A(n39), .B(n42), .C(n43), .Y(n41) );
  AOI2B1XLM U122 ( .A1N(n47), .A0(n48), .B0(n49), .Y(n40) );
  NAND2XLM U123 ( .A(n44), .B(n45), .Y(n43) );
  XNOR2X2M U124 ( .A(n79), .B(n80), .Y(SUM[18]) );
  NAND3X2M U125 ( .A(n142), .B(n14), .C(n137), .Y(n139) );
  NAND2X2M U126 ( .A(n18), .B(n12), .Y(n142) );
  NAND2XLM U127 ( .A(n59), .B(n37), .Y(n54) );
  NAND3XLM U128 ( .A(n48), .B(n60), .C(n61), .Y(n59) );
  NAND3X2M U129 ( .A(n14), .B(n136), .C(n137), .Y(n104) );
  NAND2XLM U130 ( .A(n134), .B(n135), .Y(n133) );
  INVXLM U131 ( .A(n103), .Y(n132) );
  AND2X2M U132 ( .A(n113), .B(n114), .Y(n6) );
  INVX2M U133 ( .A(B[14]), .Y(n115) );
  INVX2M U134 ( .A(n88), .Y(n71) );
  INVX2M U135 ( .A(B[16]), .Y(n77) );
  INVX2M U136 ( .A(n60), .Y(n47) );
  OAI21XLM U137 ( .A0(n16), .A1(n19), .B0(n18), .Y(n15) );
  XNOR2X2M U138 ( .A(n143), .B(n144), .Y(SUM[11]) );
  NOR2BX2M U139 ( .AN(n141), .B(n111), .Y(n144) );
  NOR2X2M U140 ( .A(n147), .B(n148), .Y(n143) );
  INVX2M U141 ( .A(n140), .Y(n147) );
  XNOR2X2M U142 ( .A(n130), .B(n131), .Y(SUM[12]) );
  INVXLM U143 ( .A(n128), .Y(n130) );
  XNOR2X2M U144 ( .A(n1), .B(n150), .Y(SUM[10]) );
  NOR2BX2M U145 ( .AN(n140), .B(n149), .Y(n150) );
  XNOR2XLM U146 ( .A(n16), .B(n17), .Y(SUM[8]) );
  XNOR2X2M U147 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2BX2M U148 ( .AN(n12), .B(n13), .Y(n11) );
  NAND2X2M U149 ( .A(n153), .B(n22), .Y(n109) );
  INVX2M U150 ( .A(B[13]), .Y(n117) );
  INVX2M U151 ( .A(n137), .Y(n149) );
  INVX2M U152 ( .A(n136), .Y(n19) );
  INVX2M U153 ( .A(n129), .Y(n110) );
  CLKNAND2X2M U154 ( .A(n117), .B(n118), .Y(n113) );
  INVX2M U155 ( .A(n112), .Y(n97) );
  INVX2M U156 ( .A(n26), .Y(n25) );
  NAND2X2M U157 ( .A(n23), .B(n26), .Y(n27) );
  NAND2X2M U158 ( .A(n28), .B(n29), .Y(n24) );
  NAND2X2M U159 ( .A(n21), .B(n22), .Y(n20) );
  INVX2M U160 ( .A(A[19]), .Y(n45) );
  XNOR2X2M U161 ( .A(n32), .B(n33), .Y(SUM[21]) );
  NOR2X2M U162 ( .A(n35), .B(n36), .Y(n32) );
  INVX2M U163 ( .A(A[21]), .Y(n34) );
  NAND2XLM U164 ( .A(A[15]), .B(B[15]), .Y(n74) );
  NAND2XLM U165 ( .A(B[17]), .B(A[17]), .Y(n50) );
  NAND3XLM U166 ( .A(n7), .B(n42), .C(n58), .Y(n57) );
  AND2X1M U167 ( .A(B[17]), .B(A[17]), .Y(n7) );
  OR2X2M U168 ( .A(B[5]), .B(A[5]), .Y(n31) );
  INVX2M U169 ( .A(A[11]), .Y(n146) );
  NAND2X2M U170 ( .A(B[13]), .B(A[13]), .Y(n99) );
  NAND2X2M U171 ( .A(B[10]), .B(A[10]), .Y(n140) );
  NAND2X2M U172 ( .A(n155), .B(n31), .Y(n28) );
  NAND2X2M U173 ( .A(B[4]), .B(A[4]), .Y(n157) );
  OR2X2M U174 ( .A(B[4]), .B(A[4]), .Y(n30) );
  INVXLM U175 ( .A(B[3]), .Y(n161) );
  INVX2M U176 ( .A(n159), .Y(n108) );
  INVX2M U177 ( .A(A[16]), .Y(n78) );
  INVX2M U178 ( .A(A[3]), .Y(n160) );
endmodule


module up4_filter_1 ( clk, rst_n, in_data, b0, b1, b2, b3 );
  input [15:0] in_data;
  output [15:0] b0;
  output [15:0] b1;
  output [15:0] b2;
  output [15:0] b3;
  input clk, rst_n;
  wire   N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192,
         N193, N194, N195, N99, N98, N97, N96, N95, N94, N93, N92, N91, N137,
         N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122,
         N121, N120, N119, N118, N117, N116, N115, N114, N113, N108, N107,
         N106, N105, N104, N103, N102, N101, N100, N327, N326, N325, N324,
         N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, N313,
         N312, N311, N310, N309, N308, N282, N281, N279, N277, N276, N275,
         N274, N273, N272, N271, N270, N269, N9, N88, N87, N86, N85, N84, N83,
         N82, N81, N80, N8, N79, N78, N77, N76, N75, N74, N73, N72, N71, N70,
         N7, N69, N68, N67, N60, N6, N59, N58, N57, N56, N55, N54, N53, N52,
         N51, N50, N5, N49, N48, N47, N46, N45, N42, N41, N40, N4, N39, N38,
         N37, N36, N35, N34, N33, N32, N31, N30, N3, N29, N28, N27, N26, N25,
         N24, N23, N22, N21, N20, N2, N19, N18, N17, N16, N15, N14, N13, N12,
         N11, N10, N1, N262, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243,
         N242, N240, N239, N238, N237, N236, N235, N234, N233, N232, N231,
         N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N199, N157, N156, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337;
  wire   [15:0] x_n1;
  wire   [15:0] x_n3;
  wire   [15:0] x_n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31;
  assign N157 = in_data[1];
  assign N156 = in_data[0];

  up4_filter_1_DW01_add_2 add_1_root_add_0_root_add_34_4 ( .A({n151, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, n42, n11, n150, n149, 1'b0, 1'b0, 1'b0}), .B({n155, n155, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, 
        N95, N94, N93, n135, n127, 1'b0, 1'b0}), .CI(1'b0), .SUM({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1}) );
  up4_filter_1_DW01_add_6 add_1_root_add_0_root_add_42_4 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], x_n2[15], n148, n147, n146, n145, n144, 
        n143, n142, n141, n140, n139, n138, n137, n136, n135, n127, 1'b0, 1'b0}), .B({n152, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, n42, n11, n150, n149, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, 
        N316, N315, N314, N313, N312, N311, N310, N309, N308, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  up4_filter_1_DW01_add_10 add_2_root_sub_0_root_add_30_3 ( .A({x_n2[15], 
        x_n2[15], n148, n147, n146, n145, n144, n143, n142, n141, n140, n139, 
        n138, n137, n136, n135, n127, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n128, 
        n128, n128, n128, n128, n128, N60, N59, N58, N57, N56, N55, N54, N53, 
        N52, N51, N50, N49, N48, N47, N46, N45}), .CI(1'b0), .SUM({N22, N21, 
        N20, N19, N18, N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3, N2, N1}) );
  up4_filter_1_DW01_add_9 add_1_root_sub_0_root_add_30_3 ( .A({n151, n151, N42, 
        N41, N40, N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, 
        N27, N26, N25, N24, n149}), .B({N22, N21, N20, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1}), .CI(
        1'b0), .SUM({N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  up4_filter_1_DW01_add_14 add_3_root_add_0_root_add_38_6 ( .A({n151, n151, 
        n151, n152, n152, x_n1[14:2], n150, n149, 1'b0, 1'b0}), .B({n155, n155, 
        n155, n155, n148, n147, n146, n145, n144, n143, n142, n141, n140, n139, 
        n138, n137, n136, n135, n127, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5}) );
  up4_filter_1_DW01_add_13 add_2_root_add_0_root_add_38_6 ( .A({x_n2[15], 
        x_n2[15], x_n2[15], x_n2[15], x_n2[15], x_n2[15], n148, n147, n146, 
        n145, n144, n143, n142, n141, n140, n139, n138, n137, n136, n135, n127, 
        1'b0}), .B({n152, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183, N182, n42, n11, n150, n149, 1'b0, 1'b0, 1'b0}), 
        .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, 
        N253, N252, N251, N250, N249, N248, N247, N246, N245, N244, N243, N242, 
        SYNOPSYS_UNCONNECTED__6}) );
  up4_filter_1_DW01_add_12 add_1_root_add_0_root_add_38_6 ( .A({N218, N217, 
        N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, 
        N204, N203, N202, N201, N200, N199, 1'b0, 1'b0}), .B({N262, N261, N260, 
        N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248, 
        N247, N246, N245, N244, N243, N242, 1'b0}), .CI(1'b0), .SUM({N240, 
        N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, 
        SYNOPSYS_UNCONNECTED__7}) );
  up4_filter_1_DW01_add_23 add_0_root_add_0_root_add_34_4 ( .A({N132, N131, 
        N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115, N114, N113, 1'b0, 1'b0}), .B({n157, n157, n157, 
        n157, n157, in_data[14], n16, in_data[12:9], n15, in_data[7:5], n154, 
        n25, in_data[2], N157, N156, 1'b0, 1'b0}), .CI(1'b0), .SUM({b1, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13}) );
  up4_filter_1_DW01_add_21 add_0_root_sub_0_root_add_30_3 ( .A({N88, N87, N86, 
        N85, N84, N83, N82, N81, N80, N79, N78, N77, N76, N75, N74, N73, N72, 
        N71, N70, N69, N68, N67}), .B({n157, n157, n157, n157, n157, n157, 
        n157, in_data[14], n16, in_data[12:9], n15, in_data[7], n134, 
        in_data[5], n154, n153, in_data[2], N157, N156}), .CI(1'b0), .SUM({b0, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  up4_filter_1_DW01_add_17 add_0_root_add_0_root_add_38_6 ( .A({N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, 
        N226, N225, N224, N223, N222, N221, N220, 1'b0}), .B({n157, n157, n157, 
        N282, N281, n29, N279, n12, N277, N276, N275, N274, N273, N272, N271, 
        N270, N269, n72, n14, N157, N156, 1'b0}), .CI(1'b0), .SUM({b2, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25}) );
  up4_filter_1_DW01_add_24 add_0_root_add_0_root_add_42_4 ( .A({N327, N326, 
        N325, N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, 1'b0, 1'b0}), .B({n157, n157, N282, 
        N281, n29, N279, n12, N277, N276, N275, N274, N273, N272, N271, N270, 
        N269, n72, n14, N157, N156, 1'b0, 1'b0}), .CI(1'b0), .SUM({b3, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31}) );
  DFFRQX2M \x_n2_reg[14]  ( .D(x_n1[14]), .CK(clk), .RN(n162), .Q(x_n2[14]) );
  DFFRQX2M \x_n3_reg[14]  ( .D(n148), .CK(clk), .RN(n162), .Q(x_n3[14]) );
  DFFRQX2M \x_n3_reg[15]  ( .D(n155), .CK(clk), .RN(n162), .Q(x_n3[15]) );
  DFFRQX2M \x_n1_reg[15]  ( .D(n157), .CK(clk), .RN(n161), .Q(x_n1[15]) );
  DFFRQX2M \x_n2_reg[15]  ( .D(n152), .CK(clk), .RN(n162), .Q(x_n2[15]) );
  DFFRQX2M \x_n1_reg[14]  ( .D(in_data[14]), .CK(clk), .RN(n161), .Q(x_n1[14])
         );
  DFFRQX2M \x_n3_reg[12]  ( .D(n146), .CK(clk), .RN(n162), .Q(x_n3[12]) );
  DFFRQX2M \x_n3_reg[11]  ( .D(n145), .CK(clk), .RN(n162), .Q(x_n3[11]) );
  DFFRQX2M \x_n2_reg[13]  ( .D(x_n1[13]), .CK(clk), .RN(n162), .Q(x_n2[13]) );
  DFFRQX2M \x_n2_reg[12]  ( .D(x_n1[12]), .CK(clk), .RN(n162), .Q(x_n2[12]) );
  DFFRQX2M \x_n2_reg[11]  ( .D(x_n1[11]), .CK(clk), .RN(n162), .Q(x_n2[11]) );
  DFFRQX2M \x_n3_reg[13]  ( .D(n147), .CK(clk), .RN(n162), .Q(x_n3[13]) );
  DFFRQX2M \x_n1_reg[13]  ( .D(n16), .CK(clk), .RN(n161), .Q(x_n1[13]) );
  DFFRQX2M \x_n1_reg[12]  ( .D(in_data[12]), .CK(clk), .RN(n161), .Q(x_n1[12])
         );
  DFFRQX2M \x_n3_reg[8]  ( .D(n142), .CK(clk), .RN(n163), .Q(x_n3[8]) );
  DFFRQX2M \x_n3_reg[7]  ( .D(n141), .CK(clk), .RN(n163), .Q(x_n3[7]) );
  DFFRQX2M \x_n3_reg[6]  ( .D(n140), .CK(clk), .RN(n163), .Q(x_n3[6]) );
  DFFRQX2M \x_n2_reg[10]  ( .D(x_n1[10]), .CK(clk), .RN(n163), .Q(x_n2[10]) );
  DFFRQX2M \x_n2_reg[7]  ( .D(x_n1[7]), .CK(clk), .RN(n163), .Q(x_n2[7]) );
  DFFRQX2M \x_n3_reg[10]  ( .D(n144), .CK(clk), .RN(n163), .Q(x_n3[10]) );
  DFFRQX2M \x_n3_reg[9]  ( .D(n143), .CK(clk), .RN(n163), .Q(x_n3[9]) );
  DFFRQX2M \x_n3_reg[5]  ( .D(n139), .CK(clk), .RN(n163), .Q(x_n3[5]) );
  DFFRQX2M \x_n2_reg[9]  ( .D(x_n1[9]), .CK(clk), .RN(n163), .Q(x_n2[9]) );
  DFFRQX2M \x_n1_reg[9]  ( .D(in_data[9]), .CK(clk), .RN(n161), .Q(x_n1[9]) );
  DFFRQX2M \x_n1_reg[11]  ( .D(in_data[11]), .CK(clk), .RN(n161), .Q(x_n1[11])
         );
  DFFRQX2M \x_n1_reg[7]  ( .D(in_data[7]), .CK(clk), .RN(n161), .Q(x_n1[7]) );
  DFFRQX2M \x_n1_reg[8]  ( .D(n15), .CK(clk), .RN(n161), .Q(x_n1[8]) );
  DFFRQX2M \x_n1_reg[10]  ( .D(in_data[10]), .CK(clk), .RN(n161), .Q(x_n1[10])
         );
  DFFRQX2M \x_n3_reg[3]  ( .D(n137), .CK(clk), .RN(n164), .Q(x_n3[3]) );
  DFFRQX2M \x_n3_reg[4]  ( .D(n138), .CK(clk), .RN(n164), .Q(x_n3[4]) );
  DFFRQX2M \x_n1_reg[1]  ( .D(N157), .CK(clk), .RN(n162), .Q(N137) );
  DFFRQX2M \x_n1_reg[0]  ( .D(N156), .CK(clk), .RN(n162), .Q(N23) );
  DFFRQX2M \x_n3_reg[2]  ( .D(n136), .CK(clk), .RN(n164), .Q(x_n3[2]) );
  DFFRQX2M \x_n1_reg[3]  ( .D(n25), .CK(clk), .RN(n161), .Q(x_n1[3]) );
  DFFRQX2M \x_n1_reg[4]  ( .D(n154), .CK(clk), .RN(n161), .Q(x_n1[4]) );
  DFFRQX2M \x_n1_reg[5]  ( .D(in_data[5]), .CK(clk), .RN(n161), .Q(x_n1[5]) );
  DFFRQX2M \x_n3_reg[1]  ( .D(n135), .CK(clk), .RN(n164), .Q(x_n3[1]) );
  DFFRQX2M \x_n1_reg[6]  ( .D(n134), .CK(clk), .RN(n161), .Q(x_n1[6]) );
  DFFRQX2M \x_n2_reg[2]  ( .D(x_n1[2]), .CK(clk), .RN(n164), .Q(x_n2[2]) );
  DFFRQX2M \x_n2_reg[5]  ( .D(x_n1[5]), .CK(clk), .RN(n163), .Q(x_n2[5]) );
  DFFRQX2M \x_n2_reg[4]  ( .D(x_n1[4]), .CK(clk), .RN(n163), .Q(x_n2[4]) );
  DFFRQX2M \x_n2_reg[8]  ( .D(x_n1[8]), .CK(clk), .RN(n163), .Q(x_n2[8]) );
  DFFRQX2M \x_n2_reg[3]  ( .D(x_n1[3]), .CK(clk), .RN(n164), .Q(x_n2[3]) );
  DFFRQX2M \x_n3_reg[0]  ( .D(n127), .CK(clk), .RN(n164), .Q(x_n3[0]) );
  DFFRQX2M \x_n2_reg[0]  ( .D(n149), .CK(clk), .RN(n164), .Q(N91) );
  DFFRQX2M \x_n2_reg[6]  ( .D(x_n1[6]), .CK(clk), .RN(n163), .Q(x_n2[6]) );
  DFFRQX2M \x_n2_reg[1]  ( .D(n150), .CK(clk), .RN(n164), .Q(N92) );
  DFFRHQX4M \x_n1_reg[2]  ( .D(in_data[2]), .CK(clk), .RN(n162), .Q(x_n1[2])
         );
  OR2X2M U3 ( .A(in_data[7]), .B(in_data[9]), .Y(n238) );
  NAND2X2M U4 ( .A(n241), .B(n243), .Y(n1) );
  INVX2M U5 ( .A(n69), .Y(n2) );
  NAND2X2M U6 ( .A(n1), .B(n2), .Y(n240) );
  OAI2BB1X2M U7 ( .A0N(in_data[7]), .A1N(in_data[5]), .B0(n68), .Y(n243) );
  NOR2BXLM U8 ( .AN(in_data[6]), .B(n242), .Y(n69) );
  INVX2M U9 ( .A(n240), .Y(n18) );
  NAND2X2M U10 ( .A(n3), .B(n4), .Y(n5) );
  CLKNAND2X4M U11 ( .A(n5), .B(n246), .Y(n30) );
  INVX2M U12 ( .A(in_data[5]), .Y(n3) );
  INVXLM U13 ( .A(n153), .Y(n4) );
  BUFX8M U14 ( .A(in_data[3]), .Y(n153) );
  OAI2BB1X2M U15 ( .A0N(in_data[2]), .A1N(n154), .B0(n204), .Y(n246) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(n8) );
  CLKNAND2X4M U17 ( .A(n8), .B(n244), .Y(n68) );
  INVXLM U18 ( .A(in_data[5]), .Y(n6) );
  INVX2M U19 ( .A(in_data[7]), .Y(n7) );
  INVX4M U20 ( .A(n135), .Y(n305) );
  XOR3X1M U21 ( .A(x_n3[1]), .B(n135), .C(n336), .Y(N46) );
  BUFX10M U22 ( .A(N92), .Y(n135) );
  OAI2B1X4M U23 ( .A1N(x_n3[5]), .A0(n139), .B0(n103), .Y(n328) );
  OAI2BB1X4M U24 ( .A0N(n35), .A1N(n139), .B0(n330), .Y(n103) );
  OAI2B1X4M U25 ( .A1N(x_n3[4]), .A0(n138), .B0(n93), .Y(n330) );
  OAI2BB1X4M U26 ( .A0N(n32), .A1N(n138), .B0(n331), .Y(n93) );
  OAI2B1X4M U27 ( .A1N(x_n3[3]), .A0(n137), .B0(n97), .Y(n331) );
  INVXLM U28 ( .A(n149), .Y(n304) );
  XOR2X1M U29 ( .A(n149), .B(x_n1[2]), .Y(n11) );
  CLKINVX3M U30 ( .A(n238), .Y(n17) );
  CLKINVX8M U31 ( .A(n136), .Y(n306) );
  XOR3X1M U32 ( .A(x_n3[2]), .B(n136), .C(n334), .Y(N47) );
  BUFX10M U33 ( .A(x_n2[2]), .Y(n136) );
  XNOR3X2M U34 ( .A(x_n1[3]), .B(n150), .C(n199), .Y(n42) );
  AOI2BB1X2M U35 ( .A0N(x_n1[3]), .A1N(n150), .B0(n199), .Y(n165) );
  XNOR2X2M U36 ( .A(n150), .B(n304), .Y(N24) );
  BUFX10M U37 ( .A(N137), .Y(n150) );
  XOR3X1M U38 ( .A(n137), .B(n135), .C(n83), .Y(N94) );
  XNOR3X2M U39 ( .A(x_n3[3]), .B(n137), .C(n332), .Y(N48) );
  BUFX8M U40 ( .A(x_n2[3]), .Y(n137) );
  NAND2BX4M U41 ( .AN(n304), .B(x_n1[2]), .Y(n199) );
  XOR3X4M U42 ( .A(x_n1[4]), .B(x_n1[2]), .C(n198), .Y(N182) );
  OAI21X1M U43 ( .A0(x_n1[4]), .A1(x_n1[2]), .B0(n198), .Y(n122) );
  BUFX3M U44 ( .A(N91), .Y(n127) );
  OAI2BB1XLM U45 ( .A0N(n150), .A1N(n266), .B0(n73), .Y(n295) );
  OAI21XLM U46 ( .A0(n150), .A1(n266), .B0(n296), .Y(n73) );
  OR2X1M U47 ( .A(n150), .B(n149), .Y(n302) );
  MX2X2M U48 ( .A(n125), .B(n279), .S0(n170), .Y(N193) );
  XOR3XLM U49 ( .A(n155), .B(n148), .C(n253), .Y(N107) );
  XOR3XLM U50 ( .A(x_n3[12]), .B(n146), .C(n321), .Y(N57) );
  NAND2X4M U51 ( .A(n50), .B(n201), .Y(n247) );
  OAI21X4M U52 ( .A0(n153), .A1(N157), .B0(n200), .Y(n201) );
  XOR3XLM U53 ( .A(x_n1[6]), .B(x_n1[11]), .C(n290), .Y(N34) );
  INVX4M U54 ( .A(n67), .Y(N279) );
  MXI2X2M U55 ( .A(n221), .B(n220), .S0(n219), .Y(n67) );
  AO21XLM U56 ( .A0(n168), .A1(n167), .B0(n92), .Y(N195) );
  AO21XLM U57 ( .A0(n155), .A1(n148), .B0(n252), .Y(N108) );
  XNOR2XLM U58 ( .A(in_data[14]), .B(n157), .Y(n210) );
  CLKINVX2M U59 ( .A(n206), .Y(n207) );
  OR2X4M U60 ( .A(x_n3[0]), .B(n337), .Y(n335) );
  INVX2M U61 ( .A(n140), .Y(n308) );
  AO21X4M U62 ( .A0(n189), .A1(n191), .B0(n84), .Y(n188) );
  OAI2B1X2M U63 ( .A1N(x_n3[12]), .A0(n146), .B0(n100), .Y(n319) );
  OR2X1M U64 ( .A(in_data[6]), .B(in_data[8]), .Y(n241) );
  NAND2BX2M U65 ( .AN(in_data[9]), .B(n232), .Y(n230) );
  AO21XLM U66 ( .A0(x_n1[6]), .A1(n271), .B0(n46), .Y(n287) );
  OR2X2M U67 ( .A(in_data[11]), .B(in_data[13]), .Y(n222) );
  OR2X2M U68 ( .A(in_data[10]), .B(in_data[12]), .Y(n226) );
  XOR3XLM U69 ( .A(x_n3[14]), .B(n148), .C(n318), .Y(N59) );
  AO21X4M U70 ( .A0(x_n3[14]), .A1(n311), .B0(n44), .Y(n314) );
  INVX1M U71 ( .A(in_data[13]), .Y(n224) );
  AO21X2M U72 ( .A0(n147), .A1(n145), .B0(n250), .Y(n255) );
  OA21X2M U73 ( .A0(n147), .A1(n145), .B0(n256), .Y(n250) );
  OAI21BX4M U74 ( .A0(n17), .A1(n18), .B0N(n129), .Y(n237) );
  XOR3XLM U75 ( .A(x_n1[8]), .B(x_n1[13]), .C(n286), .Y(N36) );
  OAI21X4M U76 ( .A0(in_data[2]), .A1(n154), .B0(n247), .Y(n204) );
  OAI2BB1X2M U77 ( .A0N(n305), .A1N(x_n3[1]), .B0(n43), .Y(n333) );
  OAI21X2M U78 ( .A0(n305), .A1(x_n3[1]), .B0(n335), .Y(n43) );
  AO21X2M U79 ( .A0(x_n1[3]), .A1(n150), .B0(n165), .Y(n198) );
  OAI2B1X2M U80 ( .A1N(x_n3[9]), .A0(n143), .B0(n102), .Y(n323) );
  AO21XLM U81 ( .A0(n171), .A1(n173), .B0(n90), .Y(n170) );
  INVX2M U82 ( .A(N91), .Y(n337) );
  INVX2M U83 ( .A(N157), .Y(n202) );
  XNOR3X2M U84 ( .A(x_n3[10]), .B(n144), .C(n323), .Y(N55) );
  AO21XLM U85 ( .A0(n142), .A1(n140), .B0(n31), .Y(n260) );
  MXI2X1M U86 ( .A(n118), .B(n119), .S0(n191), .Y(N187) );
  MXI2X1M U87 ( .A(n116), .B(n117), .S0(n188), .Y(N188) );
  AO21XLM U88 ( .A0(n146), .A1(n144), .B0(n249), .Y(n256) );
  OA21X2M U89 ( .A0(n146), .A1(n144), .B0(n257), .Y(n249) );
  AO21XLM U90 ( .A0(n183), .A1(n185), .B0(n87), .Y(n179) );
  MXI2X1M U91 ( .A(n114), .B(n115), .S0(n185), .Y(N189) );
  OR2X2M U92 ( .A(n55), .B(n216), .Y(n221) );
  OR2X2M U93 ( .A(n16), .B(n157), .Y(n211) );
  AO21X2M U94 ( .A0(n174), .A1(n176), .B0(n89), .Y(n173) );
  AO21XLM U95 ( .A0(n170), .A1(n169), .B0(n91), .Y(n168) );
  MX2X2M U96 ( .A(n126), .B(n278), .S0(n168), .Y(N194) );
  OA21X2M U97 ( .A0(x_n1[12]), .A1(n274), .B0(n280), .Y(n49) );
  XOR3XLM U98 ( .A(n141), .B(n139), .C(n262), .Y(N98) );
  XOR3XLM U99 ( .A(x_n1[4]), .B(x_n1[9]), .C(n293), .Y(N32) );
  OR2X6M U100 ( .A(n15), .B(in_data[10]), .Y(n234) );
  INVX2M U101 ( .A(in_data[10]), .Y(n236) );
  CLKINVX4M U102 ( .A(in_data[11]), .Y(n232) );
  INVX2M U103 ( .A(n211), .Y(n212) );
  AO21XLM U104 ( .A0(n148), .A1(n146), .B0(n251), .Y(n254) );
  OA21X2M U105 ( .A0(n148), .A1(n146), .B0(n255), .Y(n251) );
  AOI2B1X1M U106 ( .A1N(x_n3[15]), .A0(n155), .B0(n104), .Y(n312) );
  CLKINVX2M U107 ( .A(n153), .Y(n203) );
  CLKINVX8M U108 ( .A(in_data[15]), .Y(n158) );
  BUFX4M U109 ( .A(N23), .Y(n149) );
  BUFX2M U110 ( .A(x_n2[4]), .Y(n138) );
  BUFX2M U111 ( .A(x_n2[5]), .Y(n139) );
  BUFX2M U112 ( .A(x_n2[6]), .Y(n140) );
  BUFX2M U113 ( .A(x_n2[7]), .Y(n141) );
  INVX8M U114 ( .A(n158), .Y(n157) );
  CLKINVX6M U115 ( .A(in_data[9]), .Y(n239) );
  CLKXOR2X2M U116 ( .A(n313), .B(n312), .Y(n9) );
  XOR2XLM U117 ( .A(n16), .B(n158), .Y(n10) );
  AND2X2M U118 ( .A(n27), .B(n28), .Y(n12) );
  NOR2X2M U119 ( .A(n57), .B(n212), .Y(n13) );
  CLKXOR2X2M U120 ( .A(N156), .B(in_data[2]), .Y(n14) );
  BUFX2M U121 ( .A(in_data[8]), .Y(n15) );
  INVX2M U122 ( .A(in_data[8]), .Y(n242) );
  BUFX3M U123 ( .A(in_data[13]), .Y(n16) );
  CLKINVX1M U124 ( .A(n154), .Y(n22) );
  CLKINVX2M U125 ( .A(n218), .Y(n219) );
  NOR2X1M U126 ( .A(n239), .B(n232), .Y(n132) );
  AO21X4M U127 ( .A0(n206), .A1(n208), .B0(n60), .Y(N282) );
  NOR2X1M U128 ( .A(n129), .B(n17), .Y(n59) );
  INVX2M U129 ( .A(n9), .Y(n128) );
  NAND2X4M U130 ( .A(n21), .B(n22), .Y(n23) );
  CLKINVX8M U131 ( .A(in_data[6]), .Y(n21) );
  INVXLM U132 ( .A(n247), .Y(n19) );
  INVX2M U133 ( .A(n19), .Y(n20) );
  INVX1M U134 ( .A(n234), .Y(n235) );
  MXI2XLM U135 ( .A(n58), .B(n59), .S0(n240), .Y(N274) );
  OR2X4M U136 ( .A(n203), .B(n202), .Y(n50) );
  NOR2X1M U137 ( .A(n232), .B(n224), .Y(n56) );
  INVX2M U138 ( .A(n248), .Y(n200) );
  NAND2X4M U139 ( .A(n24), .B(n205), .Y(n244) );
  CLKNAND2X4M U140 ( .A(n23), .B(n245), .Y(n205) );
  OAI2BB1X4M U141 ( .A0N(n153), .A1N(in_data[5]), .B0(n30), .Y(n245) );
  OR2X4M U142 ( .A(n22), .B(n21), .Y(n24) );
  XOR3XLM U143 ( .A(n154), .B(in_data[6]), .C(n245), .Y(N271) );
  XNOR2X1M U144 ( .A(in_data[12]), .B(n217), .Y(n220) );
  CLKINVX2M U145 ( .A(in_data[12]), .Y(n228) );
  NOR2X2M U146 ( .A(n242), .B(n236), .Y(n53) );
  NOR2XLM U147 ( .A(in_data[6]), .B(n15), .Y(n131) );
  AO21X8M U148 ( .A0(n234), .A1(n237), .B0(n53), .Y(n233) );
  XOR3XLM U149 ( .A(in_data[5]), .B(in_data[7]), .C(n244), .Y(N272) );
  CLKINVX1M U150 ( .A(n213), .Y(n214) );
  AO21X8M U151 ( .A0(n230), .A1(n233), .B0(n132), .Y(n229) );
  MXI2X4M U152 ( .A(n13), .B(n10), .S0(n214), .Y(n29) );
  INVXLM U153 ( .A(n203), .Y(n25) );
  AO21X8M U154 ( .A0(n226), .A1(n229), .B0(n54), .Y(n225) );
  OR2X2M U155 ( .A(in_data[14]), .B(n157), .Y(n206) );
  BUFX8M U156 ( .A(in_data[4]), .Y(n154) );
  NOR2X4M U157 ( .A(n207), .B(n60), .Y(n209) );
  MXI2X6M U158 ( .A(n210), .B(n209), .S0(n208), .Y(N281) );
  OAI2BB1X2M U159 ( .A0N(x_n3[6]), .A1N(n308), .B0(n96), .Y(n326) );
  XNOR3XLM U160 ( .A(x_n3[13]), .B(n147), .C(n319), .Y(N58) );
  XNOR3X2M U161 ( .A(x_n3[9]), .B(n143), .C(n324), .Y(N54) );
  OAI21XLM U162 ( .A0(x_n3[6]), .A1(n308), .B0(n328), .Y(n96) );
  CLKINVX1M U163 ( .A(n215), .Y(n216) );
  XOR3X2M U164 ( .A(x_n3[7]), .B(n141), .C(n327), .Y(N52) );
  NAND2X1M U165 ( .A(n61), .B(n26), .Y(n27) );
  NAND2XLM U166 ( .A(n62), .B(n225), .Y(n28) );
  MXI2X2M U167 ( .A(n120), .B(n121), .S0(n194), .Y(N186) );
  XOR2XLM U168 ( .A(in_data[11]), .B(n224), .Y(n61) );
  XOR3XLM U169 ( .A(n144), .B(n142), .C(n259), .Y(N101) );
  XOR3XLM U170 ( .A(n148), .B(n146), .C(n255), .Y(N105) );
  OA21X2M U171 ( .A0(n142), .A1(n140), .B0(n261), .Y(n31) );
  MXI2X6M U172 ( .A(n40), .B(n41), .S0(n176), .Y(N191) );
  OAI2BB1X2M U173 ( .A0N(n36), .A1N(n143), .B0(n324), .Y(n102) );
  INVXLM U174 ( .A(n225), .Y(n26) );
  NOR2XLM U175 ( .A(n56), .B(n223), .Y(n62) );
  INVXLM U176 ( .A(n222), .Y(n223) );
  NOR2XLM U177 ( .A(n337), .B(n306), .Y(n83) );
  OAI2BB1XLM U178 ( .A0N(n141), .A1N(n139), .B0(n78), .Y(n261) );
  OAI21XLM U179 ( .A0(n141), .A1(n139), .B0(n262), .Y(n78) );
  OA21X1M U180 ( .A0(n155), .A1(n148), .B0(n253), .Y(n252) );
  OAI2BB1X2M U181 ( .A0N(n37), .A1N(n137), .B0(n332), .Y(n97) );
  XNOR3XLM U182 ( .A(x_n1[5]), .B(x_n1[10]), .C(n291), .Y(N33) );
  XNOR3X4M U183 ( .A(x_n3[8]), .B(n142), .C(n325), .Y(N53) );
  CLKINVX2M U184 ( .A(n179), .Y(n180) );
  MX2X4M U185 ( .A(n182), .B(n181), .S0(n180), .Y(N190) );
  OAI2BB1X2M U186 ( .A0N(n33), .A1N(n144), .B0(n323), .Y(n98) );
  OAI2BB1X1M U187 ( .A0N(n48), .A1N(n146), .B0(n320), .Y(n100) );
  INVXLM U188 ( .A(x_n1[6]), .Y(n266) );
  OAI21XLM U189 ( .A0(x_n1[7]), .A1(n272), .B0(n287), .Y(n109) );
  NOR2X2M U190 ( .A(n217), .B(n158), .Y(n60) );
  NOR2X2M U191 ( .A(n236), .B(n228), .Y(n54) );
  CLKNAND2X4M U192 ( .A(in_data[2]), .B(N156), .Y(n248) );
  XOR3XLM U193 ( .A(n139), .B(n137), .C(n264), .Y(N96) );
  INVX2M U194 ( .A(n328), .Y(n329) );
  INVX2M U195 ( .A(n315), .Y(n313) );
  INVX1M U196 ( .A(x_n3[4]), .Y(n32) );
  OAI2BB1X2M U197 ( .A0N(n306), .A1N(x_n3[2]), .B0(n307), .Y(n332) );
  INVXLM U198 ( .A(n283), .Y(n284) );
  INVXLM U199 ( .A(x_n3[3]), .Y(n37) );
  INVXLM U200 ( .A(x_n3[5]), .Y(n35) );
  XNOR3XLM U201 ( .A(n150), .B(x_n1[6]), .C(n296), .Y(N29) );
  XNOR3X2M U202 ( .A(x_n3[11]), .B(n145), .C(n322), .Y(N56) );
  CLKXOR2X2M U203 ( .A(x_n1[12]), .B(n273), .Y(n38) );
  NOR2X2M U204 ( .A(n90), .B(n172), .Y(n39) );
  CLKXOR2X2M U205 ( .A(x_n1[11]), .B(n276), .Y(n40) );
  NOR2X2M U206 ( .A(n89), .B(n175), .Y(n41) );
  BUFX2M U207 ( .A(x_n2[11]), .Y(n145) );
  BUFX2M U208 ( .A(x_n2[9]), .Y(n143) );
  BUFX2M U209 ( .A(x_n2[10]), .Y(n144) );
  INVX2M U210 ( .A(x_n3[13]), .Y(n45) );
  OAI2BB1X2M U211 ( .A0N(n45), .A1N(n147), .B0(n319), .Y(n99) );
  INVX2M U212 ( .A(x_n3[12]), .Y(n48) );
  BUFX2M U213 ( .A(x_n2[8]), .Y(n142) );
  INVX2M U214 ( .A(x_n3[9]), .Y(n36) );
  OA21X2M U215 ( .A0(x_n1[6]), .A1(n271), .B0(n289), .Y(n46) );
  OAI2BB1X1M U216 ( .A0N(x_n1[4]), .A1N(n269), .B0(n110), .Y(n291) );
  OAI21X1M U217 ( .A0(x_n1[4]), .A1(n269), .B0(n292), .Y(n110) );
  OAI2BB1X1M U218 ( .A0N(x_n1[7]), .A1N(n272), .B0(n109), .Y(n285) );
  OR2X2M U219 ( .A(x_n1[4]), .B(n298), .Y(n297) );
  INVXLM U220 ( .A(x_n3[7]), .Y(n34) );
  OAI2BB1XLM U221 ( .A0N(n34), .A1N(n141), .B0(n326), .Y(n95) );
  OAI21X2M U222 ( .A0(x_n1[10]), .A1(n274), .B0(n282), .Y(n105) );
  INVX2M U223 ( .A(x_n3[10]), .Y(n33) );
  OA21X4M U224 ( .A0(x_n3[14]), .A1(n311), .B0(n317), .Y(n44) );
  MXI2XLM U225 ( .A(n51), .B(n52), .S0(n237), .Y(N275) );
  XOR2XLM U226 ( .A(n15), .B(n236), .Y(n51) );
  NOR2XLM U227 ( .A(n53), .B(n235), .Y(n52) );
  INVXLM U228 ( .A(n230), .Y(n231) );
  INVXLM U229 ( .A(n226), .Y(n227) );
  XOR2XLM U230 ( .A(in_data[7]), .B(n239), .Y(n58) );
  MXI2XLM U231 ( .A(n65), .B(n66), .S0(n229), .Y(N277) );
  XOR2XLM U232 ( .A(in_data[10]), .B(n228), .Y(n65) );
  MXI2XLM U233 ( .A(n63), .B(n64), .S0(n233), .Y(N276) );
  XOR2XLM U234 ( .A(in_data[9]), .B(n232), .Y(n63) );
  NOR2XLM U235 ( .A(n130), .B(n231), .Y(n64) );
  AO21X4M U236 ( .A0(n192), .A1(n194), .B0(n86), .Y(n191) );
  OAI21XLM U237 ( .A0(n139), .A1(n137), .B0(n264), .Y(n80) );
  OAI21XLM U238 ( .A0(n138), .A1(n136), .B0(n265), .Y(n81) );
  OAI21XLM U239 ( .A0(n137), .A1(n135), .B0(n83), .Y(n82) );
  OAI21XLM U240 ( .A0(n143), .A1(n141), .B0(n260), .Y(n77) );
  OAI21X1M U241 ( .A0(n144), .A1(n142), .B0(n259), .Y(n76) );
  OAI21XLM U242 ( .A0(n140), .A1(n138), .B0(n263), .Y(n79) );
  OAI21X2M U243 ( .A0(n155), .A1(n147), .B0(n254), .Y(n74) );
  INVXLM U244 ( .A(n192), .Y(n193) );
  INVXLM U245 ( .A(n189), .Y(n190) );
  XOR2XLM U246 ( .A(x_n1[9]), .B(n271), .Y(n114) );
  XOR2XLM U247 ( .A(x_n1[8]), .B(n270), .Y(n116) );
  XOR2XLM U248 ( .A(x_n1[7]), .B(n269), .Y(n118) );
  XOR2XLM U249 ( .A(x_n1[6]), .B(n268), .Y(n120) );
  NOR2X2M U250 ( .A(n86), .B(n193), .Y(n121) );
  OAI2BB1X2M U251 ( .A0N(x_n1[4]), .A1N(x_n1[6]), .B0(n124), .Y(n195) );
  OAI21X1M U252 ( .A0(x_n1[4]), .A1(x_n1[6]), .B0(n196), .Y(n124) );
  OAI2BB1X2M U253 ( .A0N(x_n1[4]), .A1N(x_n1[2]), .B0(n122), .Y(n197) );
  XOR3XLM U254 ( .A(x_n1[5]), .B(x_n1[3]), .C(n197), .Y(N183) );
  XOR3XLM U255 ( .A(x_n1[4]), .B(x_n1[6]), .C(n196), .Y(N184) );
  XOR3XLM U256 ( .A(x_n1[5]), .B(x_n1[7]), .C(n195), .Y(N185) );
  MXI2X2M U257 ( .A(n38), .B(n39), .S0(n173), .Y(N192) );
  CLKINVX2M U258 ( .A(n317), .Y(n318) );
  CLKINVX2M U259 ( .A(n320), .Y(n321) );
  CLKINVX2M U260 ( .A(n326), .Y(n327) );
  CLKINVX2M U261 ( .A(n298), .Y(n299) );
  XNOR3XLM U262 ( .A(x_n1[3]), .B(x_n1[8]), .C(n294), .Y(N31) );
  XNOR3XLM U263 ( .A(x_n1[2]), .B(x_n1[7]), .C(n295), .Y(N30) );
  INVX1M U264 ( .A(n289), .Y(n290) );
  XNOR3XLM U265 ( .A(x_n1[11]), .B(n152), .C(n281), .Y(N39) );
  AO21XLM U266 ( .A0(x_n1[9]), .A1(n273), .B0(n47), .Y(n282) );
  OA21X1M U267 ( .A0(x_n1[9]), .A1(n273), .B0(n283), .Y(n47) );
  OAI2BB1XLM U268 ( .A0N(x_n1[8]), .A1N(n276), .B0(n108), .Y(n283) );
  OAI21XLM U269 ( .A0(x_n1[8]), .A1(n276), .B0(n285), .Y(n108) );
  AOI21X2M U270 ( .A0(x_n3[15]), .A1(n156), .B0(n314), .Y(n104) );
  OAI2BB1X1M U271 ( .A0N(x_n1[11]), .A1N(n274), .B0(n112), .Y(n280) );
  AOI21X2M U272 ( .A0(x_n1[12]), .A1(n274), .B0(n49), .Y(n113) );
  OAI2BB1XLM U273 ( .A0N(x_n1[3]), .A1N(n268), .B0(n111), .Y(n292) );
  OAI21XLM U274 ( .A0(x_n1[3]), .A1(n268), .B0(n294), .Y(n111) );
  OAI2BB1XLM U275 ( .A0N(x_n1[2]), .A1N(n267), .B0(n106), .Y(n294) );
  OAI21XLM U276 ( .A0(x_n1[2]), .A1(n267), .B0(n295), .Y(n106) );
  INVX2M U277 ( .A(x_n1[9]), .Y(n269) );
  CLKINVX1M U278 ( .A(x_n1[8]), .Y(n268) );
  INVXLM U279 ( .A(x_n1[7]), .Y(n267) );
  NOR2BX2M U280 ( .AN(in_data[7]), .B(n239), .Y(n129) );
  NOR2X2M U281 ( .A(n228), .B(n217), .Y(n55) );
  NOR2X2M U282 ( .A(n224), .B(n158), .Y(n57) );
  NOR2XLM U283 ( .A(n54), .B(n227), .Y(n66) );
  OR2X2M U284 ( .A(in_data[12]), .B(in_data[14]), .Y(n215) );
  INVX2M U285 ( .A(in_data[14]), .Y(n217) );
  XOR3XLM U286 ( .A(in_data[5]), .B(n153), .C(n246), .Y(N270) );
  XOR3XLM U287 ( .A(n154), .B(in_data[2]), .C(n20), .Y(N269) );
  MXI2XLM U288 ( .A(n70), .B(n71), .S0(n243), .Y(N273) );
  XOR2XLM U289 ( .A(in_data[6]), .B(n242), .Y(n70) );
  NOR2XLM U290 ( .A(n69), .B(n131), .Y(n71) );
  XNOR3XLM U291 ( .A(N157), .B(n153), .C(n248), .Y(n72) );
  INVX2M U292 ( .A(n133), .Y(n134) );
  BUFX2M U293 ( .A(n159), .Y(n161) );
  BUFX2M U294 ( .A(n160), .Y(n163) );
  BUFX2M U295 ( .A(n159), .Y(n162) );
  BUFX2M U296 ( .A(n160), .Y(n164) );
  MX2X2M U297 ( .A(n125), .B(n279), .S0(n113), .Y(N41) );
  MX2X2M U298 ( .A(n126), .B(n278), .S0(n277), .Y(N42) );
  OA21X2M U299 ( .A0(n152), .A1(n276), .B0(n275), .Y(n277) );
  AO21XLM U300 ( .A0(n152), .A1(n276), .B0(n113), .Y(n275) );
  XNOR2X2M U301 ( .A(n316), .B(n315), .Y(N60) );
  INVX2M U302 ( .A(n314), .Y(n316) );
  XOR3XLM U303 ( .A(n147), .B(n145), .C(n256), .Y(N104) );
  XOR3XLM U304 ( .A(n146), .B(n144), .C(n257), .Y(N103) );
  XOR3XLM U305 ( .A(n145), .B(n143), .C(n258), .Y(N102) );
  XOR3XLM U306 ( .A(n143), .B(n141), .C(n260), .Y(N100) );
  XOR3XLM U307 ( .A(n138), .B(n136), .C(n265), .Y(N95) );
  XOR3XLM U308 ( .A(n142), .B(n140), .C(n261), .Y(N99) );
  XOR3XLM U309 ( .A(n140), .B(n138), .C(n263), .Y(N97) );
  XNOR2X2M U310 ( .A(n127), .B(n306), .Y(N93) );
  OAI2BB1X2M U311 ( .A0N(n155), .A1N(n147), .B0(n74), .Y(n253) );
  OAI2BB1X2M U312 ( .A0N(n145), .A1N(n143), .B0(n75), .Y(n257) );
  OAI21X2M U313 ( .A0(n145), .A1(n143), .B0(n258), .Y(n75) );
  OAI2BB1X2M U314 ( .A0N(n144), .A1N(n142), .B0(n76), .Y(n258) );
  OAI2BB1X2M U315 ( .A0N(n143), .A1N(n141), .B0(n77), .Y(n259) );
  OAI2BB1X2M U316 ( .A0N(n140), .A1N(n138), .B0(n79), .Y(n262) );
  OAI2BB1X2M U317 ( .A0N(n139), .A1N(n137), .B0(n80), .Y(n263) );
  OAI2BB1X2M U318 ( .A0N(n138), .A1N(n136), .B0(n81), .Y(n264) );
  OAI2BB1X2M U319 ( .A0N(n137), .A1N(n135), .B0(n82), .Y(n265) );
  INVX2M U320 ( .A(n335), .Y(n336) );
  NOR2X2M U321 ( .A(n267), .B(n269), .Y(n84) );
  INVX2M U322 ( .A(n183), .Y(n184) );
  NOR2X2M U323 ( .A(n268), .B(n270), .Y(n85) );
  NOR2X2M U324 ( .A(n266), .B(n268), .Y(n86) );
  NOR2X2M U325 ( .A(n269), .B(n271), .Y(n87) );
  INVX2M U326 ( .A(n186), .Y(n187) );
  INVX2M U327 ( .A(n156), .Y(n155) );
  INVX2M U328 ( .A(n152), .Y(n274) );
  NAND2BX2M U329 ( .AN(n91), .B(n169), .Y(n279) );
  NOR2X2M U330 ( .A(n270), .B(n272), .Y(n88) );
  NOR2X2M U331 ( .A(n271), .B(n276), .Y(n89) );
  NOR2X2M U332 ( .A(n272), .B(n273), .Y(n90) );
  NOR2X2M U333 ( .A(n276), .B(n274), .Y(n91) );
  INVX2M U334 ( .A(n177), .Y(n178) );
  INVX2M U335 ( .A(n174), .Y(n175) );
  INVX2M U336 ( .A(n171), .Y(n172) );
  NOR2X2M U337 ( .A(n273), .B(n274), .Y(n92) );
  NAND2BX2M U338 ( .AN(n92), .B(n167), .Y(n278) );
  BUFX2M U339 ( .A(rst_n), .Y(n160) );
  BUFX2M U340 ( .A(rst_n), .Y(n159) );
  OAI21X2M U341 ( .A0(n306), .A1(x_n3[2]), .B0(n333), .Y(n307) );
  XNOR3X2M U342 ( .A(x_n1[12]), .B(n152), .C(n280), .Y(N40) );
  OAI2B1X2M U343 ( .A1N(x_n3[11]), .A0(n145), .B0(n94), .Y(n320) );
  OAI21X2M U344 ( .A0(x_n3[11]), .A1(n310), .B0(n322), .Y(n94) );
  INVX2M U345 ( .A(n145), .Y(n310) );
  OAI2B1X2M U346 ( .A1N(x_n3[7]), .A0(n141), .B0(n95), .Y(n325) );
  XNOR3X2M U347 ( .A(x_n1[10]), .B(n152), .C(n282), .Y(N38) );
  XOR3XLM U348 ( .A(x_n1[9]), .B(x_n1[14]), .C(n284), .Y(N37) );
  INVX2M U349 ( .A(n148), .Y(n311) );
  OAI2B1X2M U350 ( .A1N(x_n3[10]), .A0(n144), .B0(n98), .Y(n322) );
  OAI2B1X2M U351 ( .A1N(x_n3[13]), .A0(n147), .B0(n99), .Y(n317) );
  OAI2B1X2M U352 ( .A1N(x_n3[8]), .A0(n142), .B0(n101), .Y(n324) );
  OAI21X2M U353 ( .A0(x_n3[8]), .A1(n309), .B0(n325), .Y(n101) );
  INVX2M U354 ( .A(n142), .Y(n309) );
  OAI2B2X1M U355 ( .A1N(n149), .A0(x_n1[5]), .B0(n297), .B1(x_n1[5]), .Y(n296)
         );
  OAI2BB1X2M U356 ( .A0N(x_n1[10]), .A1N(n274), .B0(n105), .Y(n281) );
  OAI2BB1XLM U357 ( .A0N(x_n1[5]), .A1N(n270), .B0(n107), .Y(n289) );
  OAI21XLM U358 ( .A0(x_n1[5]), .A1(n270), .B0(n291), .Y(n107) );
  XOR3X1M U359 ( .A(x_n3[6]), .B(n140), .C(n329), .Y(N51) );
  INVXLM U360 ( .A(n285), .Y(n286) );
  XOR3XLM U361 ( .A(x_n1[7]), .B(x_n1[12]), .C(n288), .Y(N35) );
  INVX2M U362 ( .A(n287), .Y(n288) );
  INVXLM U363 ( .A(n292), .Y(n293) );
  OR2X1M U364 ( .A(x_n1[2]), .B(n302), .Y(n300) );
  OR2X1M U365 ( .A(x_n1[3]), .B(n300), .Y(n298) );
  OAI21XLM U366 ( .A0(x_n1[11]), .A1(n274), .B0(n281), .Y(n112) );
  XNOR2X2M U367 ( .A(x_n1[10]), .B(n272), .Y(n181) );
  OR2X2M U368 ( .A(n88), .B(n178), .Y(n182) );
  NOR2X2M U369 ( .A(n87), .B(n184), .Y(n115) );
  NOR2X2M U370 ( .A(n85), .B(n187), .Y(n117) );
  NOR2X2M U371 ( .A(n84), .B(n190), .Y(n119) );
  XNOR3XLM U372 ( .A(x_n3[5]), .B(n139), .C(n330), .Y(N50) );
  XNOR3XLM U373 ( .A(x_n3[4]), .B(n138), .C(n331), .Y(N49) );
  AO21XLM U374 ( .A0(x_n1[5]), .A1(x_n1[7]), .B0(n166), .Y(n194) );
  OA21XLM U375 ( .A0(x_n1[5]), .A1(x_n1[7]), .B0(n195), .Y(n166) );
  INVX2M U376 ( .A(x_n1[10]), .Y(n270) );
  AO21XLM U377 ( .A0(x_n3[0]), .A1(n337), .B0(n336), .Y(N45) );
  XOR3XLM U378 ( .A(x_n1[5]), .B(n149), .C(n297), .Y(N28) );
  XNOR2XLM U379 ( .A(x_n1[2]), .B(n303), .Y(N25) );
  INVXLM U380 ( .A(n302), .Y(n303) );
  XNOR2XLM U381 ( .A(x_n1[3]), .B(n301), .Y(N26) );
  INVXLM U382 ( .A(n300), .Y(n301) );
  XNOR2XLM U383 ( .A(x_n1[4]), .B(n299), .Y(N27) );
  INVX2M U384 ( .A(x_n1[11]), .Y(n271) );
  OAI2BB1XLM U385 ( .A0N(x_n1[5]), .A1N(x_n1[3]), .B0(n123), .Y(n196) );
  OAI21XLM U386 ( .A0(x_n1[5]), .A1(x_n1[3]), .B0(n197), .Y(n123) );
  INVXLM U387 ( .A(n333), .Y(n334) );
  BUFX2M U388 ( .A(x_n2[12]), .Y(n146) );
  BUFX2M U389 ( .A(x_n2[13]), .Y(n147) );
  INVX2M U390 ( .A(x_n1[13]), .Y(n276) );
  OR2X1M U391 ( .A(x_n1[8]), .B(x_n1[10]), .Y(n186) );
  INVX2M U392 ( .A(x_n1[12]), .Y(n272) );
  OR2X1M U393 ( .A(x_n1[6]), .B(x_n1[8]), .Y(n192) );
  XNOR2X2M U394 ( .A(x_n3[15]), .B(n155), .Y(n315) );
  BUFX2M U395 ( .A(x_n1[15]), .Y(n152) );
  BUFX2M U396 ( .A(x_n2[14]), .Y(n148) );
  OR2X2M U397 ( .A(x_n1[10]), .B(x_n1[12]), .Y(n177) );
  OR2X2M U398 ( .A(x_n1[12]), .B(x_n1[14]), .Y(n171) );
  OR2X2M U399 ( .A(x_n1[11]), .B(x_n1[13]), .Y(n174) );
  OR2X2M U400 ( .A(x_n1[13]), .B(n152), .Y(n169) );
  INVX2M U401 ( .A(x_n1[14]), .Y(n273) );
  INVX2M U402 ( .A(x_n2[15]), .Y(n156) );
  CLKXOR2X2M U403 ( .A(x_n1[13]), .B(n152), .Y(n125) );
  BUFX2M U404 ( .A(x_n1[15]), .Y(n151) );
  OR2X2M U405 ( .A(x_n1[14]), .B(n152), .Y(n167) );
  CLKXOR2X2M U406 ( .A(x_n1[14]), .B(n152), .Y(n126) );
  NOR2XLM U407 ( .A(n239), .B(n232), .Y(n130) );
  OR2X1M U408 ( .A(x_n1[9]), .B(x_n1[11]), .Y(n183) );
  OR2X1M U409 ( .A(x_n1[7]), .B(x_n1[9]), .Y(n189) );
  INVXLM U410 ( .A(in_data[6]), .Y(n133) );
  AO21X8M U411 ( .A0(n222), .A1(n225), .B0(n56), .Y(n218) );
  AO21X8M U412 ( .A0(n211), .A1(n213), .B0(n57), .Y(n208) );
  AO21X8M U413 ( .A0(n215), .A1(n218), .B0(n55), .Y(n213) );
  AO21X4M U414 ( .A0(n186), .A1(n188), .B0(n85), .Y(n185) );
  AO21X4M U415 ( .A0(n177), .A1(n179), .B0(n88), .Y(n176) );
  XOR3X4M U416 ( .A(n155), .B(n147), .C(n254), .Y(N106) );
endmodule


module counter2bit_1 ( clk, reset, count );
  output [1:0] count;
  input clk, reset;
  wire   N2, n1;

  DFFRQX2M \count_reg[1]  ( .D(N2), .CK(clk), .RN(reset), .Q(count[1]) );
  DFFRQX2M \count_reg[0]  ( .D(n1), .CK(clk), .RN(reset), .Q(count[0]) );
  INVX2M U3 ( .A(count[0]), .Y(n1) );
  CLKXOR2X2M U4 ( .A(count[1]), .B(count[0]), .Y(N2) );
endmodule


module mux4to1_1 ( I0, I1, I2, I3, S, Y );
  input [15:0] I0;
  input [15:0] I1;
  input [15:0] I2;
  input [15:0] I3;
  input [1:0] S;
  output [15:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;

  NAND2X4M U1 ( .A(n8), .B(n9), .Y(Y[15]) );
  AO22X8M U2 ( .A0(I1[14]), .A1(n2), .B0(I0[14]), .B1(n10), .Y(n42) );
  AOI22X4M U3 ( .A0(I1[15]), .A1(n2), .B0(I0[15]), .B1(n10), .Y(n8) );
  AO22X1M U4 ( .A0(I1[6]), .A1(n2), .B0(I0[6]), .B1(n10), .Y(n25) );
  AOI22X1M U5 ( .A0(I3[3]), .A1(n1), .B0(I2[3]), .B1(n3), .Y(n7) );
  OR2X2M U6 ( .A(n18), .B(n17), .Y(Y[2]) );
  AO22X1M U7 ( .A0(I1[2]), .A1(n2), .B0(I0[2]), .B1(n10), .Y(n18) );
  AO22X1M U8 ( .A0(I3[2]), .A1(n1), .B0(I2[2]), .B1(n3), .Y(n17) );
  OR2X2M U9 ( .A(n23), .B(n22), .Y(Y[5]) );
  AO22X1M U10 ( .A0(I1[5]), .A1(n2), .B0(I0[5]), .B1(n10), .Y(n23) );
  AO22XLM U11 ( .A0(I3[5]), .A1(n1), .B0(I2[5]), .B1(n3), .Y(n22) );
  AO22X1M U12 ( .A0(I1[7]), .A1(n2), .B0(I0[7]), .B1(n10), .Y(n27) );
  AO22XLM U13 ( .A0(I1[8]), .A1(n2), .B0(I0[8]), .B1(n10), .Y(n29) );
  NAND2X2M U14 ( .A(I2[11]), .B(n3), .Y(n34) );
  NAND2X2M U15 ( .A(I3[12]), .B(n1), .Y(n5) );
  NAND2X2M U16 ( .A(I2[12]), .B(n3), .Y(n6) );
  OR2X2M U17 ( .A(n16), .B(n15), .Y(Y[1]) );
  AO22X1M U18 ( .A0(I1[1]), .A1(n2), .B0(I0[1]), .B1(n10), .Y(n16) );
  AO22X1M U19 ( .A0(I3[1]), .A1(n1), .B0(I2[1]), .B1(n3), .Y(n15) );
  OR2X2M U20 ( .A(n21), .B(n20), .Y(Y[4]) );
  AO22X1M U21 ( .A0(I1[4]), .A1(n2), .B0(I0[4]), .B1(n10), .Y(n21) );
  AO22X1M U22 ( .A0(I3[4]), .A1(n1), .B0(I2[4]), .B1(n3), .Y(n20) );
  OR2X2M U23 ( .A(n14), .B(n13), .Y(Y[0]) );
  AO22X1M U24 ( .A0(I1[0]), .A1(n2), .B0(I0[0]), .B1(n10), .Y(n14) );
  AO22X1M U25 ( .A0(I3[0]), .A1(n1), .B0(I2[0]), .B1(n3), .Y(n13) );
  NOR2X2M U26 ( .A(n12), .B(n11), .Y(n1) );
  NOR2X2M U27 ( .A(S[1]), .B(n11), .Y(n2) );
  NOR2X2M U28 ( .A(S[0]), .B(n12), .Y(n3) );
  OR2X12M U29 ( .A(n31), .B(n30), .Y(Y[9]) );
  AO22X8M U30 ( .A0(I3[9]), .A1(n1), .B0(I2[9]), .B1(n3), .Y(n30) );
  AO22X8M U31 ( .A0(I3[10]), .A1(n1), .B0(I2[10]), .B1(n3), .Y(n32) );
  NAND2BX4M U32 ( .AN(n40), .B(n4), .Y(Y[13]) );
  AOI22X2M U33 ( .A0(I3[13]), .A1(n1), .B0(I2[13]), .B1(n3), .Y(n4) );
  OR2X6M U34 ( .A(n39), .B(n38), .Y(Y[12]) );
  OR2X12M U35 ( .A(n33), .B(n32), .Y(Y[10]) );
  AOI22X2M U36 ( .A0(I3[15]), .A1(n1), .B0(I2[15]), .B1(n3), .Y(n9) );
  NAND2X4M U37 ( .A(n5), .B(n6), .Y(n38) );
  NAND2BX2M U38 ( .AN(n19), .B(n7), .Y(Y[3]) );
  NAND4X2M U39 ( .A(n37), .B(n36), .C(n35), .D(n34), .Y(Y[11]) );
  NAND2X2M U40 ( .A(I1[11]), .B(n2), .Y(n37) );
  NAND2X2M U41 ( .A(I0[11]), .B(n10), .Y(n36) );
  NAND2X2M U42 ( .A(I3[11]), .B(n1), .Y(n35) );
  AO22X1M U43 ( .A0(I1[3]), .A1(n2), .B0(I0[3]), .B1(n10), .Y(n19) );
  NOR2X2M U44 ( .A(S[1]), .B(S[0]), .Y(n10) );
  INVX2M U45 ( .A(S[0]), .Y(n11) );
  INVX2M U46 ( .A(S[1]), .Y(n12) );
  OR2X12M U47 ( .A(n42), .B(n41), .Y(Y[14]) );
  AO22X8M U48 ( .A0(I3[14]), .A1(n1), .B0(I2[14]), .B1(n3), .Y(n41) );
  AO22X4M U49 ( .A0(I3[6]), .A1(n1), .B0(I2[6]), .B1(n3), .Y(n24) );
  OR2X6M U50 ( .A(n25), .B(n24), .Y(Y[6]) );
  AO22X4M U51 ( .A0(I3[7]), .A1(n1), .B0(I2[7]), .B1(n3), .Y(n26) );
  OR2X6M U52 ( .A(n27), .B(n26), .Y(Y[7]) );
  AO22X4M U53 ( .A0(I3[8]), .A1(n1), .B0(I2[8]), .B1(n3), .Y(n28) );
  OR2X6M U54 ( .A(n29), .B(n28), .Y(Y[8]) );
  AO22X4M U55 ( .A0(I1[9]), .A1(n2), .B0(I0[9]), .B1(n10), .Y(n31) );
  AO22X4M U56 ( .A0(I1[10]), .A1(n2), .B0(I0[10]), .B1(n10), .Y(n33) );
  AO22X4M U57 ( .A0(I1[12]), .A1(n2), .B0(I0[12]), .B1(n10), .Y(n39) );
  AO22X4M U58 ( .A0(I1[13]), .A1(n2), .B0(I0[13]), .B1(n10), .Y(n40) );
endmodule


module FIR_1 ( clk, clk_3, clk_2, clk_1, clk_4, reset, data_in, out );
  input [15:0] data_in;
  output [15:0] out;
  input clk, clk_3, clk_2, clk_1, clk_4, reset;
  wire   SEL, n1, n2, n3, n4, n5;
  wire   [15:0] mux_out;
  wire   [15:0] even;
  wire   [15:0] odd;
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

  hfb_1_1 uut ( .clk(clk_1), .reset(n4), .data_in(data_in), .even_out(even), 
        .odd_out(odd) );
  counter_1 uut1 ( .clk(clk_2), .reset(n4), .SEL(SEL) );
  up4_filter_2 uut2 ( .clk(clk_2), .rst_n(n4), .in_data(mux_out), .b0(b0), 
        .b1(b1), .b2(b2), .b3(b3) );
  counter2bit_2 uut3 ( .clk(clk_3), .reset(n4), .count(count) );
  mux4to1_2 uut4 ( .I0(b0), .I1(b1), .I2(b2), .I3(b3), .S(count), .Y(out_comb4) );
  up4_filter_1 uut5 ( .clk(clk_3), .rst_n(n4), .in_data({n3, out_comb4[14:9], 
        n1, out_comb4[7:0]}), .b0(B0), .b1(B1), .b2(B2), .b3(B3) );
  counter2bit_1 uut6 ( .clk(clk_4), .reset(n4), .count(Count) );
  mux4to1_1 uut7 ( .I0(B0), .I1(B1), .I2(B2), .I3(B3), .S(Count), .Y(out) );
  BUFX8M U1 ( .A(out_comb4[8]), .Y(n1) );
  MX2X2M U2 ( .A(odd[2]), .B(even[2]), .S0(n2), .Y(mux_out[2]) );
  BUFX8M U3 ( .A(out_comb4[15]), .Y(n3) );
  MX2X2M U4 ( .A(odd[5]), .B(even[5]), .S0(n2), .Y(mux_out[5]) );
  MX2X2M U5 ( .A(odd[4]), .B(even[4]), .S0(n2), .Y(mux_out[4]) );
  CLKMX2X2M U6 ( .A(odd[3]), .B(even[3]), .S0(n2), .Y(mux_out[3]) );
  MX2X3M U7 ( .A(odd[1]), .B(even[1]), .S0(n2), .Y(mux_out[1]) );
  CLKMX2X4M U8 ( .A(odd[0]), .B(even[0]), .S0(n2), .Y(mux_out[0]) );
  MX2XLM U9 ( .A(odd[7]), .B(even[7]), .S0(n2), .Y(mux_out[7]) );
  MX2XLM U10 ( .A(odd[6]), .B(even[6]), .S0(n2), .Y(mux_out[6]) );
  MX2XLM U11 ( .A(odd[8]), .B(even[8]), .S0(n2), .Y(mux_out[8]) );
  MX2XLM U12 ( .A(odd[11]), .B(even[11]), .S0(n2), .Y(mux_out[11]) );
  MX2XLM U13 ( .A(odd[9]), .B(even[9]), .S0(n2), .Y(mux_out[9]) );
  MX2XLM U14 ( .A(odd[10]), .B(even[10]), .S0(n2), .Y(mux_out[10]) );
  MX2XLM U15 ( .A(odd[12]), .B(even[12]), .S0(n2), .Y(mux_out[12]) );
  MX2XLM U16 ( .A(odd[13]), .B(even[13]), .S0(n2), .Y(mux_out[13]) );
  MX2XLM U17 ( .A(odd[14]), .B(even[14]), .S0(n2), .Y(mux_out[14]) );
  BUFX10M U18 ( .A(SEL), .Y(n2) );
  MX2XLM U19 ( .A(odd[15]), .B(even[15]), .S0(n2), .Y(mux_out[15]) );
  INVX2M U20 ( .A(n5), .Y(n4) );
  INVX2M U21 ( .A(reset), .Y(n5) );
endmodule


module segma_0_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [18:0] carry;

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
  ADDFX2M U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFX2M U2_1 ( .A(A[1]), .B(n17), .CI(n18), .CO(carry[2]), .S(DIFF[1]) );
  XNOR3X1M U1 ( .A(A[17]), .B(B[17]), .C(carry[17]), .Y(DIFF[17]) );
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


module segma_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135;

  AND2X4M U2 ( .A(n84), .B(n83), .Y(n73) );
  NAND3X4M U3 ( .A(n70), .B(n71), .C(n72), .Y(n58) );
  CLKNAND2X2M U4 ( .A(B[12]), .B(A[12]), .Y(n83) );
  CLKNAND2X2M U5 ( .A(n61), .B(n62), .Y(n57) );
  NAND4XLM U6 ( .A(n26), .B(n21), .C(n30), .D(n35), .Y(n81) );
  NAND3X2M U7 ( .A(n129), .B(n25), .C(n19), .Y(n126) );
  XNOR2X4M U8 ( .A(B[17]), .B(n56), .Y(n55) );
  NAND2X2M U9 ( .A(B[4]), .B(A[4]), .Y(n33) );
  CLKNAND2X4M U10 ( .A(B[5]), .B(A[5]), .Y(n28) );
  NAND2X6M U11 ( .A(n131), .B(n132), .Y(n26) );
  CLKINVX4M U12 ( .A(B[6]), .Y(n131) );
  NAND2X4M U13 ( .A(n127), .B(n128), .Y(n21) );
  CLKNAND2X4M U14 ( .A(B[8]), .B(A[8]), .Y(n15) );
  XNOR2X2M U15 ( .A(n97), .B(n98), .Y(SUM[12]) );
  NAND2X2M U16 ( .A(n90), .B(n91), .Y(n62) );
  NAND2X2M U17 ( .A(n2), .B(n63), .Y(n61) );
  NAND3X2M U18 ( .A(n101), .B(n102), .C(n103), .Y(n99) );
  NAND3X2M U19 ( .A(n106), .B(n105), .C(n104), .Y(n101) );
  NAND2X2M U20 ( .A(n15), .B(n11), .Y(n104) );
  INVX2M U21 ( .A(n78), .Y(n75) );
  INVX2M U22 ( .A(B[14]), .Y(n90) );
  OR2X2M U23 ( .A(B[1]), .B(A[1]), .Y(n50) );
  NAND2X2M U24 ( .A(B[1]), .B(A[1]), .Y(n51) );
  NAND2X2M U25 ( .A(n133), .B(n134), .Y(n30) );
  INVX2M U26 ( .A(B[5]), .Y(n133) );
  OR2X2M U27 ( .A(B[11]), .B(A[11]), .Y(n100) );
  OR2X6M U28 ( .A(B[12]), .B(A[12]), .Y(n77) );
  OR2X2M U29 ( .A(B[13]), .B(A[13]), .Y(n78) );
  NAND2X2M U30 ( .A(B[14]), .B(A[14]), .Y(n72) );
  XNOR2X2M U31 ( .A(n121), .B(n34), .Y(SUM[4]) );
  XNOR2X2M U32 ( .A(n17), .B(n18), .Y(SUM[7]) );
  XNOR2X2M U33 ( .A(n13), .B(n14), .Y(SUM[8]) );
  XNOR2X2M U34 ( .A(n9), .B(n10), .Y(SUM[9]) );
  NAND2X2M U35 ( .A(n99), .B(n100), .Y(n84) );
  INVX4M U36 ( .A(B[17]), .Y(n2) );
  XNOR2X2M U37 ( .A(n64), .B(n65), .Y(SUM[16]) );
  NAND2XLM U38 ( .A(B[12]), .B(A[12]), .Y(n1) );
  NAND2X1M U39 ( .A(B[11]), .B(A[11]), .Y(n103) );
  CLKNAND2X8M U40 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NAND2X6M U41 ( .A(n115), .B(n116), .Y(n106) );
  NAND4X2M U42 ( .A(n106), .B(n100), .C(n105), .D(n107), .Y(n80) );
  XNOR2X2M U43 ( .A(n112), .B(n114), .Y(SUM[10]) );
  NAND2X1M U44 ( .A(B[10]), .B(A[10]), .Y(n102) );
  NAND2XLM U45 ( .A(n90), .B(n91), .Y(n3) );
  NAND2X1M U46 ( .A(B[17]), .B(A[16]), .Y(n60) );
  CLKNAND2X2M U47 ( .A(B[13]), .B(A[13]), .Y(n70) );
  CLKNAND2X2M U48 ( .A(A[15]), .B(B[17]), .Y(n69) );
  CLKINVX8M U49 ( .A(B[10]), .Y(n115) );
  OR2X12M U50 ( .A(B[8]), .B(A[8]), .Y(n107) );
  NAND2XLM U51 ( .A(n72), .B(n3), .Y(n89) );
  CLKINVX2M U52 ( .A(n77), .Y(n76) );
  NOR2X2M U53 ( .A(n75), .B(n76), .Y(n74) );
  CLKINVX4M U54 ( .A(B[7]), .Y(n127) );
  CLKAND2X6M U55 ( .A(n126), .B(n21), .Y(n7) );
  CLKINVX8M U56 ( .A(B[9]), .Y(n117) );
  NAND2X2M U57 ( .A(n124), .B(n125), .Y(n40) );
  CLKINVX2M U58 ( .A(B[3]), .Y(n124) );
  NOR2BX2M U59 ( .AN(n135), .B(A[0]), .Y(n6) );
  NAND2XLM U60 ( .A(B[3]), .B(A[3]), .Y(n38) );
  NAND2BX1M U61 ( .AN(n7), .B(n120), .Y(n119) );
  XNOR2X2M U62 ( .A(n88), .B(n89), .Y(SUM[14]) );
  AOI2B1X4M U63 ( .A1N(n5), .A0(n44), .B0(n43), .Y(n122) );
  NAND2BX1M U64 ( .AN(n81), .B(n82), .Y(n120) );
  OAI21XLM U65 ( .A0(n13), .A1(n80), .B0(n84), .Y(n97) );
  INVXLM U66 ( .A(n82), .Y(n121) );
  OAI2BB1X4M U67 ( .A0N(n73), .A1N(n4), .B0(n74), .Y(n71) );
  OR2X6M U68 ( .A(n79), .B(n80), .Y(n4) );
  NAND3X4M U69 ( .A(n130), .B(n30), .C(n26), .Y(n129) );
  AOI2B1XLM U70 ( .A1N(n111), .A0(n112), .B0(n113), .Y(n108) );
  INVXLM U71 ( .A(n100), .Y(n110) );
  OA21X4M U72 ( .A0(n123), .A1(n53), .B0(n51), .Y(n5) );
  NAND2XLM U73 ( .A(n70), .B(n78), .Y(n95) );
  NOR2BXLM U74 ( .AN(n33), .B(n32), .Y(n34) );
  XOR2X2M U75 ( .A(n23), .B(n8), .Y(SUM[6]) );
  NOR2BXLM U76 ( .AN(n19), .B(n20), .Y(n18) );
  INVXLM U77 ( .A(n70), .Y(n92) );
  NAND2XLM U78 ( .A(n94), .B(n78), .Y(n93) );
  INVXLM U79 ( .A(n107), .Y(n16) );
  NAND2XLM U80 ( .A(n46), .B(n44), .Y(n45) );
  XNOR2XLM U81 ( .A(n29), .B(n31), .Y(SUM[5]) );
  INVXLM U82 ( .A(n53), .Y(n49) );
  INVXLM U83 ( .A(n69), .Y(n68) );
  NAND2X2M U84 ( .A(n69), .B(n60), .Y(n59) );
  NAND2X1M U85 ( .A(B[6]), .B(A[6]), .Y(n25) );
  OR2X2M U86 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NAND2XLM U87 ( .A(B[2]), .B(A[2]), .Y(n46) );
  AOI2B1X1M U88 ( .A1N(n81), .A0(n82), .B0(n7), .Y(n79) );
  INVX2M U89 ( .A(n119), .Y(n13) );
  NAND2X4M U90 ( .A(n33), .B(n28), .Y(n130) );
  XNOR2X2M U91 ( .A(n49), .B(n52), .Y(SUM[1]) );
  NAND2X2M U92 ( .A(n51), .B(n50), .Y(n52) );
  NOR2BXLM U93 ( .AN(n11), .B(n12), .Y(n10) );
  XNOR2X2M U94 ( .A(n108), .B(n109), .Y(SUM[11]) );
  NOR2BX2M U95 ( .AN(n103), .B(n110), .Y(n109) );
  NAND2XLM U96 ( .A(n102), .B(n106), .Y(n114) );
  XNOR2X2M U97 ( .A(n94), .B(n95), .Y(SUM[13]) );
  NOR2BXLM U98 ( .AN(n15), .B(n16), .Y(n14) );
  NAND2XLM U99 ( .A(n1), .B(n77), .Y(n98) );
  XNOR2X2M U100 ( .A(n36), .B(n37), .Y(SUM[3]) );
  AOI2B1X1M U101 ( .A1N(n41), .A0(n42), .B0(n43), .Y(n36) );
  NOR2BX2M U102 ( .AN(n38), .B(n39), .Y(n37) );
  INVX2M U103 ( .A(n44), .Y(n41) );
  NAND2XLM U104 ( .A(n28), .B(n30), .Y(n31) );
  AND2X1M U105 ( .A(n25), .B(n26), .Y(n8) );
  OAI2B1X2M U106 ( .A1N(n40), .A0(n122), .B0(n38), .Y(n82) );
  INVX2M U107 ( .A(n50), .Y(n123) );
  AOI2B1X1M U108 ( .A1N(n22), .A0(n23), .B0(n24), .Y(n17) );
  INVXLM U109 ( .A(n21), .Y(n20) );
  XNOR2X2M U110 ( .A(n42), .B(n45), .Y(SUM[2]) );
  OAI21X2M U111 ( .A0(n121), .A1(n32), .B0(n33), .Y(n29) );
  OAI21XLM U112 ( .A0(n9), .A1(n12), .B0(n11), .Y(n112) );
  NAND2BX2M U113 ( .AN(n92), .B(n93), .Y(n88) );
  NAND2BX2M U114 ( .AN(n47), .B(n48), .Y(n42) );
  NAND2X2M U115 ( .A(n49), .B(n50), .Y(n48) );
  INVX2M U116 ( .A(n51), .Y(n47) );
  NAND2XLM U117 ( .A(n96), .B(n1), .Y(n94) );
  NAND2X2M U118 ( .A(n97), .B(n77), .Y(n96) );
  NAND2XLM U119 ( .A(n27), .B(n28), .Y(n23) );
  NAND2XLM U120 ( .A(n29), .B(n30), .Y(n27) );
  INVXLM U121 ( .A(n105), .Y(n12) );
  INVX2M U122 ( .A(n35), .Y(n32) );
  OA21X1M U123 ( .A0(n13), .A1(n16), .B0(n15), .Y(n9) );
  INVX2M U124 ( .A(n46), .Y(n43) );
  INVX2M U125 ( .A(n25), .Y(n24) );
  INVX2M U126 ( .A(n40), .Y(n39) );
  INVXLM U127 ( .A(n102), .Y(n113) );
  INVXLM U128 ( .A(n26), .Y(n22) );
  INVX2M U129 ( .A(B[0]), .Y(n135) );
  INVXLM U130 ( .A(n106), .Y(n111) );
  INVX2M U131 ( .A(A[14]), .Y(n91) );
  INVX2M U132 ( .A(A[10]), .Y(n116) );
  INVX2M U133 ( .A(A[9]), .Y(n118) );
  NAND2X2M U134 ( .A(A[15]), .B(A[16]), .Y(n63) );
  INVX2M U135 ( .A(A[6]), .Y(n132) );
  INVX2M U136 ( .A(A[5]), .Y(n134) );
  INVX2M U137 ( .A(A[7]), .Y(n128) );
  CLKNAND2X4M U138 ( .A(B[7]), .B(A[7]), .Y(n19) );
  XNOR2X2M U139 ( .A(n85), .B(n86), .Y(SUM[15]) );
  OAI21XLM U140 ( .A0(B[17]), .A1(A[15]), .B0(n69), .Y(n85) );
  NAND2XLM U141 ( .A(n72), .B(n87), .Y(n86) );
  NAND2XLM U142 ( .A(n3), .B(n88), .Y(n87) );
  NOR2BX2M U143 ( .AN(n53), .B(n6), .Y(SUM[0]) );
  XNOR2XLM U144 ( .A(B[17]), .B(n66), .Y(n65) );
  INVX2M U145 ( .A(A[16]), .Y(n66) );
  OR2X2M U146 ( .A(B[2]), .B(A[2]), .Y(n44) );
  NAND2X2M U147 ( .A(B[0]), .B(A[0]), .Y(n53) );
  INVX2M U148 ( .A(A[3]), .Y(n125) );
  NAND2BXLM U149 ( .AN(A[15]), .B(n2), .Y(n67) );
  INVX2M U150 ( .A(A[17]), .Y(n56) );
  AOI31XLM U151 ( .A0(n67), .A1(n3), .A2(n58), .B0(n68), .Y(n64) );
  XNOR2X8M U152 ( .A(n54), .B(n55), .Y(SUM[17]) );
  AOI2B1X8M U153 ( .A1N(n57), .A0(n58), .B0(n59), .Y(n54) );
  NAND2X8M U154 ( .A(n117), .B(n118), .Y(n105) );
endmodule


module segma_0 ( input_data, clk, reset, out_1bit );
  input [15:0] input_data;
  input clk, reset;
  output out_1bit;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11,
         N10, N1, N0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96;
  wire   [17:0] acc2;
  wire   [17:0] acc1;
  wire   [17:0] sum_top;
  wire   [17:0] diff_bottom;

  segma_0_DW01_sub_1 sub_1_root_sub_0_root_sub_17 ( .A({acc2[16:0], 1'b0}), 
        .B(acc1), .CI(1'b0), .DIFF({N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  segma_0_DW01_add_2 add_0_root_sub_0_root_sub_17 ( .A({N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B({
        input_data[15], input_data[15], input_data}), .CI(1'b0), .SUM(sum_top)
         );
  DFFRQX2M \acc1_reg[17]  ( .D(acc2[17]), .CK(clk), .RN(reset), .Q(acc1[17])
         );
  DFFRQX2M \acc1_reg[16]  ( .D(acc2[16]), .CK(clk), .RN(reset), .Q(acc1[16])
         );
  DFFRQX2M \acc1_reg[15]  ( .D(acc2[15]), .CK(clk), .RN(reset), .Q(acc1[15])
         );
  DFFRQX2M \acc1_reg[14]  ( .D(acc2[14]), .CK(clk), .RN(reset), .Q(acc1[14])
         );
  DFFRQX2M \acc2_reg[16]  ( .D(diff_bottom[16]), .CK(clk), .RN(reset), .Q(
        acc2[16]) );
  DFFRQX2M \acc2_reg[15]  ( .D(diff_bottom[15]), .CK(clk), .RN(reset), .Q(
        acc2[15]) );
  DFFRQX2M \acc2_reg[14]  ( .D(diff_bottom[14]), .CK(clk), .RN(reset), .Q(
        acc2[14]) );
  DFFRQX2M \acc2_reg[13]  ( .D(diff_bottom[13]), .CK(clk), .RN(reset), .Q(
        acc2[13]) );
  DFFRQX2M \acc1_reg[13]  ( .D(acc2[13]), .CK(clk), .RN(reset), .Q(acc1[13])
         );
  DFFRQX2M \acc1_reg[12]  ( .D(acc2[12]), .CK(clk), .RN(reset), .Q(acc1[12])
         );
  DFFRQX2M \acc1_reg[11]  ( .D(acc2[11]), .CK(clk), .RN(reset), .Q(acc1[11])
         );
  DFFRQX2M \acc1_reg[10]  ( .D(acc2[10]), .CK(clk), .RN(reset), .Q(acc1[10])
         );
  DFFRQX2M \acc2_reg[12]  ( .D(diff_bottom[12]), .CK(clk), .RN(reset), .Q(
        acc2[12]) );
  DFFRQX2M \acc2_reg[11]  ( .D(diff_bottom[11]), .CK(clk), .RN(reset), .Q(
        acc2[11]) );
  DFFRQX2M \acc2_reg[10]  ( .D(diff_bottom[10]), .CK(clk), .RN(reset), .Q(
        acc2[10]) );
  DFFRQX2M \acc2_reg[9]  ( .D(diff_bottom[9]), .CK(clk), .RN(reset), .Q(
        acc2[9]) );
  DFFRQX2M \acc1_reg[9]  ( .D(acc2[9]), .CK(clk), .RN(reset), .Q(acc1[9]) );
  DFFRQX2M \acc1_reg[8]  ( .D(acc2[8]), .CK(clk), .RN(reset), .Q(acc1[8]) );
  DFFRQX2M \acc1_reg[7]  ( .D(acc2[7]), .CK(clk), .RN(reset), .Q(acc1[7]) );
  DFFRQX2M \acc1_reg[6]  ( .D(acc2[6]), .CK(clk), .RN(reset), .Q(acc1[6]) );
  DFFRQX2M \acc2_reg[8]  ( .D(diff_bottom[8]), .CK(clk), .RN(reset), .Q(
        acc2[8]) );
  DFFRQX2M \acc2_reg[7]  ( .D(diff_bottom[7]), .CK(clk), .RN(reset), .Q(
        acc2[7]) );
  DFFRQX2M \acc2_reg[6]  ( .D(diff_bottom[6]), .CK(clk), .RN(reset), .Q(
        acc2[6]) );
  DFFRQX2M \acc2_reg[5]  ( .D(diff_bottom[5]), .CK(clk), .RN(reset), .Q(
        acc2[5]) );
  DFFRQX2M \acc1_reg[5]  ( .D(acc2[5]), .CK(clk), .RN(reset), .Q(acc1[5]) );
  DFFRQX2M \acc1_reg[4]  ( .D(acc2[4]), .CK(clk), .RN(reset), .Q(acc1[4]) );
  DFFRQX2M \acc1_reg[3]  ( .D(acc2[3]), .CK(clk), .RN(reset), .Q(acc1[3]) );
  DFFRQX2M \acc1_reg[2]  ( .D(acc2[2]), .CK(clk), .RN(reset), .Q(acc1[2]) );
  DFFRQX2M \acc2_reg[4]  ( .D(diff_bottom[4]), .CK(clk), .RN(reset), .Q(
        acc2[4]) );
  DFFRQX2M \acc2_reg[3]  ( .D(diff_bottom[3]), .CK(clk), .RN(reset), .Q(
        acc2[3]) );
  DFFRQX2M \acc2_reg[2]  ( .D(diff_bottom[2]), .CK(clk), .RN(reset), .Q(
        acc2[2]) );
  DFFRQX2M \acc2_reg[1]  ( .D(diff_bottom[1]), .CK(clk), .RN(reset), .Q(
        acc2[1]) );
  DFFRQX2M \acc2_reg[0]  ( .D(n96), .CK(clk), .RN(reset), .Q(acc2[0]) );
  DFFRQX2M \acc1_reg[0]  ( .D(acc2[0]), .CK(clk), .RN(reset), .Q(acc1[0]) );
  DFFRQX2M out_1bit_reg ( .D(n40), .CK(clk), .RN(reset), .Q(out_1bit) );
  DFFRQX2M \acc1_reg[1]  ( .D(acc2[1]), .CK(clk), .RN(reset), .Q(acc1[1]) );
  DFFRQX2M \acc2_reg[17]  ( .D(diff_bottom[17]), .CK(clk), .RN(reset), .Q(
        acc2[17]) );
  OR2X1M U3 ( .A(sum_top[7]), .B(n41), .Y(n78) );
  CLKINVX12M U4 ( .A(n41), .Y(n31) );
  NAND2X2M U5 ( .A(n1), .B(n2), .Y(n3) );
  NAND2X2M U6 ( .A(n3), .B(n67), .Y(n63) );
  INVXLM U7 ( .A(n41), .Y(n1) );
  INVX2M U8 ( .A(sum_top[14]), .Y(n2) );
  BUFX6M U9 ( .A(n43), .Y(n41) );
  NAND2X2M U10 ( .A(n4), .B(n5), .Y(n6) );
  NAND2X2M U11 ( .A(n6), .B(n55), .Y(n74) );
  INVXLM U12 ( .A(n31), .Y(n4) );
  INVX2M U13 ( .A(n56), .Y(n5) );
  NAND2X2M U14 ( .A(n7), .B(n8), .Y(n9) );
  NAND2X2M U15 ( .A(n9), .B(n66), .Y(n64) );
  INVXLM U16 ( .A(n31), .Y(n7) );
  INVX2M U17 ( .A(sum_top[15]), .Y(n8) );
  NAND2X2M U18 ( .A(n10), .B(n11), .Y(n12) );
  NAND2X2M U19 ( .A(n12), .B(n76), .Y(n55) );
  INVXLM U20 ( .A(n42), .Y(n10) );
  INVX2M U21 ( .A(sum_top[9]), .Y(n11) );
  NAND2X2M U22 ( .A(n13), .B(n14), .Y(n15) );
  CLKNAND2X2M U23 ( .A(n15), .B(n74), .Y(n57) );
  INVXLM U24 ( .A(n42), .Y(n13) );
  INVX2M U25 ( .A(sum_top[10]), .Y(n14) );
  NAND2X2M U26 ( .A(n16), .B(n17), .Y(n18) );
  NAND2X2M U27 ( .A(n18), .B(n71), .Y(n59) );
  INVXLM U28 ( .A(n41), .Y(n16) );
  INVX2M U29 ( .A(sum_top[12]), .Y(n17) );
  NAND2X4M U30 ( .A(n19), .B(n20), .Y(n21) );
  NAND2X2M U31 ( .A(n21), .B(n61), .Y(n67) );
  INVXLM U32 ( .A(n31), .Y(n19) );
  INVX2M U33 ( .A(n62), .Y(n20) );
  NAND2X2M U34 ( .A(n22), .B(n23), .Y(n24) );
  CLKNAND2X2M U35 ( .A(n24), .B(n69), .Y(n61) );
  INVXLM U36 ( .A(n42), .Y(n22) );
  INVX2M U37 ( .A(sum_top[13]), .Y(n23) );
  BUFX18M U38 ( .A(n43), .Y(n42) );
  NAND2X2M U39 ( .A(n25), .B(n26), .Y(n27) );
  NAND2X2M U40 ( .A(n27), .B(n59), .Y(n69) );
  INVXLM U41 ( .A(n31), .Y(n25) );
  INVX2M U42 ( .A(n60), .Y(n26) );
  NAND2X2M U43 ( .A(n28), .B(n29), .Y(n30) );
  NAND2X2M U44 ( .A(n30), .B(n64), .Y(n95) );
  INVXLM U45 ( .A(n41), .Y(n28) );
  INVX2M U46 ( .A(n65), .Y(n29) );
  INVXLM U47 ( .A(sum_top[15]), .Y(n65) );
  OAI2BB1X1M U48 ( .A0N(n41), .A1N(n33), .B0(n95), .Y(n39) );
  INVX8M U49 ( .A(sum_top[17]), .Y(n43) );
  NOR2X3M U50 ( .A(n44), .B(sum_top[17]), .Y(n45) );
  OAI31X4M U51 ( .A0(n86), .A1(n51), .A2(n85), .B0(n50), .Y(n32) );
  OA21X4M U52 ( .A0(n88), .A1(n36), .B0(n87), .Y(n89) );
  INVX4M U53 ( .A(n87), .Y(n51) );
  NAND2BX8M U54 ( .AN(n31), .B(sum_top[5]), .Y(n87) );
  AOI21X8M U55 ( .A0(sum_top[1]), .A1(sum_top[0]), .B0(n45), .Y(n94) );
  NAND2BX4M U56 ( .AN(n31), .B(sum_top[3]), .Y(n91) );
  NAND2BX4M U57 ( .AN(n31), .B(sum_top[6]), .Y(n80) );
  NAND2BX4M U58 ( .AN(n31), .B(sum_top[7]), .Y(n81) );
  NAND2BX2M U59 ( .AN(sum_top[8]), .B(n31), .Y(n53) );
  XOR3X4M U60 ( .A(n40), .B(sum_top[16]), .C(n95), .Y(diff_bottom[16]) );
  OR2X12M U61 ( .A(sum_top[3]), .B(n42), .Y(n90) );
  OAI21X4M U62 ( .A0(n42), .A1(sum_top[4]), .B0(n90), .Y(n47) );
  OR2X12M U63 ( .A(sum_top[5]), .B(n42), .Y(n84) );
  OA21X8M U64 ( .A0(sum_top[6]), .A1(n42), .B0(n84), .Y(n50) );
  INVX2M U65 ( .A(n49), .Y(n85) );
  INVX2M U66 ( .A(sum_top[12]), .Y(n60) );
  OAI31XLM U67 ( .A0(n86), .A1(n51), .A2(n85), .B0(n50), .Y(n79) );
  AOI21X4M U68 ( .A0(n48), .A1(n91), .B0(n47), .Y(n86) );
  INVX2M U69 ( .A(sum_top[16]), .Y(n33) );
  AOI2B1X4M U70 ( .A1N(n43), .A0(n46), .B0(n94), .Y(n38) );
  OAI2BB1X2M U71 ( .A0N(n41), .A1N(sum_top[8]), .B0(n54), .Y(n76) );
  OAI2BB1X2M U72 ( .A0N(n41), .A1N(sum_top[10]), .B0(n57), .Y(n72) );
  OAI2BB1X2M U73 ( .A0N(n41), .A1N(sum_top[11]), .B0(n58), .Y(n71) );
  OAI2BB1X2M U74 ( .A0N(n41), .A1N(sum_top[14]), .B0(n63), .Y(n66) );
  OAI21X2M U75 ( .A0(n42), .A1(sum_top[11]), .B0(n72), .Y(n58) );
  OAI2BB1X1M U76 ( .A0N(sum_top[16]), .A1N(n40), .B0(n39), .Y(diff_bottom[17])
         );
  NAND3X1M U77 ( .A(n53), .B(n52), .C(n78), .Y(n54) );
  INVX2M U78 ( .A(sum_top[13]), .Y(n62) );
  NOR2X4M U79 ( .A(n38), .B(n34), .Y(n48) );
  CLKINVX2M U80 ( .A(sum_top[2]), .Y(n46) );
  INVXLM U81 ( .A(sum_top[9]), .Y(n56) );
  INVXLM U82 ( .A(sum_top[0]), .Y(n96) );
  NOR2XLM U83 ( .A(sum_top[17]), .B(n46), .Y(n34) );
  NOR2XLM U84 ( .A(n38), .B(n34), .Y(n37) );
  AND2X1M U85 ( .A(n79), .B(n80), .Y(n35) );
  INVXLM U86 ( .A(n41), .Y(n40) );
  NOR2XLM U87 ( .A(n86), .B(n85), .Y(n36) );
  NAND2BX1M U88 ( .AN(sum_top[17]), .B(sum_top[4]), .Y(n49) );
  XOR3XLM U89 ( .A(sum_top[14]), .B(n40), .C(n68), .Y(diff_bottom[14]) );
  INVXLM U90 ( .A(n67), .Y(n68) );
  XOR3XLM U91 ( .A(sum_top[13]), .B(n40), .C(n70), .Y(diff_bottom[13]) );
  INVXLM U92 ( .A(n69), .Y(n70) );
  XNOR3XLM U93 ( .A(sum_top[12]), .B(n40), .C(n71), .Y(diff_bottom[12]) );
  XOR3XLM U94 ( .A(sum_top[11]), .B(n40), .C(n73), .Y(diff_bottom[11]) );
  INVXLM U95 ( .A(n72), .Y(n73) );
  XOR3XLM U96 ( .A(sum_top[10]), .B(n40), .C(n75), .Y(diff_bottom[10]) );
  INVXLM U97 ( .A(n74), .Y(n75) );
  XOR3XLM U98 ( .A(sum_top[8]), .B(n40), .C(n83), .Y(diff_bottom[8]) );
  OA21X1M U99 ( .A0(n82), .A1(n35), .B0(n81), .Y(n83) );
  INVXLM U100 ( .A(n78), .Y(n82) );
  XOR3XLM U101 ( .A(sum_top[9]), .B(n40), .C(n77), .Y(diff_bottom[9]) );
  INVXLM U102 ( .A(n76), .Y(n77) );
  XOR3XLM U103 ( .A(sum_top[7]), .B(n40), .C(n35), .Y(diff_bottom[7]) );
  XOR3XLM U104 ( .A(sum_top[6]), .B(n40), .C(n89), .Y(diff_bottom[6]) );
  INVXLM U105 ( .A(n84), .Y(n88) );
  XOR3XLM U106 ( .A(sum_top[4]), .B(n40), .C(n93), .Y(diff_bottom[4]) );
  OA21X1M U107 ( .A0(n92), .A1(n37), .B0(n91), .Y(n93) );
  INVXLM U108 ( .A(n90), .Y(n92) );
  XOR3XLM U109 ( .A(sum_top[5]), .B(n40), .C(n36), .Y(diff_bottom[5]) );
  XOR3XLM U110 ( .A(sum_top[3]), .B(n40), .C(n37), .Y(diff_bottom[3]) );
  XOR3XLM U111 ( .A(sum_top[2]), .B(n40), .C(n94), .Y(diff_bottom[2]) );
  NOR2X2M U112 ( .A(sum_top[0]), .B(sum_top[1]), .Y(n44) );
  XOR3XLM U113 ( .A(sum_top[15]), .B(n40), .C(n66), .Y(diff_bottom[15]) );
  XOR3XLM U114 ( .A(sum_top[1]), .B(sum_top[0]), .C(n42), .Y(diff_bottom[1])
         );
  NAND3X2M U115 ( .A(n81), .B(n32), .C(n80), .Y(n52) );
endmodule


module segma_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18;
  wire   [18:0] carry;

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
  ADDFXLM U2_16 ( .A(A[16]), .B(n2), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXLM U2_1 ( .A(A[1]), .B(n17), .CI(n18), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXLM U2_2 ( .A(A[2]), .B(n16), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
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


module segma_1_DW01_add_2 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141;

  CLKNAND2X2M U2 ( .A(n61), .B(n62), .Y(n56) );
  NAND2X6M U3 ( .A(n133), .B(n134), .Y(n22) );
  NAND2X2M U4 ( .A(n33), .B(n29), .Y(n136) );
  NAND2X4M U5 ( .A(n121), .B(n122), .Y(n107) );
  AOI21X2M U6 ( .A0(n3), .A1(n44), .B0(n43), .Y(n126) );
  OAI21X2M U7 ( .A0(n129), .A1(n52), .B0(n50), .Y(n3) );
  INVX2M U8 ( .A(n49), .Y(n129) );
  NAND2X2M U9 ( .A(B[0]), .B(A[0]), .Y(n52) );
  XNOR2X4M U10 ( .A(n2), .B(n55), .Y(n54) );
  AOI2B1X4M U11 ( .A1N(n56), .A0(n57), .B0(n58), .Y(n53) );
  NAND2X2M U12 ( .A(B[5]), .B(A[5]), .Y(n29) );
  NAND2X2M U13 ( .A(n137), .B(n138), .Y(n27) );
  INVX2M U14 ( .A(B[6]), .Y(n137) );
  NAND2X6M U15 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NAND2X6M U16 ( .A(n119), .B(n120), .Y(n108) );
  NAND2X2M U17 ( .A(n113), .B(n114), .Y(n102) );
  CLKNAND2X2M U18 ( .A(n101), .B(n102), .Y(n85) );
  INVX2M U19 ( .A(n78), .Y(n77) );
  NAND4X2M U20 ( .A(n108), .B(n102), .C(n107), .D(n109), .Y(n81) );
  AOI2B1X2M U21 ( .A1N(n82), .A0(n83), .B0(n5), .Y(n80) );
  OR2X2M U22 ( .A(B[1]), .B(A[1]), .Y(n49) );
  NAND2X2M U23 ( .A(B[2]), .B(A[2]), .Y(n45) );
  NAND2X2M U24 ( .A(n127), .B(n128), .Y(n44) );
  INVX2M U25 ( .A(B[2]), .Y(n127) );
  NAND2X2M U26 ( .A(n130), .B(n131), .Y(n40) );
  INVX2M U27 ( .A(B[3]), .Y(n130) );
  INVX2M U28 ( .A(n45), .Y(n43) );
  NAND2X2M U29 ( .A(B[4]), .B(A[4]), .Y(n33) );
  NAND2X2M U30 ( .A(n139), .B(n140), .Y(n31) );
  INVX2M U31 ( .A(B[5]), .Y(n139) );
  NAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n16) );
  OR2X2M U33 ( .A(B[12]), .B(A[12]), .Y(n78) );
  INVX2M U34 ( .A(n1), .Y(n2) );
  XNOR2X2M U35 ( .A(n18), .B(n19), .Y(SUM[7]) );
  XNOR2X2M U36 ( .A(n110), .B(n111), .Y(SUM[11]) );
  NAND2X2M U37 ( .A(B[13]), .B(A[13]), .Y(n70) );
  CLKINVX4M U38 ( .A(B[13]), .Y(n96) );
  NOR2X8M U39 ( .A(n76), .B(n77), .Y(n75) );
  OAI2B1X2M U40 ( .A1N(n40), .A0(n126), .B0(n38), .Y(n83) );
  INVX2M U41 ( .A(B[17]), .Y(n1) );
  NAND3X8M U42 ( .A(n70), .B(n71), .C(n72), .Y(n57) );
  CLKNAND2X8M U43 ( .A(B[10]), .B(A[10]), .Y(n104) );
  XNOR2X2M U44 ( .A(n125), .B(n34), .Y(SUM[4]) );
  NAND2X2M U45 ( .A(B[11]), .B(A[11]), .Y(n105) );
  CLKINVX1M U46 ( .A(B[11]), .Y(n113) );
  CLKNAND2X4M U47 ( .A(B[12]), .B(A[12]), .Y(n84) );
  OAI21X1M U48 ( .A0(n14), .A1(n81), .B0(n85), .Y(n99) );
  NOR2X6M U49 ( .A(n80), .B(n81), .Y(n74) );
  NAND2X3M U50 ( .A(B[14]), .B(A[14]), .Y(n72) );
  NAND2X6M U51 ( .A(n91), .B(n92), .Y(n62) );
  XNOR2XLM U52 ( .A(n14), .B(n15), .Y(SUM[8]) );
  INVX3M U53 ( .A(n79), .Y(n76) );
  CLKINVX8M U54 ( .A(B[7]), .Y(n133) );
  NAND3X4M U55 ( .A(n136), .B(n31), .C(n27), .Y(n135) );
  CLKAND2X12M U56 ( .A(n132), .B(n22), .Y(n5) );
  NAND4X4M U57 ( .A(n27), .B(n22), .C(n31), .D(n35), .Y(n82) );
  XNOR2XLM U58 ( .A(n99), .B(n100), .Y(SUM[12]) );
  NAND2X1M U59 ( .A(B[6]), .B(A[6]), .Y(n26) );
  NAND2BXLM U60 ( .AN(n82), .B(n83), .Y(n124) );
  NAND2BX1M U61 ( .AN(n5), .B(n124), .Y(n123) );
  NOR2BX2M U62 ( .AN(n105), .B(n112), .Y(n111) );
  XNOR2XLM U63 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2BXLM U64 ( .AN(n20), .B(n21), .Y(n19) );
  NAND2X1M U65 ( .A(B[1]), .B(A[1]), .Y(n50) );
  NAND2X1M U66 ( .A(B[3]), .B(A[3]), .Y(n38) );
  XOR2X1M U67 ( .A(n95), .B(n6), .Y(SUM[13]) );
  XOR2X2M U68 ( .A(n24), .B(n8), .Y(SUM[6]) );
  NAND2XLM U69 ( .A(n99), .B(n78), .Y(n98) );
  NAND2BX1M U70 ( .AN(n93), .B(n94), .Y(n89) );
  INVXLM U71 ( .A(n109), .Y(n17) );
  NAND2XLM U72 ( .A(n50), .B(n49), .Y(n51) );
  XOR2XLM U73 ( .A(n30), .B(n7), .Y(SUM[5]) );
  XNOR2X2M U74 ( .A(n36), .B(n37), .Y(SUM[3]) );
  INVXLM U75 ( .A(n40), .Y(n39) );
  NAND2XLM U76 ( .A(n48), .B(n49), .Y(n47) );
  INVXLM U77 ( .A(n69), .Y(n68) );
  CLKNAND2X8M U78 ( .A(B[7]), .B(A[7]), .Y(n20) );
  NAND2X2M U79 ( .A(n59), .B(n60), .Y(n58) );
  NAND2X2M U80 ( .A(n63), .B(n1), .Y(n61) );
  OR2X2M U81 ( .A(B[4]), .B(A[4]), .Y(n35) );
  NOR2BX2M U82 ( .AN(n141), .B(A[0]), .Y(n4) );
  INVX2M U83 ( .A(n123), .Y(n14) );
  INVXLM U84 ( .A(n83), .Y(n125) );
  AND2X4M U85 ( .A(n85), .B(n84), .Y(n73) );
  NAND2X4M U86 ( .A(n16), .B(n12), .Y(n106) );
  XNOR2X2M U87 ( .A(n48), .B(n51), .Y(SUM[1]) );
  AOI2B1X1M U88 ( .A1N(n115), .A0(n116), .B0(n117), .Y(n110) );
  INVXLM U89 ( .A(n102), .Y(n112) );
  NAND2XLM U90 ( .A(n84), .B(n78), .Y(n100) );
  AND2X1M U91 ( .A(n70), .B(n79), .Y(n6) );
  XNOR2X2M U92 ( .A(n89), .B(n90), .Y(SUM[14]) );
  NAND2XLM U93 ( .A(n72), .B(n62), .Y(n90) );
  NOR2BXLM U94 ( .AN(n33), .B(n32), .Y(n34) );
  XNOR2X2M U95 ( .A(n116), .B(n118), .Y(SUM[10]) );
  NAND2XLM U96 ( .A(n104), .B(n108), .Y(n118) );
  NOR2BXLM U97 ( .AN(n16), .B(n17), .Y(n15) );
  NOR2BXLM U98 ( .AN(n12), .B(n13), .Y(n11) );
  AOI2B1X1M U99 ( .A1N(n23), .A0(n24), .B0(n25), .Y(n18) );
  INVXLM U100 ( .A(n22), .Y(n21) );
  NOR2BX2M U101 ( .AN(n38), .B(n39), .Y(n37) );
  AOI2B1XLM U102 ( .A1N(n41), .A0(n42), .B0(n43), .Y(n36) );
  AND2X1M U103 ( .A(n29), .B(n31), .Y(n7) );
  AND2X1M U104 ( .A(n26), .B(n27), .Y(n8) );
  XOR2X2M U105 ( .A(n42), .B(n9), .Y(SUM[2]) );
  AND2X1M U106 ( .A(n45), .B(n44), .Y(n9) );
  OAI21XLM U107 ( .A0(n125), .A1(n32), .B0(n33), .Y(n30) );
  OAI21XLM U108 ( .A0(n10), .A1(n13), .B0(n12), .Y(n116) );
  NAND2XLM U109 ( .A(n98), .B(n84), .Y(n95) );
  INVX2M U110 ( .A(n70), .Y(n93) );
  NAND2XLM U111 ( .A(n95), .B(n79), .Y(n94) );
  NAND2BX2M U112 ( .AN(n46), .B(n47), .Y(n42) );
  INVX2M U113 ( .A(n50), .Y(n46) );
  NAND2XLM U114 ( .A(n28), .B(n29), .Y(n24) );
  NAND2XLM U115 ( .A(n30), .B(n31), .Y(n28) );
  INVXLM U116 ( .A(n107), .Y(n13) );
  INVX2M U117 ( .A(n35), .Y(n32) );
  OA21X1M U118 ( .A0(n14), .A1(n17), .B0(n16), .Y(n10) );
  INVX2M U119 ( .A(n52), .Y(n48) );
  INVX2M U120 ( .A(n26), .Y(n25) );
  INVXLM U121 ( .A(n104), .Y(n117) );
  INVXLM U122 ( .A(n27), .Y(n23) );
  INVX2M U123 ( .A(B[0]), .Y(n141) );
  INVXLM U124 ( .A(n44), .Y(n41) );
  INVXLM U125 ( .A(n108), .Y(n115) );
  INVX2M U126 ( .A(A[14]), .Y(n92) );
  CLKINVX8M U127 ( .A(B[14]), .Y(n91) );
  INVX2M U128 ( .A(A[13]), .Y(n97) );
  INVX2M U129 ( .A(A[10]), .Y(n120) );
  CLKINVX8M U130 ( .A(B[10]), .Y(n119) );
  INVX2M U131 ( .A(A[9]), .Y(n122) );
  CLKINVX6M U132 ( .A(B[9]), .Y(n121) );
  INVX2M U133 ( .A(A[11]), .Y(n114) );
  NAND2X2M U134 ( .A(A[15]), .B(A[16]), .Y(n63) );
  NAND2XLM U135 ( .A(B[17]), .B(A[16]), .Y(n60) );
  NAND2XLM U136 ( .A(A[15]), .B(B[17]), .Y(n59) );
  INVX2M U137 ( .A(A[6]), .Y(n138) );
  INVX2M U138 ( .A(A[5]), .Y(n140) );
  INVX2M U139 ( .A(A[2]), .Y(n128) );
  INVX2M U140 ( .A(A[7]), .Y(n134) );
  OR2X2M U141 ( .A(B[8]), .B(A[8]), .Y(n109) );
  INVX2M U142 ( .A(A[3]), .Y(n131) );
  XNOR2X2M U143 ( .A(n86), .B(n87), .Y(SUM[15]) );
  OAI21XLM U144 ( .A0(n2), .A1(A[15]), .B0(n69), .Y(n86) );
  NAND2XLM U145 ( .A(n72), .B(n88), .Y(n87) );
  NAND2XLM U146 ( .A(n62), .B(n89), .Y(n88) );
  NOR2BX2M U147 ( .AN(n52), .B(n4), .Y(SUM[0]) );
  XNOR2X2M U148 ( .A(n64), .B(n65), .Y(SUM[16]) );
  XNOR2XLM U149 ( .A(n2), .B(n66), .Y(n65) );
  AOI31XLM U150 ( .A0(n67), .A1(n62), .A2(n57), .B0(n68), .Y(n64) );
  INVX2M U151 ( .A(A[16]), .Y(n66) );
  NAND2XLM U152 ( .A(A[15]), .B(n2), .Y(n69) );
  NAND2BXLM U153 ( .AN(A[15]), .B(n1), .Y(n67) );
  INVX2M U154 ( .A(A[17]), .Y(n55) );
  NAND3X4M U155 ( .A(n106), .B(n107), .C(n108), .Y(n103) );
  NAND3X4M U156 ( .A(n103), .B(n104), .C(n105), .Y(n101) );
  XNOR2X8M U157 ( .A(n53), .B(n54), .Y(SUM[17]) );
  OAI2B1X8M U158 ( .A1N(n73), .A0(n74), .B0(n75), .Y(n71) );
  NAND2X8M U159 ( .A(n96), .B(n97), .Y(n79) );
  NAND3X6M U160 ( .A(n135), .B(n26), .C(n20), .Y(n132) );
endmodule


module segma_1 ( input_data, clk, reset, out_1bit );
  input [15:0] input_data;
  input clk, reset;
  output out_1bit;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N17, N16, N15, N14, N13, N12, N11,
         N10, N1, N0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99;
  wire   [17:0] acc2;
  wire   [17:0] acc1;
  wire   [17:0] sum_top;
  wire   [17:0] diff_bottom;

  segma_1_DW01_sub_1 sub_1_root_sub_0_root_sub_17 ( .A({acc2[16:0], 1'b0}), 
        .B(acc1), .CI(1'b0), .DIFF({N17, N16, N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  segma_1_DW01_add_2 add_0_root_sub_0_root_sub_17 ( .A({N17, N16, N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B({
        input_data[15], input_data[15], input_data}), .CI(1'b0), .SUM(sum_top)
         );
  DFFRQX2M \acc1_reg[17]  ( .D(acc2[17]), .CK(clk), .RN(reset), .Q(acc1[17])
         );
  DFFRQX2M \acc1_reg[16]  ( .D(acc2[16]), .CK(clk), .RN(reset), .Q(acc1[16])
         );
  DFFRQX2M \acc1_reg[15]  ( .D(acc2[15]), .CK(clk), .RN(reset), .Q(acc1[15])
         );
  DFFRQX2M \acc1_reg[14]  ( .D(acc2[14]), .CK(clk), .RN(reset), .Q(acc1[14])
         );
  DFFRQX2M \acc2_reg[16]  ( .D(diff_bottom[16]), .CK(clk), .RN(reset), .Q(
        acc2[16]) );
  DFFRQX2M \acc2_reg[15]  ( .D(diff_bottom[15]), .CK(clk), .RN(reset), .Q(
        acc2[15]) );
  DFFRQX2M \acc2_reg[14]  ( .D(diff_bottom[14]), .CK(clk), .RN(reset), .Q(
        acc2[14]) );
  DFFRQX2M \acc2_reg[13]  ( .D(diff_bottom[13]), .CK(clk), .RN(reset), .Q(
        acc2[13]) );
  DFFRQX2M \acc1_reg[13]  ( .D(acc2[13]), .CK(clk), .RN(reset), .Q(acc1[13])
         );
  DFFRQX2M \acc1_reg[12]  ( .D(acc2[12]), .CK(clk), .RN(reset), .Q(acc1[12])
         );
  DFFRQX2M \acc1_reg[11]  ( .D(acc2[11]), .CK(clk), .RN(reset), .Q(acc1[11])
         );
  DFFRQX2M \acc1_reg[10]  ( .D(acc2[10]), .CK(clk), .RN(reset), .Q(acc1[10])
         );
  DFFRQX2M \acc2_reg[12]  ( .D(diff_bottom[12]), .CK(clk), .RN(reset), .Q(
        acc2[12]) );
  DFFRQX2M \acc2_reg[11]  ( .D(diff_bottom[11]), .CK(clk), .RN(reset), .Q(
        acc2[11]) );
  DFFRQX2M \acc2_reg[10]  ( .D(diff_bottom[10]), .CK(clk), .RN(reset), .Q(
        acc2[10]) );
  DFFRQX2M \acc2_reg[9]  ( .D(diff_bottom[9]), .CK(clk), .RN(reset), .Q(
        acc2[9]) );
  DFFRQX2M \acc1_reg[9]  ( .D(acc2[9]), .CK(clk), .RN(reset), .Q(acc1[9]) );
  DFFRQX2M \acc1_reg[8]  ( .D(acc2[8]), .CK(clk), .RN(reset), .Q(acc1[8]) );
  DFFRQX2M \acc1_reg[7]  ( .D(acc2[7]), .CK(clk), .RN(reset), .Q(acc1[7]) );
  DFFRQX2M \acc1_reg[6]  ( .D(acc2[6]), .CK(clk), .RN(reset), .Q(acc1[6]) );
  DFFRQX2M \acc2_reg[8]  ( .D(diff_bottom[8]), .CK(clk), .RN(reset), .Q(
        acc2[8]) );
  DFFRQX2M \acc2_reg[7]  ( .D(diff_bottom[7]), .CK(clk), .RN(reset), .Q(
        acc2[7]) );
  DFFRQX2M \acc2_reg[6]  ( .D(diff_bottom[6]), .CK(clk), .RN(reset), .Q(
        acc2[6]) );
  DFFRQX2M \acc2_reg[5]  ( .D(diff_bottom[5]), .CK(clk), .RN(reset), .Q(
        acc2[5]) );
  DFFRQX2M \acc1_reg[5]  ( .D(acc2[5]), .CK(clk), .RN(reset), .Q(acc1[5]) );
  DFFRQX2M \acc1_reg[4]  ( .D(acc2[4]), .CK(clk), .RN(reset), .Q(acc1[4]) );
  DFFRQX2M \acc1_reg[3]  ( .D(acc2[3]), .CK(clk), .RN(reset), .Q(acc1[3]) );
  DFFRQX2M \acc1_reg[2]  ( .D(acc2[2]), .CK(clk), .RN(reset), .Q(acc1[2]) );
  DFFRQX2M \acc1_reg[1]  ( .D(acc2[1]), .CK(clk), .RN(reset), .Q(acc1[1]) );
  DFFRQX2M \acc2_reg[4]  ( .D(diff_bottom[4]), .CK(clk), .RN(reset), .Q(
        acc2[4]) );
  DFFRQX2M \acc2_reg[3]  ( .D(diff_bottom[3]), .CK(clk), .RN(reset), .Q(
        acc2[3]) );
  DFFRQX2M \acc2_reg[2]  ( .D(diff_bottom[2]), .CK(clk), .RN(reset), .Q(
        acc2[2]) );
  DFFRQX2M \acc2_reg[1]  ( .D(diff_bottom[1]), .CK(clk), .RN(reset), .Q(
        acc2[1]) );
  DFFRQX2M \acc2_reg[0]  ( .D(n29), .CK(clk), .RN(reset), .Q(acc2[0]) );
  DFFRQX2M \acc1_reg[0]  ( .D(acc2[0]), .CK(clk), .RN(reset), .Q(acc1[0]) );
  DFFRQX2M out_1bit_reg ( .D(n38), .CK(clk), .RN(reset), .Q(out_1bit) );
  DFFRQX2M \acc2_reg[17]  ( .D(diff_bottom[17]), .CK(clk), .RN(reset), .Q(
        acc2[17]) );
  NAND2X4M U3 ( .A(n11), .B(n61), .Y(n73) );
  NAND2X4M U4 ( .A(n20), .B(n78), .Y(n59) );
  CLKINVX12M U5 ( .A(n46), .Y(n45) );
  OR2X4M U6 ( .A(n39), .B(sum_top[13]), .Y(n1) );
  CLKNAND2X4M U7 ( .A(n1), .B(n71), .Y(n64) );
  OR2X2M U8 ( .A(n39), .B(sum_top[12]), .Y(n2) );
  NAND2X4M U9 ( .A(n2), .B(n73), .Y(n63) );
  INVXLM U10 ( .A(n38), .Y(n39) );
  NAND2X2M U11 ( .A(n3), .B(n4), .Y(n5) );
  NAND2X1M U12 ( .A(n5), .B(n99), .Y(n44) );
  INVXLM U13 ( .A(n38), .Y(n3) );
  INVX2M U14 ( .A(sum_top[16]), .Y(n4) );
  NAND2X4M U15 ( .A(n6), .B(n7), .Y(n8) );
  CLKNAND2X8M U16 ( .A(n8), .B(n75), .Y(n61) );
  INVXLM U17 ( .A(n46), .Y(n6) );
  INVX2M U18 ( .A(sum_top[11]), .Y(n7) );
  BUFX8M U19 ( .A(n48), .Y(n46) );
  NAND2X2M U20 ( .A(n9), .B(n10), .Y(n11) );
  INVXLM U21 ( .A(n38), .Y(n9) );
  INVX2M U22 ( .A(n62), .Y(n10) );
  NAND2X2M U23 ( .A(n12), .B(n13), .Y(n14) );
  NAND2X4M U24 ( .A(n14), .B(n68), .Y(n66) );
  INVXLM U25 ( .A(n38), .Y(n12) );
  INVX2M U26 ( .A(sum_top[15]), .Y(n13) );
  NAND2X4M U27 ( .A(n15), .B(n16), .Y(n17) );
  NAND2X4M U28 ( .A(n17), .B(n57), .Y(n78) );
  INVXLM U29 ( .A(n38), .Y(n15) );
  INVX2M U30 ( .A(n58), .Y(n16) );
  NAND2X2M U31 ( .A(n18), .B(n19), .Y(n20) );
  INVXLM U32 ( .A(n46), .Y(n18) );
  INVX2M U33 ( .A(sum_top[9]), .Y(n19) );
  NAND2X2M U34 ( .A(n21), .B(n22), .Y(n23) );
  NAND2X4M U35 ( .A(n23), .B(n66), .Y(n99) );
  INVXLM U36 ( .A(n47), .Y(n21) );
  INVX2M U37 ( .A(n67), .Y(n22) );
  BUFX10M U38 ( .A(n48), .Y(n47) );
  INVXLM U39 ( .A(sum_top[15]), .Y(n67) );
  NAND2X2M U40 ( .A(n24), .B(n25), .Y(n26) );
  NAND2X4M U41 ( .A(n26), .B(n76), .Y(n60) );
  INVXLM U42 ( .A(n46), .Y(n24) );
  INVX2M U43 ( .A(sum_top[10]), .Y(n25) );
  OAI2BB1X4M U44 ( .A0N(n39), .A1N(sum_top[9]), .B0(n59), .Y(n76) );
  NOR2X3M U45 ( .A(sum_top[17]), .B(n49), .Y(n50) );
  INVX8M U46 ( .A(sum_top[17]), .Y(n48) );
  NAND2X4M U47 ( .A(n33), .B(n94), .Y(n52) );
  NOR2X3M U48 ( .A(n43), .B(n40), .Y(n53) );
  NAND2BX8M U49 ( .AN(n38), .B(sum_top[5]), .Y(n91) );
  NAND2BX8M U50 ( .AN(n38), .B(sum_top[6]), .Y(n82) );
  NAND2BX8M U51 ( .AN(n38), .B(sum_top[7]), .Y(n85) );
  CLKINVX16M U52 ( .A(n47), .Y(n38) );
  NAND2X3M U53 ( .A(n35), .B(n56), .Y(n57) );
  NOR2X4M U54 ( .A(n45), .B(n51), .Y(n40) );
  NAND2X2M U55 ( .A(n31), .B(n32), .Y(n33) );
  INVX2M U56 ( .A(sum_top[1]), .Y(n28) );
  OR2X6M U57 ( .A(sum_top[3]), .B(n47), .Y(n94) );
  INVX2M U58 ( .A(sum_top[14]), .Y(n34) );
  INVXLM U59 ( .A(n54), .Y(n89) );
  NOR2X2M U60 ( .A(n84), .B(n83), .Y(n27) );
  INVX2M U61 ( .A(sum_top[0]), .Y(n29) );
  NAND2BX1M U62 ( .AN(n45), .B(sum_top[4]), .Y(n54) );
  NAND3X4M U63 ( .A(n85), .B(n81), .C(n82), .Y(n56) );
  INVX2M U64 ( .A(n47), .Y(n31) );
  OAI2BB1X4M U65 ( .A0N(n39), .A1N(sum_top[12]), .B0(n63), .Y(n71) );
  AOI2BB1X4M U66 ( .A0N(n28), .A1N(n29), .B0(n50), .Y(n98) );
  NAND2X4M U67 ( .A(n37), .B(n55), .Y(n81) );
  NAND3X4M U68 ( .A(n36), .B(n91), .C(n54), .Y(n37) );
  AOI21XLM U69 ( .A0(n45), .A1(n51), .B0(n98), .Y(n30) );
  AOI21X4M U70 ( .A0(n45), .A1(n51), .B0(n98), .Y(n43) );
  INVX2M U71 ( .A(sum_top[4]), .Y(n32) );
  OA21X2M U72 ( .A0(sum_top[6]), .A1(n47), .B0(n88), .Y(n55) );
  INVX4M U73 ( .A(n90), .Y(n36) );
  OR2X2M U74 ( .A(sum_top[7]), .B(n47), .Y(n80) );
  AOI21X4M U75 ( .A0(n53), .A1(n95), .B0(n52), .Y(n90) );
  OAI2BB1X2M U76 ( .A0N(n38), .A1N(n34), .B0(n69), .Y(n65) );
  OAI2BB1X1M U77 ( .A0N(sum_top[16]), .A1N(n38), .B0(n44), .Y(diff_bottom[17])
         );
  XOR3X4M U78 ( .A(n38), .B(sum_top[16]), .C(n99), .Y(diff_bottom[16]) );
  NAND2BX4M U79 ( .AN(n45), .B(sum_top[3]), .Y(n95) );
  INVXLM U80 ( .A(n78), .Y(n79) );
  OAI2BB1X4M U81 ( .A0N(n39), .A1N(sum_top[14]), .B0(n65), .Y(n68) );
  OA21XLM U82 ( .A0(sum_top[8]), .A1(n47), .B0(n80), .Y(n35) );
  CLKINVX2M U83 ( .A(n81), .Y(n84) );
  XOR3XLM U84 ( .A(sum_top[9]), .B(n38), .C(n79), .Y(diff_bottom[9]) );
  INVX2M U85 ( .A(sum_top[2]), .Y(n51) );
  NOR2X2M U86 ( .A(sum_top[0]), .B(sum_top[1]), .Y(n49) );
  INVXLM U87 ( .A(n82), .Y(n83) );
  OAI2BB1X2M U88 ( .A0N(n39), .A1N(sum_top[13]), .B0(n64), .Y(n69) );
  OAI2BB1X4M U89 ( .A0N(n39), .A1N(sum_top[10]), .B0(n60), .Y(n75) );
  OA21X2M U90 ( .A0(n86), .A1(n27), .B0(n85), .Y(n87) );
  INVXLM U91 ( .A(n88), .Y(n92) );
  NOR2XLM U92 ( .A(n90), .B(n89), .Y(n41) );
  NOR2XLM U93 ( .A(n30), .B(n40), .Y(n42) );
  INVX2M U94 ( .A(sum_top[11]), .Y(n62) );
  INVX1M U95 ( .A(sum_top[8]), .Y(n58) );
  XOR3XLM U96 ( .A(sum_top[14]), .B(n38), .C(n70), .Y(diff_bottom[14]) );
  INVXLM U97 ( .A(n69), .Y(n70) );
  XOR3XLM U98 ( .A(sum_top[13]), .B(n38), .C(n72), .Y(diff_bottom[13]) );
  INVXLM U99 ( .A(n71), .Y(n72) );
  XOR3XLM U100 ( .A(sum_top[12]), .B(n38), .C(n74), .Y(diff_bottom[12]) );
  INVXLM U101 ( .A(n73), .Y(n74) );
  XNOR3XLM U102 ( .A(sum_top[11]), .B(n38), .C(n75), .Y(diff_bottom[11]) );
  XOR3XLM U103 ( .A(sum_top[10]), .B(n38), .C(n77), .Y(diff_bottom[10]) );
  INVXLM U104 ( .A(n76), .Y(n77) );
  XOR3XLM U105 ( .A(sum_top[8]), .B(n38), .C(n87), .Y(diff_bottom[8]) );
  INVXLM U106 ( .A(n80), .Y(n86) );
  XOR3XLM U107 ( .A(sum_top[6]), .B(n38), .C(n93), .Y(diff_bottom[6]) );
  OA21X1M U108 ( .A0(n92), .A1(n41), .B0(n91), .Y(n93) );
  OR2X2M U109 ( .A(sum_top[5]), .B(n47), .Y(n88) );
  XOR3XLM U110 ( .A(sum_top[7]), .B(n38), .C(n27), .Y(diff_bottom[7]) );
  XOR3XLM U111 ( .A(sum_top[5]), .B(n38), .C(n41), .Y(diff_bottom[5]) );
  XOR3XLM U112 ( .A(sum_top[4]), .B(n38), .C(n97), .Y(diff_bottom[4]) );
  OA21X1M U113 ( .A0(n96), .A1(n42), .B0(n95), .Y(n97) );
  INVXLM U114 ( .A(n94), .Y(n96) );
  XOR3XLM U115 ( .A(sum_top[3]), .B(n38), .C(n42), .Y(diff_bottom[3]) );
  XOR3XLM U116 ( .A(sum_top[15]), .B(n38), .C(n68), .Y(diff_bottom[15]) );
  XOR3XLM U117 ( .A(sum_top[1]), .B(sum_top[0]), .C(n47), .Y(diff_bottom[1])
         );
  XOR3XLM U118 ( .A(sum_top[2]), .B(n38), .C(n98), .Y(diff_bottom[2]) );
endmodule


module DUC ( I_in_DUC, Q_in_DUC, clk, rst, SYS_out );
  input I_in_DUC, Q_in_DUC, clk, rst;
  output SYS_out;
  wire   n10, I_reg, Q_reg, N6, N17, n1, n3, n5, n6, n7, n4, n8, n9;
  wire   [1:0] counter;

  DFFRQX2M I_reg_reg ( .D(n7), .CK(clk), .RN(rst), .Q(I_reg) );
  DFFRQX2M Q_reg_reg ( .D(n6), .CK(clk), .RN(rst), .Q(Q_reg) );
  DFFRQX2M \counter_reg[1]  ( .D(N6), .CK(clk), .RN(rst), .Q(counter[1]) );
  DFFRQX2M \counter_reg[0]  ( .D(n4), .CK(clk), .RN(rst), .Q(counter[0]) );
  DFFRQX2M SYS_out_reg ( .D(N17), .CK(clk), .RN(rst), .Q(n10) );
  CLKBUFX12M U3 ( .A(n10), .Y(SYS_out) );
  NOR2X2M U4 ( .A(counter[1]), .B(counter[0]), .Y(n1) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n9), .A0N(Q_in_DUC), .A1N(n1), .Y(n6) );
  OAI2BB1X2M U6 ( .A0N(n1), .A1N(I_reg), .B0(n3), .Y(N17) );
  AOI32X1M U7 ( .A0(n9), .A1(n8), .A2(counter[0]), .B0(counter[1]), .B1(n5), 
        .Y(n3) );
  INVX2M U8 ( .A(counter[1]), .Y(n8) );
  OAI22X1M U9 ( .A0(n4), .A1(n9), .B0(counter[0]), .B1(I_reg), .Y(n5) );
  INVX2M U10 ( .A(counter[0]), .Y(n4) );
  AO2B2X2M U11 ( .B0(I_in_DUC), .B1(n1), .A0(I_reg), .A1N(n1), .Y(n7) );
  INVX2M U12 ( .A(Q_reg), .Y(n9) );
  CLKXOR2X2M U13 ( .A(counter[1]), .B(counter[0]), .Y(N6) );
endmodule


module MIMO ( clk, rest_n, I, Q, out );
  input [15:0] I;
  input [15:0] Q;
  input clk, rest_n;
  output out;
  wire   clk_segma, clk1, clk2, clk3, clk4, segma_1, segma_2;
  wire   [15:0] filter1_out;
  wire   [15:0] filter2_out;

  ClkDiv_0 gen4 ( .i_ref_clk(clk), .i_rst(rest_n), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .o_div_clk(clk_segma) );
  ClkDiv_4 gen128 ( .i_ref_clk(clk), .i_rst(rest_n), .i_clk_en(1'b1), 
        .i_div_ratio({1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk1) );
  ClkDiv_3 gen16 ( .i_ref_clk(clk), .i_rst(rest_n), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk2) );
  ClkDiv_2 gen64 ( .i_ref_clk(clk), .i_rst(rest_n), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .o_div_clk(clk3) );
  ClkDiv_1 gen_4 ( .i_ref_clk(clk), .i_rst(rest_n), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0}), 
        .o_div_clk(clk4) );
  FIR_0 uut1 ( .clk(clk), .clk_3(clk3), .clk_2(clk2), .clk_1(clk1), .clk_4(
        clk4), .reset(rest_n), .data_in(I), .out(filter1_out) );
  FIR_1 uut2 ( .clk(clk), .clk_3(clk3), .clk_2(clk2), .clk_1(clk1), .clk_4(
        clk4), .reset(rest_n), .data_in(Q), .out(filter2_out) );
  segma_0 uut3 ( .input_data(filter1_out), .clk(clk_segma), .reset(rest_n), 
        .out_1bit(segma_1) );
  segma_1 uut4 ( .input_data(filter2_out), .clk(clk_segma), .reset(rest_n), 
        .out_1bit(segma_2) );
  DUC uut5 ( .I_in_DUC(segma_1), .Q_in_DUC(segma_2), .clk(clk), .rst(rest_n), 
        .SYS_out(out) );
endmodule

