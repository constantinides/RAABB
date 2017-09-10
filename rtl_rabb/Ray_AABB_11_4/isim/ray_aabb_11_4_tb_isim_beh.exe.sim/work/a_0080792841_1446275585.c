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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_4/FPSub11_4.vhdl";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0080792841_1446275585_p_0(char *t0)
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

LAB0:    xsi_set_current_line(290, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 27768);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(291, ng0);
    t4 = (t0 + 2792U);
    t8 = *((char **)t4);
    t4 = (t0 + 28600);
    t9 = (t4 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t8, 18U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(292, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 28664);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 18U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(293, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t2 = (t0 + 28728);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 18U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(294, ng0);
    t2 = (t0 + 3592U);
    t4 = *((char **)t2);
    t2 = (t0 + 28792);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 11U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(295, ng0);
    t2 = (t0 + 3752U);
    t4 = *((char **)t2);
    t2 = (t0 + 28856);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 11U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(296, ng0);
    t2 = (t0 + 4232U);
    t4 = *((char **)t2);
    t2 = (t0 + 28920);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(297, ng0);
    t2 = (t0 + 4552U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 28984);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(298, ng0);
    t2 = (t0 + 5032U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29048);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(299, ng0);
    t2 = (t0 + 5192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29112);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(300, ng0);
    t2 = (t0 + 5352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29176);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(301, ng0);
    t2 = (t0 + 5512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29240);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(302, ng0);
    t2 = (t0 + 5672U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29304);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(303, ng0);
    t2 = (t0 + 5992U);
    t4 = *((char **)t2);
    t2 = (t0 + 29368);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 6U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(304, ng0);
    t2 = (t0 + 6632U);
    t4 = *((char **)t2);
    t2 = (t0 + 29432);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(305, ng0);
    t2 = (t0 + 6792U);
    t4 = *((char **)t2);
    t2 = (t0 + 29496);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(306, ng0);
    t2 = (t0 + 6952U);
    t4 = *((char **)t2);
    t2 = (t0 + 29560);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(307, ng0);
    t2 = (t0 + 7112U);
    t4 = *((char **)t2);
    t2 = (t0 + 29624);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(308, ng0);
    t2 = (t0 + 7432U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29688);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(309, ng0);
    t2 = (t0 + 7592U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29752);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(310, ng0);
    t2 = (t0 + 7752U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29816);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(311, ng0);
    t2 = (t0 + 7912U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 29880);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(312, ng0);
    t2 = (t0 + 8232U);
    t4 = *((char **)t2);
    t2 = (t0 + 29944);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 12U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(313, ng0);
    t2 = (t0 + 8872U);
    t4 = *((char **)t2);
    t2 = (t0 + 30008);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 12U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(314, ng0);
    t2 = (t0 + 10472U);
    t4 = *((char **)t2);
    t2 = (t0 + 30072);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 13U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(315, ng0);
    t2 = (t0 + 10632U);
    t4 = *((char **)t2);
    t2 = (t0 + 30136);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 13U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(316, ng0);
    t2 = (t0 + 11432U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 30200);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(317, ng0);
    t2 = (t0 + 12872U);
    t4 = *((char **)t2);
    t2 = (t0 + 30264);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 2U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(318, ng0);
    t2 = (t0 + 13192U);
    t4 = *((char **)t2);
    t2 = (t0 + 30328);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(319, ng0);
    t2 = (t0 + 13512U);
    t4 = *((char **)t2);
    t2 = (t0 + 30392);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 11U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_0080792841_1446275585_p_1(char *t0)
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

LAB0:    xsi_set_current_line(323, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = (17 - 14);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 17;
    t16 = (t15 + 4U);
    *((int *)t16) = 16;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (16 - 17);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 14;
    t20 = (t16 + 4U);
    *((int *)t20) = 0;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 14);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t6, t19, (char)101);
    t18 = (2U + 15U);
    t22 = (17U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 30456);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 17U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t27 = (t0 + 27784);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t18, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_2(char *t0)
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

LAB0:    xsi_set_current_line(324, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t8 = (17 - 14);
    t9 = (t8 * 1U);
    t10 = (0 + t9);
    t6 = (t7 + t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 17;
    t16 = (t15 + 4U);
    *((int *)t16) = 16;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (16 - 17);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 14;
    t20 = (t16 + 4U);
    *((int *)t20) = 0;
    t20 = (t16 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 14);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t6, t19, (char)101);
    t18 = (2U + 15U);
    t22 = (17U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 30520);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 17U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t27 = (t0 + 27800);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t18, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_3(char *t0)
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

LAB0:    xsi_set_current_line(325, ng0);

LAB3:    t2 = (t0 + 50987);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = (17 - 14);
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
    *((int *)t18) = 14;
    t18 = (t14 + 4U);
    *((int *)t18) = 4;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t19 = (4 - 14);
    t16 = (t19 * -1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t2, t12, (char)97, t4, t17, (char)101);
    t18 = (t0 + 50988);
    t21 = (t0 + 1512U);
    t22 = *((char **)t21);
    t16 = (17 - 14);
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
    *((int *)t34) = 14;
    t34 = (t30 + 4U);
    *((int *)t34) = 4;
    t34 = (t30 + 8U);
    *((int *)t34) = -1;
    t35 = (4 - 14);
    t32 = (t35 * -1);
    t32 = (t32 + 1);
    t34 = (t30 + 12U);
    *((unsigned int *)t34) = t32;
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t18, t28, (char)97, t21, t33, (char)101);
    t34 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t1, t9, t10, t25, t26);
    t36 = (t1 + 12U);
    t32 = *((unsigned int *)t36);
    t37 = (1U * t32);
    t38 = (12U != t37);
    if (t38 == 1)
        goto LAB5;

