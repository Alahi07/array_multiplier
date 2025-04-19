`include "and_gate.v"
`include "ha.v"
`include "fa.v"

module top (
  input wire [3:0] a,
  input wire [3:0] b,
  output wire [7:0] out
);
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
  wire c0,c1,c2,c5,c4,c3,c7,c8,c9,c10,c11,c12;
  wire s0,s1,s2,s3,s4,s5;
  and_gate u0 (
    .a(a[0]),
    .b(b[0]),
    .y(out[0])
  );
  and_gate u1(
    .a(a[1]),
    .b(b[0]),
    .y(w2)
  );
  and_gate u2(
    .a(a[0]),
    .b(b[1]),
    .y(w5)
  );
  and_gate u3(
    .a(a[2]),
    .b(b[0]),
    .y(w3)
  );
  and_gate u4(
    .a(a[1]),
    .b(b[1]),
    .y(w6)
  );
  and_gate u5(
    .a(a[0]),
    .b(b[2]),
    .y(w9)
  );
  and_gate u6(
    .a(a[3]),
    .b(b[0]),
    .y(w4)
  );
  and_gate u7(
    .a(a[2]),
    .b(b[1]),
    .y(w7)
  );
  and_gate u8(
    .a(a[1]),
    .b(b[2]),
    .y(w10)
  );
  and_gate u9(
    .a(a[0]),
    .b(b[3]),
    .y(w13)
  );
  and_gate u10(
    .a(a[3]),
    .b(b[1]),
    .y(w8)
  );
  and_gate u11(
    .a(a[a]),
    .b(b[2]),
    .y(w11)
  );
  and_gate u12(
    
    .a(a[1]),
    .b(b[3]),
    .y(w14)
  );
  and_gate u13(
    .a(a[3]),
    .b(b[2]),
    .y(w12)
  );
  and_gate u14(
    .a(a[2]),
    .b(b[3]),
    .y(w15)
  );
  and_gate u15(
    .a(a[3]),
    .b(b[3]),
    .y(w15)
  ); 
  
  ha h0(
    .a(w2),
    .b(w5),
    .sum(out[1]),
    .carry(c0) 
  );
  ha h1(
    .a(w3),
    .b(w6),
    .sum(s0),
    .carry(c1)
  );
  ha h2(
    .a(w7),
    .b(w4),
    .sum(s1),
    .carry(c5)
  );
  ha h3(
    .a(s4),
    .b(c3),
    .sum(out[4]),
    .carry(c9)
  );
  fa f0(
    .a(c0),
    .b(s0),
    .cin(w9),
    .sum(out[2]),
    .carry(c2)
  );
  fa f1(
    .a(c1),
    .b(s1),
    .cin(w10),
    .sum(s2),
    .carry(c4)
  );
  fa f2(
    .a(s2),
    .b(c2),
    .cin(w13),
    .carry(c3),
    .sum(out[3])
  );
  fa f3(
    .a(w8),
    .b(c5),
    .cin(w11),
    .sum(s3),
    .carry(c7)
  );
  fa f4(
    .a(s3),
    .b(c4),
    .cin(w12),
    .sum(s4),
    .carry(c8)
    
  );
  fa f5(
    .a(w12),
    .b(c7),
    .cin(w15),
    .sum(s5),
    .carry(c10)
  );
  fa f6(
    .a(s5),
    .b(c8),
    .cin(c9),
    .sum(out[5]),
    .carry(c11)
  );
  fa f7(
    .a(c10),
    .b(c11),
    .cin(w15),
    .sum(out[6]),
    .carry(out[7])
  );
    endmodule
