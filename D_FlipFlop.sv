`timescale 1ns / 1ns
module D_FlipFlop (
    input  D,
    CLK,
    output Q,
    Qb
);
  wire w2, w3, w4;
  SR_latch C1 (
      w4,
      CLK,
      1'b1,
      1'b1,
      w1,
      w2
  );
  SR_latch C2 (
      CLK,
      D,
      w2,
      1'b1,
      w3,
      w4
  );
  SR_latch C3 (
      w2,
      w3,
      1'b1,
      1'b1,
      Q,
      Qb
  );
endmodule

