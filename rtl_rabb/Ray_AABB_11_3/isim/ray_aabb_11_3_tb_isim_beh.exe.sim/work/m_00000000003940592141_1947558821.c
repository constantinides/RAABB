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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_3/Ray_AABB_11_3_tb.v";
static const char *ng1 = "Coordinates_final.txt";
static const char *ng2 = "new_HighPrecRes.txt";
static const char *ng3 = "Direction_fin.txt";
static int ng4[] = {0, 0};
static int ng5[] = {1, 0};
static int ng6[] = {2, 0};
static int ng7[] = {3, 0};
static int ng8[] = {4, 0};
static int ng9[] = {5, 0};
static int ng10[] = {6, 0};
static int ng11[] = {7, 0};
static int ng12[] = {8, 0};
static int ng13[] = {9, 0};
static int ng14[] = {10, 0};
static int ng15[] = {11, 0};
static int ng16[] = {12, 0};
static int ng17[] = {34, 0};
static unsigned int ng18[] = {1U, 0U};



static void Initial_81_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 6528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);

LAB4:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 4168);
    xsi_vlogfile_readmemb(ng1, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4328);
    xsi_vlogfile_readmemb(ng2, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4488);
    xsi_vlogfile_readmemb(ng3, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6336);
    xsi_process_wait(t2, 9117LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 6336);
    xsi_process_wait(t2, 10637LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6336);
    xsi_process_wait(t2, 30587535LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(93, ng0);
    xsi_vlog_stop(1);
    goto LAB1;

}

static void Always_96_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 6776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 6584);
    xsi_process_wait(t2, 1520LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(97, ng0);
    t4 = (t0 + 1448);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1448);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

static void Always_99_2(char *t0)
{
    char t15[24];
    char t20[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t35;

LAB0:    t1 = (t0 + 7024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 7592);
    *((int *)t2) = 1;
    t3 = (t0 + 7056);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(99, ng0);

LAB5:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 1608);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(108, ng0);

LAB10:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t19, 17, 2);
    memset(t20, 0, 8);
    t21 = (t20 + 4);
    t22 = (t15 + 8);
    t23 = (t15 + 12);
    t8 = *((unsigned int *)t22);
    t9 = (t8 >> 17);
    *((unsigned int *)t20) = t9;
    t10 = *((unsigned int *)t23);
    t11 = (t10 >> 17);
    *((unsigned int *)t21) = t11;
    t24 = (t15 + 16);
    t25 = (t15 + 20);
    t12 = *((unsigned int *)t24);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 | t26);
    t28 = *((unsigned int *)t25);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 | t29);
    t31 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t31 & 131071U);
    t32 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t32 & 131071U);
    t33 = (t0 + 1768);
    xsi_vlogvar_assign_value(t33, t20, 0, 0, 17);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng5)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 1928);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng6)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2088);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng7)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2248);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng8)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2408);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng9)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2568);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng10)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2728);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng11)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 2888);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng12)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 3048);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng13)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 3688);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng14)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 3848);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4168);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4168);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4648);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng15)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t19, 17, t21, 32);
    xsi_vlog_generic_get_array_select_value(t15, 66, t4, t7, t16, 2, 1, t20, 32, 2);
    memset(t34, 0, 8);
    t22 = (t34 + 4);
    t23 = (t15 + 8);
    t24 = (t15 + 12);
    t8 = *((unsigned int *)t23);
    t9 = (t8 >> 17);
    *((unsigned int *)t34) = t9;
    t10 = *((unsigned int *)t24);
    t11 = (t10 >> 17);
    *((unsigned int *)t22) = t11;
    t25 = (t15 + 16);
    t33 = (t15 + 20);
    t12 = *((unsigned int *)t25);
    t26 = (t12 << 15);
    t27 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t27 | t26);
    t28 = *((unsigned int *)t33);
    t29 = (t28 << 15);
    t30 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t30 | t29);
    t31 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t31 & 131071U);
    t32 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t32 & 131071U);
    t35 = (t0 + 4008);
    xsi_vlogvar_assign_value(t35, t34, 0, 0, 17);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4488);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4488);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4808);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    xsi_vlog_generic_get_array_select_value(t20, 1, t4, t7, t16, 2, 1, t19, 16, 2);
    t21 = (t0 + 3208);
    xsi_vlogvar_assign_value(t21, t20, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4488);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4488);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4808);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng5)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_add(t34, 32, t19, 16, t21, 32);
    xsi_vlog_generic_get_array_select_value(t20, 1, t4, t7, t16, 2, 1, t34, 32, 2);
    t22 = (t0 + 3368);
    xsi_vlogvar_assign_value(t22, t20, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4488);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4488);
    t6 = (t5 + 72U);
    t7 = *((char **)t6);
    t13 = (t0 + 4488);
    t14 = (t13 + 64U);
    t16 = *((char **)t14);
    t17 = (t0 + 4808);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng6)));
    memset(t34, 0, 8);
    xsi_vlog_unsigned_add(t34, 32, t19, 16, t21, 32);
    xsi_vlog_generic_get_array_select_value(t20, 1, t4, t7, t16, 2, 1, t34, 32, 2);
    t22 = (t0 + 3528);
    xsi_vlogvar_assign_value(t22, t20, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng16)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t4, 17, t5, 32);
    t6 = (t0 + 4648);
    xsi_vlogvar_assign_value(t6, t20, 0, 0, 17);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 4808);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_add(t20, 32, t4, 16, t5, 32);
    t6 = (t0 + 4808);
    xsi_vlogvar_assign_value(t6, t20, 0, 0, 16);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(101, ng0);

