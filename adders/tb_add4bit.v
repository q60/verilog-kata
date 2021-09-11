// testbench for `add4bit' module.

`timescale 1ns/1ns
`include "add4bit.v"

module tb_add1bit;
   reg [3:0] a, b;
   reg       c_in;

   wire [3:0] sum;
   wire       c_out;

   integer    i;

   add4bit test_add4bit(a, b, c_in, sum, c_out);

   initial begin
      $dumpfile("tb_add4bit.vcd");
      $dumpvars(0, tb_add1bit);

      c_in = 1'b0;
      for (i = 0; i < 256; i = i + 1) begin
         {a, b} = i; #10;
      end;


      $display("success.");
   end // initial begin
endmodule // tb_add4bit
