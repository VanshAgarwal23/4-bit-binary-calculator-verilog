module Four_bit_adder(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] SUM,
    output       CARRY
);

    assign {CARRY, SUM} = A + B;


endmodule
