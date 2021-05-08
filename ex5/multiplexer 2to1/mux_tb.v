module tb_mux;

    // Declaring Inputs
    reg Data_in_0;
    reg Data_in_1;
    reg sel;

    // Declaring Outputs
    wire Data_out;

    // Instantiate the Unit Under Test (UUT)
    mux2to1 uut (
        .Data_in_0(Data_in_0), 
        .Data_in_1(Data_in_1), 
        .sel(sel), 
        .Data_out(Data_out)
    );

    initial begin
        // Apply Inputs

        $dumpfile("test.vcd");
    $dumpvars(1,tb_mux);

        Data_in_0 = 0;
        Data_in_1 = 0;
        sel = 0;
        // Wait 100 ns
        #100;
        
        //Similarly apply Inputs and wait for 100 ns
        Data_in_0 = 0;      Data_in_1 = 0;      sel = 1;      #100;
        Data_in_0 = 0;      Data_in_1 = 1;      sel = 0;      #100;
        Data_in_0 = 0;      Data_in_1 = 1;      sel = 1;      #100;
        Data_in_0 = 1;      Data_in_1 = 0;      sel = 0;      #100;
        Data_in_0 = 1;      Data_in_1 = 0;      sel = 1;      #100;
        Data_in_0 = 1;      Data_in_1 = 1;      sel = 0;      #100;
        Data_in_0 = 1;      Data_in_1 = 1;      sel = 1;      #100;
    end
      
endmodule