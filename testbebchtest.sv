`timescale 1ns / 1ns
module NUUT (
    input  a,
    b,
    output s
);
  and #100 m (s, a, b);
endmodule

module TUSTT ();
  logic aa = 1, bb = 0;
  wire ss;
  NUUT myNu (
      aa,
      bb,
      ss
  );

  initial begin
    #99 bb = 1;
    #3864;
  end

endmodule
