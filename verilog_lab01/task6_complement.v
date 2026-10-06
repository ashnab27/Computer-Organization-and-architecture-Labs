// Task 6: 4-Bit One's Complement Generator
module complement_1(
    input a, b, c, d,
    output na, nb, nc, nd
);
    assign na = ~a;
    assign nb = ~b;
    assign nc = ~c;
    assign nd = ~d;
endmodule
