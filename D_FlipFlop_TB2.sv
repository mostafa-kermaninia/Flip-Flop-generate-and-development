`timescale 1ns / 1ns
module D_FlipFlop_TB2 ();
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
    // DD = 1;
    // #1488;
    // DD = 0;
    // #10234 $stop;
    DD = 1;
    #1400;
    DD = 0;
    #100;
    DD = 1;
    #10234 $stop;


  end
endmodule

