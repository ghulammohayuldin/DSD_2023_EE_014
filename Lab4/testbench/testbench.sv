module bench;
logic [1:0]a1;
logic [1:0]b1;
logic red;
logic green;
logic blue;
localparam period = 10;
 exp UUT(
.a(a1),
.b(b1),
.red(red),
.green(green),
.blue(blue)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
  a1[1] = 0; a1[0] = 0; b1[1] = 0; b1[0] = 0;
  #period;
  a1[1] = 0; a1[0] = 0; b1[1] = 0; b1[0] = 1;
  #period;
  a1[1] = 0; a1[0] = 0; b1[1] = 1; b1[0] = 0;
  #period;
  a1[1] = 0; a1[0] = 0; b1[1] = 1; b1[0] = 1;
  #period;
  a1[1] = 0; a1[0] = 1; b1[1] = 0; b1[0] = 0;
  #period;
  a1[1] = 0; a1[0] = 1; b1[1] = 0; b1[0] = 1;
  #period;
  a1[1] = 0; a1[0] = 1; b1[1] = 1; b1[0] = 0;
  #period;
  a1[1] = 0; a1[0] = 1; b1[1] = 1; b1[0] = 1;
  #period;
  a1[1] = 1; a1[0] = 0; b1[1] = 0; b1[0] = 0;
  #period;
  a1[1] = 1; a1[0] = 0; b1[1] = 0; b1[0] = 1;
  #period;
  a1[1] = 1; a1[0] = 0; b1[1] = 1; b1[0] = 0;
  #period;
  a1[1] = 1; a1[0] = 0; b1[1] = 1; b1[0] = 1;
  #period;
  a1[1] = 1; a1[0] = 1; b1[1] = 0; b1[0] = 0;
  #period;
  a1[1] = 1; a1[0] = 1; b1[1] = 0; b1[0] = 1;
  #period;
  a1[1] = 1; a1[0] = 1; b1[1] = 1; b1[0] = 0;
  #period;
  a1[1] = 1; a1[0] = 1; b1[1] = 1; b1[0] = 1;
  #period;
$stop;
end

initial
begin
    $monitor("a0= %d, a1= %d, b0= %d, b1= %d, red= %d, green= %d, blue= %d", 
             a1[0], a1[1], b1[0], b1[1], red, green, blue);
end


endmodule