LAB6:    t39 = (t0 + 30584);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 12U);
    xsi_driver_first_trans_fast(t39);

LAB2:    t44 = (t0 + 27816);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(12U, t37, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_4(char *t0)
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

LAB0:    xsi_set_current_line(326, ng0);

LAB3:    t2 = (t0 + 50989);
    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = (17 - 14);
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
    *((int *)t18) = 14;
    t18 = (t14 + 4U);
    *((int *)t18) = 4;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t19 = (4 - 14);
    t16 = (t19 * -1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t2, t12, (char)97, t4, t17, (char)101);
    t18 = (t0 + 50990);
    t21 = (t0 + 1352U);
    t22 = *((char **)t21);
    t16 = (17 - 14);
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
    *((int *)t34) = 14;
    t34 = (t30 + 4U);
    *((int *)t34) = 4;
    t34 = (t30 + 8U);
    *((int *)t34) = -1;
    t35 = (4 - 14);
    t32 = (t35 * -1);
    t32 = (t32 + 1);
    t34 = (t30 + 12U);
    *((unsigned int *)t34) = t32;
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t18, t28, (char)97, t21, t33, (char)101);
    t34 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t1, t9, t10, t25, t26);
    t36 = (t1 + 12U);
    t32 = *((unsigned int *)t36);
    t37 = (1U * t32);
    t38 = (12U != t37);
    if (t38 == 1)
        goto LAB5;

LAB6:    t39 = (t0 + 30648);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 12U);
    xsi_driver_first_trans_fast(t39);

LAB2:    t44 = (t0 + 27832);
    *((int *)t44) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(12U, t37, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(327, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 49808U);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 49824U);
    t5 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 30712);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 27848);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 30712);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_6(char *t0)
{
    char t15[16];
    char t17[16];
    char t26[16];
    char t28[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    xsi_set_current_line(328, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t8 = (15 - 17);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    t12 = *((unsigned char *)t6);
    t13 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t12);
    t16 = ((IEEE_P_2592010699) + 4024);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 17;
    t19 = (t18 + 4U);
    *((int *)t19) = 16;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (16 - 17);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t14 = xsi_base_array_concat(t14, t15, t16, (char)97, t1, t17, (char)99, t13, (char)101);
    t19 = (t0 + 1512U);
    t22 = *((char **)t19);
    t21 = (17 - 14);
    t23 = (t21 * 1U);
    t24 = (0 + t23);
    t19 = (t22 + t24);
    t27 = ((IEEE_P_2592010699) + 4024);
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 14;
    t30 = (t29 + 4U);
    *((int *)t30) = 0;
    t30 = (t29 + 8U);
    *((int *)t30) = -1;
    t31 = (0 - 14);
    t32 = (t31 * -1);
    t32 = (t32 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t32;
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t14, t15, (char)97, t19, t28, (char)101);
    t32 = (2U + 1U);
    t33 = (t32 + 15U);
    t34 = (18U != t33);
    if (t34 == 1)
        goto LAB5;

LAB6:    t30 = (t0 + 30776);
    t35 = (t30 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t25, 18U);
    xsi_driver_first_trans_fast(t30);

LAB2:    t39 = (t0 + 27864);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(18U, t33, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(329, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 2632U);
    t11 = *((char **)t10);
    t10 = (t0 + 30840);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 18U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t16 = (t0 + 27880);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 30840);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 18U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(330, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 1352U);
    t11 = *((char **)t10);
    t10 = (t0 + 30904);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 18U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t16 = (t0 + 27896);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2632U);
    t5 = *((char **)t1);
    t1 = (t0 + 30904);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 18U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_9(char *t0)
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

LAB0:    xsi_set_current_line(331, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (17 - 14);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 30968);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 27912);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_10(char *t0)
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

