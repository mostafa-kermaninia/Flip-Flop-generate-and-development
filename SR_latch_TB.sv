`timescale 1ns / 1ns
module SR_latch_TB ();
  logic SS, RR, O1 = 1, O2 = 1;
  wire QQ, QQB;
  SR_latch CUT (
      SS,
      RR,
      O1,
      O2,
      QQ,
      QQB
  );
  initial begin
    #100;
    SS = 1;
    RR = 0;

    #100;
    SS = 1;
    RR = 1;

    #100;
    SS = 0;
    RR = 1;

    #100;
    SS = 1;
    RR = 1;

    #100;
    O1 = 0;
    O2 = 1;

    #100;
    O1 = 1;
    O2 = 1;

    #100;
    O1 = 1;
    O2 = 0;

    #100;
    O1 = 1;
    O2 = 1;

    #100;
    // memory loss
    SS = 0;
    RR = 0;

    #100;
    SS = 1;
    RR = 0;

    #100;
    // memory loss
    SS = 0;
    RR = 0;

    #100;
    // start periodic signal
    SS = 1;
    RR = 1;

    #500;
    SS = 1;
    RR = 0;

    #1023 $stop;

  end
endmodule
