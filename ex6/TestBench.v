module testbench();

wire[63:0] alu;
wire clk;

initial 
begin
   alu = 4;
   clk = 0;
end

clock(clk);
pc(clk,oldpc,newpc);


assign alu = {64'h00000000,instruction[63:0]};

endmodule