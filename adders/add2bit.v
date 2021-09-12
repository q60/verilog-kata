`include "add1bit.v"

module add2bit (input [1:0] a, b,
                input c_in,
                output [1:0] sum,
                output c_out);

   // use intermediate carry wire between adders.
   wire c_b;
   add1bit fa1_0(a[0], b[0], 1'b0, sum[0], c_b);
   add1bit fa1_1(a[1], b[1], c_b, sum[1], c_out);
endmodule // add2bit
