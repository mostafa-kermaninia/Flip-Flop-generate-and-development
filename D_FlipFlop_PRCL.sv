`timescale 1ns / 1ns
module D_FlipFlop_PRCL (
    input  D,
    CLK,
    PreB,
    ClrB,
    output Q,
    Qb
);
  wire w1, w2, w3, w4;
  SR_latch C1 (
      w4,
      ClrB,
      PreB,
      CLK,
      w1,
      w2
  );
  SR_latch C2 (
      CLK,
      ClrB,
      w2,
      D,
      w3,
      w4
  );
  SR_latch C3 (
      w2,
      ClrB,
      PreB,
      w3,
      Q,
      Qb
  );
endmodule

