module pc(clk, oldpc,newpc);
input clk;
input [63:0] oldpc;
output reg [63:0] newpc;

initial 
begin
	newpc = 0;			
end

always @(posedge clk)
begin
	newpc <= oldpc;
end
endmodule