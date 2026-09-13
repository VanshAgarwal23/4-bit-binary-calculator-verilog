module mux(
    input  [3:0] ADD_RESULT,
    input  [3:0] SUB_RESULT,
    input        SEL,
    output [3:0] RESULT
);

    wire NOT_SEL;
    wire [3:0] ADD_PATH;
    wire [3:0] SUB_PATH;

    // NOT gate
    not (NOT_SEL, SEL);

    // AND gates for addition path
    and (ADD_PATH[0], ADD_RESULT[0], NOT_SEL);
    and (ADD_PATH[1], ADD_RESULT[1], NOT_SEL);
    and (ADD_PATH[2], ADD_RESULT[2], NOT_SEL);
    and (ADD_PATH[3], ADD_RESULT[3], NOT_SEL);

    // AND gates for subtraction path
    and (SUB_PATH[0], SUB_RESULT[0], SEL);
    and (SUB_PATH[1], SUB_RESULT[1], SEL);
    and (SUB_PATH[2], SUB_RESULT[2], SEL);
    and (SUB_PATH[3], SUB_RESULT[3], SEL);

    // OR gates to generate final result
    or (RESULT[0], ADD_PATH[0], SUB_PATH[0]);
    or (RESULT[1], ADD_PATH[1], SUB_PATH[1]);
    or (RESULT[2], ADD_PATH[2], SUB_PATH[2]);
    or (RESULT[3], ADD_PATH[3], SUB_PATH[3]);

endmodule