// Task 6 Testbench
module complement_1_testbench();
    reg w, x, y, z;
    wire a, b, c, d;

    complement_1 uut (w, x, y, z, a, b, c, d);

    initial begin
        w=0; x=0; y=0; z=0;
        #50 w=0; x=0; y=0; z=1;
        #50 w=0; x=0; y=1; z=0;
        #50 w=0; x=0; y=1; z=1;
        #50 w=0; x=1; y=0; z=0;
        #50 w=0; x=1; y=0; z=1;
        #50 w=0; x=1; y=1; z=0;
        #50 w=0; x=1; y=1; z=1;
        #50 w=1; x=0; y=0; z=0;
        #50 w=1; x=0; y=0; z=1;
        #50 w=1; x=0; y=1; z=0;
        #50 w=1; x=0; y=1; z=1;
        #50 w=1; x=1; y=0; z=0;
        #50 w=1; x=1; y=0; z=1;
        #50 w=1; x=1; y=1; z=0;
        #50 w=1; x=1; y=1; z=1;
        #50;
    end
endmodule
