module counter(
    input wire clk,
    input wire reset,   
    output reg SEL
);

always@(posedge clk or negedge reset)
begin
  if(!reset)
   begin
    SEL <= 1'd0;
   end
    else 
    begin
     SEL <= ~SEL;
 end
end

endmodule

