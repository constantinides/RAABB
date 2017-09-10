`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:51 07/21/2017 
// Design Name: 
// Module Name:    less_than 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module less_than(clk,rst,inA,inB,less);

parameter width = 22;

input clk,rst;
input [width:0] inA,inB;

output less;

wire [width:0] R;
reg less;

FPSub_11_9_F400_uid2 FPsub(.clk(clk),.rst(rst),.X(inA),.Y(inB),.R(R));

always @(posedge clk or posedge rst) begin

	if (rst) begin
		less = 1'b0;
	end
	
	else begin
	
		if ((R[width-2] == 1'b1) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) begin
			less = 1'b1;
		end
		else begin
			less = 1'b0; 
	   end
		
   end
end
endmodule
