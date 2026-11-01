module mux4to1 (
    input  [15:0] I0,
    input  [15:0] I1,
    input  [15:0] I2,
    input  [15:0] I3,
    input  [1:0] S,       
    output reg [15:0] Y   
);

always @(*) begin
    case(S)
        2'b00: Y = I0;
        2'b01: Y = I1;
        2'b10: Y = I2;
        2'b11: Y = I3;
        default: Y = 16'b0;
    endcase
end

endmodule