LAB0:    xsi_set_current_line(332, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 31032);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 27928);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_11(char *t0)
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

LAB0:    xsi_set_current_line(333, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 31096);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 27944);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_12(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(334, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (15 - 17);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 31160);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 27960);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_13(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(335, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = (15 - 17);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 31224);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 27976);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_14(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(336, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 31288);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 27992);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_15(char *t0)
{
    char t6[16];
    char t10[16];
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(337, ng0);

LAB3:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4872U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (t0 + 4072U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 49936U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t6, (char)97, t9, t12, (char)101);
    t13 = (t0 + 4232U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 49952U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (1U + 1U);
    t19 = (t18 + 2U);
    t20 = (t19 + 2U);
    t21 = (6U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 31352);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 6U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 28008);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(6U, t20, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_16(char *t0)
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

LAB3:    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 4232U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 49936U);
    t7 = (t0 + 49952U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (2U + 2U);
    t9 = (4U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 31416);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 28024);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t8, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_17(char *t0)
{
    char t5[16];
    char t22[16];
    char t24[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(340, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t1 = (t0 + 49952U);
    t3 = (t0 + 50991);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = (t0 + 3432U);
    t18 = *((char **)t17);
    t9 = (17 - 3);
    t19 = (t9 * 1U);
    t20 = (0 + t19);
    t17 = (t18 + t20);
    t23 = ((IEEE_P_2592010699) + 4024);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 3;
    t26 = (t25 + 4U);
    *((int *)t26) = 0;
    t26 = (t25 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 3);
    t28 = (t27 * -1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t21 = xsi_base_array_concat(t21, t22, t23, (char)99, (unsigned char)3, (char)97, t17, t24, (char)101);
    t28 = (1U + 4U);
    t29 = (5U != t28);
    if (t29 == 1)
        goto LAB7;

LAB8:    t26 = (t0 + 31480);
    t30 = (t26 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t21, 5U);
    xsi_driver_first_trans_fast(t26);

LAB2:    t34 = (t0 + 28040);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 50993);
    t12 = (t0 + 31480);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 5U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(5U, t28, 0);
    goto LAB8;

}

static void work_a_0080792841_1446275585_p_18(char *t0)
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
    int t101;
    char *t102;
    int t104;
    char *t105;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;

LAB0:    t1 = (t0 + 20256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(341, ng0);
    t2 = (t0 + 6152U);
    t3 = *((char **)t2);
    t2 = (t0 + 50998);
    t5 = xsi_mem_cmp(t2, t3, 6U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 51004);
    t8 = xsi_mem_cmp(t6, t3, 6U);
    if (t8 == 1)
        goto LAB5;

LAB10:    t9 = (t0 + 51010);
    t11 = xsi_mem_cmp(t9, t3, 6U);
    if (t11 == 1)
        goto LAB5;

LAB11:    t12 = (t0 + 51016);
    t14 = xsi_mem_cmp(t12, t3, 6U);
    if (t14 == 1)
        goto LAB5;

LAB12:    t15 = (t0 + 51022);
    t17 = xsi_mem_cmp(t15, t3, 6U);
    if (t17 == 1)
        goto LAB6;

LAB13:    t18 = (t0 + 51028);
    t20 = xsi_mem_cmp(t18, t3, 6U);
    if (t20 == 1)
        goto LAB6;

LAB14:    t21 = (t0 + 51034);
    t23 = xsi_mem_cmp(t21, t3, 6U);
    if (t23 == 1)
        goto LAB6;

LAB15:    t24 = (t0 + 51040);
    t26 = xsi_mem_cmp(t24, t3, 6U);
    if (t26 == 1)
        goto LAB6;

LAB16:    t27 = (t0 + 51046);
    t29 = xsi_mem_cmp(t27, t3, 6U);
    if (t29 == 1)
        goto LAB6;

LAB17:    t30 = (t0 + 51052);
    t32 = xsi_mem_cmp(t30, t3, 6U);
    if (t32 == 1)
        goto LAB6;

LAB18:    t33 = (t0 + 51058);
    t35 = xsi_mem_cmp(t33, t3, 6U);
    if (t35 == 1)
        goto LAB6;

LAB19:    t36 = (t0 + 51064);
    t38 = xsi_mem_cmp(t36, t3, 6U);
    if (t38 == 1)
        goto LAB6;

LAB20:    t39 = (t0 + 51070);
    t41 = xsi_mem_cmp(t39, t3, 6U);
    if (t41 == 1)
        goto LAB6;

LAB21:    t42 = (t0 + 51076);
    t44 = xsi_mem_cmp(t42, t3, 6U);
    if (t44 == 1)
        goto LAB6;

LAB22:    t45 = (t0 + 51082);
    t47 = xsi_mem_cmp(t45, t3, 6U);
    if (t47 == 1)
        goto LAB6;

LAB23:    t48 = (t0 + 51088);
    t50 = xsi_mem_cmp(t48, t3, 6U);
    if (t50 == 1)
        goto LAB6;

LAB24:    t51 = (t0 + 51094);
    t53 = xsi_mem_cmp(t51, t3, 6U);
    if (t53 == 1)
        goto LAB7;

LAB25:    t54 = (t0 + 51100);
    t56 = xsi_mem_cmp(t54, t3, 6U);
    if (t56 == 1)
        goto LAB7;

LAB26:    t57 = (t0 + 51106);
    t59 = xsi_mem_cmp(t57, t3, 6U);
    if (t59 == 1)
        goto LAB7;

LAB27:    t60 = (t0 + 51112);
    t62 = xsi_mem_cmp(t60, t3, 6U);
    if (t62 == 1)
        goto LAB7;

LAB28:    t63 = (t0 + 51118);
    t65 = xsi_mem_cmp(t63, t3, 6U);
    if (t65 == 1)
        goto LAB7;

LAB29:    t66 = (t0 + 51124);
    t68 = xsi_mem_cmp(t66, t3, 6U);
    if (t68 == 1)
        goto LAB7;

LAB30:    t69 = (t0 + 51130);
    t71 = xsi_mem_cmp(t69, t3, 6U);
    if (t71 == 1)
        goto LAB7;

LAB31:    t72 = (t0 + 51136);
    t74 = xsi_mem_cmp(t72, t3, 6U);
    if (t74 == 1)
        goto LAB7;

LAB32:    t75 = (t0 + 51142);
    t77 = xsi_mem_cmp(t75, t3, 6U);
    if (t77 == 1)
        goto LAB7;

LAB33:    t78 = (t0 + 51148);
    t80 = xsi_mem_cmp(t78, t3, 6U);
    if (t80 == 1)
        goto LAB7;

LAB34:    t81 = (t0 + 51154);
    t83 = xsi_mem_cmp(t81, t3, 6U);
    if (t83 == 1)
        goto LAB7;

LAB35:    t84 = (t0 + 51160);
    t86 = xsi_mem_cmp(t84, t3, 6U);
    if (t86 == 1)
        goto LAB7;

LAB36:    t87 = (t0 + 51166);
    t89 = xsi_mem_cmp(t87, t3, 6U);
    if (t89 == 1)
        goto LAB7;

LAB37:    t90 = (t0 + 51172);
    t92 = xsi_mem_cmp(t90, t3, 6U);
    if (t92 == 1)
        goto LAB7;

LAB38:    t93 = (t0 + 51178);
    t95 = xsi_mem_cmp(t93, t3, 6U);
    if (t95 == 1)
        goto LAB7;

LAB39:    t96 = (t0 + 51184);
    t98 = xsi_mem_cmp(t96, t3, 6U);
    if (t98 == 1)
        goto LAB7;

LAB40:    t99 = (t0 + 51190);
    t101 = xsi_mem_cmp(t99, t3, 6U);
    if (t101 == 1)
        goto LAB7;

LAB41:    t102 = (t0 + 51196);
    t104 = xsi_mem_cmp(t102, t3, 6U);
    if (t104 == 1)
        goto LAB7;

LAB42:
LAB8:    xsi_set_current_line(342, ng0);
    t2 = (t0 + 51208);
    t4 = (t0 + 31544);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(341, ng0);

LAB46:    t2 = (t0 + 28056);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB47;

LAB1:    return;
LAB5:    xsi_set_current_line(342, ng0);
    t105 = (t0 + 51202);
    t107 = (t0 + 31544);
    t108 = (t107 + 56U);
    t109 = *((char **)t108);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    memcpy(t111, t105, 2U);
    xsi_driver_first_trans_fast(t107);
    goto LAB4;

LAB6:    xsi_set_current_line(342, ng0);
    t2 = (t0 + 51204);
    t4 = (t0 + 31544);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(342, ng0);
    t2 = (t0 + 51206);
    t4 = (t0 + 31544);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB43:;
LAB44:    t3 = (t0 + 28056);
    *((int *)t3) = 0;
    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}

static void work_a_0080792841_1446275585_p_19(char *t0)
{
    char t6[16];
    char t15[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(346, ng0);
    t2 = (t0 + 6152U);
    t3 = *((char **)t2);
    t2 = (t0 + 49968U);
    t4 = (t0 + 51210);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 5;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (5 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 6152U);
    t12 = *((char **)t8);
    t8 = (t0 + 49968U);
    t13 = (t0 + 51216);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 5;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (5 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t12, t8, t13, t15);
    t1 = t19;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t24 = (t0 + 4712U);
    t25 = *((char **)t24);
    t26 = *((unsigned char *)t25);
    t24 = (t0 + 31608);
    t27 = (t24 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    *((unsigned char *)t30) = t26;
    xsi_driver_first_trans_fast(t24);

LAB2:    t31 = (t0 + 28072);
    *((int *)t31) = 1;

LAB1:    return;
LAB3:    t17 = (t0 + 31608);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t17);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_20(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(348, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 2312U);
    t11 = *((char **)t10);
    t10 = (t0 + 31672);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 12U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t16 = (t0 + 28088);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t1 = (t0 + 31672);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 12U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_21(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(350, ng0);
    t1 = (t0 + 8392U);
    t2 = *((char **)t1);
    t1 = (t0 + 50032U);
    t3 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t2, t1, 6);
    if (t3 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 31736);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 28104);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 31736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_22(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(351, ng0);
    t1 = (t0 + 8552U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t14, 7, 3);
    t16 = (3U != 3U);
    if (t16 == 1)
        goto LAB7;

LAB8:    t17 = (t0 + 31800);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 3U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 28120);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 8392U);
    t5 = *((char **)t1);
    t6 = (11 - 2);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 31800);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 3U);
    xsi_driver_first_trans_fast(t9);
    goto LAB2;

LAB6:    goto LAB2;

LAB7:    xsi_size_not_matching(3U, 3U, 0);
    goto LAB8;

}

static void work_a_0080792841_1446275585_p_23(char *t0)
{
    char t6[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(359, ng0);
    t1 = (t0 + 9032U);
    t2 = *((char **)t1);
    t3 = (11 - 4);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 4;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 4);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t11, 0, 5);
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t11);
    if (t12 != 0)
        goto LAB3;

