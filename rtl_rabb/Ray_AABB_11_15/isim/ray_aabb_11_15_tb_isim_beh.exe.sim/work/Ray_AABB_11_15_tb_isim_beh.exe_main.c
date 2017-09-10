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

char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000003340926460_1384320826_init();
    work_m_00000000000328252045_2215236066_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_2914111270_1446275585_init();
    work_a_0423272936_1446275585_init();
    work_a_2535303999_1446275585_init();
    work_a_1320997566_1446275585_init();
    work_a_0851612187_1446275585_init();
    work_a_1708991984_1446275585_init();
    work_a_3512093502_1446275585_init();
    work_a_1601257961_1446275585_init();
    work_a_2261792872_1446275585_init();
    work_a_2306458665_1446275585_init();
    work_a_1404933899_1446275585_init();
    work_a_3395212061_1446275585_init();
    work_a_1381968647_1446275585_init();
    work_a_0055811300_1446275585_init();
    work_a_2122702358_1446275585_init();
    work_a_3892756793_1446275585_init();
    work_a_1910867247_1446275585_init();
    work_a_3924065589_1446275585_init();
    work_a_3102264022_1446275585_init();
    work_a_3309209636_1446275585_init();
    ieee_p_1242562249_init();
    work_a_2824262121_1446275585_init();
    work_a_0203305121_1446275585_init();
    work_a_3844122126_1446275585_init();
    work_a_3587736017_1446275585_init();
    work_a_1694058962_1446275585_init();
    work_a_1587277884_1446275585_init();
    work_a_3647651056_1446275585_init();
    work_a_3267816025_1446275585_init();
    work_a_4053814839_1446275585_init();
    work_a_3936995735_1446275585_init();
    work_a_1029949686_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_2215236066");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
