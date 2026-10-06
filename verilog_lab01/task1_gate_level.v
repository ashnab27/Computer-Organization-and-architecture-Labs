// Task 1: Structural (Gate-Level) Logic Gates
module LogicGates(
    input a, b,
    output out_and, out_or, out_not, out_nor, out_nand, out_xor, out_xnor
);
    and  a1 (out_and, a, b);
    or   o1 (out_or, a, b);
    not  n1 (out_not, a);
    nor  n2 (out_nor, a, b);
    nand n3 (out_nand, a, b);
    xor  x1 (out_xor, a, b);
    xnor x2 (out_xnor, a, b);
endmodule
