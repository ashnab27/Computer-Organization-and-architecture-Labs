// Task 2: 3-to-8 Decoder
module _3x8Decoder(
    input x, y, z,
    output a, b, c, d, e, f, g, h
);
    wire xn, yn, zn;

    not (xn, x);
    not (yn, y);
    not (zn, z);

    and (a, xn, yn, zn); // 000
    and (b, xn, yn, z);  // 001
    and (c, xn, y, zn);  // 010
    and (d, xn, y, z);   // 011
    and (e, x, yn, zn);  // 100
    and (f, x, yn, z);   // 101
    and (g, x, y, zn);   // 110
    and (h, x, y, z);    // 111
endmodule
