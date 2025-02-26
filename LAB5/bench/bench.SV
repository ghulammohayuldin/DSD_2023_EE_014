module bench;
logic a, b, c, d, s1, s2, s3;
logic A, B, C, D, E, F, G;
logic A0, A1, A2, A3, A4, A5, A6, A7;

localparam period = 10;

exp5 UUT(
    .a(a), .b(b), .c(c), .d(d),  .s1(s1), .s2(s2), .s3(s3),  

    .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G),
    .A0(A0), .A1(A1), .A2(A2), .A3(A3),
    .A4(A4), .A5(A5), .A6(A6), .A7(A7)
);

initial begin
    a = 0; b = 0; c = 0; d = 0; 
    #period;
    a = 0; b = 0; c = 0; d = 1;  
    #period;
    a = 0; b = 0; c = 1; d = 0; 
   #period;
    a = 0; b = 0; c = 1; d = 1; 
    #period;
    a = 0; b = 1; c = 0; d = 0; 
   #period;
    a = 0; b = 1; c = 0; d = 1;  
   #period;
    a = 0; b = 1; c = 1; d = 0; 
   #period;
    a = 0; b = 1; c = 1; d = 1;  
    #period;
    a = 1; b = 0; c = 0; d = 0;  
    #period;
    a = 1; b = 0; c = 0; d = 1;  
    #period;
    a = 1; b = 0; c = 1; d = 0; 
   #period;
    a = 1; b = 0; c = 1; d = 1;  
   #period;
    a = 1; b = 1; c = 0; d = 0;   
   #period;
    a = 1; b = 1; c = 0; d = 1; 
   #period;
    a = 1; b = 1; c = 1; d = 0; 
   #period;
    a = 1; b = 1; c = 1; d = 1; 
   #period;
    $stop;
end

initial begin
    s3 = 0; s2 = 0; s1 = 0; #period;
    s3 = 0; s2 = 0; s1 = 1; #period;
    s3 = 0; s2 = 1; s1 = 0; #period;
    s3 = 0; s2 = 1; s1 = 1; #period;
    s3 = 1; s2 = 0; s1 = 0; #period;
    s3 = 1; s2 = 0; s1 = 1; #period;
    s3 = 1; s2 = 1; s1 = 0; #period;
    s3 = 1; s2 = 1; s1 = 1; #period;
    $stop;
end

initial begin
    $monitor(" a=%b b=%b c=%b d=%b  s1=%b s2=%b s3=%b  A=%b B=%b C=%b D=%b E=%b F=%b G=%b | A=%b %b %b %b %b %b %b %b",
              a, b, c, d, s1, s2, s3, A, B, C, D, E, F, G, A0, A1, A2, A3, A4, A5, A6, A7);
end

endmodule