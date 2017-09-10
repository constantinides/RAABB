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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_1/FPAdd11_1_rndd.vhdl";
extern char *IEEE_P_2592010699;



static void work_a_3435453141_1446275585_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5440);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3435453141_1446275585_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5616);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 2U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5456);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3435453141_1446275585_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 5472);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3435453141_1446275585_p_3(char *t0)
{
    char t21[16];
    char t23[16];
    char t46[16];
    char t49[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (0 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB10:    t34 = (t0 + 1832U);
    t35 = *((char **)t34);
    t34 = xsi_get_transient_memory(1U);
    memset(t34, 0, 1U);
    t36 = t34;
    if (-1 == 1)
        goto LAB12;

LAB13:    t37 = 0;

LAB14:    t38 = (t37 - 0);
    t39 = (t38 * 1);
    t40 = (1U * t39);
    t41 = (t36 + t40);
    t42 = (0 - 0);
    t43 = (t42 * -1);
    t43 = (t43 + 1);
    t44 = (1U * t43);
    memset(t41, (unsigned char)2, t44);
    t47 = ((IEEE_P_2592010699) + 4024);
    t48 = (t0 + 9324U);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 0;
    t51 = (t50 + 4U);
    *((int *)t51) = 0;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t52 = (0 - 0);
    t53 = (t52 * 1);
    t53 = (t53 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t53;
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t35, t48, (char)97, t34, t49, (char)101);
    t53 = (2U + 1U);
    t54 = (3U != t53);
    if (t54 == 1)
        goto LAB15;

LAB16:    t51 = (t0 + 5744);
    t55 = (t51 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t45, 3U);
    xsi_driver_first_trans_fast(t51);

LAB2:    t59 = (t0 + 5488);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t9 = xsi_get_transient_memory(1U);
    memset(t9, 0, 1U);
    t10 = t9;
    if (-1 == 1)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (1U * t13);
    t15 = (t10 + t14);
    t16 = (0 - 0);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t18 = (1U * t17);
    memset(t15, (unsigned char)2, t18);
    t19 = (t0 + 1832U);
    t20 = *((char **)t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (0 - 0);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t0 + 9324U);
    t19 = xsi_base_array_concat(t19, t21, t22, (char)97, t9, t23, (char)97, t20, t25, (char)101);
    t27 = (1U + 2U);
    t28 = (3U != t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    t29 = (t0 + 5744);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t19, 3U);
    xsi_driver_first_trans_fast(t29);
    goto LAB2;

LAB5:    t11 = 0;
    goto LAB7;

LAB8:    xsi_size_not_matching(3U, t27, 0);
    goto LAB9;

LAB11:    goto LAB2;

LAB12:    t37 = 0;
    goto LAB14;

LAB15:    xsi_size_not_matching(3U, t53, 0);
    goto LAB16;

}

static void work_a_3435453141_1446275585_p_4(char *t0)
{
    char t21[16];
    char t23[16];
    char t46[16];
    char t49[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (1 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB10:    t34 = (t0 + 2152U);
    t35 = *((char **)t34);
    t34 = xsi_get_transient_memory(2U);
    memset(t34, 0, 2U);
    t36 = t34;
    if (-1 == 1)
        goto LAB12;

LAB13:    t37 = 0;

LAB14:    t38 = (t37 - 0);
    t39 = (t38 * 1);
    t40 = (1U * t39);
    t41 = (t36 + t40);
    t42 = (0 - 1);
    t43 = (t42 * -1);
    t43 = (t43 + 1);
    t44 = (1U * t43);
    memset(t41, (unsigned char)2, t44);
    t47 = ((IEEE_P_2592010699) + 4024);
    t48 = (t0 + 9356U);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 0;
    t51 = (t50 + 4U);
    *((int *)t51) = 1;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t52 = (1 - 0);
    t53 = (t52 * 1);
    t53 = (t53 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t53;
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t35, t48, (char)97, t34, t49, (char)101);
    t53 = (3U + 2U);
    t54 = (5U != t53);
    if (t54 == 1)
        goto LAB15;

LAB16:    t51 = (t0 + 5808);
    t55 = (t51 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t45, 5U);
    xsi_driver_first_trans_fast(t51);

LAB2:    t59 = (t0 + 5504);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t9 = xsi_get_transient_memory(2U);
    memset(t9, 0, 2U);
    t10 = t9;
    if (-1 == 1)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (1U * t13);
    t15 = (t10 + t14);
    t16 = (0 - 1);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t18 = (1U * t17);
    memset(t15, (unsigned char)2, t18);
    t19 = (t0 + 2152U);
    t20 = *((char **)t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (1 - 0);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t0 + 9356U);
    t19 = xsi_base_array_concat(t19, t21, t22, (char)97, t9, t23, (char)97, t20, t25, (char)101);
    t27 = (2U + 3U);
    t28 = (5U != t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    t29 = (t0 + 5808);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t19, 5U);
    xsi_driver_first_trans_fast(t29);
    goto LAB2;

LAB5:    t11 = 1;
    goto LAB7;

LAB8:    xsi_size_not_matching(5U, t27, 0);
    goto LAB9;

LAB11:    goto LAB2;

LAB12:    t37 = 1;
    goto LAB14;

LAB15:    xsi_size_not_matching(5U, t53, 0);
    goto LAB16;

}

static void work_a_3435453141_1446275585_p_5(char *t0)
{
    char t21[16];
    char t23[16];
    char t46[16];
    char t49[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    int t52;
    unsigned int t53;
    unsigned char t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB10:    t34 = (t0 + 2312U);
    t35 = *((char **)t34);
    t34 = xsi_get_transient_memory(4U);
    memset(t34, 0, 4U);
    t36 = t34;
    if (-1 == 1)
        goto LAB12;

LAB13:    t37 = 0;

LAB14:    t38 = (t37 - 0);
    t39 = (t38 * 1);
    t40 = (1U * t39);
    t41 = (t36 + t40);
    t42 = (0 - 3);
    t43 = (t42 * -1);
    t43 = (t43 + 1);
    t44 = (1U * t43);
    memset(t41, (unsigned char)2, t44);
    t47 = ((IEEE_P_2592010699) + 4024);
    t48 = (t0 + 9372U);
    t50 = (t49 + 0U);
    t51 = (t50 + 0U);
    *((int *)t51) = 0;
    t51 = (t50 + 4U);
    *((int *)t51) = 3;
    t51 = (t50 + 8U);
    *((int *)t51) = 1;
    t52 = (3 - 0);
    t53 = (t52 * 1);
    t53 = (t53 + 1);
    t51 = (t50 + 12U);
    *((unsigned int *)t51) = t53;
    t45 = xsi_base_array_concat(t45, t46, t47, (char)97, t35, t48, (char)97, t34, t49, (char)101);
    t53 = (5U + 4U);
    t54 = (9U != t53);
    if (t54 == 1)
        goto LAB15;

LAB16:    t51 = (t0 + 5872);
    t55 = (t51 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t45, 9U);
    xsi_driver_first_trans_fast(t51);

LAB2:    t59 = (t0 + 5520);
    *((int *)t59) = 1;

LAB1:    return;
LAB3:    t9 = xsi_get_transient_memory(4U);
    memset(t9, 0, 4U);
    t10 = t9;
    if (-1 == 1)
        goto LAB5;

LAB6:    t11 = 0;

LAB7:    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (1U * t13);
    t15 = (t10 + t14);
    t16 = (0 - 3);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t18 = (1U * t17);
    memset(t15, (unsigned char)2, t18);
    t19 = (t0 + 2312U);
    t20 = *((char **)t19);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 3;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (3 - 0);
    t27 = (t26 * 1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t0 + 9372U);
    t19 = xsi_base_array_concat(t19, t21, t22, (char)97, t9, t23, (char)97, t20, t25, (char)101);
    t27 = (4U + 5U);
    t28 = (9U != t27);
    if (t28 == 1)
        goto LAB8;

LAB9:    t29 = (t0 + 5872);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t19, 9U);
    xsi_driver_first_trans_fast(t29);
    goto LAB2;

LAB5:    t11 = 3;
    goto LAB7;

LAB8:    xsi_size_not_matching(9U, t27, 0);
    goto LAB9;

LAB11:    goto LAB2;

LAB12:    t37 = 3;
    goto LAB14;

LAB15:    xsi_size_not_matching(9U, t53, 0);
    goto LAB16;

}

static void work_a_3435453141_1446275585_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = (8 - 8);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5936);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 6U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 5536);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3435453141_1446275585_init()
{
	static char *pe[] = {(void *)work_a_3435453141_1446275585_p_0,(void *)work_a_3435453141_1446275585_p_1,(void *)work_a_3435453141_1446275585_p_2,(void *)work_a_3435453141_1446275585_p_3,(void *)work_a_3435453141_1446275585_p_4,(void *)work_a_3435453141_1446275585_p_5,(void *)work_a_3435453141_1446275585_p_6};
	xsi_register_didat("work_a_3435453141_1446275585", "isim/Ray_AABB_11_1_tb_isim_beh.exe.sim/work/a_3435453141_1446275585.didat");
	xsi_register_executes(pe);
}