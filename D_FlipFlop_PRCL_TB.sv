`timescale 1ns / 1ns
module D_FlipFlop_PRCL_TB ();
  logic DD = 0, C = 0, PREB = 1, CLRB = 1;
  wire Q, Qbar;
  D_FlipFlop_PRCL CUT (
      DD,
      C,
      PREB,
      CLRB,
      Q,
      Qbar
  );
  always #500 C = ~C;
  initial begin
    #250 #2500 DD = 0;
    #2500 DD = 1;
    #2500 DD = 0;

    #2500 PREB = 0;
    #2500 DD = 0;
    #2500 DD = 1;

    #2500 PREB = 1;
    #2500 DD = 0;
    #2500 DD = 1;

    #2500 CLRB = 0;
    #2500 DD = 0;
    #2500 DD = 1;

    #2500 CLRB = 1;
    #2500 DD = 0;
    #2500 DD = 1;

    #2500 CLRB = 0;
    #2500 PREB = 0;
    #2500 DD = 1;
    #2500 DD = 0;


    #1320 $stop;
  end

endmodule

