module decoder_tb(w,en,y);

  initial begin
      $dumpfile("test.vcd");
     $dumpvars(0,decoder_tb);
end

input [3:0]w;
input en;
output reg [0:15]y;
integer k;
always @(w,en)
  for(k=0;k<=15;k=k+1)
    if((w == k)&&(en == 1))
      y[k]=1;
    else
      y[k]=0;
endmodule

