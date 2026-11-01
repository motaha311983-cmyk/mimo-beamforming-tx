module segma (
    input  wire signed [15:0] input_data,
    input  wire                clk, reset,
    output reg                 out_1bit
);

    reg signed [17:0] acc1, acc2;
    wire signed [17:0] input_ext;
    wire signed [17:0] feedback_val;
    wire signed [17:0] sum_top;
    wire signed [17:0] diff_bottom;


    assign input_ext = $signed(input_data);

    
    assign sum_top = input_ext + (acc2 << 1) - acc1;
    
    assign feedback_val = (sum_top[17]) ? 18'sd32767 : -18'sd32767 ; 
    
    assign diff_bottom = sum_top - feedback_val;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            acc1 <= 18'sd0;
            acc2 <= 18'sd0;
            out_1bit <= 1'b0;
        end else begin
            acc1 <= acc2;
            acc2 <= diff_bottom;
            out_1bit <= sum_top[17]; 
        end
    end
endmodule
