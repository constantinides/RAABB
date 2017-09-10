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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_52_pipelined_correctR/fpsub11_52_rndu.vhdl";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1985340259_1446275585_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 7712);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 2152U);
    t8 = *((char **)t4);
    t4 = (t0 + 7952);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 25U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 8016);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 42U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2792U);
    t4 = *((char **)t2);
    t2 = (t0 + 8080);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 1U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_1985340259_1446275585_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char t11[16];
    char t13[16];
    char t18[16];
    char t27[16];
    char t29[16];
    char t34[16];
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t19;
    int t20;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t28;
    char *t30;
    char *t31;
    int t32;
    unsigned int t33;
    char *t35;
    int t36;
    char *t37;
    char *t38;
    unsigned char t39;
    char *t40;
    unsigned int t41;
    unsigned char t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t3 = (t0 + 14669);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t7 = (65 - 41);
    t8 = (t7 * 1U);
    t9 = (0 + t8);
    t5 = (t6 + t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (0 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t18 + 0U);
    t19 = (t15 + 0U);
    *((int *)t19) = 41;
    t19 = (t15 + 4U);
    *((int *)t19) = 0;
    t19 = (t15 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 41);
    t17 = (t20 * -1);
    t17 = (t17 + 1);
    t19 = (t15 + 12U);
    *((unsigned int *)t19) = t17;
    t10 = xsi_base_array_concat(t10, t11, t12, (char)97, t3, t13, (char)97, t5, t18, (char)101);
    t19 = (t0 + 14670);
    t22 = (t0 + 1512U);
    t23 = *((char **)t22);
    t17 = (65 - 41);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t22 = (t23 + t25);
    t28 = ((IEEE_P_2592010699) + 4024);
    t30 = (t29 + 0U);
    t31 = (t30 + 0U);
    *((int *)t31) = 0;
    t31 = (t30 + 4U);
    *((int *)t31) = 0;
    t31 = (t30 + 8U);
    *((int *)t31) = 1;
    t32 = (0 - 0);
    t33 = (t32 * 1);
    t33 = (t33 + 1);
    t31 = (t30 + 12U);
    *((unsigned int *)t31) = t33;
    t31 = (t34 + 0U);
    t35 = (t31 + 0U);
    *((int *)t35) = 41;
    t35 = (t31 + 4U);
    *((int *)t35) = 0;
    t35 = (t31 + 8U);
    *((int *)t35) = -1;
    t36 = (0 - 41);
    t33 = (t36 * -1);
    t33 = (t33 + 1);
    t35 = (t31 + 12U);
    *((unsigned int *)t35) = t33;
    t26 = xsi_base_array_concat(t26, t27, t28, (char)97, t19, t29, (char)97, t22, t34, (char)101);
    t35 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t10, t11, t26, t27);
    t37 = (t0 + 1672U);
    t38 = *((char **)t37);
    t39 = *((unsigned char *)t38);
    t37 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t1, t35, t2, t39);
    t40 = (t1 + 12U);
    t33 = *((unsigned int *)t40);
    t41 = (1U * t33);
    t42 = (43U != t41);
    if (t42 == 1)
        goto LAB5;

LAB6:    t43 = (t0 + 8144);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t37, 43U);
    xsi_driver_first_trans_fast(t43);

LAB2:    t48 = (t0 + 7728);
    *((int *)t48) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(43U, t41, 0);
    goto LAB6;

}

