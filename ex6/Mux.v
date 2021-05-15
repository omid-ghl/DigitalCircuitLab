module Mux(s, s1, s2, output);
     input s;
     input [63:0] s1, s2;
     output reg [63:0] output;
 	 begin

       	assign output = (s !== 0) ? s2 : s1;

      end
endmodule