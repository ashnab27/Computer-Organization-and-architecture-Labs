// Task 1: 4-bit Adder/Subtractor (Behavioral Level)
module adder_sub(
    input [0:3] A,
    input [0:3] B,
    input ctrl,
    output reg [0:4] Cout
);
    always @ (*) begin 
        case(ctrl)
            1'b1: Cout = A + B;
            1'b0: Cout = A - B;    
        endcase
    end
endmodule
