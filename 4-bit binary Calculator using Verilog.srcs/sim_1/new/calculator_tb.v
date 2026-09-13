`timescale 1ns / 1ps

module calculator_tb;

    // Testbench inputs
    reg [3:0] A;
    reg [3:0] B;
    reg       SEL;

    // Testbench outputs
    wire [3:0] RESULT;
    wire       CARRY_BORROW;

    // Instantiate the calculator
    calculator DUT (
        .A(A),
        .B(B),
        .SEL(SEL),
        .RESULT(RESULT),
        .CARRY_BORROW(CARRY_BORROW)
    );

    initial begin

        // Test 1: 5 + 3 = 8
        A = 4'b0101;
        B = 4'b0011;
        SEL = 1'b0;
        #10;

        // Test 2: 9 + 2 = 11
        A = 4'b1001;
        B = 4'b0010;
        SEL = 1'b0;
        #10;

        // Test 3: 5 - 3 = 2
        A = 4'b0101;
        B = 4'b0011;
        SEL = 1'b1;
        #10;

        // Test 4: 9 - 4 = 5
        A = 4'b1001;
        B = 4'b0100;
        SEL = 1'b1;
        #10;

        // Test 5: 15 + 1 = 16
        // 4-bit result = 0000, carry = 1
        A = 4'b1111;
        B = 4'b0001;
        SEL = 1'b0;
        #10;

        // Test 6: 7 - 7 = 0
        A = 4'b0111;
        B = 4'b0111;
        SEL = 1'b1;
        #10;

        // Test 7: 3 - 5 = -2
        // 4-bit two's complement result = 1110
        // Borrow = 1
        A = 4'b0011;
        B = 4'b0101;
        SEL = 1'b1;
        #10;

        $finish;

    end

endmodule