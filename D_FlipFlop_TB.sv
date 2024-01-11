`timescale 1ns / 1ns
module D_FlipFlop_TB ();
  logic DD, C = 0;
  wire QQ, QQB;
  D_FlipFlop CUT (
      DD,
      C,
      QQ,
      QQB
  );
  always #500 C = ~C;
  initial begin
    #250;
    #2500 DD = 1;
    #2000 DD = 0;
    #100 DD = 1;
    #100 DD = 0;
    #300 DD = 1;
    #100 DD = 0;
    #100 DD = 1;
    #1000 DD = 1;
    #2500 DD = 0;
    #2500 DD = 1;
    #10234 $stop;

  end
endmodule

