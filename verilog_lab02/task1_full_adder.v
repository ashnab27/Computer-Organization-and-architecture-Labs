// Task 1: Full Adder using Half Adder Instantiations
module fullAdder (
    output Sum, Cout,
    input A, B, C
);
    wire s1, c1, c2;

    halfAdder ha1(s1, c1, A, B);
    halfAdder ha2(Sum, c2, s1, C);
    or (Cout, c1, c2);
endmodule

module halfAdder (
    output sum1, cout1,
    input a, b
);
    xor(sum1, a, b);
    and(cout1, a, b);
endmodule
