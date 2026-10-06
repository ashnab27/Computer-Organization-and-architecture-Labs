// Task 3: 8-to-1 Multiplexer
module _8x1Mux(
    input x, y, z,
    input a, b, c, d, e, f, g, h,
    output out
);
    wire xn, yn, zn;
    wire a1, b1, c1, d1, e1, f1, g1, h1;

    not (xn, x);
    not (yn, y);
    not (zn, z);

    and (a1, xn, yn, zn, a); // 000
    and (b1, xn, yn, z,  b); // 001
    and (c1, xn, y,  zn, c); // 010
    and (d1, xn, y,  z,  d); // 011
    and (e1, x,  yn, zn, e); // 100
    and (f1, x,  yn, z,  f); // 101
    and (g1, x,  y,  zn, g); // 110
    and (h1, x,  y,  z,  h); // 111

    or (out, a1, b1, c1, d1, e1, f1, g1, h1);
endmodule
