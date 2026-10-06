// Task 1 Testbench
module testbench();
    reg x, y;
    wire z_and, z_or, z_not, z_nor, z_nand, z_xor, z_xnor;

    LogicGates uut (x, y, z_and, z_or, z_not, z_nor, z_nand, z_xor, z_xnor);

    initial begin
        x = 0; y = 0;
        #50 x = 0; y = 1;
        #50 x = 1; y = 0;
        #50 x = 1; y = 1;
    end
endmodule
