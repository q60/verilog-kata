// compare two 2-bit numbers and send 1'b1 to `out'
// if the first one is greater than the second one
// and 1'b0 otherwise.

module greater (input [1:0] a, b,
                output      out);

   assign out = a > b;
endmodule // greater