LAB4:
LAB5:    t18 = (t0 + 31864);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)3;
    xsi_driver_first_trans_fast(t18);

LAB2:    t23 = (t0 + 28136);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t13 = (t0 + 31864);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_24(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(362, ng0);

LAB3:    t1 = (t0 + 51222);
    t3 = (t0 + 9032U);
    t4 = *((char **)t3);
    t5 = (11 - 11);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (0 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 11;
    t17 = (t13 + 4U);
    *((int *)t17) = 5;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (5 - 11);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t15 = (1U + 7U);
    t19 = (8U != t15);
    if (t19 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 31928);
    t20 = (t17 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t8, 8U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t24 = (t0 + 28152);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t15, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_25(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(363, ng0);

LAB3:    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    t3 = (t0 + 5352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    if (-1 == -1)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    t7 = (t6 - 7);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t3 = (t2 + t9);
    t10 = (0 - 7);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t12 = (1U * t11);
    memset(t3, t5, t12);
    t13 = (t0 + 31992);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 28168);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    t6 = 7;
    goto LAB7;

}

static void work_a_0080792841_1446275585_p_26(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(364, ng0);

LAB3:    t2 = (t0 + 9352U);
    t3 = *((char **)t2);
    t2 = (t0 + 50080U);
    t4 = (t0 + 9512U);
    t5 = *((char **)t4);
    t4 = (t0 + 50096U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 32056);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 28184);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t9, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_27(char *t0)
{
    char t9[16];
    char t11[16];
    char t16[16];
    char t21[16];
    char t23[16];
    char *t1;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
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

LAB0:    xsi_set_current_line(365, ng0);

LAB3:    t1 = (t0 + 51223);
    t3 = (t0 + 3112U);
    t4 = *((char **)t3);
    t5 = (17 - 3);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 3;
    t17 = (t13 + 4U);
    *((int *)t17) = 0;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 3);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t11, (char)97, t3, t16, (char)101);
    t17 = (t0 + 51225);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (1 - 0);
    t15 = (t26 * 1);
    t15 = (t15 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t15;
    t20 = xsi_base_array_concat(t20, t21, t22, (char)97, t8, t9, (char)97, t17, t23, (char)101);
    t15 = (2U + 4U);
    t27 = (t15 + 2U);
    t28 = (8U != t27);
    if (t28 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 32120);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t20, 8U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t33 = (t0 + 28200);
    *((int *)t33) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t27, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_28(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(366, ng0);

LAB3:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 9192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 32184);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 28216);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_29(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
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

LAB0:    xsi_set_current_line(374, ng0);

LAB3:    t1 = (t0 + 10152U);
    t2 = *((char **)t1);
    t1 = (t0 + 9192U);
    t3 = *((char **)t1);
    t4 = *((unsigned char *)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 50144U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)97, t2, t7, (char)99, t4, (char)101);
    t8 = (8U + 1U);
    t9 = (9U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 32248);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 9U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 28232);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t8, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_30(char *t0)
{
    char t1[16];
    char t6[16];
    char t8[16];
    char *t2;
    char *t4;
    char *t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(375, ng0);

LAB3:    t2 = (t0 + 51227);
    t4 = (t0 + 3912U);
    t5 = *((char **)t4);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (1 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = (t0 + 49920U);
    t4 = xsi_base_array_concat(t4, t6, t7, (char)97, t2, t8, (char)97, t5, t10, (char)101);
    t13 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t1, t4, t6, (unsigned char)3);
    t14 = (t1 + 12U);
    t12 = *((unsigned int *)t14);
    t15 = (1U * t12);
    t16 = (13U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 32312);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 13U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 28248);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(13U, t15, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_31(char *t0)
{
    char t1[16];
    char t8[16];
    char t10[16];
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(383, ng0);

LAB3:    t2 = (t0 + 10792U);
    t3 = *((char **)t2);
    t2 = (t0 + 50176U);
    t4 = (t0 + 51229);
    t6 = (t0 + 10952U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 8;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (8 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 50192U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t4, t10, (char)97, t7, t12, (char)101);
    t15 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t1, t3, t2, t6, t8);
    t16 = (t1 + 12U);
    t14 = *((unsigned int *)t16);
    t17 = (1U * t14);
    t18 = (13U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t19 = (t0 + 32376);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t15, 13U);
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 28264);
    *((int *)t24) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(13U, t17, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_32(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(384, ng0);
    t1 = (t0 + 10952U);
    t2 = *((char **)t1);
    t1 = (t0 + 50192U);
    t3 = (t0 + 51238);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 32440);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t15);

LAB2:    t20 = (t0 + 28280);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 32440);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_33(char *t0)
{
    char t8[16];
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(385, ng0);

LAB3:    t1 = (t0 + 11272U);
    t2 = *((char **)t1);
    t1 = (t0 + 11112U);
    t3 = *((char **)t1);
    t4 = (8 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t3 + t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t0 + 50224U);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 3;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (3 - 7);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t7 = xsi_base_array_concat(t7, t8, t9, (char)97, t2, t10, (char)97, t1, t11, (char)101);
    t15 = (13U + 5U);
    t16 = (18U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 32504);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 18U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t21 = (t0 + 28296);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(18U, t15, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_34(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(387, ng0);

LAB3:    t1 = (t0 + 11112U);
    t2 = *((char **)t1);
    t3 = (1 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 11112U);
    t9 = *((char **)t8);
    t10 = (0 - 8);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 32568);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 28312);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_35(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(388, ng0);

LAB3:    t1 = (t0 + 11112U);
    t2 = *((char **)t1);
    t3 = (2 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 32632);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 28328);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_36(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(389, ng0);

LAB3:    t1 = (t0 + 11112U);
    t2 = *((char **)t1);
    t3 = (3 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 32696);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 28344);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_37(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(390, ng0);

LAB3:    t1 = (t0 + 11112U);
    t2 = *((char **)t1);
    t3 = (4 - 8);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 32760);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 28360);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_38(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(391, ng0);
    t4 = (t0 + 12392U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t21 = (t0 + 32824);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);

LAB2:    t26 = (t0 + 28376);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 32824);
    t17 = (t4 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB2;

LAB5:    t4 = (t0 + 11912U);
    t14 = *((char **)t4);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)2);
    t1 = t16;
    goto LAB7;

