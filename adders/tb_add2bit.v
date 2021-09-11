// testbench for `add2bit' module.

`timescale 1ns/1ns
`include "add2bit.v"

module tb_add1bit;
   reg [1:0] a, b;
   reg       c_in;

   wire [1:0] sum;
   wire       c_out;

   add2bit test_add2bit(a, b, c_in, sum, c_out);

   initial begin
      $dumpfile("tb_add2bit.vcd");
      $dumpvars(0, tb_add1bit);

      c_in = 1'b0;
      {a, b} = 4'b0000;
      c_in = c_out; #10;
      {a, b} = 4'b0001;
      c_in = c_out; #10;
      {a, b} = 4'b0010;
      c_in = c_out; #10;
      {a, b} = 4'b0011;
      c_in = c_out; #10;
      {a, b} = 4'b0100;
      c_in = c_out; #10;
      {a, b} = 4'b0101;
      c_in = c_out; #10;
      {a, b} = 4'b0110;
      c_in = c_out; #10;
      {a, b} = 4'b0111;
      c_in = c_out; #10;
      {a, b} = 4'b1000;
      c_in = c_out; #10;
      {a, b} = 4'b1001;
      c_in = c_out; #10;
      {a, b} = 4'b1010;
      c_in = c_out; #10;
      {a, b} = 4'b1011;
      c_in = c_out; #10;
      {a, b} = 4'b1111;
      c_in = c_out; #10;

      $display("success.");
   end // initial begin
endmodule // tb_add2bit
