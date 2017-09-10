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
module Ray_AABB_11_52(clk,rst,x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1LOW,y1LOW,z1LOW,x2UP,y2UP,z2UP,x,y,z,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW,hit_miss);

parameter width = 65; //specifies the bitwidth of each fp input/register plus 2 bits for FloPoCo decoding (width = 2 & sign_bit & exp_bits & mantissa_bits)

input clk,rst;
input [width:0] x0UP,x0LOW,y0UP,y0LOW,z0UP,z0LOW,x1LOW,y1LOW,z1LOW,x2UP,y2UP,z2UP,divxUP,divxLOW,divyUP,divyLOW,divzUP,divzLOW;
input x,y,z; //flag for checking if ray is parallel to each plane.

output hit_miss;

reg [width:0] tnear,tfar,txmin,txmax,tymin,tymax,tzmin,tzmax,tfar_1,tfar_2,tfar_3,tfar_4,tfar_5,tfar_6,tfar_7,tfar_8,tfar_9,tfar_10,tfar_11,tfar_12;
reg [width:0] txmin_1,txmin_2,txmin_3,txmin_4,txmin_5,txmin_6,txmin_7,txmin_8,txmin_9,txmin_10,txmin_11,txmin_12,txmax_1,txmax_2,txmax_3,txmax_4,txmax_5,txmax_6,txmax_7,txmax_8,txmax_9,txmax_10,txmax_11,txmax_12;
reg [width:0] tymin_1,tymin_2,tymin_3,tymin_4,tymin_5,tymin_6,tymin_7,tymin_8,tymin_9,tymin_10,tymin_11,tymin_12,tymax_1,tymax_2,tymax_3,tymax_4,tymax_5,tymax_6,tymax_7,tymax_8,tymax_9,tymax_10,tymax_11,tymax_12;
reg [width:0] tzmin_1,tzmin_2,tzmin_3,tzmin_4,tzmin_5,tzmin_6,tzmin_7,tzmin_8,tzmin_9,tzmin_10,tzmin_11,tzmin_12,tzmax_1,tzmax_2,tzmax_3,tzmax_4,tzmax_5,tzmax_6,tzmax_7,tzmax_8,tzmax_9,tzmax_10,tzmax_11,tzmax_12;
reg hit_miss,ready;
reg xdir_1,xdir_2,xdir_3,xdir_4,xdir_5,xdir_6,xdir_7,xdir_8,ydir_1,ydir_2,ydir_3,ydir_4,ydir_5,ydir_6,ydir_7,ydir_8,zdir_1,zdir_2,zdir_3,zdir_4,zdir_5,zdir_6,zdir_7,zdir_8;
reg xdir_9,xdir_10,xdir_11,xdir_12,xdir_13,xdir_14,xdir_15,xdir_16,xdir_17,xdir_18,xdir_19,xdir_20,xdir_21,xdir_22,xdir_23,xdir_24,xdir_25,xdir_26,xdir_27,xdir_28,xdir_29,xdir_30,xdir_31,xdir_32,xdir_33,xdir_34,xdir_35,xdir_36,xdir_37,xdir_38,xdir_39,xdir_40,xdir_41,xdir_42,xdir_43,xdir_44,xdir_45,xdir_46,xdir_47,xdir_48;
reg ydir_9,ydir_10,ydir_11,ydir_12,ydir_13,ydir_14,ydir_15,ydir_16,ydir_17,ydir_18,ydir_19,ydir_20,ydir_21,ydir_22,ydir_23,ydir_24,ydir_25,ydir_26,ydir_27,ydir_28,ydir_29,ydir_30,ydir_31,ydir_32,ydir_33,ydir_34,ydir_35,ydir_36,ydir_37,ydir_38,ydir_39,ydir_40,ydir_41,ydir_42,ydir_43,ydir_44,ydir_45,ydir_46,ydir_47,ydir_48;
reg zdir_9,zdir_10,zdir_11,zdir_12,zdir_13,zdir_14,zdir_15,zdir_16,zdir_17,zdir_18,zdir_19,zdir_20,zdir_21,zdir_22,zdir_23,zdir_24,zdir_25,zdir_26,zdir_27,zdir_28,zdir_29,zdir_30,zdir_31,zdir_32,zdir_33,zdir_34,zdir_35,zdir_36,zdir_37,zdir_38,zdir_39,zdir_40,zdir_41,zdir_42,zdir_43,zdir_44,zdir_45,zdir_46,zdir_47,zdir_48;

