module subtract_2s_complement (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Result,
    output Carry
);

    wire [3:0] B_comp;
    wire [4:0] Sum;

    // Step 1 & 2: 2's complement of B
    assign B_comp = ~B + 1'b1;

    // Step 3: Add A and 2's complement of B
    assign Sum = A + B_comp;

    // Step 4: Assign result
    assign Result = Sum[3:0];
    assign Carry  = Sum[4];   // Carry = 1 ? A ? B

endmodule
