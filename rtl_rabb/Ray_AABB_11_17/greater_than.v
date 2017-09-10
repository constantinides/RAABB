`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:28:58 07/17/2017 
// Design Name: 
// Module Name:    greater_than 
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
module greater_than(clk,rst,inA,inB,greater);

parameter width = 30;

input clk,rst;
input [width:0] inA,inB;

output greater;

wire [width:0] R;
reg greater;

FPSub_11_17_F400_uid2 FPsub(.clk(clk),.rst(rst),.X(inA),.Y(inB),.R(R));

always @(posedge clk or posedge rst) begin

	if (rst) begin
		greater = 1'b0;
	end
	
	else begin
	
		if ((R[width-2] == 1'b0) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) begin
			greater = 1'b1;
		end
		else begin
			greater = 1'b0; 
	   end
		
   end
end
endmodule