wire [width:0] subX1,subX2,subY1,subY2,subZ1,subZ2,subX2_divxUP_rndu,subX2_divxUP_rndd,subX2_divxLOW_rndd,subX1_divxUP_rndd,subX1_divxLOW_rndu,subX1_divxLOW_rndd,subY2_divyUP_rndu,subY2_divyUP_rndd,subY2_divyLOW_rndd,subY1_divyUP_rndd,subY1_divyLOW_rndu,subY1_divyLOW_rndd,subZ2_divzUP_rndu,subZ2_divzUP_rndd,subZ2_divzLOW_rndd,subZ1_divzUP_rndd,subZ1_divzLOW_rndu,subZ1_divzLOW_rndd;
reg [width:0] subX1toMul,subX2toMul,subY1toMul,subY2toMul,subZ1toMul,subZ2toMul,subX2_divxUP_1_rndu,subX2_divxUP_1_rndd,subX2_divxLOW_1_rndd,subX1_divxUP_1_rndd,subX1_divxLOW_1_rndu,subX1_divxLOW_1_rndd,subY2_divyUP_1_rndu,subY2_divyUP_1_rndd,subY2_divyLOW_1_rndd,subY1_divyUP_1_rndd,subY1_divyLOW_1_rndu,subY1_divyLOW_1_rndd,subZ2_divzUP_1_rndu,subZ2_divzUP_1_rndd,subZ2_divzLOW_1_rndd,subZ1_divzUP_1_rndd,subZ1_divzLOW_1_rndu,subZ1_divzLOW_1_rndd;
reg [width:0] divxLOW_1,divxLOW_2,divxLOW_3,divxLOW_4,divxLOW_5,divxLOW_6,divxLOW_7,divxLOW_8,divxLOW_9,divxLOW_10,divxLOW_11,divxLOW_12,divxUP_1,divxUP_2,divxUP_3,divxUP_4,divxUP_5,divxUP_6,divxUP_7,divxUP_8,divxUP_9,divxUP_10,divxUP_11,divxUP_12,divxUP_13,divxUP_14,divxUP_15,divxUP_16,divxUP_17,divxUP_18,divxUP_19,divxUP_20,divxUP_21,divxUP_22;
reg [width:0] divyLOW_1,divyLOW_2,divyLOW_3,divyLOW_4,divyLOW_5,divyLOW_6,divyLOW_7,divyLOW_8,divyLOW_9,divyLOW_10,divyLOW_11,divyLOW_12,divyUP_1,divyUP_2,divyUP_3,divyUP_4,divyUP_5,divyUP_6,divyUP_7,divyUP_8,divyUP_9,divyUP_10,divyUP_11,divyUP_12,divyUP_13,divyUP_14,divyUP_15,divyUP_16,divyUP_17,divyUP_18,divyUP_19,divyUP_20,divyUP_21,divyUP_22;
reg [width:0] divzLOW_1,divzLOW_2,divzLOW_3,divzLOW_4,divzLOW_5,divzLOW_6,divzLOW_7,divzLOW_8,divzLOW_9,divzLOW_10,divzLOW_11,divzLOW_12,divzUP_1,divzUP_2,divzUP_3,divzUP_4,divzUP_5,divzUP_6,divzUP_7,divzUP_8,divzUP_9,divzUP_10,divzUP_11,divzUP_12,divzUP_13,divzUP_14,divzUP_15,divzUP_16,divzUP_17,divzUP_18,divzUP_19,divzUP_20,divzUP_21,divzUP_22;

wire xp1,xp2,yp1,yp2,zp1,zp2,xmin,ymin,zmin,xmax,ymax,zmax,opposite1,opposite2,yes;
reg xp1_1,xp1_2,xp1_3,xp1_4,xp1_5,xp1_6,xp1_7,xp1_8,xp1_9,xp1_10,xp1_11,xp1_12,xp1_13,xp1_14,xp1_15,xp1_16,xp1_17,xp1_18,xp1_19,xp1_20,xp1_21,xp1_22,xp1_23,xp1_24,xp1_25,xp1_26,xp1_27,xp1_28,xp1_29,xp1_30,xp1_31,xp1_32,xp1_33,xp1_34,xp1_35,xp1_36,xp2_1,xp2_2,xp2_3,xp2_4,xp2_5,xp2_6,xp2_7,xp2_8,xp2_9,xp2_10,xp2_11,xp2_12,xp2_13,xp2_14,xp2_15,xp2_16,xp2_17,xp2_18,xp2_19,xp2_20,xp2_21,xp2_22,xp2_23,xp2_24,xp2_25,xp2_26,xp2_27,xp2_28,xp2_29,xp2_30,xp2_31,xp2_32,xp2_33,xp2_34,xp2_35,xp2_36;
reg yp1_1,yp1_2,yp1_3,yp1_4,yp1_5,yp1_6,yp1_7,yp1_8,yp1_9,yp1_10,yp1_11,yp1_12,yp1_13,yp1_14,yp1_15,yp1_16,yp1_17,yp1_18,yp1_19,yp1_20,yp1_21,yp1_22,yp1_23,yp1_24,yp1_25,yp1_26,yp1_27,yp1_28,yp1_29,yp1_30,yp1_31,yp1_32,yp1_33,yp1_34,yp1_35,yp1_36,yp2_1,yp2_2,yp2_3,yp2_4,yp2_5,yp2_6,yp2_7,yp2_8,yp2_9,yp2_10,yp2_11,yp2_12,yp2_13,yp2_14,yp2_15,yp2_16,yp2_17,yp2_18,yp2_19,yp2_20,yp2_21,yp2_22,yp2_23,yp2_24,yp2_25,yp2_26,yp2_27,yp2_28,yp2_29,yp2_30,yp2_31,yp2_32,yp2_33,yp2_34,yp2_35,yp2_36;;
reg zp1_1,zp1_2,zp1_3,zp1_4,zp1_5,zp1_6,zp1_7,zp1_8,zp1_9,zp1_10,zp1_11,zp1_12,zp1_13,zp1_14,zp1_15,zp1_16,zp1_17,zp1_18,zp1_19,zp1_20,zp1_21,zp1_22,zp1_23,zp1_24,zp1_25,zp1_26,zp1_27,zp1_28,zp1_29,zp1_30,zp1_31,zp1_32,zp1_33,zp1_34,zp1_35,zp1_36,zp2_1,zp2_2,zp2_3,zp2_4,zp2_5,zp2_6,zp2_7,zp2_8,zp2_9,zp2_10,zp2_11,zp2_12,zp2_13,zp2_14,zp2_15,zp2_16,zp2_17,zp2_18,zp2_19,zp2_20,zp2_21,zp2_22,zp2_23,zp2_24,zp2_25,zp2_26,zp2_27,zp2_28,zp2_29,zp2_30,zp2_31,zp2_32,zp2_33,zp2_34,zp2_35,zp2_36;;


