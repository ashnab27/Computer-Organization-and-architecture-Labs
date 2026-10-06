// Task 2 Testbench
module testbench_mux2x1();
    reg a;
    reg b;
    reg ctrl;
    wire result;

    mux2x1 uut (.A(a), .B(b), .ctrl(ctrl), .Cout(result));

    initial begin
        ctrl = 1'b0; a = 1'b0; b = 1'b0; #10;
        ctrl = 1'b0; a = 1'b0; b = 1'b1; #10;
        ctrl = 1'b0; a = 1'b1; b = 1'b0; #10;
        ctrl = 1'b0; a = 1'b1; b = 1'b1; #10;
        ctrl = 1'b1; a = 1'b0; b = 1'b0; #10;
        ctrl = 1'b1; a = 1'b0; b = 1'b1; #10;
        ctrl = 1'b1; a = 1'b1; b = 1'b0; #10;
        ctrl = 1'b1; a = 1'b1; b = 1'b1; #10;
    end
endmodule