LAB8:    t4 = (t0 + 12072U);
    t11 = *((char **)t4);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)2);
    t2 = t13;
    goto LAB10;

LAB11:    t4 = (t0 + 12232U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB13;

LAB15:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_39(char *t0)
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

LAB0:    xsi_set_current_line(400, ng0);

LAB3:    t1 = (t0 + 12712U);
    t2 = *((char **)t1);
    t3 = (17 - 17);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 32888);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 28392);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_40(char *t0)
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

LAB0:    xsi_set_current_line(401, ng0);

LAB3:    t1 = (t0 + 12712U);
    t2 = *((char **)t1);
    t3 = (17 - 4);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 32952);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 28408);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_41(char *t0)
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

LAB0:    xsi_set_current_line(402, ng0);

LAB3:    t1 = (t0 + 12712U);
    t2 = *((char **)t1);
    t3 = (17 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 33016);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 28424);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_42(char *t0)
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

LAB0:    xsi_set_current_line(404, ng0);

LAB3:    t1 = (t0 + 13032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7272U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 50272U);
    t7 = (t0 + 50016U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t8 = (2U + 2U);
    t9 = (4U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 33080);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 4U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 28440);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t8, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_43(char *t0)
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
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 26456U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(405, ng0);
    t2 = (t0 + 13832U);
    t3 = *((char **)t2);
    t2 = (t0 + 51242);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 51246);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB5;

