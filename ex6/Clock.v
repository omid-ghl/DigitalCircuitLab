 module Clock(clk);
   output reg clk;
   parameter latency = 20;
   
   forever begin
       clk = 0;
       #latency;
       clk = 1;
       #latency;
    end
    endmodule;