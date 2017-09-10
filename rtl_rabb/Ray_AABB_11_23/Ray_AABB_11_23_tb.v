`timescale 1ns / 1ps
`define period 10
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:56:32 08/14/2017
// Design Name:   Ray_AABB_11_23
// Module Name:   C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_23/Ray_AABB_11_23_tb.v
// Project Name:  Ray_AABB_11_23
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ray_AABB_11_23
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ray_AABB_11_23_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [36:0] x0UP;
	reg [36:0] x0LOW;
	reg [36:0] y0UP;
	reg [36:0] y0LOW;
	reg [36:0] z0UP;
	reg [36:0] z0LOW;
	reg [36:0] x1LOW;
	reg [36:0] y1LOW;
	reg [36:0] z1LOW;
	reg [36:0] x2UP;
	reg [36:0] y2UP;
	reg [36:0] z2UP;
	reg x;
	reg y;
	reg z;
	reg [36:0] divxUP;
	reg [36:0] divxLOW;
	reg [36:0] divyUP;
	reg [36:0] divyLOW;
	reg [36:0] divzUP;
	reg [36:0] divzLOW;

	// Outputs
	wire hit_miss;

	// Instantiate the Unit Under Test (UUT)
	Ray_AABB_11_23 uut (
		.clk(clk), 
		.rst(rst), 
		.x0UP(x0UP), 
		.x0LOW(x0LOW), 
		.y0UP(y0UP), 
		.y0LOW(y0LOW), 
		.z0UP(z0UP), 
		.z0LOW(z0LOW), 
		.x1LOW(x1LOW), 
		.y1LOW(y1LOW), 
		.z1LOW(z1LOW), 
		.x2UP(x2UP), 
		.y2UP(y2UP), 
		.z2UP(z2UP), 
		.x(x), 
		.y(y), 
		.z(z), 
		.divxUP(divxUP), 
		.divxLOW(divxLOW), 
		.divyUP(divyUP), 
		.divyLOW(divyLOW), 
		.divzUP(divzUP), 
		.divzLOW(divzLOW), 
		.hit_miss(hit_miss)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;   
		x0UP = 37'b0100111111111001101011011111110001101;//hit1
		x0LOW = 37'b0100111111111001101011011111110001101;
		y0UP = 37'b0100111111110100111000101001001010010;
		y0LOW = 37'b0100111111110100111000101001001010010;
		z0UP = 37'b0100111111110001000010011110101101100;
		z0LOW = 37'b0100111111110001000010011110101101100;
		x1LOW = 37'b0100111111101110111000011010011101100;

		y1LOW = 37'b0100111111101100111010100110010000110;

		z1LOW = 37'b0110111111110111010111111101101000001;

		x2UP = 37'b0100111111110111010111100100001000001;

		y2UP = 37'b0100111111110010110100101010001001101;

		z2UP = 37'b0110111111101011010101011110010001011;

		x = 0;
		y = 0;
		z = 0;
		divxUP = 37'b0110111111111110000110010101111110000;
		divxLOW = 37'b0110111111111110000110010101111110000;
		divyUP = 37'b0111000000000011111100110001001100110;
		divyLOW = 37'b0111000000000011111100110001001100110;
		divzUP = 37'b0110111111111101010110101010010011000;
		divzLOW = 37'b0110111111111101010110101010010011000;

// Wait 100 ns for global reset to finish
		#2;
		//#0.6916;
		rst = 0;
		
		#8
		//#2.7664;
		x0UP = 37'b0110111111111001101110000110111111000; //hit2
		x0LOW = 37'b0110111111111001101110000110111111000;
		y0UP = 37'b0100111111101001100011111010000100110;
		y0LOW = 37'b0100111111101001100011111010000100110;
		z0UP = 37'b0100111111110110111010000110001101100;
		z0LOW = 37'b0100111111110110111010000110001101100;
		x1LOW = 37'b0110111111111010001101000111100111100;
		y1LOW = 37'b0100111111101110101001111001100000111;
		z1LOW = 37'b0100111111111001101110001111101001101;
		x2UP = 37'b0110111111101010010001001000111110010;
		y2UP = 37'b0100111111111001101100110011001010101;
		z2UP = 37'b0100111111111001111001101001101100001;
		x = 0;
		y = 0;
		z = 0;
		divxUP = 37'b0101000000000000101001011000010000010;
		divxLOW = 37'b0101000000000000101001011000010000010;
		divyUP = 37'b0100111111111100010110001101110100010;
		divyLOW = 37'b0100111111111100010110001101110100010;
		divzUP = 37'b0100111111111100110001111111101010111;
		divzLOW = 37'b0100111111111100110001111111101010111;
		
		#10;
	//	#3.458;
      x0UP = 37'b0110111111010111111001101110011100000; //miss
		x0LOW =37'b0110111111010111111001101110011100000;
		y0UP = 37'b0100111110110011101110000001101001000;
		y0LOW =37'b0100111110110011101110000001101001000;
		z0UP = 37'b0110111111011110100000010110000011000;
		z0LOW =37'b0110111111011110100000010110000011000;
		x1LOW =37'b0110111111011100010111110000000010000;
		y1LOW =37'b0110111110110011111001110010100101000;
		z1LOW =37'b0110111101111011101011111010110000000;
		x2UP = 37'b0110111111000000111100010100010111000;
		y2UP = 37'b0100111111000001011010011011011001000;

		z2UP = 37'b0100111111010110011111111110010010000;

		x = 0;
		y = 0;
		z = 0;
		divxUP = 37'b0100111111100001000110110010011010000;
		divxLOW = 37'b0100111111100001000110110010011010000;
		divyUP = 37'b0111000000001101010100110000010000000;
		divyLOW = 37'b0111000000001101010100110000010000000;
		divzUP = 37'b0110111111111011000010101001110010000;
		divzLOW = 37'b0110111111111011000010101001110010000;
		
		#10;
		x0UP = 37'b0110111111111001101110000110111111000; //hit2
		x0LOW = 37'b0110111111111001101110000110111111000;
		y0UP = 37'b0100111111101001100011111010000100110;
		y0LOW = 37'b0100111111101001100011111010000100110;
		z0UP = 37'b0100111111110110111010000110001101100;
		z0LOW = 37'b0100111111110110111010000110001101100;
		x1LOW = 37'b0110111111111010001101000111100111100;
		y1LOW = 37'b0100111111101110101001111001100000111;
		z1LOW = 37'b0100111111111001101110001111101001101;
		x2UP = 37'b0110111111101010010001001000111110010;
		y2UP = 37'b0100111111111001101100110011001010101;
		z2UP = 37'b0100111111111001111001101001101100001;
		x = 0;
		y = 0;
		z = 0;
		divxUP = 37'b0101000000000000101001011000010000010;
		divxLOW = 37'b0101000000000000101001011000010000010;
		divyUP = 37'b0100111111111100010110001101110100010;
		divyLOW = 37'b0100111111111100010110001101110100010;
		divzUP = 37'b0100111111111100110001111111101010111;
		divzLOW = 37'b0100111111111100110001111111101010111;
      
		#10;
		x0UP = 37'b0100111111111001101011011111110001101; //hit-->miss
		x0LOW = 37'b0100111111111001101011011111110001101;
		y0UP = 37'b0100111111110100111000101001001010010;
		y0LOW = 37'b0100111111110100111000101001001010010;
		z0UP = 37'b0100111111110001000010011110101101100;
		z0LOW = 37'b0100111111110001000010011110101101100;
		x1LOW = 37'b0100111111101110111000011010011101100;

		y1LOW = 37'b0100111111101100111010100110010000110;

		z1LOW = 37'b0110111111110111010111111101101000001;

		x2UP = 37'b0100111111110111010111100100001000001;

		y2UP = 37'b0100111111110010110100101010001001101;

		z2UP = 37'b0110111111101011010101011110010001011;

		x = 1;
		y = 0;
		z = 0;
		divxUP = 37'b0110111111111110000110010101111110000;
		divxLOW = 37'b0110111111111110000110010101111110000;
		divyUP = 37'b0111000000000011111100110001001100110;
		divyLOW = 37'b0111000000000011111100110001001100110;
		divzUP = 37'b0110111111111101010110101010010011000;
		divzLOW = 37'b0110111111111101010110101010010011000;
		
		#10;
		x0UP = 37'b0110111111111010010001001110011000101; //hit3
		x0LOW =37'b0110111111111010010001001110011000101;
		y0UP = 37'b0100111111111000100001101010110110010;
		y0LOW =37'b0100111111111000100001101010110110010;
		z0UP = 37'b0110111111111001000111111011010110101;
		z0LOW =37'b0110111111111001000111111011010110101;
		x1LOW =37'b0110111111111001001010000001110111100;
		y1LOW =37'b0110111111110110001111011010000010110;
		z1LOW =37'b0110111111111011000111101100100010101;
		x2UP = 37'b0100111111110001010101000010011111001;
		y2UP = 37'b0100111111110000001110011000111100110;

		z2UP = 37'b0110111111110010001100000011111001011;

		x = 0;
		y = 0;
		z = 0;       
		divxUP = 37'b0101000000000010111000110011101010101;
		divxLOW = 37'b0101000000000010111000110011101010101;
		divyUP = 37'b0110111111111101100000101000111111000;
		divyLOW = 37'b0110111111111101100000101000111111000;
		divzUP = 37'b0111000000000111001000101000011110111;
		divzLOW = 37'b0111000000000111001000101000011110111;
		
	end
	
	always #(`period/2) clk = ~clk;
      
endmodule

