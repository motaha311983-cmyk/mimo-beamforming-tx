module up4_filter (
    input  wire        clk,
    input  wire        rst_n,
    input  wire signed [15:0] in_data,
    output wire signed [15:0] b0, b1, b2, b3
);
    // Branch 0 requires a 3rd delay stage for the final '1' tap
    reg signed [15:0] x_n1, x_n2, x_n3;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_n1 <= 16'sd0;
            x_n2 <= 16'sd0;
            x_n3 <= 16'sd0;
        end else begin
            x_n1 <= in_data;
            x_n2 <= x_n1;
            x_n3 <= x_n2;
        end
    end

    // Max branch sum is 64. 16-bit input + 6 bits of growth = 22 bits safe
    wire signed [21:0] ext_in = {{6{in_data[15]}}, in_data};
    wire signed [21:0] ext_n1 = {{6{x_n1[15]}}, x_n1};
    wire signed [21:0] ext_n2 = {{6{x_n2[15]}}, x_n2};
    wire signed [21:0] ext_n3 = {{6{x_n3[15]}}, x_n3};

    // --- Branch 0: [1, 31, 31, 1] ---
    // Math trick: 31 * x = (x * 32) - x = (x <<< 5) - x
    wire signed [21:0] acc0 = ext_in + (ext_n1 <<< 5) - ext_n1 + (ext_n2 <<< 5) - ext_n2 + ext_n3; 
    
    // --- Branch 1: [4, 40, 20] ---
    // 40 = 32 + 8,   20 = 16 + 4
    wire signed [21:0] acc1 = (ext_in <<< 2) + (ext_n1 <<< 5) + (ext_n1 <<< 3) + (ext_n2 <<< 4) + (ext_n2 <<< 2); 
    
    // --- Branch 2: [10, 44, 10] ---
    // 10 = 8 + 2,    44 = 32 + 8 + 4
    wire signed [21:0] acc2 = (ext_in <<< 3) + (ext_in <<< 1) + (ext_n1 <<< 5) + (ext_n1 <<< 3) + (ext_n1 <<< 2) + (ext_n2 <<< 3) + (ext_n2 <<< 1);  
    
    // --- Branch 3: [20, 40, 4] ---
    // 20 = 16 + 4,   40 = 32 + 8
    wire signed [21:0] acc3 = (ext_in <<< 4) + (ext_in <<< 2) + (ext_n1 <<< 5) + (ext_n1 <<< 3) + (ext_n2 <<< 2);  

    // Normalization: Divide by 64 (drop the bottom 6 bits) to return to 16-bit
    assign b0 = acc0[21:6];
    assign b1 = acc1[21:6];
    assign b2 = acc2[21:6];
    assign b3 = acc3[21:6];

endmodule
