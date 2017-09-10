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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_52_pipelined_correctR/tb11_52.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {2837784536U, 0U, 1072084977U, 0U, 1U, 0U};
static unsigned int ng4[] = {1539558171U, 0U, 1070828106U, 0U, 1U, 0U};
static unsigned int ng5[] = {2206620881U, 0U, 1069819821U, 0U, 1U, 0U};
static unsigned int ng6[] = {2474198031U, 0U, 1069254301U, 0U, 1U, 0U};
static unsigned int ng7[] = {3716701146U, 0U, 1068738960U, 0U, 1U, 0U};
static unsigned int ng8[] = {713802949U, 0U, 3218964328U, 0U, 1U, 0U};
static unsigned int ng9[] = {697969981U, 0U, 1071479048U, 0U, 1U, 0U};
static unsigned int ng10[] = {3154180002U, 0U, 1070287497U, 0U, 1U, 0U};
static unsigned int ng11[] = {1634127167U, 0U, 3215808401U, 0U, 1U, 0U};
static unsigned int ng12[] = {152722165U, 0U, 3220727166U, 0U, 1U, 0U};
static unsigned int ng13[] = {3752633186U, 0U, 3222260812U, 0U, 1U, 0U};
static unsigned int ng14[] = {16327748U, 0U, 3220531859U, 0U, 1U, 0U};
static unsigned int ng15[] = {34139836U, 0U, 3219579327U, 0U, 1U, 0U};
static unsigned int ng16[] = {3405803238U, 0U, 1067859588U, 0U, 1U, 0U};
static unsigned int ng17[] = {2212602224U, 0U, 1071358349U, 0U, 1U, 0U};
static unsigned int ng18[] = {2659861564U, 0U, 3219706343U, 0U, 1U, 0U};
static unsigned int ng19[] = {4271734615U, 0U, 1069194848U, 0U, 1U, 0U};
static unsigned int ng20[] = {3026460731U, 0U, 1072096233U, 0U, 1U, 0U};
static unsigned int ng21[] = {1175180018U, 0U, 3215528510U, 0U, 1U, 0U};
static unsigned int ng22[] = {3018709174U, 0U, 1072090314U, 0U, 1U, 0U};
static unsigned int ng23[] = {661686098U, 0U, 1072142956U, 0U, 1U, 0U};
static unsigned int ng24[] = {1114464986U, 0U, 1073911312U, 0U, 1U, 0U};
static unsigned int ng25[] = {1584836060U, 0U, 1072784244U, 0U, 1U, 0U};
static unsigned int ng26[] = {3966928002U, 0U, 1072898026U, 0U, 1U, 0U};



static void Initial_83_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 5888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);

LAB4:    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5696);
    xsi_process_wait(t2, 2000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 5696);
    xsi_process_wait(t2, 8000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 66);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 66);
    goto LAB1;

}

static void Always_145_1(char *t0)
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

LAB0:    t1 = (t0 + 6136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 5944);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(145, ng0);
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


extern void work_m_00000000001639569137_1097633966_init()
{
	static char *pe[] = {(void *)Initial_83_0,(void *)Always_145_1};
	xsi_register_didat("work_m_00000000001639569137_1097633966", "isim/tb11_52_isim_beh.exe.sim/work/m_00000000001639569137_1097633966.didat");
	xsi_register_executes(pe);
}
