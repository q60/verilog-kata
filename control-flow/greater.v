// compare two 2-bit numbers and send 1'b1 to `out'
// if the first one is greater than the second one
// and 1'b0 otherwise.

module greater (input [1:0] a, b,
                output      out);

   // can be done like that:
   // assign out = a > b;
   assign out = a[1] & ~b[1] | a[0] & ~b[1] & ~b[0] | a[1] & a[0] & ~b[0];
endmodule // greater
