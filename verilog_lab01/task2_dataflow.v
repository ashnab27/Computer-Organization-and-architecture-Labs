// Task 2: Dataflow Logic Gates
module LogicGates(
    input a, b,
    output out_and, out_or, out_not, out_nor, out_nand, out_xor, out_xnor
);
    assign out_and  = a & b;
    assign out_or   = a | b;
    assign out_not  = ~a;
    assign out_nor  = ~(a | b);
    assign out_nand = ~(a & b);
    assign out_xor  = a ^ b;
    assign out_xnor = ~(a ^ b);
endmodule
