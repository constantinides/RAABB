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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_23/Ray_AABB_11_23_tb.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {4281712525U, 0U, 9U, 0U};
static unsigned int ng4[] = {4271657554U, 0U, 9U, 0U};
static unsigned int ng5[] = {4263591276U, 0U, 9U, 0U};
static unsigned int ng6[] = {4259067116U, 0U, 9U, 0U};
static unsigned int ng7[] = {4254944390U, 0U, 9U, 0U};
static unsigned int ng8[] = {4276878145U, 0U, 13U, 0U};
static unsigned int ng9[] = {4276865089U, 0U, 9U, 0U};
static unsigned int ng10[] = {4267332685U, 0U, 9U, 0U};
static unsigned int ng11[] = {4251630731U, 0U, 13U, 0U};
static unsigned int ng12[] = {4290980848U, 0U, 13U, 0U};
static unsigned int ng13[] = {8282726U, 0U, 14U, 0U};
static unsigned int ng14[] = {4289418392U, 0U, 13U, 0U};
static unsigned int ng15[] = {4281798136U, 0U, 13U, 0U};
static unsigned int ng16[] = {4247909414U, 0U, 9U, 0U};
static unsigned int ng17[] = {4275899500U, 0U, 9U, 0U};
static unsigned int ng18[] = {4282814268U, 0U, 13U, 0U};
static unsigned int ng19[] = {4258591495U, 0U, 9U, 0U};
static unsigned int ng20[] = {4281802573U, 0U, 9U, 0U};
static unsigned int ng21[] = {4249391602U, 0U, 13U, 0U};
static unsigned int ng22[] = {4281755221U, 0U, 9U, 0U};
static unsigned int ng23[] = {4282176353U, 0U, 9U, 0U};
static unsigned int ng24[] = {1355906U, 0U, 10U, 0U};
static unsigned int ng25[] = {4287306658U, 0U, 9U, 0U};
static unsigned int ng26[] = {4288216919U, 0U, 9U, 0U};
static unsigned int ng27[] = {4210875616U, 0U, 13U, 0U};
static unsigned int ng28[] = {4134994760U, 0U, 9U, 0U};
static unsigned int ng29[] = {4224723992U, 0U, 13U, 0U};
static unsigned int ng30[] = {4220248080U, 0U, 13U, 0U};
static unsigned int ng31[] = {4135380264U, 0U, 13U, 0U};
static unsigned int ng32[] = {4017485184U, 0U, 13U, 0U};
static unsigned int ng33[] = {4162726072U, 0U, 13U, 0U};
static unsigned int ng34[] = {4163712712U, 0U, 9U, 0U};
static unsigned int ng35[] = {4207934608U, 0U, 9U, 0U};
static unsigned int ng36[] = {4230178000U, 0U, 9U, 0U};
static unsigned int ng37[] = {27943040U, 0U, 14U, 0U};
static unsigned int ng38[] = {4284568464U, 0U, 13U, 0U};



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
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
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
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 37);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
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
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5696);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng27)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng28)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng29)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng30)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng33)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng34)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng35)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(160, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(161, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng36)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng36)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng37)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng37)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(167, ng0);
    t2 = ((char*)((ng38)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(168, ng0);
    t2 = ((char*)((ng38)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 5696);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(171, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(174, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(185, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(188, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 5696);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(210, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(212, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3688);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(213, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4168);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    xsi_set_current_line(220, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 37);
    goto LAB1;

}

static void Always_224_1(char *t0)
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

LAB2:    xsi_set_current_line(224, ng0);
    t2 = (t0 + 5944);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(224, ng0);
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


extern void work_m_00000000001639569137_3871536366_init()
{
	static char *pe[] = {(void *)Initial_83_0,(void *)Always_224_1};
	xsi_register_didat("work_m_00000000001639569137_3871536366", "isim/Ray_AABB_11_23_tb_isim_beh.exe.sim/work/m_00000000001639569137_3871536366.didat");
	xsi_register_executes(pe);
}
