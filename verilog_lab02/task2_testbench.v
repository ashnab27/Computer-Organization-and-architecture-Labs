// Task 2 Testbench
module testbench_decoder3x8();
    reg x, y, z;
    wire a, b, c, d, e, f, g, h;

    _3x8Decoder uut (
        .x(x), .y(y), .z(z),
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h)
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
