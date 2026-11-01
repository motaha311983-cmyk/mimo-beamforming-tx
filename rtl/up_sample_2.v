module hfb_1 (
    input  wire               clk,       
    input  wire               reset,
    input  wire signed [15:0] data_in,    
    output reg  signed [15:0] even_out,
    output reg  signed [15:0] odd_out
);

   
    wire signed [15:0] h [0:15];
    
   
    reg signed [15:0] d [0:15];
    
    reg signed [35:0] acc;
    integer i, k; 


assign h[0]  = 16'hFFFF;
assign h[1]  = 16'h0002;
assign h[2]  = 16'hFFFC;
assign h[3]  = 16'h0008;
assign h[4]  = 16'hFFF2;
assign h[5]  = 16'h0019;
assign h[6]  = 16'hFFCE;
assign h[7]  = 16'h00A1;
assign h[8]  = 16'h00A1;
assign h[9]  = 16'hFFCE;
assign h[10] = 16'h0019;
assign h[11] = 16'hFFF2;
assign h[12] = 16'h0008;
assign h[13] = 16'hFFFC;
assign h[14] = 16'h0002;
assign h[15] = 16'hFFFF;

    always @(*) begin
        acc = 36'sd0;
       
        for (k = 0; k < 8; k = k + 1) begin
            acc = acc + (h[k] * (d[k] + d[15-k]));
        end
    end


    always @(posedge clk or negedge reset) begin
        if (!reset) begin 
            for (i = 0; i < 16; i = i + 1) begin
                d[i] <= 16'sd0;
            end
            even_out <= 16'sd0;
            odd_out  <= 16'sd0;
        end 
        else  begin
            d[0] <= data_in;
            for (i = 1; i < 16; i = i + 1) begin
                d[i] <= d[i-1];
            end
            even_out <= acc[24:9]; 
            odd_out  <= d[8] >>> 1; 
        end
    end

endmodule