LAB10:    t9 = (t0 + 51250);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB5;

LAB11:    t12 = (t0 + 51254);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB5;

LAB12:    t15 = (t0 + 51258);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB5;

LAB13:    t18 = (t0 + 51262);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB5;

LAB14:    t21 = (t0 + 51266);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB6;

LAB15:    t24 = (t0 + 51270);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB7;

LAB16:    t27 = (t0 + 51274);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB7;

LAB17:    t30 = (t0 + 51278);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB7;

LAB18:    t33 = (t0 + 51282);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB7;

LAB19:    t36 = (t0 + 51286);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB7;

LAB20:
LAB8:    xsi_set_current_line(406, ng0);
    t2 = (t0 + 51296);
    t4 = (t0 + 33144);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(405, ng0);

LAB24:    t2 = (t0 + 28456);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB25;

LAB1:    return;
LAB5:    xsi_set_current_line(406, ng0);
    t39 = (t0 + 51290);
    t41 = (t0 + 33144);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 2U);
    xsi_driver_first_trans_fast(t41);
    goto LAB4;

LAB6:    xsi_set_current_line(406, ng0);
    t2 = (t0 + 51292);
    t4 = (t0 + 33144);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(406, ng0);
    t2 = (t0 + 51294);
    t4 = (t0 + 33144);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB21:;
