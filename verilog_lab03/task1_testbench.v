// Task 1 Testbench
module testbench_adder_sub();
    reg [0:3] a;
    reg [0:3] b;
    reg ctrl;
    wire [0:4] result;

    adder_sub uut(a, b, ctrl, result);

    initial begin
        a = 0; b = 0; ctrl = 0; #10;
        a = 4'd5;  b = 4'd3;  ctrl = 1'b0; #10; 
        a = 4'd12; b = 4'd6;  ctrl = 1'b0; #10; 
        a = 4'd9;  b = 4'd4;  ctrl = 1'b1; #10; 
        a = 4'd4;  b = 4'd6;  ctrl = 1'b1; #10; 
    end
endmodule
