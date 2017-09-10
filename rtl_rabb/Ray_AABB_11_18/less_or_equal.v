`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:50 07/21/2017 
// Design Name: 
// Module Name:    less_or_equal 
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
module less_or_equal(clk,rst,inA,inB,less_or_equal);

parameter width = 31;

input clk,rst;
input [width:0] inA,inB;

output less_or_equal;

wire [width:0] R;
reg less_or_equal;

FPSub_11_18_F400_uid2 FPsub(.clk(clk),.rst(rst),.X(inA),.Y(inB),.R(R));

always @(posedge clk or posedge rst) begin
	
	if (rst) less_or_equal = 1'b0;
	
	else begin

		if (((R[width-2] == 1'b1) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) || ((R[width] == 1'b0) && (R[width-1] == 1'b0))) begin
			less_or_equal = 1'b1;
		end
		else if ((R[width-2] == 1'b0) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) begin
			less_or_equal = 1'b0; 
	   end
		
   end
end
endmodule 