// testbench for `xor' module.

`timescale 1ns/1ns
`include "my_xor.v"

module tb_xor;
   reg [1:0]bus;
   wire out;

   my_xor test_xor(bus, out);

   initial begin
      $dumpfile("tb_xor.vcd");
      $dumpvars(0, tb_xor);

      bus = 2'b11;
      #10;

      bus = 2'b00;
      #10;

      bus = 2'b10;
      #10;

      bus = 2'b01;
      #10;

      $display("success.");
   end // initial begin
endmodule // tb_xor