LAB9:    xsi_set_current_line(102, ng0);
    t13 = ((char*)((ng4)));
    t14 = (t0 + 4648);
    xsi_vlogvar_assign_value(t14, t13, 0, 0, 17);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    goto LAB8;

}

static void Always_134_3(char *t0)
{
    char t8[8];
    char t21[8];
    char t61[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;

LAB0:    t1 = (t0 + 7272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 7608);
    *((int *)t2) = 1;
    t3 = (t0 + 7304);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(134, ng0);

LAB5:    xsi_set_current_line(136, ng0);
    t4 = (t0 + 5288);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng17)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB7;

LAB6:    t10 = (t7 + 4);
    if (*((unsigned int *)t10) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t6) < *((unsigned int *)t7))
        goto LAB9;

LAB8:    *((unsigned int *)t8) = 1;

LAB9:    t12 = (t8 + 4);
    t13 = *((unsigned int *)t12);
    t14 = (~(t13));
    t15 = *((unsigned int *)t8);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB11;

LAB12:
LAB13:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 16, t5, 32);
    t6 = (t0 + 5288);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 16);
    goto LAB2;

LAB7:    t11 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(136, ng0);

LAB14:    xsi_set_current_line(138, ng0);
    t18 = (t0 + 4328);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t22 = (t0 + 4328);
    t23 = (t22 + 72U);
    t24 = *((char **)t23);
    t25 = (t0 + 4328);
    t26 = (t25 + 64U);
    t27 = *((char **)t26);
    t28 = (t0 + 4968);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_array_select_value(t21, 1, t20, t24, t27, 2, 1, t30, 16, 2);
    t31 = (t0 + 5128);
    xsi_vlogvar_assign_value(t31, t21, 0, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng18)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t7);
    t32 = (t16 ^ t17);
    t33 = (t15 | t32);
    t34 = *((unsigned int *)t6);
    t35 = *((unsigned int *)t7);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB18;

LAB15:    if (t36 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t8) = 1;

LAB18:    t10 = (t8 + 4);
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t8);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(145, ng0);

LAB30:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 5128);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t13 = *((unsigned int *)t3);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t7);
    t32 = (t16 ^ t17);
    t33 = (t15 | t32);
    t34 = *((unsigned int *)t6);
    t35 = *((unsigned int *)t7);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB32;

LAB31:    if (t36 != 0)
        goto LAB33;

LAB34:    t10 = (t8 + 4);
    t39 = *((unsigned int *)t10);
    t40 = (~(t39));
    t41 = *((unsigned int *)t8);
    t42 = (t41 & t40);
    t43 = (t42 != 0);
    if (t43 > 0)
        goto LAB35;

LAB36:
LAB37:
LAB21:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 4968);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t4, 16, t5, 32);
    t6 = (t0 + 4968);
    xsi_vlogvar_assign_value(t6, t8, 0, 0, 16);
    goto LAB13;

LAB17:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(140, ng0);

LAB22:    xsi_set_current_line(142, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    t11 = (t0 + 5128);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    memset(t21, 0, 8);
    t20 = (t12 + 4);
    t22 = (t19 + 4);
    t44 = *((unsigned int *)t12);
    t45 = *((unsigned int *)t19);
    t46 = (t44 ^ t45);
    t47 = *((unsigned int *)t20);
    t48 = *((unsigned int *)t22);
    t49 = (t47 ^ t48);
    t50 = (t46 | t49);
    t51 = *((unsigned int *)t20);
    t52 = *((unsigned int *)t22);
    t53 = (t51 | t52);
    t54 = (~(t53));
    t55 = (t50 & t54);
    if (t55 != 0)
        goto LAB24;

LAB23:    if (t53 != 0)
        goto LAB25;

LAB26:    t24 = (t21 + 4);
    t56 = *((unsigned int *)t24);
    t57 = (~(t56));
    t58 = *((unsigned int *)t21);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB27;

LAB28:
LAB29:    goto LAB21;

LAB24:    *((unsigned int *)t21) = 1;
    goto LAB26;

LAB25:    t23 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(142, ng0);
    t25 = (t0 + 5448);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = ((char*)((ng5)));
    memset(t61, 0, 8);
    xsi_vlog_unsigned_add(t61, 32, t27, 10, t28, 32);
    t29 = (t0 + 5448);
    xsi_vlogvar_assign_value(t29, t61, 0, 0, 10);
    goto LAB29;

LAB32:    *((unsigned int *)t8) = 1;
    goto LAB34;

LAB33:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(147, ng0);
    t11 = (t0 + 5608);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    t19 = ((char*)((ng5)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t18, 16, t19, 32);
    t20 = (t0 + 5608);
    xsi_vlogvar_assign_value(t20, t21, 0, 0, 16);
    goto LAB37;

}


extern void work_m_00000000003940592141_1947558821_init()
{
	static char *pe[] = {(void *)Initial_81_0,(void *)Always_96_1,(void *)Always_99_2,(void *)Always_134_3};
	xsi_register_didat("work_m_00000000003940592141_1947558821", "isim/Ray_AABB_11_3_tb_isim_beh.exe.sim/work/m_00000000003940592141_1947558821.didat");
	xsi_register_executes(pe);
}
