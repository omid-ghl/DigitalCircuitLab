module testbench();

wire[63:0] oldpc;
wire[63:0] newpc;
wire[31:0] instruction;
wire clk;
wire Reg2loc,branch,mem2reg,memwrite,AluSrc,RegWrite;
wire [1:0] Aluop;
wire [3:0] AluCode;
wire [63:0] reg1;
wire [63:0] reg2;
wire [63:0] AluOut;
wire zero;

initial 
begin
   oldpc = 4;
   clk = 0;
end

clock(clk);
pc(clk,oldpc,newpc);
ControlUnit(instruction[6:0] , Reg2loc ,branch ,mem2reg, Aluop ,memwrite ,AluSrc ,RegWrite);
ALUControl (Aluop, instruction[31:25] , instruction[14:12] , AluCode);
registerBank(instruction[19:15], instruction[24:20],instruction[11:7],64'h0000000000000000,clk,RegWrite , reg1 , reg2);
alu(reg1,reg2,AluCode,AluOut,zero);


assign oldpc = {32'h00000000,instruction[31:0]};

endmodule