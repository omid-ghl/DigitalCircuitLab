module ALUControl (ALUOp, funct7 , funct3 , code);

    input [1:0] ALUOp;
    input [6:0] funct7;
    input [2:0] funct3;
    output reg [3:0] code;

    always @ (ALUOp, funct7 , funct3) begin
`
        casex(ALUOp)
            2'b00: code = 4'b0010;
            2'bx1: code = 4'b0110;
            2'b10: 
                case(funct3)
		    3'b111: code = 4'b0000;
		    3'b110: code = 4'b0001;
                    3'b000:
		    case(funct7[5])
			1'b1: code = 4'b0110;
			1'b0: code = 4'b0010;
		    endcase
                endcase
	    default: code = 4'bz;
        endcase
    end
endmodule