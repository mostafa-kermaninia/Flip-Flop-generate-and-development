`timescale 1ns / 1ns
module SR_latch (
    input  S,
    R,
    OP1,
    OP2,
    output Q,
    Qb
);
  nand #12 N1 (Q, OP1, S, Qb);
  nand #12 N2 (Qb, OP2, R, Q);
endmodule
