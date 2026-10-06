// Task 3: 2-bit Magnitude Comparator
module comparator_2bit(
    input  [1:0] A,
    input  [1:0] B,
    output reg   eq,   // 1 if A == B
    output reg   gt,   // 1 if A > B
    output reg   lt    // 1 if A < B
);
    always @(*) begin
        if (A == B) begin
            eq = 1;
            gt = 0;
            lt = 0;
        end
        else if (A > B) begin
            eq = 0;
            gt = 1;
            lt = 0;
        end
        else begin
            eq = 0;
            gt = 0;
            lt = 1;
        end
    end
endmodule
