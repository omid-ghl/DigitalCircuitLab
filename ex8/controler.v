  
module ControlUnit(

  input [6 : 0] OpCode,
  output Reg2Loc,
  output Branch,
  output MemRead,
  output MemtoReg,
  output [1:0]Aluop,
  output MemWrite,
  output AluSrc,
  output RegWrite
);
reg [8:0] outcome;

assign  {AluSrc ,MemtoReg ,RegWrite ,MemRead ,MemWrite ,Branch } = outcome[8:2];
assign Aluop = outcome[1:0];

always @( OpCode )
casex(OpCode)
	7'b0110011: outcome = 8'b00100010;
        7'b0000011: outcome = 8'b11110000;
        7'b0100011: outcome = 8'b10001000;
        7'b1100011: outcome = 8'b00000101;
endcase
    
endmodule