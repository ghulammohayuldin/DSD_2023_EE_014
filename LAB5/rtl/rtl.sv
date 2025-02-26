module exp5(
  input logic a,b,c,d,s1,s2,s3,
  output logic A,B,C,D,E,F,G,
  output logic A0,A1,A2,A3,A4,A5,A6,A7

    );
    
assign A =  ((~a) & (b) & (~c) & (~d)) | ((a) & (b) & (~c) & (d)) | ((a) & (~b) & (c) & (d))|((~a) & (~b) & (~c) & (d)) ;
assign B =   ((a) & (c) & (d)) |((b) & (c) & (~d))| ((~a) & (b) & (~c) & (d)) | ((a) & (b) & (~d)) ;
assign C = ((~a) & (~b) & (c) & (~d)) | ((a) & (b) & (c)) | ((a) & (b) & (~d));
assign D = ((~a) & (~b) & (~c) & (d)) | ((~a) & (b) & (~c) & (~d)) | ((b) & (c) & (d)) | ((a) & (~b) & (c) & (~d));
assign E =   ((~b) & (~c) & (d)) | ((~a) & (d))|((~a) & (b) & (~c));
assign F = ((~a) & (~b) & (d)) | ((~a) & (c) & (d)) | ((~a) & (~b) & (c))|((a)&(b)&(~c)&(d));
assign G = ((~a) & (~b) & (~c)) | ((a) & (b) & (~c) & (~d)) | ((~a) & (b) & (c) & (d));

assign A0 = (s3 | s2 | s1);
assign A1 = (s3 | s2 | ~s1);
assign A2 = (s3 | ~s2 | s1);
assign A3 = (s3 | ~s2 | ~s1);
assign A4 = (~s3 | s2 | s1);
assign A5 = (~s3 | s2 | ~s1);
assign A6 = (~s3 | ~s2 | s1);
assign A7 = (~s3 | ~s2 | ~s1);
endmodule