FPSub_11_52_F400_uid2_rndd FPsubX1(.clk(clk),.rst(rst),.X(x1LOW),.Y(x0UP),.R(subX1));
FPSub_11_52_F400_uid2_rndu FPsubX2(.clk(clk),.rst(rst),.X(x2UP),.Y(x0LOW),.R(subX2));
FPSub_11_52_F400_uid2_rndd FPsubY1(.clk(clk),.rst(rst),.X(y1LOW),.Y(y0UP),.R(subY1));
FPSub_11_52_F400_uid2_rndu FPsubY2(.clk(clk),.rst(rst),.X(y2UP),.Y(y0LOW),.R(subY2));
FPSub_11_52_F400_uid2_rndd FPsubZ1(.clk(clk),.rst(rst),.X(z1LOW),.Y(z0UP),.R(subZ1));
FPSub_11_52_F400_uid2_rndu FPsubZ2(.clk(clk),.rst(rst),.X(z2UP),.Y(z0LOW),.R(subZ2));

FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubX2_divxUP_rndu(.clk(clk),.rst(rst),.X(subX2toMul),.Y(divxUP_12),.R(subX2_divxUP_rndu)); //subX2_divxUP_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubX2_divxUP_rndd(.clk(clk),.rst(rst),.X(subX2toMul),.Y(divxUP_12),.R(subX2_divxUP_rndd)); //subX2_divxUP_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubX2_divxLOW(.clk(clk),.rst(rst),.X(subX2toMul),.Y(divxLOW_12),.R(subX2_divxLOW_rndd)); //subX2_divxLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubX1_divxLOW_rndu(.clk(clk),.rst(rst),.X(subX1toMul),.Y(divxLOW_12),.R(subX1_divxLOW_rndu)); //subX1_divxLOW_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubX1_divxLOW_rndd(.clk(clk),.rst(rst),.X(subX1toMul),.Y(divxLOW_12),.R(subX1_divxLOW_rndd)); //subX1_divxLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubX1_divxUP(.clk(clk),.rst(rst),.X(subX1toMul),.Y(divxUP_12),.R(subX1_divxUP_rndd)); //subX1_divxUP_rndd

FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubY2_divyUP_rndu(.clk(clk),.rst(rst),.X(subY2toMul),.Y(divyUP_12),.R(subY2_divyUP_rndu)); //subY2_divyUP_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubY2_divyUP_rndd(.clk(clk),.rst(rst),.X(subY2toMul),.Y(divyUP_12),.R(subY2_divyUP_rndd)); //subY2_divyUP_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubY2_divyLOW(.clk(clk),.rst(rst),.X(subY2toMul),.Y(divyLOW_12),.R(subY2_divyLOW_rndd)); //subY2_divyLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubY1_divyLOW_rndu(.clk(clk),.rst(rst),.X(subY1toMul),.Y(divyLOW_12),.R(subY1_divyLOW_rndu)); //subY1_divyLOW_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubY1_divyLOW_rndd(.clk(clk),.rst(rst),.X(subY1toMul),.Y(divyLOW_12),.R(subY1_divyLOW_rndd)); //subY1_divyLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubY1_divyUP(.clk(clk),.rst(rst),.X(subY1toMul),.Y(divyUP_12),.R(subY1_divyUP_rndd)); //subY1_divyUP_rndd

FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubZ2_divzUP_rndu(.clk(clk),.rst(rst),.X(subZ2toMul),.Y(divzUP_12),.R(subZ2_divzUP_rndu)); //subZ2_divzUP_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubZ2_divzUP_rndd(.clk(clk),.rst(rst),.X(subZ2toMul),.Y(divzUP_12),.R(subZ2_divzUP_rndd)); //subZ2_divzUP_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubZ2_divzLOW(.clk(clk),.rst(rst),.X(subZ2toMul),.Y(divzLOW_12),.R(subZ2_divzLOW_rndd)); //subZ2_divzLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndu FPsubZ1_divzLOW_rndu(.clk(clk),.rst(rst),.X(subZ1toMul),.Y(divzLOW_12),.R(subZ1_divzLOW_rndu)); //subZ1_divzLOW_rndu
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubZ1_divzLOW_rndd(.clk(clk),.rst(rst),.X(subZ1toMul),.Y(divzLOW_12),.R(subZ1_divzLOW_rndd)); //subZ1_divzLOW_rndd
FPMult_11_52_11_52_11_52_F400_uid2_rndd FPsubZ1_divzUP(.clk(clk),.rst(rst),.X(subZ1toMul),.Y(divzUP_12),.R(subZ1_divzUP_rndd)); //subZ1_divzUP_rndd


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
		  xp1_18 <= xp1_17;
		  xp1_19 <= xp1_18;
		  xp1_20 <= xp1_19;
		  xp1_21 <= xp1_20;
		  xp1_22 <= xp1_21;
		  xp1_23 <= xp1_22;
		  xp1_24 <= xp1_23;
		  xp1_25 <= xp1_24;
		  xp1_26 <= xp1_25;
		  xp1_27 <= xp1_26;
		  xp1_28 <= xp1_27;
		  xp1_29 <= xp1_28;
		  xp1_30 <= xp1_29;
		  xp1_31 <= xp1_30;
		  xp1_32 <= xp1_31;
		  xp1_33 <= xp1_32;
		  xp1_34 <= xp1_33;
		  xp1_35 <= xp1_34;
		  xp1_36 <= xp1_35;

		  
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
		  xp2_18 <= xp2_17;
		  xp2_19 <= xp2_18;
		  xp2_20 <= xp2_19;
		  xp2_21 <= xp2_20;
		  xp2_22 <= xp2_21;
		  xp2_23 <= xp2_22;
		  xp2_24 <= xp2_23;
		  xp2_25 <= xp2_24;
		  xp2_26 <= xp2_25;
		  xp2_27 <= xp2_26;
		  xp2_28 <= xp2_27;
		  xp2_29 <= xp2_28;
		  xp2_30 <= xp2_29;
		  xp2_31 <= xp2_30;
		  xp2_32 <= xp2_31;
		  xp2_33 <= xp2_32;
		  xp2_34 <= xp2_33;
		  xp2_35 <= xp2_34;
		  xp2_36 <= xp2_35;

		  
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
		  yp1_18 <= yp1_17;
		  yp1_19 <= yp1_18;
		  yp1_20 <= yp1_19;
		  yp1_21 <= yp1_20;
		  yp1_22 <= yp1_21;
		  yp1_23 <= yp1_22;
		  yp1_24 <= yp1_23;
		  yp1_25 <= yp1_24;
		  yp1_26 <= yp1_25;
		  yp1_27 <= yp1_26;
		  yp1_28 <= yp1_27;
		  yp1_29 <= yp1_28;
		  yp1_30 <= yp1_29;
		  yp1_31 <= yp1_30;
		  yp1_32 <= yp1_31;
		  yp1_33 <= yp1_32;
		  yp1_34 <= yp1_33;
		  yp1_35 <= yp1_34;
		  yp1_36 <= yp1_35;

		  
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
		  yp2_18 <= yp2_17;
		  yp2_19 <= yp2_18;
		  yp2_20 <= yp2_19;
		  yp2_21 <= yp2_20;
		  yp2_22 <= yp2_21;
		  yp2_23 <= yp2_22;
		  yp2_24 <= yp2_23;
		  yp2_25 <= yp2_24;
		  yp2_26 <= yp2_25;
		  yp2_27 <= yp2_26;
		  yp2_28 <= yp2_27;
		  yp2_29 <= yp2_28;
		  yp2_30 <= yp2_29;
		  yp2_31 <= yp2_30;
		  yp2_32 <= yp2_31;
		  yp2_33 <= yp2_32;
		  yp2_34 <= yp2_33;
		  yp2_35 <= yp2_34;
		  yp2_36 <= yp2_35;
		  
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
		  zp1_18 <= zp1_17;
		  zp1_19 <= zp1_18;
		  zp1_20 <= zp1_19;
		  zp1_21 <= zp1_20;
		  zp1_22 <= zp1_21;
		  zp1_23 <= zp1_22;
		  zp1_24 <= zp1_23;
		  zp1_25 <= zp1_24;
		  zp1_26 <= zp1_25;
		  zp1_27 <= zp1_26;
		  zp1_28 <= zp1_27;
		  zp1_29 <= zp1_28;
		  zp1_30 <= zp1_29;
		  zp1_31 <= zp1_30;
		  zp1_32 <= zp1_31;
		  zp1_33 <= zp1_32;
		  zp1_34 <= zp1_33;
		  zp1_35 <= zp1_34;
		  zp1_36 <= zp1_35;
		  
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
		  zp2_18 <= zp2_17;
		  zp2_19 <= zp2_18;
		  zp2_20 <= zp2_19;
		  zp2_21 <= zp2_20;
		  zp2_22 <= zp2_21;
		  zp2_23 <= zp2_22;
		  zp2_24 <= zp2_23;
		  zp2_25 <= zp2_24;
		  zp2_26 <= zp2_25;
		  zp2_27 <= zp2_26;
		  zp2_28 <= zp2_27;
		  zp2_29 <= zp2_28;
		  zp2_30 <= zp2_29;
		  zp2_31 <= zp2_30;
		  zp2_32 <= zp2_31;
		  zp2_33 <= zp2_32;
		  zp2_34 <= zp2_33;
		  zp2_35 <= zp2_34;
		  zp2_36 <= zp2_35;
		  
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
		  xdir_31 <= xdir_30;
		  xdir_32 <= xdir_31;
		  xdir_33 <= xdir_32;
		  xdir_34 <= xdir_33;
		  xdir_35 <= xdir_34;
		  xdir_36 <= xdir_35;
		  xdir_37 <= xdir_36;
		  xdir_38 <= xdir_37;
		  xdir_39 <= xdir_38;
		  xdir_40 <= xdir_39;
		  xdir_41 <= xdir_40;
		  xdir_42 <= xdir_41;
		  xdir_43 <= xdir_42;
		  xdir_44 <= xdir_43;
		  xdir_45 <= xdir_44;
		  xdir_46 <= xdir_45;
		  xdir_47 <= xdir_46;
		  xdir_48 <= xdir_47;
		  
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
		  ydir_31 <= ydir_30;
		  ydir_32 <= ydir_31;
		  ydir_33 <= ydir_32;
		  ydir_34 <= ydir_33;
		  ydir_35 <= ydir_34;
		  ydir_36 <= ydir_35;
		  ydir_37 <= ydir_36;
		  ydir_38 <= ydir_37;
		  ydir_39 <= ydir_38;
		  ydir_40 <= ydir_39;
		  ydir_41 <= ydir_40;
		  ydir_42 <= ydir_41;
		  ydir_43 <= ydir_42;
		  ydir_44 <= ydir_43;
		  ydir_45 <= ydir_44;
		  ydir_46 <= ydir_45;
		  ydir_47 <= ydir_46;
		  ydir_48 <= ydir_47;
		  
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
		  zdir_31 <= zdir_30;
		  zdir_32 <= zdir_31;
		  zdir_33 <= zdir_32;
		  zdir_34 <= zdir_33;
		  zdir_35 <= zdir_34;
		  zdir_36 <= zdir_35;
		  zdir_37 <= zdir_36;
		  zdir_38 <= zdir_37;
		  zdir_39 <= zdir_38;
		  zdir_40 <= zdir_39;
		  zdir_41 <= zdir_40;
		  zdir_42 <= zdir_41;
		  zdir_43 <= zdir_42;
		  zdir_44 <= zdir_43;
		  zdir_45 <= zdir_44;
		  zdir_46 <= zdir_45;
		  zdir_47 <= zdir_46;
		  zdir_48 <= zdir_47;
		  
		  subX1toMul <= subX1;
		  subX2toMul <= subX2;
		  subY1toMul <= subY1;
		  subY2toMul <= subY2; //pipeline registers sub to mul stage
		  subZ1toMul <= subZ1;
		  subZ2toMul <= subZ2;
		  
		  subX1_divxLOW_1_rndd <= subX1_divxLOW_rndd;
		  subX1_divxLOW_1_rndu <= subX1_divxLOW_rndu;
		  subX1_divxUP_1_rndd <= subX1_divxUP_rndd;
		  subX2_divxLOW_1_rndd <= subX2_divxLOW_rndd;
		  subX2_divxUP_1_rndu <= subX2_divxUP_rndu;
		  subX2_divxUP_1_rndd <= subX2_divxUP_rndd;
		  
		  subY1_divyLOW_1_rndd <= subY1_divyLOW_rndd;
		  subY1_divyLOW_1_rndu <= subY1_divyLOW_rndu;
		  subY1_divyUP_1_rndd <= subY1_divyUP_rndd;
		  subY2_divyLOW_1_rndd <= subY2_divyLOW_rndd;//pipeline registers to assign values to txyzmin,txyzmax
		  subY2_divyUP_1_rndu <= subY2_divyUP_rndu;
		  subY2_divyUP_1_rndd <= subY2_divyUP_rndd;
		  
		  subZ1_divzLOW_1_rndd <= subZ1_divzLOW_rndd;
		  subZ1_divzLOW_1_rndu <= subZ1_divzLOW_rndu;
		  subZ1_divzUP_1_rndd <= subZ1_divzUP_rndd;
		  subZ2_divzLOW_1_rndd <= subZ2_divzLOW_rndd;
		  subZ2_divzUP_1_rndu <= subZ2_divzUP_rndu;
		  subZ2_divzUP_1_rndd <= subZ2_divzUP_rndd;
		  
		  divxUP_1 <= divxUP;
		  divxUP_2 <= divxUP_1;
		  divxUP_3 <= divxUP_2;
		  divxUP_4 <= divxUP_3;
		  divxUP_5 <= divxUP_4;
		  divxUP_6 <= divxUP_5;//delays for divxUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  divxUP_7 <= divxUP_6;
		  divxUP_8 <= divxUP_7;
		  divxUP_9 <= divxUP_8;
		  divxUP_10 <= divxUP_9;
		  divxUP_11 <= divxUP_10;
		  divxUP_12 <= divxUP_11;
		  divxUP_13 <= divxUP_12;
		  divxUP_14 <= divxUP_13;
		  divxUP_15 <= divxUP_14;
		  divxUP_16 <= divxUP_15;
		  divxUP_17 <= divxUP_16;
		  divxUP_18 <= divxUP_17;
		  divxUP_19 <= divxUP_18;
		  divxUP_20 <= divxUP_19;
		  divxUP_21 <= divxUP_20;
		  divxUP_22 <= divxUP_21;
			
		  divxLOW_1 <= divxLOW;
		  divxLOW_2 <= divxLOW_1;
		  divxLOW_3 <= divxLOW_2;
		  divxLOW_4 <= divxLOW_3;
		  divxLOW_5 <= divxLOW_4;
		  divxLOW_6 <= divxLOW_5;//delays for divxLOW, in order to multiply at the correct clk cycle
		  divxLOW_7 <= divxLOW_6;
		  divxLOW_8 <= divxLOW_7;
		  divxLOW_9 <= divxLOW_8;
		  divxLOW_10 <= divxLOW_9;
		  divxLOW_11 <= divxLOW_10;
		  divxLOW_12 <= divxLOW_11;
			
		  divyUP_1 <= divyUP;
		  divyUP_2 <= divyUP_1;
		  divyUP_3 <= divyUP_2;
		  divyUP_4 <= divyUP_3;
		  divyUP_5 <= divyUP_4;
		  divyUP_6 <= divyUP_5;//delays for divyUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  divyUP_7 <= divyUP_6;
		  divyUP_8 <= divyUP_7;
		  divyUP_9 <= divyUP_8;
		  divyUP_10 <= divyUP_9;
		  divyUP_11 <= divyUP_10;
		  divyUP_12 <= divyUP_11;
		  divyUP_13 <= divyUP_12;
		  divyUP_14 <= divyUP_13;
		  divyUP_15 <= divyUP_14;
		  divyUP_16 <= divyUP_15;
		  divyUP_17 <= divyUP_16;
		  divyUP_18 <= divyUP_17;
		  divyUP_19 <= divyUP_18;
		  divyUP_20 <= divyUP_19;
		  divyUP_21 <= divyUP_20;
		  divyUP_22 <= divyUP_21;
			
		  divyLOW_1 <= divyLOW;
		  divyLOW_2 <= divyLOW_1;
		  divyLOW_3 <= divyLOW_2;
		  divyLOW_4 <= divyLOW_3;
		  divyLOW_5 <= divyLOW_4;
		  divyLOW_6 <= divyLOW_5;//delays for divyLOW, in order to multiply at the correct clk cycle
		  divyLOW_7 <= divyLOW_6;
		  divyLOW_8 <= divyLOW_7;
		  divyLOW_9 <= divyLOW_8;
		  divyLOW_10 <= divyLOW_9;
		  divyLOW_11 <= divyLOW_10;
		  divyLOW_12 <= divyLOW_11;

		  divzUP_1 <= divzUP;
		  divzUP_2 <= divzUP_1;
		  divzUP_3 <= divzUP_2;
		  divzUP_4 <= divzUP_3;
		  divzUP_5 <= divzUP_4;
		  divzUP_6 <= divzUP_5;//delays for divzUP, in order to multiply at the correct clk cycle and check the direction at the correct clk cycle
		  divzUP_7 <= divzUP_6;
		  divzUP_8 <= divzUP_7;
		  divzUP_9 <= divzUP_8;
		  divzUP_10 <= divzUP_9;
		  divzUP_11 <= divzUP_10;
		  divzUP_12 <= divzUP_11;
		  divzUP_13 <= divzUP_12;
		  divzUP_14 <= divzUP_13;
		  divzUP_15 <= divzUP_14;
		  divzUP_16 <= divzUP_15;
		  divzUP_17 <= divzUP_16;
		  divzUP_18 <= divzUP_17;
		  divzUP_19 <= divzUP_18;
		  divzUP_20 <= divzUP_19;
		  divzUP_21 <= divzUP_20;
		  divzUP_22 <= divzUP_21;
			
		  divzLOW_1 <= divzLOW;
		  divzLOW_2 <= divzLOW_1;
		  divzLOW_3 <= divzLOW_2;
		  divzLOW_4 <= divzLOW_3;
		  divzLOW_5 <= divzLOW_4;
		  divzLOW_6 <= divzLOW_5;//delays for divzLOW, in order to multiply at the correct clk cycle 
		  divzLOW_7 <= divzLOW_6;
		  divzLOW_8 <= divzLOW_7;
		  divzLOW_9 <= divzLOW_8;
		  divzLOW_10 <= divzLOW_9;
		  divzLOW_11 <= divzLOW_10;
		  divzLOW_12 <= divzLOW_11;
		  
		  txmin_1 <= txmin;
		  txmin_2 <= txmin_1;
		  txmin_3 <= txmin_2;
		  txmin_4 <= txmin_3;
		  txmin_5 <= txmin_4;//delays for txmin in order to assign the correct value to tnear
		  txmin_6 <= txmin_5;
		  txmin_7 <= txmin_6;
		  txmin_8 <= txmin_7;
		  txmin_9 <= txmin_8;
		  txmin_10 <= txmin_9;
		  txmin_11 <= txmin_10;
		  txmin_12 <= txmin_11;
		  
		  txmax_1 <= txmax;
		  txmax_2 <= txmax_1;
		  txmax_3 <= txmax_2;
		  txmax_4 <= txmax_3;
		  txmax_5 <= txmax_4;//delays for txmax in order to assign the correct value to tfar
		  txmax_6 <= txmax_5;
		  txmax_7 <= txmax_6;
		  txmax_8 <= txmax_7;
		  txmax_9 <= txmax_8;
		  txmax_10 <= txmax_9;
		  txmax_11 <= txmax_10;
		  txmax_12 <= txmax_11;
		  
		  tymin_1 <= tymin;
		  tymin_2 <= tymin_1;
		  tymin_3 <= tymin_2;
		  tymin_4 <= tymin_3;
		  tymin_5 <= tymin_4;//delays for tymin in order to assign the correct value to tnear
		  tymin_6 <= tymin_5;
		  tymin_7 <= tymin_6;
		  tymin_8 <= tymin_7;
		  tymin_9 <= tymin_8;
		  tymin_10 <= tymin_9;
		  tymin_11 <= tymin_10;
		  tymin_12 <= tymin_11;
		  
		  tymax_1 <= tymax;
		  tymax_2 <= tymax_1;
		  tymax_3 <= tymax_2;
		  tymax_4 <= tymax_3;
		  tymax_5 <= tymax_4;//delays for tymax in order to assign the correct value to tfar
		  tymax_6 <= tymax_5;
		  tymax_7 <= tymax_6;
		  tymax_8 <= tymax_7;
		  tymax_9 <= tymax_8;
		  tymax_10 <= tymax_9;
		  tymax_11 <= tymax_10;
		  tymax_12 <= tymax_11;
		  
		  tzmin_1 <= tzmin;
		  tzmin_2 <= tzmin_1;
		  tzmin_3 <= tzmin_2;
		  tzmin_4 <= tzmin_3;
		  tzmin_5 <= tzmin_4;//delays for tzmin in order to assign the correct value to tnear
		  tzmin_6 <= tzmin_5;
		  tzmin_7 <= tzmin_6;
		  tzmin_8 <= tzmin_7;
		  tzmin_9 <= tzmin_8;
		  tzmin_10 <= tzmin_9;
		  tzmin_11 <= tzmin_10;
		  tzmin_12 <= tzmin_11;
		  
		  tzmax_1 <= tzmax;
		  tzmax_2 <= tzmax_1;
		  tzmax_3 <= tzmax_2;
		  tzmax_4 <= tzmax_3;
		  tzmax_5 <= tzmax_4;//delays for tzmax in order to assign the correct value to tfar
		  tzmax_6 <= tzmax_5;
		  tzmax_7 <= tzmax_6;
		  tzmax_8 <= tzmax_7;
		  tzmax_9 <= tzmax_8;
		  tzmax_10 <= tzmax_9;
		  tzmax_11 <= tzmax_10;
		  tzmax_12 <= tzmax_11;

        tfar_1 <= tfar;
		  tfar_2 <= tfar_1;
		  tfar_3 <= tfar_2;
		  tfar_4 <= tfar_3;
		  tfar_5 <= tfar_4;//delays for tfar in order to check the correct value of tfar, at the final comparison stage
		  tfar_6 <= tfar_5;
		  tfar_7 <= tfar_6;
		  tfar_8 <= tfar_7;
		  tfar_9 <= tfar_8;
		  tfar_10 <= tfar_9;
		  tfar_11 <= tfar_10;
		  tfar_12 <= tfar_11;
