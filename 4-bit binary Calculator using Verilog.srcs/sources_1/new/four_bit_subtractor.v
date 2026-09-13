module four_bit_subtractor(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] DIFF,
    output       BORROW
);

    assign DIFF = A - B;
    assign BORROW = (A < B);

endmodule