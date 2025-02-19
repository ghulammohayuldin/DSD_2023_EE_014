module exp(
input logic [1:0] a, b,
output logic red, green, blue
    );

     assign   red = ((~b[0]) & (~b[1])) | ((a[0]) & (a[1])) | ((a[0]) & (~b[1])) | ((a[1]) & (~b[1])) | ((a[1]) & (~b[0]));
     assign   green = ((~a[0]) & (~a[1])) | ((b[0]) & (~a[1])) | ((b[1]) & (b[0])) | ((~a[0]) & (b[1])) | ((b[1]) & (~a[1]));
     assign   blue=((a[1])&(~b[1]))|((~a[1])&(b[1]))|((~a[0])&(b[0]))|((a[0])&(~b[0]));

    
endmodule