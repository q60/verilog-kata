module my_xor (input [1:0] bus,
               output out);

   // applies XOR to bus[0] and bus[1]
   // assign out = bus[0] ^ bus[1]
   assign out = ^bus;
endmodule // xor
