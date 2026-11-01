module phase_shift # (
    parameter NO_BIT = 16
)(
    input signed [NO_BIT-1:0] sin_in,
    input signed [NO_BIT-1:0] cos_in,
    input signed [NO_BIT-1:0] I_in,
    input signed [NO_BIT-1:0] Q_in,
    input clk,
    input rst,
    output reg signed [NO_BIT-1:0] I_out,
    output reg signed [NO_BIT-1:0] Q_out
);


wire signed [2*NO_BIT-1:0] I_temp;
wire signed [2*NO_BIT-1:0] Q_temp;


assign Q_temp = (Q_in * cos_in) - (I_in * sin_in);
assign I_temp = (I_in * cos_in) + (Q_in * sin_in);


localparam signed [2*NO_BIT-1:0] ROUND = (1 <<< (NO_BIT-1));

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        I_out <= 0;
        Q_out <= 0;
    end else begin
        I_out <= (I_temp + ROUND) >>> NO_BIT;
        Q_out <= (Q_temp + ROUND) >>> NO_BIT;
    end
end

endmodule