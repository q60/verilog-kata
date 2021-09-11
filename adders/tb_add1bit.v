// testbench for `add1bit' module.

`timescale 1ns/1ns
`include "add1bit.v"

module tb_add1bit;
   reg  a, b, c_in = 1'b0;
   wire sum, c_out;

   add1bit test_add1bit(a, b, c_in, sum, c_out);

   initial begin
      $dumpfile("tb_add1bit.vcd");
      $dumpvars(0, tb_add1bit);

      {a, b} = 2'b00;
      c_in = c_out; #10;
      {a, b} = 2'b01;
      c_in = c_out; #10;
      {a, b} = 2'b10;
      c_in = c_out; #10;
      {a, b} = 2'b11;
      c_in = c_out; #10;
   end // initial begin
endmodule // tb_add1bit