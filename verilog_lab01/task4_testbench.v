// Task 4 Testbench
module xor_testbench();
    reg x, y;
    wire out;

    xor_circuit uut (x, y, out);

    initial begin
        x = 0; y = 0;
        #50 x = 0; y = 1;
        #50 x = 1; y = 0;
        #50 x = 1; y = 1;
    end
endmodule
