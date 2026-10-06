// Task 3 Testbench
module testbench_mux8x1();
    reg x, y, z;
    reg a, b, c, d, e, f, g, h;
    wire out;

    _8x1Mux uut (
        .x(x), .y(y), .z(z),
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h),
        .out(out)
    );

    initial begin
        a = 0; b = 1; c = 0; d = 1;
        e = 0; f = 1; g = 0; h = 1;

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
