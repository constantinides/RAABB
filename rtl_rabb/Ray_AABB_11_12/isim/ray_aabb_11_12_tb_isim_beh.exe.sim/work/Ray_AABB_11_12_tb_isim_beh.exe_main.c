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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *STD_STANDARD;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000003340926460_3437730457_init();
    work_m_00000000000328252045_0434039131_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_2559099406_1446275585_init();
    work_a_4217491191_1446275585_init();
    work_a_3150814547_1446275585_init();
    work_a_3277227044_1446275585_init();
    work_a_0064660844_1446275585_init();
    work_a_1357129944_1446275585_init();
    work_a_0856499233_1446275585_init();
    work_a_1939961733_1446275585_init();
    work_a_0188378866_1446275585_init();
    work_a_3093427038_1446275585_init();
    work_a_3742909731_1446275585_init();
    work_a_0692836564_1446275585_init();
    work_a_1542966457_1446275585_init();
    work_a_3775460347_1446275585_init();
    work_a_1335748961_1446275585_init();
    work_a_1688408849_1446275585_init();
    work_a_2465238758_1446275585_init();
    work_a_3763116683_1446275585_init();
    work_a_1521722825_1446275585_init();
    work_a_4096180051_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1440902237_1446275585_init();
    work_a_2116254179_1446275585_init();
    work_a_3560477049_1446275585_init();
    work_a_0872149754_1446275585_init();
    work_a_3534245759_1446275585_init();
    work_a_1870907211_1446275585_init();
    work_a_3660093242_1446275585_init();
    work_a_2170125463_1446275585_init();
    work_a_3621850208_1446275585_init();
    work_a_2520168886_1446275585_init();
    work_a_2002600893_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_0434039131");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
