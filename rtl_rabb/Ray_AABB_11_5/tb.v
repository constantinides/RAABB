`timescale 1ns / 1ps
`define period 10
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:42:07 08/18/2017
// Design Name:   Ray_AABB_11_5
// Module Name:   C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_5/tb.v
// Project Name:  Ray_AABB_11_5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ray_AABB_11_5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;
	reg rst;
	reg [18:0] x0;
	reg [18:0] y0;
	reg [18:0] z0;
	reg [18:0] x1;
	reg [18:0] y1;
	reg [18:0] z1;
	reg [18:0] x2;
	reg [18:0] y2;
	reg [18:0] z2;
	reg x;
	reg y;
	reg z;
	reg [18:0] divx;
	reg [18:0] divy;
	reg [18:0] divz;

	// Outputs
	wire hit_miss;

	// Instantiate the Unit Under Test (UUT)
	Ray_AABB_11_5 uut (
		.clk(clk), 
		.rst(rst), 
		.x0(x0), 
		.y0(y0), 
		.z0(z0), 
		.x1(x1), 
		.y1(y1), 
		.z1(z1), 
		.x2(x2), 
		.y2(y2), 
		.z2(z2), 
		.x(x), 
		.y(y), 
		.z(z), 
		.divx(divx), 
		.divy(divy), 
		.divz(divz), 
		.hit_miss(hit_miss)
	);
	
initial begin
	   clk = 0;
      rst = 1;
      x0 = 19'b0110111111111010010; //hit3
		y0 = 19'b0100111111111000100;
		z0 = 19'b0110111111111001000;
		x1 = 19'b0110111111111001001;
		y1 = 19'b0110111111110110001;
		z1 = 19'b0110111111111011000;
		x2 = 19'b0100111111110001010;
		y2 = 19'b0100111111110000001;
		z2 = 19'b0110111111110010001;

		x = 0;
		y = 0;
		z = 0;
		divx = 19'b0101000000000010111;
		divy = 19'b0110111111111101100;
		divz = 19'b0111000000000111001;
		
		#2;
		//#0.6916;
		rst = 0;
		
		#8;      
		x0 = 19'b0100111111111001101;//hit1
		y0 = 19'b0100111111110100111;
		z0 = 19'b0100111111110001000;

		x1 = 19'b0100111111101110111;
		y1 = 19'b0100111111101100111;
		z1 = 19'b0110111111110111010;

		x2 = 19'b0100111111110111010;
		y2 = 19'b0100111111110010110;
		z2 = 19'b0110111111101011010;

		x = 1;
		y = 0;
		z = 0;     
		divx = 19'b0110111111111110000;
		divy = 19'b0111000000000011111;
		divz = 19'b0110111111111101010;
		
		end
	
	always #(`period/2) clk = ~clk;
      
endmodule