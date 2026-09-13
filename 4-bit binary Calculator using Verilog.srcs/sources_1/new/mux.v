module mux(
    input  [3:0] ADD_RESULT,
    input  [3:0] SUB_RESULT,
    input        SEL,
    output [3:0] RESULT
);

    assign RESULT = (~SEL & ADD_RESULT) |
                    (SEL & SUB_RESULT);

endmodule
