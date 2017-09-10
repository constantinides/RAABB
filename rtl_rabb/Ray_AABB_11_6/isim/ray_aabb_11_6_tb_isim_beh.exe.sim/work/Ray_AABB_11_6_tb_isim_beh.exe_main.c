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

char *IEEE_P_1242562249;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;
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
    work_m_00000000000515019447_3359897067_init();
    work_m_00000000003940592141_1137415063_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_0141723257_1446275585_init();
    work_a_2428150353_1446275585_init();
    work_a_0727821453_1446275585_init();
    work_a_4236794261_1446275585_init();
    work_a_3808688530_1446275585_init();
    work_a_3223219375_1446275585_init();
    work_a_1490438279_1446275585_init();
    work_a_3809298011_1446275585_init();
    work_a_0887403331_1446275585_init();
    work_a_1488498592_1446275585_init();
    work_a_3627668579_1446275585_init();
    work_a_2574682756_1446275585_init();
    work_a_1222345654_1446275585_init();
    work_a_2329124701_1446275585_init();
    work_a_3445598899_1446275585_init();
    work_a_1669497425_1446275585_init();
    work_a_0583916726_1446275585_init();
    work_a_4083209604_1446275585_init();
    work_a_0828950895_1446275585_init();
    work_a_1994718337_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_2064048356_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_0525023336_1446275585_init();
    work_a_1586136040_1446275585_init();
    work_a_1459282351_1446275585_init();
    work_a_4086979707_1446275585_init();
    work_a_2027587031_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_2165988953_1446275585_init();
    work_a_2678477355_1446275585_init();
    work_a_0588059508_1446275585_init();
    work_a_0595872022_1446275585_init();
    work_a_3277968357_1446275585_init();
    work_a_0660997472_1446275585_init();
    work_a_0478508932_1446275585_init();
    work_a_2941776309_1446275585_init();
    work_a_0303375459_1446275585_init();
    work_a_1885654008_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_1137415063");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
