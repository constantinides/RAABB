`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:44 07/18/2017 
// Design Name: 
// Module Name:    greater_or_equal 
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
module greater_or_equal(clk,rst,inA,inB,greater_or_equal);

parameter width = 26;

input clk,rst;
input [width:0] inA,inB;

output greater_or_equal;

wire [width:0] R;
reg greater_or_equal;

FPSub_11_13_F400_uid2 FPsub(.clk(clk),.rst(rst),.X(inA),.Y(inB),.R(R));

always @(posedge clk or posedge rst) begin
	
	if (rst) greater_or_equal = 1'b0;
	
	else begin

		if (((R[width-2] == 1'b0) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) || ((R[width] == 1'b0) && (R[width-1] == 1'b0))) begin
			greater_or_equal = 1'b1;
		end
		else if ((R[width-2] == 1'b0) && ((R[width] == 1'b1) && (R[width-1] == 1'b0))) begin 
			greater_or_equal = 1'b1;
		end
		else if ((R[width-2] == 1'b1) && ((R[width] == 1'b0) && (R[width-1] == 1'b1))) begin
			greater_or_equal = 1'b0; 
	   end
		
   end
end
endmodule 