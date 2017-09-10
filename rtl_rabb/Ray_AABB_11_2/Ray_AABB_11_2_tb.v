`timescale 1ns / 1ps
`define period 3.016
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:55:44 08/29/2017
// Design Name:   Ray_AABB_11_2
// Module Name:   C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_2/Ray_AABB_11_2_tb.v
// Project Name:  Ray_AABB_11_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ray_AABB_11_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ray_AABB_11_2_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] x0;
	reg [15:0] y0;
	reg [15:0] z0;
	reg [15:0] x1;
	reg [15:0] y1;
	reg [15:0] z1;
	reg [15:0] x2;
	reg [15:0] y2;
	reg [15:0] z2;
	reg x;
	reg y;
	reg z;
	reg [15:0] divx;
	reg [15:0] divy;
	reg [15:0] divz;

   reg [65:0] coordinates[0:119999];
	reg HighPrecRes [0:9999];
	reg direction [0:29999];
	reg [16:0] i;
	reg [15:0] j;
	reg [15:0] k;
	reg resHighPrec;
	reg [15:0] en;
	reg [9:0] Type1error;
	reg [15:0] Type2error;
	// Outputs
	wire hit_miss;

	// Instantiate the Unit Under Test (UUT)
	Ray_AABB_11_2 uut (
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
	
	$readmemb("Coordinates_final.txt",coordinates);
	$readmemb("new_HighPrecRes.txt",HighPrecRes);
	$readmemb("Direction_fin.txt",direction);
		// Initialize Inputs
		clk = 0;
		rst = 0;
		en = 0;
		
		#(3 * `period) rst = 1;
		#(3 * `period + `period/2) rst = 0;	
		#(10065 * `period) $stop; 
	end
      
	always 
	#(`period / 2) clk = ~clk; 
	
	always @(posedge clk) begin
			
		if (rst) begin
			i = 0;
			j = 0;
			k = 0;
			Type1error = 0;
			Type2error = 0;
		end
		else begin
			
			x0 = coordinates[i][65:50]; 
			y0 = coordinates[i+1][65:50]; 
			z0 = coordinates[i+2][65:50]; 
			x1 = coordinates[i+3][65:50]; 
			y1 = coordinates[i+4][65:50]; 
			z1 = coordinates[i+5][65:50]; 
			x2 = coordinates[i+6][65:50]; 
			y2 = coordinates[i+7][65:50]; 
			z2 = coordinates[i+8][65:50];
         divx = coordinates[i+9][65:50]; 
			divy = coordinates[i+10][65:50]; 
			divz = coordinates[i+11][65:50];	

			x = direction [j];
			y = direction [j+1];
			z = direction [j+2];
			
			//resHighPrec = HighPrecRes [k]; 
			
		i = i + 12;
		j = j + 3;
		end
	end
		
	always @(negedge clk) begin
		
		if (en >= 36) begin
			
			resHighPrec =  HighPrecRes [k]; //read the HighPrecision Result for first time at the correct cc
			
			if (resHighPrec == 1'b1) begin //high precision intersection, check for Type1 error
					
					if (hit_miss != resHighPrec) Type1error = Type1error + 1;
					
			end
			else begin //no intersection for the high precision, Type2 error count
			
					if (hit_miss != resHighPrec) Type2error = Type2error + 1;
				
			end
			
			k = k + 1; 
	   end
		
		en = en + 1;	//clock counter
		
	end
		
endmodule
