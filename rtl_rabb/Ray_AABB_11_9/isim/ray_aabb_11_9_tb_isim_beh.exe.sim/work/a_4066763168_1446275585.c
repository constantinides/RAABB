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



static void work_a_4066763168_1446275585_p_0(char *t0)
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

LAB0:    xsi_set_current_line(338, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 5556U);
    t7 = (t0 + 5540U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (1U + 3U);
    t9 = (4U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3336);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 3240);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t8, 0);
    goto LAB6;

}

static void work_a_4066763168_1446275585_p_1(char *t0)
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
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;

LAB0:    t1 = (t0 + 2920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(339, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 5620);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB22:    t6 = (t0 + 5624);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB23:    t9 = (t0 + 5628);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB24:    t12 = (t0 + 5632);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB25:    t15 = (t0 + 5636);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB26:    t18 = (t0 + 5640);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB27:    t21 = (t0 + 5644);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB28:    t24 = (t0 + 5648);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB29:    t27 = (t0 + 5652);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB30:    t30 = (t0 + 5656);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB31:    t33 = (t0 + 5660);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB32:    t36 = (t0 + 5664);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB33:    t39 = (t0 + 5668);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB34:    t42 = (t0 + 5672);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB35:    t45 = (t0 + 5676);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB36:    t48 = (t0 + 5680);
    t50 = xsi_mem_cmp(t48, t3, 4U);
    if (t50 == 1)
        goto LAB20;

LAB37:
LAB21:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5732);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(339, ng0);

LAB41:    t2 = (t0 + 3256);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB42;

LAB1:    return;
LAB5:    xsi_set_current_line(340, ng0);
    t51 = (t0 + 5684);
    t53 = (t0 + 3400);
    t54 = (t53 + 56U);
    t55 = *((char **)t54);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memcpy(t57, t51, 3U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB4;

LAB6:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5687);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5690);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5693);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5696);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5699);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5702);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5705);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5708);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5711);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5714);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5717);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5720);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5723);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5726);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5729);
    t4 = (t0 + 3400);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 3U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB38:;
LAB39:    t3 = (t0 + 3256);
    *((int *)t3) = 0;
    goto LAB2;

LAB40:    goto LAB39;

LAB42:    goto LAB40;

}


extern void work_a_4066763168_1446275585_init()
{
	static char *pe[] = {(void *)work_a_4066763168_1446275585_p_0,(void *)work_a_4066763168_1446275585_p_1};
	xsi_register_didat("work_a_4066763168_1446275585", "isim/Ray_AABB_11_9_tb_isim_beh.exe.sim/work/a_4066763168_1446275585.didat");
	xsi_register_executes(pe);
}
