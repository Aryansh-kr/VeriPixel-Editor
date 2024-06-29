`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.06.2024 20:25:03
// Design Name: 
// Module Name: tb_main
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


//`timescale 1ns / 1ps

module Image_parser;

    // Input and output ports
    reg [7:0] threshold, value;
    reg [1:0] select;
    reg clk;
    reg [7:0] inp [98303:0];
    reg [7:0] out [98303:0];
    reg [7:0] in_byte;
    wire [7:0] out_byte;

    // Instantiate your main design module (assuming it's named Main)
    Main M1 (
        .clk(clk),
        .select(select),
        .value(value),
        .threshold(threshold),
        .in_byte(in_byte),
        .out_byte(out_byte)
    );

    // Clock generation
    initial begin
        clk = 1'b1;
        forever #5 clk = ~clk;
    end

    // Initialize values and read input file
    initial begin
        value     = 8'b00111100;
        threshold = 8'b10100000;
        select    = 2'b01;
        $readmemb("C:/Users/Lenovo/PycharmProjects/pythonProject/Verilog-Based-Image-Editor/image.txt", inp);
    end

    // Process input and generate output
    integer i;
    initial begin
        // Process each byte from input array
        for (i = 0; i < 98304; i = i + 1) begin
            #5 in_byte <= inp[i];
            #5 out[i] = out_byte;
            $display("input : %b  output : %b ", inp[i], out[i]);
        end

        // Update select for next operation
        #8 select = select + 2'b01;

        // Write output array to result.txt
        $writememb("C:\Users\Lenovo\OneDrive\Documents\bhu.txt", out);

        // Finish simulation
        #10 $finish;
    end

endmodule