LAB22:    t3 = (t0 + 28456);
    *((int *)t3) = 0;
    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}

static void work_a_0080792841_1446275585_p_44(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(410, ng0);
    t2 = (t0 + 11592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t15 = (t0 + 13992U);
    t16 = *((char **)t15);
    t15 = (t0 + 33208);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 2U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t21 = (t0 + 28472);
    *((int *)t21) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 51298);
    t10 = (t0 + 33208);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast(t10);
    goto LAB2;

LAB5:    t2 = (t0 + 5832U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_45(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(411, ng0);
    t2 = (t0 + 11592U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 8072U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t13 = (t0 + 33272);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = t15;
    xsi_driver_first_trans_fast(t13);

LAB2:    t20 = (t0 + 28488);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 33272);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 5832U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0080792841_1446275585_p_46(char *t0)
{
    char t5[16];
    char t10[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(412, ng0);

LAB3:    t1 = (t0 + 14152U);
    t2 = *((char **)t1);
    t1 = (t0 + 14312U);
    t3 = *((char **)t1);
    t4 = *((unsigned char *)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 50352U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)97, t2, t7, (char)99, t4, (char)101);
    t8 = (t0 + 13672U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 50304U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)97, t1, t5, (char)97, t9, t12, (char)101);
    t13 = (t0 + 13352U);
    t14 = *((char **)t13);
    t16 = ((IEEE_P_2592010699) + 4024);
    t17 = (t0 + 50288U);
    t13 = xsi_base_array_concat(t13, t15, t16, (char)97, t8, t10, (char)97, t14, t17, (char)101);
    t18 = (2U + 1U);
    t19 = (t18 + 11U);
    t20 = (t19 + 4U);
    t21 = (18U != t20);
    if (t21 == 1)
        goto LAB5;

LAB6:    t22 = (t0 + 33336);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t13, 18U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t27 = (t0 + 28504);
    *((int *)t27) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(18U, t20, 0);
    goto LAB6;

}

static void work_a_0080792841_1446275585_p_47(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(413, ng0);

LAB3:    t1 = (t0 + 14472U);
    t2 = *((char **)t1);
    t1 = (t0 + 33400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 18U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 28520);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0080792841_1446275585_init()
{
	static char *pe[] = {(void *)work_a_0080792841_1446275585_p_0,(void *)work_a_0080792841_1446275585_p_1,(void *)work_a_0080792841_1446275585_p_2,(void *)work_a_0080792841_1446275585_p_3,(void *)work_a_0080792841_1446275585_p_4,(void *)work_a_0080792841_1446275585_p_5,(void *)work_a_0080792841_1446275585_p_6,(void *)work_a_0080792841_1446275585_p_7,(void *)work_a_0080792841_1446275585_p_8,(void *)work_a_0080792841_1446275585_p_9,(void *)work_a_0080792841_1446275585_p_10,(void *)work_a_0080792841_1446275585_p_11,(void *)work_a_0080792841_1446275585_p_12,(void *)work_a_0080792841_1446275585_p_13,(void *)work_a_0080792841_1446275585_p_14,(void *)work_a_0080792841_1446275585_p_15,(void *)work_a_0080792841_1446275585_p_16,(void *)work_a_0080792841_1446275585_p_17,(void *)work_a_0080792841_1446275585_p_18,(void *)work_a_0080792841_1446275585_p_19,(void *)work_a_0080792841_1446275585_p_20,(void *)work_a_0080792841_1446275585_p_21,(void *)work_a_0080792841_1446275585_p_22,(void *)work_a_0080792841_1446275585_p_23,(void *)work_a_0080792841_1446275585_p_24,(void *)work_a_0080792841_1446275585_p_25,(void *)work_a_0080792841_1446275585_p_26,(void *)work_a_0080792841_1446275585_p_27,(void *)work_a_0080792841_1446275585_p_28,(void *)work_a_0080792841_1446275585_p_29,(void *)work_a_0080792841_1446275585_p_30,(void *)work_a_0080792841_1446275585_p_31,(void *)work_a_0080792841_1446275585_p_32,(void *)work_a_0080792841_1446275585_p_33,(void *)work_a_0080792841_1446275585_p_34,(void *)work_a_0080792841_1446275585_p_35,(void *)work_a_0080792841_1446275585_p_36,(void *)work_a_0080792841_1446275585_p_37,(void *)work_a_0080792841_1446275585_p_38,(void *)work_a_0080792841_1446275585_p_39,(void *)work_a_0080792841_1446275585_p_40,(void *)work_a_0080792841_1446275585_p_41,(void *)work_a_0080792841_1446275585_p_42,(void *)work_a_0080792841_1446275585_p_43,(void *)work_a_0080792841_1446275585_p_44,(void *)work_a_0080792841_1446275585_p_45,(void *)work_a_0080792841_1446275585_p_46,(void *)work_a_0080792841_1446275585_p_47};
	xsi_register_didat("work_a_0080792841_1446275585", "isim/Ray_AABB_11_4_tb_isim_beh.exe.sim/work/a_0080792841_1446275585.didat");
	xsi_register_executes(pe);
}
