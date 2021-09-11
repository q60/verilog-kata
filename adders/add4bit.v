`include "add2bit.v"

module add4bit (input [3:0] a, b,
                input c_in,
                output [3:0] sum,
                output c_out);

   // use intermediate carry between adders.
   wire c_b;
   add2bit f00(a[0+:2], b[0+:2], 1'b0, sum[0+:2], c_b);
   add2bit f11(a[2+:2], b[2+:2], c_b, sum[2+:2], c_out);
endmodule // add4bit
