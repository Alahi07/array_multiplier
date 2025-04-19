// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] a;
  reg [3:0] b;
  reg [7:0] out;
  
  top t0 (
    .a(a),
    .b(b),
    .out(out)
  );
  
  
  initial begin
    $dumpfile ("top.vcd");
    $dumpvars(0);
    
    a = 4'b 1111;
    b = 4'b 1010;
    
    #1;
    $display ("a = %b, b = %b, out= %b", a,b, out);
    
  end
  
endmodule 
