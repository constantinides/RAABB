`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Imperial College London, Systems and Circuits Group
// Engineer: George A.Chatzianastasiou
// Supervsior: George A.Constantinides
// 
// Create Date:    11:30:43 07/19/2017 
// Design Name: 
// Module Name:    Ray_AABB_32bit 
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
module Ray_AABB_11_8(clk,rst,x0,y0,z0,x1,y1,z1,x2,y2,z2,x,y,z,divx,divy,divz,hit_miss);

parameter width = 21; //specifies the bitwidth of each fp input/register plus 2 bits for FloPoCo decoding (width = 2 & sign_bit & exp_bits & mantissa_bits)

input clk,rst;
input [width:0] x0,y0,z0,x1,y1,z1,x2,y2,z2,divx,divy,divz;
input x,y,z; //flag for checking if ray is parallel to each plane.

output hit_miss;
reg [width:0] zero;

wire [width:0] x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1LOW,y1LOW,z1LOW,x2UP,y2UP,z2UP,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW;

reg [width:0] tnear,tfar,txmin,txmax,tymin,tymax,tzmin,tzmax;
reg [width:0] txmin_1,txmin_2,txmin_3,txmin_4,txmin_5,txmin_6,txmin_7,txmax_1,txmax_2,txmax_3,txmax_4,txmax_5,txmax_6,txmax_7;
reg [width:0] tymin_1,tymin_2,tymin_3,tymin_4,tymin_5,tymin_6,tymin_7,tymax_1,tymax_2,tymax_3,tymax_4,tymax_5,tymax_6,tymax_7;
reg [width:0] tzmin_1,tzmin_2,tzmin_3,tzmin_4,tzmin_5,tzmin_6,tzmin_7,tzmax_1,tzmax_2,tzmax_3,tzmax_4,tzmax_5,tzmax_6,tzmax_7;
reg hit_miss,ready;
reg xdir_1,xdir_2,xdir_3,xdir_4,xdir_5,xdir_6,xdir_7,xdir_8,ydir_1,ydir_2,ydir_3,ydir_4,ydir_5,ydir_6,ydir_7,ydir_8,zdir_1,zdir_2,zdir_3,zdir_4,zdir_5,zdir_6,zdir_7,zdir_8;
reg xdir_9,xdir_10,xdir_11,xdir_12,xdir_13,xdir_14,xdir_15,xdir_16,xdir_17,xdir_18,xdir_19,xdir_20,xdir_21,xdir_22,xdir_23,xdir_24,xdir_25,xdir_26,xdir_27,xdir_28,xdir_29,xdir_30;
reg ydir_9,ydir_10,ydir_11,ydir_12,ydir_13,ydir_14,ydir_15,ydir_16,ydir_17,ydir_18,ydir_19,ydir_20,ydir_21,ydir_22,ydir_23,ydir_24,ydir_25,ydir_26,ydir_27,ydir_28,ydir_29,ydir_30;
reg zdir_9,zdir_10,zdir_11,zdir_12,zdir_13,zdir_14,zdir_15,zdir_16,zdir_17,zdir_18,zdir_19,zdir_20,zdir_21,zdir_22,zdir_23,zdir_24,zdir_25,zdir_26,zdir_27,zdir_28,zdir_29,zdir_30;

wire [width:0] subX1,subX2,subY1,subY2,subZ1,subZ2,subX2_divxUP_rndu,subX2_divxUP_rndd,subX2_divxLOW_rndd,subX1_divxUP_rndd,subX1_divxLOW_rndu,subX1_divxLOW_rndd,subY2_divyUP_rndu,subY2_divyUP_rndd,subY2_divyLOW_rndd,subY1_divyUP_rndd,subY1_divyLOW_rndu,subY1_divyLOW_rndd,subZ2_divzUP_rndu,subZ2_divzUP_rndd,subZ2_divzLOW_rndd,subZ1_divzUP_rndd,subZ1_divzLOW_rndu,subZ1_divzLOW_rndd;

reg [width:0] divxLOW_1,divxLOW_2,divxLOW_3,divxLOW_4,divxLOW_5,divxLOW_6,divxUP_1,divxUP_2,divxUP_3,divxUP_4,divxUP_5,divxUP_6;
reg [width:0] divyLOW_1,divyLOW_2,divyLOW_3,divyLOW_4,divyLOW_5,divyLOW_6,divyUP_1,divyUP_2,divyUP_3,divyUP_4,divyUP_5,divyUP_6;
reg [width:0] divzLOW_1,divzLOW_2,divzLOW_3,divzLOW_4,divzLOW_5,divzLOW_6,divzUP_1,divzUP_2,divzUP_3,divzUP_4,divzUP_5,divzUP_6;

wire xp1,xp2,yp1,yp2,zp1,zp2,xmin,ymin,zmin,xmax,ymax,zmax,opposite1,opposite2,yes;
wire [width:width-2] sdivx,sdivy,sdivz,subX1_sign,subX2_sign,subY1_sign,subY2_sign,subZ1_sign,subZ2_sign,tfar_sign;
reg xp1_1,xp1_2,xp1_3,xp1_4,xp1_5,xp1_6,xp1_7,xp1_8,xp1_9,xp1_10,xp1_11,xp1_12,xp1_13,xp1_14,xp1_15,xp1_16,xp1_17,xp2_1,xp2_2,xp2_3,xp2_4,xp2_5,xp2_6,xp2_7,xp2_8,xp2_9,xp2_10,xp2_11,xp2_12,xp2_13,xp2_14,xp2_15,xp2_16,xp2_17;
reg yp1_1,yp1_2,yp1_3,yp1_4,yp1_5,yp1_6,yp1_7,yp1_8,yp1_9,yp1_10,yp1_11,yp1_12,yp1_13,yp1_14,yp1_15,yp1_16,yp1_17,yp2_1,yp2_2,yp2_3,yp2_4,yp2_5,yp2_6,yp2_7,yp2_8,yp2_9,yp2_10,yp2_11,yp2_12,yp2_13,yp2_14,yp2_15,yp2_16,yp2_17;
reg zp1_1,zp1_2,zp1_3,zp1_4,zp1_5,zp1_6,zp1_7,zp1_8,zp1_9,zp1_10,zp1_11,zp1_12,zp1_13,zp1_14,zp1_15,zp1_16,zp1_17,zp2_1,zp2_2,zp2_3,zp2_4,zp2_5,zp2_6,zp2_7,zp2_8,zp2_9,zp2_10,zp2_11,zp2_12,zp2_13,zp2_14,zp2_15,zp2_16,zp2_17;
reg [width:width-2] sdivx_1,sdivy_1,sdivz_1,sdivx_2,sdivy_2,sdivz_2,subX1_sign_1,subX2_sign_1,subY1_sign_1,subY2_sign_1,subZ1_sign_1,subZ2_sign_1,subX1_sign_2,subX2_sign_2,subY1_sign_2,subY2_sign_2,subZ1_sign_2,subZ2_sign_2,tfar_sign_1,tfar_sign_2,tfar_sign_3,tfar_sign_4,tfar_sign_5,tfar_sign_6,tfar_sign_7;

FPAdd_11_8_F400_uid2_rndd FPAddX0LOW(.clk(clk),.rst(rst),.X(x0),.Y(zero),.R(x0LOW));
FPAdd_11_8_F400_uid2_rndd FPAddY0LOW(.clk(clk),.rst(rst),.X(y0),.Y(zero),.R(y0LOW));
FPAdd_11_8_F400_uid2_rndd FPAddZ0LOW(.clk(clk),.rst(rst),.X(z0),.Y(zero),.R(z0LOW));
FPAdd_11_8_F400_uid2_rndd FPAddX1LOW(.clk(clk),.rst(rst),.X(x1),.Y(zero),.R(x1LOW));
FPAdd_11_8_F400_uid2_rndd FPAddY1LOW(.clk(clk),.rst(rst),.X(y1),.Y(zero),.R(y1LOW));
FPAdd_11_8_F400_uid2_rndd FPAddZ1LOW(.clk(clk),.rst(rst),.X(z1),.Y(zero),.R(z1LOW));
FPAdd_11_8_F400_uid2_rndd FPAdddivxLOW(.clk(clk),.rst(rst),.X(divx),.Y(zero),.R(divxLOW));
FPAdd_11_8_F400_uid2_rndd FPAdddivyLOW(.clk(clk),.rst(rst),.X(divy),.Y(zero),.R(divyLOW));
FPAdd_11_8_F400_uid2_rndd FPAdddivzLOW(.clk(clk),.rst(rst),.X(divz),.Y(zero),.R(divzLOW));

FPAdd_11_8_F400_uid2_rndu FPAddX0UP(.clk(clk),.rst(rst),.X(x0),.Y(zero),.R(x0UP));
FPAdd_11_8_F400_uid2_rndu FPAddZ0UP(.clk(clk),.rst(rst),.X(z0),.Y(zero),.R(z0UP));
FPAdd_11_8_F400_uid2_rndu FPAddY0UP(.clk(clk),.rst(rst),.X(y0),.Y(zero),.R(y0UP));
FPAdd_11_8_F400_uid2_rndu FPAddX2UP(.clk(clk),.rst(rst),.X(x2),.Y(zero),.R(x2UP));
FPAdd_11_8_F400_uid2_rndu FPAddY2UP(.clk(clk),.rst(rst),.X(y2),.Y(zero),.R(y2UP));
FPAdd_11_8_F400_uid2_rndu FPAddZ2UP(.clk(clk),.rst(rst),.X(z2),.Y(zero),.R(z2UP));
FPAdd_11_8_F400_uid2_rndu FPAdddivxUP(.clk(clk),.rst(rst),.X(divx),.Y(zero),.R(divxUP));
FPAdd_11_8_F400_uid2_rndu FPAdddivyUP(.clk(clk),.rst(rst),.X(divy),.Y(zero),.R(divyUP));
FPAdd_11_8_F400_uid2_rndu FPAdddivzUP(.clk(clk),.rst(rst),.X(divz),.Y(zero),.R(divzUP));


FPSub_11_8_F400_uid2_rndd FPsubX1(.clk(clk),.rst(rst),.X(x1LOW),.Y(x0UP),.R(subX1));
FPSub_11_8_F400_uid2_rndu FPsubX2(.clk(clk),.rst(rst),.X(x2UP),.Y(x0LOW),.R(subX2));
FPSub_11_8_F400_uid2_rndd FPsubY1(.clk(clk),.rst(rst),.X(y1LOW),.Y(y0UP),.R(subY1));
FPSub_11_8_F400_uid2_rndu FPsubY2(.clk(clk),.rst(rst),.X(y2UP),.Y(y0LOW),.R(subY2));
FPSub_11_8_F400_uid2_rndd FPsubZ1(.clk(clk),.rst(rst),.X(z1LOW),.Y(z0UP),.R(subZ1));
FPSub_11_8_F400_uid2_rndu FPsubZ2(.clk(clk),.rst(rst),.X(z2UP),.Y(z0LOW),.R(subZ2));

FPMult_11_8_F400_uid2_rndu FPsubX2_divxUP_rndu(.clk(clk),.rst(rst),.X(subX2),.Y(divxUP_6),.R(subX2_divxUP_rndu)); //subX2_divxUP_rndu
FPMult_11_8_F400_uid2_rndd FPsubX2_divxUP_rndd(.clk(clk),.rst(rst),.X(subX2),.Y(divxUP_6),.R(subX2_divxUP_rndd)); //subX2_divxUP_rndd
FPMult_11_8_F400_uid2_rndd FPsubX2_divxLOW(.clk(clk),.rst(rst),.X(subX2),.Y(divxLOW_6),.R(subX2_divxLOW_rndd)); //subX2_divxLOW_rndd
FPMult_11_8_F400_uid2_rndu FPsubX1_divxLOW_rndu(.clk(clk),.rst(rst),.X(subX1),.Y(divxLOW_6),.R(subX1_divxLOW_rndu)); //subX1_divxLOW_rndu
FPMult_11_8_F400_uid2_rndd FPsubX1_divxLOW_rndd(.clk(clk),.rst(rst),.X(subX1),.Y(divxLOW_6),.R(subX1_divxLOW_rndd)); //subX1_divxLOW_rndd
FPMult_11_8_F400_uid2_rndd FPsubX1_divxUP(.clk(clk),.rst(rst),.X(subX1),.Y(divxUP_6),.R(subX1_divxUP_rndd)); //subX1_divxUP_rndd

FPMult_11_8_F400_uid2_rndu FPsubY2_divyUP_rndu(.clk(clk),.rst(rst),.X(subY2),.Y(divyUP_6),.R(subY2_divyUP_rndu)); //subY2_divyUP_rndu
FPMult_11_8_F400_uid2_rndd FPsubY2_divyUP_rndd(.clk(clk),.rst(rst),.X(subY2),.Y(divyUP_6),.R(subY2_divyUP_rndd)); //subY2_divyUP_rndd
FPMult_11_8_F400_uid2_rndd FPsubY2_divyLOW(.clk(clk),.rst(rst),.X(subY2),.Y(divyLOW_6),.R(subY2_divyLOW_rndd)); //subY2_divyLOW_rndd
FPMult_11_8_F400_uid2_rndu FPsubY1_divyLOW_rndu(.clk(clk),.rst(rst),.X(subY1),.Y(divyLOW_6),.R(subY1_divyLOW_rndu)); //subY1_divyLOW_rndu
FPMult_11_8_F400_uid2_rndd FPsubY1_divyLOW_rndd(.clk(clk),.rst(rst),.X(subY1),.Y(divyLOW_6),.R(subY1_divyLOW_rndd)); //subY1_divyLOW_rndd
FPMult_11_8_F400_uid2_rndd FPsubY1_divyUP(.clk(clk),.rst(rst),.X(subY1),.Y(divyUP_6),.R(subY1_divyUP_rndd)); //subY1_divyUP_rndd

FPMult_11_8_F400_uid2_rndu FPsubZ2_divzUP_rndu(.clk(clk),.rst(rst),.X(subZ2),.Y(divzUP_6),.R(subZ2_divzUP_rndu)); //subZ2_divzUP_rndu
FPMult_11_8_F400_uid2_rndd FPsubZ2_divzUP_rndd(.clk(clk),.rst(rst),.X(subZ2),.Y(divzUP_6),.R(subZ2_divzUP_rndd)); //subZ2_divzUP_rndd
FPMult_11_8_F400_uid2_rndd FPsubZ2_divzLOW(.clk(clk),.rst(rst),.X(subZ2),.Y(divzLOW_6),.R(subZ2_divzLOW_rndd)); //subZ2_divzLOW_rndd
FPMult_11_8_F400_uid2_rndu FPsubZ1_divzLOW_rndu(.clk(clk),.rst(rst),.X(subZ1),.Y(divzLOW_6),.R(subZ1_divzLOW_rndu)); //subZ1_divzLOW_rndu
FPMult_11_8_F400_uid2_rndd FPsubZ1_divzLOW_rndd(.clk(clk),.rst(rst),.X(subZ1),.Y(divzLOW_6),.R(subZ1_divzLOW_rndd)); //subZ1_divzLOW_rndd
FPMult_11_8_F400_uid2_rndd FPsubZ1_divzUP(.clk(clk),.rst(rst),.X(subZ1),.Y(divzUP_6),.R(subZ1_divzUP_rndd)); //subZ1_divzUP_rndd

assign sdivx = {divxUP_6[width:width-2]};
assign sdivy = {divyUP_6[width:width-2]}; //sign of divxyz, checks ray's direction
assign sdivz = {divzUP_6[width:width-2]};

assign subX1_sign = {subX1[width:width-2]};
assign subX2_sign = {subX2[width:width-2]};
assign subY1_sign = {subY1[width:width-2]};
assign subY2_sign = {subY2[width:width-2]};
assign subZ1_sign = {subZ1[width:width-2]};
assign subZ2_sign = {subZ2[width:width-2]};

assign tfar_sign = {tfar[width:width-2]};

less_than lessX0_X1(clk,rst,x0UP,x1LOW,xp1);
greater_than gre_thanX(clk,rst,x0LOW,x2UP,xp2);

less_than lessY0_Y1(clk,rst,y0UP,y1LOW,yp1);
greater_than gre_thanY(clk,rst,y0LOW,y2UP,yp2);

less_than lessZ0_Z1(clk,rst,z0UP,z1LOW,zp1);
greater_than gre_thanZ(clk,rst,z0LOW,z2UP,zp2);

greater_than gre_than_tymin_txmin(clk,rst,tymin,txmin,ymin);
greater_than gre_than_tzmin_tymin(clk,rst,tzmin,tymin,zmin); //comparisons for finding tnear.
greater_than gre_than_txmin_tzmin(clk,rst,txmin,tzmin,xmin);
greater_or_equal gre_or_eq_txmin_tymin(clk,rst,txmin,tymin,opposite1); 
		  
less_than less_than_tymax_txmax(clk,rst,tymax,txmax,ymax);
less_than less_than_tzmax_tymax(clk,rst,tzmax,tymax,zmax); //comparisons for finding tfar.
less_than less_than_txmax_tzmax(clk,rst,txmax,tzmax,xmax);
less_or_equal less_or_eq_txmax_tymax(clk,rst,txmax,tymax,opposite2);

greater_or_equal gre_or_eq_tfar_tnear(clk,rst,tfar,tnear,yes);

always @(posedge clk) begin
		  
		  xp1_1 <= xp1;
		  xp1_2 <= xp1_1;
		  xp1_3 <= xp1_2;
		  xp1_4 <= xp1_3;
		  xp1_5 <= xp1_4;
		  xp1_6 <= xp1_5;
		  xp1_7 <= xp1_6;
		  xp1_8 <= xp1_7;
		  xp1_9 <= xp1_8;
		  xp1_10 <= xp1_9;
		  xp1_11 <= xp1_10;
		  xp1_12 <= xp1_11;
		  xp1_13 <= xp1_12;
		  xp1_14 <= xp1_13;
		  xp1_15 <= xp1_14;
		  xp1_16 <= xp1_15;
		  xp1_17 <= xp1_16;
		  
		  xp2_1 <= xp2;
		  xp2_2 <= xp2_1;
		  xp2_3 <= xp2_2;
		  xp2_4 <= xp2_3;
		  xp2_5 <= xp2_4;
		  xp2_6 <= xp2_5;
		  xp2_7 <= xp2_6;
		  xp2_8 <= xp2_7;
		  xp2_9 <= xp2_8;
		  xp2_10 <= xp2_9;
		  xp2_11 <= xp2_10;
		  xp2_12 <= xp2_11;
		  xp2_13 <= xp2_12;
		  xp2_14 <= xp2_13;
		  xp2_15 <= xp2_14;
		  xp2_16 <= xp2_15;
		  xp2_17 <= xp2_16;
		  
		  yp1_1 <= yp1;
		  yp1_2 <= yp1_1;
		  yp1_3 <= yp1_2;
		  yp1_4 <= yp1_3;
		  yp1_5 <= yp1_4;
		  yp1_6 <= yp1_5;
		  yp1_7 <= yp1_6;
		  yp1_8 <= yp1_7;
		  yp1_9 <= yp1_8;
		  yp1_10 <= yp1_9;
		  yp1_11 <= yp1_10;
		  yp1_12 <= yp1_11;
		  yp1_13 <= yp1_12;
		  yp1_14 <= yp1_13;
		  yp1_15 <= yp1_14;
		  yp1_16 <= yp1_15;
		  yp1_17 <= yp1_16;
		
		  yp2_1 <= yp2;
		  yp2_2 <= yp2_1;
		  yp2_3 <= yp2_2;
		  yp2_4 <= yp2_3;
		  yp2_5 <= yp2_4;
		  yp2_6 <= yp2_5;
		  yp2_7 <= yp2_6;
		  yp2_8 <= yp2_7;
		  yp2_9 <= yp2_8;
		  yp2_10 <= yp2_9;
		  yp2_11 <= yp2_10;
		  yp2_12 <= yp2_11;
		  yp2_13 <= yp2_12;
		  yp2_14 <= yp2_13;
		  yp2_15 <= yp2_14;
		  yp2_16 <= yp2_15;
		  yp2_17 <= yp2_16;
		
		  zp1_1 <= zp1;
		  zp1_2 <= zp1_1;
		  zp1_3 <= zp1_2;
		  zp1_4 <= zp1_3;
		  zp1_5 <= zp1_4;
		  zp1_6 <= zp1_5;
		  zp1_7 <= zp1_6;
		  zp1_8 <= zp1_7;
		  zp1_9 <= zp1_8;
		  zp1_10 <= zp1_9;
		  zp1_11 <= zp1_10;
		  zp1_12 <= zp1_11;
		  zp1_13 <= zp1_12;
		  zp1_14 <= zp1_13;
		  zp1_15 <= zp1_14;
		  zp1_16 <= zp1_15;
		  zp1_17 <= zp1_16;

		  zp2_1 <= zp2;
		  zp2_2 <= zp2_1;
		  zp2_3 <= zp2_2;
		  zp2_4 <= zp2_3;
		  zp2_5 <= zp2_4;
		  zp2_6 <= zp2_5;
		  zp2_7 <= zp2_6;
		  zp2_8 <= zp2_7;
		  zp2_9 <= zp2_8;
		  zp2_10 <= zp2_9;
		  zp2_11 <= zp2_10;
		  zp2_12 <= zp2_11;
		  zp2_13 <= zp2_12;
		  zp2_14 <= zp2_13;
		  zp2_15 <= zp2_14;
		  zp2_16 <= zp2_15;
		  zp2_17 <= zp2_16;
		   
		  xdir_1 <= x;
		  xdir_2 <= xdir_1;
		  xdir_3 <= xdir_2;
		  xdir_4 <= xdir_3;
		  xdir_5 <= xdir_4;
		  xdir_6 <= xdir_5;
		  xdir_7 <= xdir_6;
		  xdir_8 <= xdir_7;
		  xdir_9 <= xdir_8;
		  xdir_10 <= xdir_9;
		  xdir_11 <= xdir_10;
		  xdir_12 <= xdir_11;
		  xdir_13 <= xdir_12;
		  xdir_14 <= xdir_13;
		  xdir_15 <= xdir_14;
		  xdir_16 <= xdir_15;
		  xdir_17 <= xdir_16;
		  xdir_18 <= xdir_17;
		  xdir_19 <= xdir_18;
		  xdir_20 <= xdir_19;
		  xdir_21 <= xdir_20;
		  xdir_22 <= xdir_21;
		  xdir_23 <= xdir_22;
		  xdir_24 <= xdir_23;
		  xdir_25 <= xdir_24;
		  xdir_26 <= xdir_25;
		  xdir_27 <= xdir_26;
		  xdir_28 <= xdir_27;
		  xdir_29 <= xdir_28;
		  xdir_30 <= xdir_29;
		  
		  ydir_1 <= y;
		  ydir_2 <= ydir_1;
		  ydir_3 <= ydir_2;
		  ydir_4 <= ydir_3;
		  ydir_5 <= ydir_4;
		  ydir_6 <= ydir_5;
		  ydir_7 <= ydir_6; //delays for checking (at the correct cc) if the ray is parallel to the plane
		  ydir_8 <= ydir_7;
		  ydir_9 <= ydir_8;
		  ydir_10 <= ydir_9;
		  ydir_11 <= ydir_10;
		  ydir_12 <= ydir_11;
		  ydir_13 <= ydir_12;
		  ydir_14 <= ydir_13;
		  ydir_15 <= ydir_14;
		  ydir_16 <= ydir_15;
		  ydir_17 <= ydir_16;
		  ydir_18 <= ydir_17;
		  ydir_19 <= ydir_18;
		  ydir_20 <= ydir_19;
		  ydir_21 <= ydir_20;
		  ydir_22 <= ydir_21;
		  ydir_23 <= ydir_22;
		  ydir_24 <= ydir_23;
		  ydir_25 <= ydir_24;
		  ydir_26 <= ydir_25;
		  ydir_27 <= ydir_26;
		  ydir_28 <= ydir_27;
		  ydir_29 <= ydir_28;
		  ydir_30 <= ydir_29;
		  
		  zdir_1 <= z;
		  zdir_2 <= zdir_1;
		  zdir_3 <= zdir_2;
		  zdir_4 <= zdir_3;
		  zdir_5 <= zdir_4;
		  zdir_6 <= zdir_5;
		  zdir_7 <= zdir_6;
		  zdir_8 <= zdir_7;
		  zdir_9 <= zdir_8;
		  zdir_10 <= zdir_9;
		  zdir_11 <= zdir_10;
		  zdir_12 <= zdir_11;
		  zdir_13 <= zdir_12;
		  zdir_14 <= zdir_13;
		  zdir_15 <= zdir_14;
		  zdir_16 <= zdir_15;
		  zdir_17 <= zdir_16;
		  zdir_18 <= zdir_17;
		  zdir_19 <= zdir_18;
		  zdir_20 <= zdir_19;
		  zdir_21 <= zdir_20;
		  zdir_22 <= zdir_21;
		  zdir_23 <= zdir_22;
		  zdir_24 <= zdir_23;
		  zdir_25 <= zdir_24;
		  zdir_26 <= zdir_25;
		  zdir_27 <= zdir_26;
		  zdir_28 <= zdir_27;
		  zdir_29 <= zdir_28;
		  zdir_30 <= zdir_29;
		  
		  subX1_sign_1 <= subX1_sign;
		  subX1_sign_2 <= subX1_sign_1;
		  subY1_sign_1 <= subY1_sign;
		  subY1_sign_2 <= subY1_sign_1;
		  subZ1_sign_1 <= subZ1_sign;
		  subZ1_sign_2 <= subZ1_sign_1;
		  subX2_sign_1 <= subX2_sign; //delays for assigning the correct value of mul to txyzmin,txyzmax;
		  subX2_sign_2 <= subX2_sign_1;
		  subY2_sign_1 <= subY2_sign;
		  subY2_sign_2 <= subY2_sign_1;
		  subZ2_sign_1 <= subZ2_sign;
		  subZ2_sign_2 <= subZ2_sign_1;
		  
		  divxUP_1 <= divxUP;
		  divxUP_2 <= divxUP_1;
		  divxUP_3 <= divxUP_2;
		  divxUP_4 <= divxUP_3;
		  divxUP_5 <= divxUP_4;
		  divxUP_6 <= divxUP_5;//delays for divxUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  sdivx_1 <= sdivx;
		  sdivx_2 <= sdivx_1;
			
		  divxLOW_1 <= divxLOW;
		  divxLOW_2 <= divxLOW_1;
		  divxLOW_3 <= divxLOW_2;
		  divxLOW_4 <= divxLOW_3;
		  divxLOW_5 <= divxLOW_4;
		  divxLOW_6 <= divxLOW_5;//delays for divxLOW, in order to multiply at the correct clk cycle
			
		  divyUP_1 <= divyUP;
		  divyUP_2 <= divyUP_1;
		  divyUP_3 <= divyUP_2;
		  divyUP_4 <= divyUP_3;
		  divyUP_5 <= divyUP_4;
		  divyUP_6 <= divyUP_5;//delays for divyUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  sdivy_1 <= sdivy;
		  sdivy_2 <= sdivy_1;
			
		  divyLOW_1 <= divyLOW;
		  divyLOW_2 <= divyLOW_1;
		  divyLOW_3 <= divyLOW_2;
		  divyLOW_4 <= divyLOW_3;
		  divyLOW_5 <= divyLOW_4;//delays for divyLOW, in order to multiply at the correct clk cycle
		  divyLOW_6 <= divyLOW_5;
		  
		  divzUP_1 <= divzUP;
		  divzUP_2 <= divzUP_1;
		  divzUP_3 <= divzUP_2;
		  divzUP_4 <= divzUP_3;
		  divzUP_5 <= divzUP_4;
		  divzUP_6 <= divzUP_5;//delays for divzUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  sdivz_1 <= sdivz;
		  sdivz_2 <= sdivz_1;
		  
		  divzLOW_1 <= divzLOW;
		  divzLOW_2 <= divzLOW_1;
		  divzLOW_3 <= divzLOW_2;
		  divzLOW_4 <= divzLOW_3;
		  divzLOW_5 <= divzLOW_4;
		  divzLOW_6 <= divzLOW_5;//delays for divzLOW, in order to multiply at the correct clk cycle 
		  
		  txmin_1 <= txmin;
		  txmin_2 <= txmin_1;
		  txmin_3 <= txmin_2;
		  txmin_4 <= txmin_3;
		  txmin_5 <= txmin_4;//delays for txmin in order to assign the correct value to tnear
		  txmin_6 <= txmin_5;
		  txmin_7 <= txmin_6;
		  
		  txmax_1 <= txmax;
		  txmax_2 <= txmax_1;
		  txmax_3 <= txmax_2;
		  txmax_4 <= txmax_3;
		  txmax_5 <= txmax_4;//delays for txmax in order to assign the correct value to tfar
		  txmax_6 <= txmax_5;
		  txmax_7 <= txmax_6;
		  
		  tymin_1 <= tymin;
		  tymin_2 <= tymin_1;
		  tymin_3 <= tymin_2;
		  tymin_4 <= tymin_3;
		  tymin_5 <= tymin_4;//delays for tymin in order to assign the correct value to tnear
		  tymin_6 <= tymin_5;
		  tymin_7 <= tymin_6;
		  
		  tymax_1 <= tymax;
		  tymax_2 <= tymax_1;
		  tymax_3 <= tymax_2;
		  tymax_4 <= tymax_3;
		  tymax_5 <= tymax_4;//delays for tymax in order to assign the correct value to tfar
		  tymax_6 <= tymax_5;
		  tymax_7 <= tymax_6;
		  
		  tzmin_1 <= tzmin;
		  tzmin_2 <= tzmin_1;
		  tzmin_3 <= tzmin_2;
		  tzmin_4 <= tzmin_3;
		  tzmin_5 <= tzmin_4;//delays for tzmin in order to assign the correct value to tnear
		  tzmin_6 <= tzmin_5;
		  tzmin_7 <= tzmin_6;
		  
		  tzmax_1 <= tzmax;
		  tzmax_2 <= tzmax_1;
		  tzmax_3 <= tzmax_2;
		  tzmax_4 <= tzmax_3;
		  tzmax_5 <= tzmax_4;//delays for tzmax in order to assign the correct value to tfar
		  tzmax_6 <= tzmax_5;
		  tzmax_7 <= tzmax_6;

        tfar_sign_1 <= tfar_sign;
		  tfar_sign_2 <= tfar_sign_1;
		  tfar_sign_3 <= tfar_sign_2;
		  tfar_sign_4 <= tfar_sign_3;
		  tfar_sign_5 <= tfar_sign_4;//delays for tfar in order to check the correct value of tfar, at the final comparison stage
		  tfar_sign_6 <= tfar_sign_5;
		  tfar_sign_7 <= tfar_sign_6;
end

always @(posedge clk or posedge rst) begin

	if (rst) begin
		
		zero = 19'b0000000000000000000000000000000000000000000000000000000;
		
	end
	
	else begin	  
//---------------------------------------------------------------------------------------- X plane	 
		  if (sdivx_2[width-2] == 1'b0) begin //if direction to the right hand side(positive),no possibility of divx is equal with zero,thus no checking for it.
		       
				 txmax = subX2_divxUP_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				 if ((subX1_sign_2[width-2] == 1'b0) && (subX1_sign_2[width] ^ subX1_sign_2[width-1])) txmin = subX1_divxLOW_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				 else if ((subX1_sign_2[width-2] == 1'b1)  || ~(subX1_sign_2[width] | subX1_sign_2[width-1])) txmin = subX1_divxUP_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (sdivx_2[width-2] == 1'b1) begin // if direction to the left hand side(negative),no possibility of divx is equal with zero,thus no checking for it.
		       
				 txmax = subX1_divxLOW_rndu; //else txmax=subX1*divxLOW
				 if ((subX2_sign_2[width-2] == 1'b0) && (subX2_sign_2[width] ^ subX2_sign_2[width-1])) txmin = subX2_divxLOW_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
				 else if ((subX2_sign_2[width-2] == 1'b1) || ~(subX2_sign_2[width] | subX2_sign_2[width-1])) txmin = subX2_divxUP_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP
				 
		  end
//--------------------------------------------------------------------------------------------- Y plane
        if (sdivy_2[width-2] == 1'b0) begin //if direction to the right hand side(positive)
		  
				 tymax = subY2_divyUP_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				 if ((subY1_sign_2[width-2] == 1'b0) && (subY1_sign_2[width] ^ subY1_sign_2[width-1])) tymin = subY1_divyLOW_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				 else if ((subY1_sign_2[width-2] == 1'b1)  || ~(subY1_sign_2[width] | subY1_sign_2[width-1])) tymin = subY1_divyUP_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (sdivy_2[width-2] == 1'b1) begin // if direction to the left hand side(negative)
		       
				 tymax = subY1_divyLOW_rndu; //else txmax=subX1*divxLOW
				 if ((subY2_sign_2[width-2] == 1'b0) && (subY2_sign_2[width] ^ subY2_sign_2[width-1])) tymin = subY2_divyLOW_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
				 else if ((subY2_sign_2[width-2] == 1'b1) || ~(subY2_sign_2[width] | subY2_sign_2[width-1])) tymin = subY2_divyUP_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP
				 
		  end
//------------------------------------------------------------------------------------------------- Z plane
		  if (sdivz_2[width-2] == 1'b0) begin //if direction to the right hand side(positive)
		  
				tzmax = subZ2_divzUP_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				if ((subZ1_sign_2[width-2] == 1'b0) && (subZ1_sign_2[width] ^ subZ1_sign_2[width-1])) tzmin = subZ1_divzLOW_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				else if ((subZ1_sign_2[width-2] == 1'b1)  || ~(subZ1_sign_2[width] | subZ1_sign_2[width-1])) tzmin = subZ1_divzUP_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (sdivz_2[width-2] == 1'b1) begin // if direction to the left hand side(negative)
				
				tzmax = subZ1_divzLOW_rndu; //else txmax=subX1*divxLOW
				if ((subZ2_sign_2[width-2] == 1'b0) && (subZ2_sign_2[width] ^ subZ2_sign_2[width-1])) tzmin = subZ2_divzLOW_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
			   else if ((subZ2_sign_2[width-2] == 1'b1) || ~(subZ2_sign_2[width] | subZ2_sign_2[width-1])) tzmin = subZ2_divzUP_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP				
				 
		  end
//------------------------------------------------------------------------------------------------- comparisons
		  if (ymin) begin //if tymin>txmin
				
					if (zmin) tnear = tzmin_7; //if tzmin>tymin, tnear=tzmin
					else tnear = tymin_7; //else tnear=tymin	
					
		  end
		  else if (opposite1) begin //if txmin>=tymin
					
					if (xmin) tnear = txmin_7; //if txmin>tzmin, tnear=txmin
					else tnear = tzmin_7; //else tnear=tzmin
					
		  end
			  
		  if (ymax) begin //if tymax<txmax
				   
					if (zmax) tfar = tzmax_7; //if tzmax<tymax, tfar=tzmax
					else tfar = tymax_7; //else tfar = tymax
					
		  end
		  else if (opposite2) begin //if txmax <=tymax
			      
					if (xmax) tfar = txmax_7; //if txmax<tzmax, tfar=txmax
					else tfar = tzmax_7; //else tfar = tzmax
					
		  end
//------------------------------------------------------------------------------------ origin checking and output decision for the intersection question		  
		  if (xdir_30) begin //ray parallel to the X plane
		  
				if (xp1_17 || xp2_17) hit_miss = 1'b0; //miss,origin not between the slabs
 	
		  end
		  
		  else if (ydir_30) begin //ray parallel to the Y plane
		  
				if (yp1_17 || yp2_17) hit_miss = 1'b0; //miss,origin not between the slabs
	
		  end
		  
		  else if (zdir_30) begin //ray parallel to the Z plane
		  
				if (zp1_17 || zp2_17) hit_miss = 1'b0; //miss,origin not between the slabs	

		  end
		  
        else begin		  
			  if (yes && ((tfar_sign_7[width-2] == 1'b0) && ((tfar_sign_7[width] == 1'b0) && (tfar_sign_7[width-1] == 1'b1)) || ((tfar_sign_7[width-2] == 1'b0) && ((tfar_sign_7[width] == 1'b1) && (tfar_sign_7[width-1] == 1'b0))))) begin
							hit_miss = 1'b1; //hit if (tfar>0 && tfar>=tnear)
							//ready = 1'b1;
			  end
			  else begin
							hit_miss = 1'b0; //miss
							//ready = 1'b1;
			  end
		  end
	end
end

endmodule
