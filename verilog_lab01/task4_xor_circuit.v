// Task 4: Custom XOR Circuit
module xor_circuit(
    input a, b,
    output out
);
    wire an, bn, z1, z2;

    not n1 (an, a);
    not n2 (bn, b);
    and a1 (z1, an, b);
    and a2 (z2, bn, a);
    or  o  (out, z1, z2);
endmodule
