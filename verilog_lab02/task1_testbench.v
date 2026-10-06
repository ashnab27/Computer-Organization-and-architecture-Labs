// Task 1 Testbench
module testbench_fullAdder ();
    reg x, y, z;
    wire sum, cout;

    fullAdder uut (
        .Sum(sum), 
        .Cout(cout), 
        .A(x), 
        .B(y), 
        .C(z)
    );

    initial begin
        x = 0; y = 0; z = 0; #50;
        x = 0; y = 0; z = 1; #50;
        x = 0; y = 1; z = 0; #50;
        x = 0; y = 1; z = 1; #50;
        x = 1; y = 0; z = 0; #50;
        x = 1; y = 0; z = 1; #50;
        x = 1; y = 1; z = 0; #50;
        x = 1; y = 1; z = 1; #50;
    end
endmodule
