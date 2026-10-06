// Task 2: 2x1 MUX with Logic Operations (Select=0 -> A & B, Select=1 -> A | B)
module mux2x1(
    input A,
    input B,
    input ctrl,
    output reg Cout
);
    always @ (*) begin 
        case(ctrl)
            1'b1: Cout = A | B;
            1'b0: Cout = A & B;    
        endcase
    end
endmodule
