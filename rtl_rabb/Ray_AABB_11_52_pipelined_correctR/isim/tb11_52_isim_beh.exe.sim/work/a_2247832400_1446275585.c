/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_52_pipelined_correctR/fpmul11_52_rndu.vhdl";
extern char *IEEE_P_2592010699;



static void work_a_2247832400_1446275585_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(843, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5724U);
    t7 = (t0 + 5708U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (2U + 3U);
    t9 = (5U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3336);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 5U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 3240);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t8, 0);
    goto LAB6;

}

static void work_a_2247832400_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    int t62;
    char *t63;
    int t65;
    char *t66;
    int t68;
    char *t69;
    int t71;
    char *t72;
    int t74;
    char *t75;
    int t77;
    char *t78;
    int t80;
    char *t81;
    int t83;
    char *t84;
    int t86;
    char *t87;
    int t89;
    char *t90;
    int t92;
    char *t93;
    int t95;
    char *t96;
    int t98;
    char *t99;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;

LAB0:    t1 = (t0 + 2920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(844, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5790);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB38:    t6 = (t0 + 5795);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB39:    t9 = (t0 + 5800);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB40:    t12 = (t0 + 5805);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB41:    t15 = (t0 + 5810);
    t17 = xsi_mem_cmp(t15, t3, 5U);
    if (t17 == 1)
        goto LAB9;

LAB42:    t18 = (t0 + 5815);
    t20 = xsi_mem_cmp(t18, t3, 5U);
    if (t20 == 1)
        goto LAB10;

LAB43:    t21 = (t0 + 5820);
    t23 = xsi_mem_cmp(t21, t3, 5U);
    if (t23 == 1)
        goto LAB11;

LAB44:    t24 = (t0 + 5825);
    t26 = xsi_mem_cmp(t24, t3, 5U);
    if (t26 == 1)
        goto LAB12;

LAB45:    t27 = (t0 + 5830);
    t29 = xsi_mem_cmp(t27, t3, 5U);
    if (t29 == 1)
        goto LAB13;

LAB46:    t30 = (t0 + 5835);
    t32 = xsi_mem_cmp(t30, t3, 5U);
    if (t32 == 1)
        goto LAB14;

LAB47:    t33 = (t0 + 5840);
    t35 = xsi_mem_cmp(t33, t3, 5U);
    if (t35 == 1)
        goto LAB15;

LAB48:    t36 = (t0 + 5845);
    t38 = xsi_mem_cmp(t36, t3, 5U);
    if (t38 == 1)
        goto LAB16;

LAB49:    t39 = (t0 + 5850);
    t41 = xsi_mem_cmp(t39, t3, 5U);
    if (t41 == 1)
        goto LAB17;

LAB50:    t42 = (t0 + 5855);
    t44 = xsi_mem_cmp(t42, t3, 5U);
    if (t44 == 1)
        goto LAB18;

LAB51:    t45 = (t0 + 5860);
    t47 = xsi_mem_cmp(t45, t3, 5U);
    if (t47 == 1)
        goto LAB19;

LAB52:    t48 = (t0 + 5865);
    t50 = xsi_mem_cmp(t48, t3, 5U);
    if (t50 == 1)
        goto LAB20;

LAB53:    t51 = (t0 + 5870);
    t53 = xsi_mem_cmp(t51, t3, 5U);
    if (t53 == 1)
        goto LAB21;

LAB54:    t54 = (t0 + 5875);
    t56 = xsi_mem_cmp(t54, t3, 5U);
    if (t56 == 1)
        goto LAB22;

LAB55:    t57 = (t0 + 5880);
    t59 = xsi_mem_cmp(t57, t3, 5U);
    if (t59 == 1)
        goto LAB23;

LAB56:    t60 = (t0 + 5885);
    t62 = xsi_mem_cmp(t60, t3, 5U);
    if (t62 == 1)
        goto LAB24;

LAB57:    t63 = (t0 + 5890);
    t65 = xsi_mem_cmp(t63, t3, 5U);
    if (t65 == 1)
        goto LAB25;

LAB58:    t66 = (t0 + 5895);
    t68 = xsi_mem_cmp(t66, t3, 5U);
    if (t68 == 1)
        goto LAB26;

LAB59:    t69 = (t0 + 5900);
    t71 = xsi_mem_cmp(t69, t3, 5U);
    if (t71 == 1)
        goto LAB27;

LAB60:    t72 = (t0 + 5905);
    t74 = xsi_mem_cmp(t72, t3, 5U);
    if (t74 == 1)
        goto LAB28;

LAB61:    t75 = (t0 + 5910);
    t77 = xsi_mem_cmp(t75, t3, 5U);
    if (t77 == 1)
        goto LAB29;

LAB62:    t78 = (t0 + 5915);
    t80 = xsi_mem_cmp(t78, t3, 5U);
    if (t80 == 1)
        goto LAB30;

LAB63:    t81 = (t0 + 5920);
    t83 = xsi_mem_cmp(t81, t3, 5U);
    if (t83 == 1)
        goto LAB31;

LAB64:    t84 = (t0 + 5925);
    t86 = xsi_mem_cmp(t84, t3, 5U);
    if (t86 == 1)
        goto LAB32;

LAB65:    t87 = (t0 + 5930);
    t89 = xsi_mem_cmp(t87, t3, 5U);
    if (t89 == 1)
        goto LAB33;

LAB66:    t90 = (t0 + 5935);
    t92 = xsi_mem_cmp(t90, t3, 5U);
    if (t92 == 1)
        goto LAB34;

LAB67:    t93 = (t0 + 5940);
    t95 = xsi_mem_cmp(t93, t3, 5U);
    if (t95 == 1)
        goto LAB35;

LAB68:    t96 = (t0 + 5945);
    t98 = xsi_mem_cmp(t96, t3, 5U);
    if (t98 == 1)
        goto LAB36;

LAB69:
LAB37:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6046);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(844, ng0);

LAB73:    t2 = (t0 + 3256);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB74;

LAB1:    return;
LAB5:    xsi_set_current_line(845, ng0);
    t99 = (t0 + 5950);
    t101 = (t0 + 3400);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    t104 = (t103 + 56U);
    t105 = *((char **)t104);
    memcpy(t105, t99, 3U);
    xsi_driver_first_trans_fast_port(t101);
    goto LAB4;

LAB6:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5953);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5956);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5959);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5962);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5965);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5968);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5971);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5974);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5977);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5980);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5983);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5986);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5989);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5992);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5995);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB21:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 5998);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB22:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6001);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB23:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6004);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB24:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6007);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB25:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6010);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB26:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6013);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB27:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6016);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB28:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6019);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB29:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6022);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB30:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6025);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB31:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6028);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB32:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6031);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB33:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6034);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB34:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6037);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB35:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6040);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB36:    xsi_set_current_line(845, ng0);
    t2 = (t0 + 6043);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB70:;
LAB71:    t3 = (t0 + 3256);
    *((int *)t3) = 0;
    goto LAB2;

LAB72:    goto LAB71;

LAB74:    goto LAB72;

}


extern void work_a_2247832400_1446275585_init()
{
	static char *pe[] = {(void *)work_a_2247832400_1446275585_p_0,(void *)work_a_2247832400_1446275585_p_1};
	xsi_register_didat("work_a_2247832400_1446275585", "isim/tb11_52_isim_beh.exe.sim/work/a_2247832400_1446275585.didat");
	xsi_register_executes(pe);
}
