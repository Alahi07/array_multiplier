module fa(
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire carry
);
  
  
  assign sum = a ^ b ^ cin;
  assign carry = (a&b)| (b & cin) | (cin&a);
  
  
endmodule
