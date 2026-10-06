// Task 3 Testbench
module comparator_2bit_testbench;
    reg  [1:0] A, B;
    wire       eq, gt, lt;
    integer i, j;

    comparator_2bit uut (.A(A), .B(B), .eq(eq), .gt(gt), .lt(lt));

    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                A = i[1:0];
                B = j[1:0];
                #10;
            end
        end
    end
endmodule
