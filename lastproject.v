//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 01:37:56 PM
// Design Name: 
// Module Name: lastproject
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
 

module lastproject( output x,y,
 input a,b,c

    );
   assign x=(a|b)^(~c); 
   assign y=(a|b)&((~(a&b))^(a|b));

  
endmodule