static void work_a_1985340259_1446275585_p_2(char *t0)
{
    char t1[16];
    char t10[16];
    char t12[16];
    char t17[16];
    char t26[16];
    char t28[16];
    char t33[16];
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t18;
    int t19;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    char *t34;
    int t35;
    char *t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t2 = (t0 + 14671);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = (65 - 65);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (0 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t17 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 65;
    t18 = (t14 + 4U);
    *((int *)t18) = 42;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t19 = (42 - 65);
    t16 = (t19 * -1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t2, t12, (char)97, t4, t17, (char)101);
    t18 = (t0 + 14672);
    t21 = (t0 + 1512U);
    t22 = *((char **)t21);
    t16 = (65 - 65);
    t23 = (t16 * 1U);
    t24 = (0 + t23);
    t21 = (t22 + t24);
    t27 = ((IEEE_P_2592010699) + 4024);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (0 - 0);
    t32 = (t31 * 1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t30 = (t33 + 0U);
    t34 = (t30 + 0U);
    *((int *)t34) = 65;
    t34 = (t30 + 4U);
    *((int *)t34) = 42;
    t34 = (t30 + 8U);
    *((int *)t34) = -1;
    t35 = (42 - 65);
    t32 = (t35 * -1);
    t32 = (t32 + 1);
    t34 = (t30 + 12U);
    *((unsigned int *)t34) = t32;
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t18, t28, (char)97, t21, t33, (char)101);
    t34 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t9, t10, t25, t26);
    t36 = (t1 + 12U);
    t32 = *((unsigned int *)t36);
    t37 = (1U * t32);
    t38 = (25U != t37);
    if (t38 == 1)
        goto LAB5;

LAB6:    t39 = (t0 + 8208);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 25U);
    xsi_driver_first_trans_fast(t39);

LAB2:    t44 = (t0 + 7744);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(25U, t37, 0);
    goto LAB6;

}

static void work_a_1985340259_1446275585_p_3(char *t0)
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

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (42 - 41);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8272);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 42U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7760);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_4(char *t0)
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

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (42 - 42);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7776);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_5(char *t0)
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

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (24 - 23);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8400);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 24U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7792);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_6(char *t0)
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

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (24 - 24);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8464);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7808);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_7(char *t0)
{
    char t1[16];
    char t9[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 14144U);
    t4 = (t0 + 2952U);
    t5 = *((char **)t4);
    t6 = (0 - 0);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 0);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t4, t9);
    t14 = (t1 + 12U);
    t13 = *((unsigned int *)t14);
    t15 = (1U * t13);
    t16 = (25U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 8528);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t11, 25U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 7824);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(25U, t15, 0);
    goto LAB6;

}

static void work_a_1985340259_1446275585_p_8(char *t0)
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

LAB0:    xsi_set_current_line(54, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = (24 - 23);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8592);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 24U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7840);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_9(char *t0)
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

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = (24 - 24);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 8656);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 7856);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1985340259_1446275585_p_10(char *t0)
{
    char t12[16];
    char t14[16];
    char t19[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = (23 - 23);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2632U);
    t7 = *((char **)t6);
    t8 = (41 - 41);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 23;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 23);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 41;
    t20 = (t16 + 4U);
    *((int *)t20) = 0;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 41);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t6, t19, (char)101);
    t18 = (24U + 42U);
    t22 = (66U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 8720);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 66U);
    xsi_driver_first_trans_fast_port(t20);

LAB2:    t27 = (t0 + 7872);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(66U, t18, 0);
    goto LAB6;

}


extern void work_a_1985340259_1446275585_init()
{
	static char *pe[] = {(void *)work_a_1985340259_1446275585_p_0,(void *)work_a_1985340259_1446275585_p_1,(void *)work_a_1985340259_1446275585_p_2,(void *)work_a_1985340259_1446275585_p_3,(void *)work_a_1985340259_1446275585_p_4,(void *)work_a_1985340259_1446275585_p_5,(void *)work_a_1985340259_1446275585_p_6,(void *)work_a_1985340259_1446275585_p_7,(void *)work_a_1985340259_1446275585_p_8,(void *)work_a_1985340259_1446275585_p_9,(void *)work_a_1985340259_1446275585_p_10};
	xsi_register_didat("work_a_1985340259_1446275585", "isim/tb11_52_isim_beh.exe.sim/work/a_1985340259_1446275585.didat");
	xsi_register_executes(pe);
}