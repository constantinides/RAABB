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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_9/FPMul11_9_rndd.vhdl";
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

LAB0:    xsi_set_current_line(275, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5556U);
    t7 = (t0 + 5540U);
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

LAB2:    xsi_set_current_line(276, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5622);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB38:    t6 = (t0 + 5627);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB39:    t9 = (t0 + 5632);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB40:    t12 = (t0 + 5637);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB41:    t15 = (t0 + 5642);
    t17 = xsi_mem_cmp(t15, t3, 5U);
    if (t17 == 1)
        goto LAB9;

LAB42:    t18 = (t0 + 5647);
    t20 = xsi_mem_cmp(t18, t3, 5U);
    if (t20 == 1)
        goto LAB10;

LAB43:    t21 = (t0 + 5652);
    t23 = xsi_mem_cmp(t21, t3, 5U);
    if (t23 == 1)
        goto LAB11;

LAB44:    t24 = (t0 + 5657);
    t26 = xsi_mem_cmp(t24, t3, 5U);
    if (t26 == 1)
        goto LAB12;

LAB45:    t27 = (t0 + 5662);
    t29 = xsi_mem_cmp(t27, t3, 5U);
    if (t29 == 1)
        goto LAB13;

LAB46:    t30 = (t0 + 5667);
    t32 = xsi_mem_cmp(t30, t3, 5U);
    if (t32 == 1)
        goto LAB14;

LAB47:    t33 = (t0 + 5672);
    t35 = xsi_mem_cmp(t33, t3, 5U);
    if (t35 == 1)
        goto LAB15;

LAB48:    t36 = (t0 + 5677);
    t38 = xsi_mem_cmp(t36, t3, 5U);
    if (t38 == 1)
        goto LAB16;

LAB49:    t39 = (t0 + 5682);
    t41 = xsi_mem_cmp(t39, t3, 5U);
    if (t41 == 1)
        goto LAB17;

LAB50:    t42 = (t0 + 5687);
    t44 = xsi_mem_cmp(t42, t3, 5U);
    if (t44 == 1)
        goto LAB18;

LAB51:    t45 = (t0 + 5692);
    t47 = xsi_mem_cmp(t45, t3, 5U);
    if (t47 == 1)
        goto LAB19;

LAB52:    t48 = (t0 + 5697);
    t50 = xsi_mem_cmp(t48, t3, 5U);
    if (t50 == 1)
        goto LAB20;

LAB53:    t51 = (t0 + 5702);
    t53 = xsi_mem_cmp(t51, t3, 5U);
    if (t53 == 1)
        goto LAB21;

LAB54:    t54 = (t0 + 5707);
    t56 = xsi_mem_cmp(t54, t3, 5U);
    if (t56 == 1)
        goto LAB22;

LAB55:    t57 = (t0 + 5712);
    t59 = xsi_mem_cmp(t57, t3, 5U);
    if (t59 == 1)
        goto LAB23;

LAB56:    t60 = (t0 + 5717);
    t62 = xsi_mem_cmp(t60, t3, 5U);
    if (t62 == 1)
        goto LAB24;

LAB57:    t63 = (t0 + 5722);
    t65 = xsi_mem_cmp(t63, t3, 5U);
    if (t65 == 1)
        goto LAB25;

LAB58:    t66 = (t0 + 5727);
    t68 = xsi_mem_cmp(t66, t3, 5U);
    if (t68 == 1)
        goto LAB26;

LAB59:    t69 = (t0 + 5732);
    t71 = xsi_mem_cmp(t69, t3, 5U);
    if (t71 == 1)
        goto LAB27;

LAB60:    t72 = (t0 + 5737);
    t74 = xsi_mem_cmp(t72, t3, 5U);
    if (t74 == 1)
        goto LAB28;

LAB61:    t75 = (t0 + 5742);
    t77 = xsi_mem_cmp(t75, t3, 5U);
    if (t77 == 1)
        goto LAB29;

LAB62:    t78 = (t0 + 5747);
    t80 = xsi_mem_cmp(t78, t3, 5U);
    if (t80 == 1)
        goto LAB30;

LAB63:    t81 = (t0 + 5752);
    t83 = xsi_mem_cmp(t81, t3, 5U);
    if (t83 == 1)
        goto LAB31;

LAB64:    t84 = (t0 + 5757);
    t86 = xsi_mem_cmp(t84, t3, 5U);
    if (t86 == 1)
        goto LAB32;

LAB65:    t87 = (t0 + 5762);
    t89 = xsi_mem_cmp(t87, t3, 5U);
    if (t89 == 1)
        goto LAB33;

LAB66:    t90 = (t0 + 5767);
    t92 = xsi_mem_cmp(t90, t3, 5U);
    if (t92 == 1)
        goto LAB34;

LAB67:    t93 = (t0 + 5772);
    t95 = xsi_mem_cmp(t93, t3, 5U);
    if (t95 == 1)
        goto LAB35;

LAB68:    t96 = (t0 + 5777);
    t98 = xsi_mem_cmp(t96, t3, 5U);
    if (t98 == 1)
        goto LAB36;

LAB69:
LAB37:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5878);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(276, ng0);

LAB73:    t2 = (t0 + 3256);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB74;

LAB1:    return;
LAB5:    xsi_set_current_line(277, ng0);
    t99 = (t0 + 5782);
    t101 = (t0 + 3400);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    t104 = (t103 + 56U);
    t105 = *((char **)t104);
    memcpy(t105, t99, 3U);
    xsi_driver_first_trans_fast_port(t101);
    goto LAB4;

LAB6:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5785);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5788);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5791);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5794);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5797);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5800);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5803);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5806);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5809);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5812);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5815);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5818);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5821);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5824);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5827);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB21:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5830);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB22:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5833);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB23:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5836);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB24:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5839);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB25:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5842);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB26:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5845);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB27:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5848);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB28:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5851);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB29:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5854);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB30:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5857);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB31:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5860);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB32:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5863);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB33:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5866);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB34:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5869);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB35:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5872);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB36:    xsi_set_current_line(277, ng0);
    t2 = (t0 + 5875);
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
	xsi_register_didat("work_a_2247832400_1446275585", "isim/Ray_AABB_11_9_tb_isim_beh.exe.sim/work/a_2247832400_1446275585.didat");
	xsi_register_executes(pe);
}
