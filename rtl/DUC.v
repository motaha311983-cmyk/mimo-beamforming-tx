module DUC (
    input  I_in_DUC, Q_in_DUC, clk, rst,
    output reg SYS_out
);

reg [1:0] counter;
reg I_reg, Q_reg;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        counter <= 0;
        I_reg   <= 0;
        Q_reg   <= 0;
        SYS_out <= 0;
    end else begin
        counter <= counter + 1;
        if(counter == 2'b00) begin
            I_reg <= I_in_DUC;
            Q_reg <= Q_in_DUC;
        end

        case(counter)
            2'b00: SYS_out <= I_reg;
            2'b01: SYS_out <= ~Q_reg;
            2'b10: SYS_out <= ~I_reg;
            2'b11: SYS_out <= Q_reg;
        endcase
    end
end

endmodule