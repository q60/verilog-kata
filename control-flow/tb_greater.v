// testbench for `greater' module.

`timescale 1ns/1ns
`include "greater.v"

module tb_greater;
   reg [1:0] a;
   reg [1:0] b;
   wire      out;

   greater test_greater(a, b, out);

   initial begin
      $dumpfile("tb_greater.vcd");
      $dumpvars(0, tb_greater);

      // vector assignment like pattern matching
      // in functional programming languages.
      {a, b} = 4'b0000; #1;
      {a, b} = 4'b0001; #1;
      {a, b} = 4'b0010; #1;
      {a, b} = 4'b0011; #1;
      {a, b} = 4'b0100; #1;
      {a, b} = 4'b0101; #1;
      {a, b} = 4'b0110; #1;
      {a, b} = 4'b0111; #1;
      {a, b} = 4'b1000; #1;
      {a, b} = 4'b1001; #1;
      {a, b} = 4'b1010; #1;
      {a, b} = 4'b1011; #1;
      {a, b} = 4'b1100; #1;
      {a, b} = 4'b1101; #1;
      {a, b} = 4'b1110; #1;
      {a, b} = 4'b1111; #1;

      $display("success");
   end // initial begin
endmodule // tb_greater
