
`timescale 1ns / 1ps

module as(
    
    input logic [2:0] sel,
    input logic clk,
    input logic reset, 
    input logic write,
    input logic [3:0] num,
    output logic [7:0] anode,
    output logic [6:0] cathodes
);
    logic [3:0] memory [8];
    logic [2:0] newselection;
    logic [16:0] flip1, count1;
    logic [2:0] flip2, count2;

// down the frequency to 763Hz
    always_ff @(posedge clk) begin
        if (reset)
            flip1 <= 0;
        else
            flip1 <= count1;
    end

    always_comb begin
        if (flip1 == 17'b11111111111111111)
            count1 = 0;
        else
            count1 = flip1 + 1'b1;
    end

// further down frequency to 100Hz 

    always_ff @(posedge flip1[16], posedge write) begin
        if (write)
            flip2 <= 0;
        else
            flip2 <= count2;
    end

    always_comb begin
        if (flip2 == 3'b111)
            count2 = 0;
        else
            count2 = flip2 + 1'b1;
    end

// Contains 8 flipflops
    always_ff @(posedge clk) begin
        if (reset)
            memory <= {0,0,0,0,0,0,0,0};
        else if (write)
            memory[sel] <= num;
    end

    always_comb begin
        if (write)
            newselection = sel;
        else
            newselection = flip2;
    end


    always_comb begin
        case(newselection)
            3'b000 : anode = 8'b11111110;
            3'b001 : anode = 8'b11111101;
            3'b010 : anode = 8'b11111011;
            3'b011 : anode = 8'b11110111;
            3'b100 : anode = 8'b11101111;
            3'b101 : anode = 8'b11011111;
            3'b110 : anode = 8'b10111111;
            3'b111 : anode = 8'b01111111;
        endcase
    end


    always_comb begin
        case(memory[newselection])
            4'b0000 : cathodes = 7'b0000001;
            4'b0001 : cathodes = 7'b1001111;
            4'b0010 : cathodes = 7'b0010010;
            4'b0011 : cathodes = 7'b0000110;
            4'b0100 : cathodes = 7'b1001100;
            4'b0101 : cathodes = 7'b0100100;
            4'b0110 : cathodes = 7'b0100000;
            4'b0111 : cathodes = 7'b0001111;
            4'b1000 : cathodes = 7'b0000000;
            4'b1001 : cathodes = 7'b0000100;
            4'b1010 : cathodes = 7'b0001000;
            4'b1011 : cathodes = 7'b1100000;
            4'b1100 : cathodes = 7'b0110001;
            4'b1101 : cathodes = 7'b1000010;
            4'b1110 : cathodes = 7'b0110000;
            4'b1111 : cathodes = 7'b0111000;
        endcase
    end

endmodule