end

always @(posedge clk or posedge rst) begin

	if (rst) begin
		
		//	tnear = 34'b0111111111100000000000000000000000; //-infinity
		//	txmin = 34'b0111111111100000000000000000000000; //-infinity
		//	tymin = 34'b0111111111100000000000000000000000; //-infinity
		//	tzmin = 34'b0111111111100000000000000000000000; //-infinity
		// tfar  = 34'b0101111111100000000000000000000000; //+infinity
		// txmax = 34'b0101111111100000000000000000000000; //+infinity
		//	tymax = 34'b0101111111100000000000000000000000; //+infinity
		//	tzmax = 34'b0101111111100000000000000000000000; //+infinity
		//	ready = 1'b0;
	end
	
	else begin	  
//---------------------------------------------------------------------------------------- X plane	 
		  if (divxUP_22[width-2] == 1'b0) begin //if direction to the right hand side(positive),no possibility of divx is equal with zero,thus no checking for it.
		       
				 txmax = subX2_divxUP_1_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				 if ((subX1toMul[width-2] == 1'b0) && (subX1toMul[width] ^ subX1toMul[width-1])) txmin = subX1_divxLOW_1_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				 else if ((subX1toMul[width-2] == 1'b1)  || ~(subX1toMul[width] | subX1toMul[width-1])) txmin = subX1_divxUP_1_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (divxUP_22[width-2] == 1'b1) begin // if direction to the left hand side(negative),no possibility of divx is equal with zero,thus no checking for it.
		       
				 txmax = subX1_divxLOW_1_rndu; //else txmax=subX1*divxLOW
				 if ((subX2toMul[width-2] == 1'b0) && (subX2toMul[width] ^ subX2toMul[width-1])) txmin = subX2_divxLOW_1_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
				 else if ((subX2toMul[width-2] == 1'b1) || ~(subX2toMul[width] | subX2toMul[width-1])) txmin = subX2_divxUP_1_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP
				 
		  end
//--------------------------------------------------------------------------------------------- Y plane
        if (divyUP_22[width-2] == 1'b0) begin //if direction to the right hand side(positive)
		  
				 tymax = subY2_divyUP_1_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				 if ((subY1toMul[width-2] == 1'b0) && (subY1toMul[width] ^ subY1toMul[width-1])) tymin = subY1_divyLOW_1_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				 else if ((subY1toMul[width-2] == 1'b1)  || ~(subY1toMul[width] | subY1toMul[width-1])) tymin = subY1_divyUP_1_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (divyUP_22[width-2] == 1'b1) begin // if direction to the left hand side(negative)
		       
				 tymax = subY1_divyLOW_1_rndu; //else txmax=subX1*divxLOW
				 if ((subY2toMul[width-2] == 1'b0) && (subY2toMul[width] ^ subY2toMul[width-1])) tymin = subY2_divyLOW_1_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
				 else if ((subY2toMul[width-2] == 1'b1) || ~(subY2toMul[width] | subY2toMul[width-1])) tymin = subY2_divyUP_1_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP
				 
		  end
//------------------------------------------------------------------------------------------------- Z plane
		  if (divzUP_22[width-2] == 1'b0) begin //if direction to the right hand side(positive)
		  
				tzmax = subZ2_divzUP_1_rndu;  // if x2UP>=x0LOW txmax=subX2*divxUP 
				if ((subZ1toMul[width-2] == 1'b0) && (subZ1toMul[width] ^ subZ1toMul[width-1])) tzmin = subZ1_divzLOW_1_rndd;  // if x1LOW>x0UP txmin=subX1*divxLOW
				else if ((subZ1toMul[width-2] == 1'b1)  || ~(subZ1toMul[width] | subZ1toMul[width-1])) tzmin = subZ1_divzUP_1_rndd;  //else txmin=subX1*divxUP
				
		  end
		  
		  else if (divzUP_22[width-2] == 1'b1) begin // if direction to the left hand side(negative)
				
				tzmax = subZ1_divzLOW_1_rndu; //else txmax=subX1*divxLOW
				if ((subZ2toMul[width-2] == 1'b0) && (subZ2toMul[width] ^ subZ2toMul[width-1])) tzmin = subZ2_divzLOW_1_rndd; // if x2UP>x0LOW (i.e X txmin=subX2*divxLOW 
			   else if ((subZ2toMul[width-2] == 1'b1) || ~(subZ2toMul[width] | subZ2toMul[width-1])) tzmin = subZ2_divzUP_1_rndd;  //else x2UP<=x0LOW txmin=subX2*divxUP				
				 
		  end
//------------------------------------------------------------------------------------------------- comparisons
		  if (ymin) begin //if tymin>txmin
				
					if (zmin) tnear = tzmin_12; //if tzmin>tymin, tnear=tzmin
					else tnear = tymin_12; //else tnear=tymin	
					
		  end
		  else if (opposite1) begin //if txmin>=tymin
					
					if (xmin) tnear = txmin_12; //if txmin>tzmin, tnear=txmin
					else tnear = tzmin_12; //else tnear=tzmin
					
		  end
			  
		  if (ymax) begin //if tymax<txmax
				   
					if (zmax) tfar = tzmax_12; //if tzmax<tymax, tfar=tzmax
					else tfar = tymax_12; //else tfar = tymax
					
		  end
		  else if (opposite2) begin //if txmax <=tymax
			      
					if (xmax) tfar = txmax_12; //if txmax<tzmax, tfar=txmax
					else tfar = tzmax_12; //else tfar = tzmax
					
		  end
//------------------------------------------------------------------------------------ origin checking and output decision for the intersection question		  
		  if (xdir_48) begin //ray parallel to the X plane
		  
				if (xp1_21 || xp2_21) hit_miss = 1'b0; //miss,origin not between the slabs
 	
		  end
		  
		  else if (ydir_48) begin //ray parallel to the Y plane
		  
				if (yp1_21 || yp2_21) hit_miss = 1'b0; //miss,origin not between the slabs
	
		  end
		  
		  else if (zdir_48) begin //ray parallel to the Z plane
		  
				if (zp1_21 || zp2_21) hit_miss = 1'b0; //miss,origin not between the slabs	

		  end
		  
        else begin		  
			  if (yes && ((tfar_12[width-2] == 1'b0) && ((tfar_12[width] == 1'b0) && (tfar_12[width-1] == 1'b1)) || ((tfar_12[width-2] == 1'b0) && ((tfar_12[width] == 1'b1) && (tfar_12[width-1] == 1'b0))))) begin
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
