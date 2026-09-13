module calculator(
    input  [3:0] A,
    input  [3:0] B,
    input        SEL,
    output [3:0] RESULT,
    output       CARRY_BORROW
);

    wire [3:0] ADD_RESULT;
    wire [3:0] SUB_RESULT;

    wire ADD_CARRY;
    wire SUB_BORROW;

    // 4-bit Adder
    Four_bit_adder ADDER (
        .A(A),
        .B(B),
        .SUM(ADD_RESULT),
        .CARRY(ADD_CARRY)
    );

    // 4-bit Subtractor
    four_bit_subtractor SUBTRACTOR (
        .A(A),
        .B(B),
        .DIFF(SUB_RESULT),
        .BORROW(SUB_BORROW)
    );

    // Multiplexer
    mux MUX1 (
        .ADD_RESULT(ADD_RESULT),
        .SUB_RESULT(SUB_RESULT),
        .SEL(SEL),
        .RESULT(RESULT)
    );

    // Select carry or borrow according to operation
    assign CARRY_BORROW = SEL ? SUB_BORROW : ADD_CARRY;

endmodule
