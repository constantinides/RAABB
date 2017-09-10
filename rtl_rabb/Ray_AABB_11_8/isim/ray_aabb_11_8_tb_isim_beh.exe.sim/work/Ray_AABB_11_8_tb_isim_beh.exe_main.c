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

char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000000515019447_0805034220_init();
    work_m_00000000003940592141_2736055460_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_0731690964_1446275585_init();
    work_a_0014451724_1446275585_init();
    work_a_3209765324_1446275585_init();
    work_a_3921810170_1446275585_init();
    work_a_2167641980_1446275585_init();
    work_a_3824180482_1446275585_init();
    work_a_3367005914_1446275585_init();
    work_a_2000538394_1446275585_init();
    work_a_0565114924_1446275585_init();
    work_a_0982040910_1446275585_init();
    work_a_2310510018_1446275585_init();
    work_a_1078806155_1446275585_init();
    work_a_0476923455_1446275585_init();
    work_a_0448116992_1446275585_init();
    work_a_2943337565_1446275585_init();
    work_a_0839697392_1446275585_init();
    work_a_4227207353_1446275585_init();
    work_a_2815823885_1446275585_init();
    work_a_2702110514_1446275585_init();
    work_a_0349475439_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_2064048356_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_0525023336_1446275585_init();
    work_a_0249107482_1446275585_init();
    work_a_1946459952_1446275585_init();
    work_a_3200805105_1446275585_init();
    work_a_0451603257_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_2165988953_1446275585_init();
    work_a_0377915369_1446275585_init();
    work_a_2748373109_1446275585_init();
    work_a_3434579309_1446275585_init();
    work_a_2706488587_1446275585_init();
    work_a_1284694572_1446275585_init();
    work_a_1748070773_1446275585_init();
    work_a_1475477797_1446275585_init();
    work_a_3638252271_1446275585_init();
    work_a_3826900334_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_2736055460");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
