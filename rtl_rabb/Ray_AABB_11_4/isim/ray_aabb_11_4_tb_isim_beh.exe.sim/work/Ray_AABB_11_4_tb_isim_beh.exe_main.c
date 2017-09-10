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
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000001776277242_0642618567_init();
    work_m_00000000003940592141_3921828636_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_0111598340_1446275585_init();
    work_a_2004041114_1446275585_init();
    work_a_3680017780_1446275585_init();
    work_a_0439704042_1446275585_init();
    work_a_0976762269_1446275585_init();
    work_a_3469357522_1446275585_init();
    work_a_3206534988_1446275585_init();
    work_a_0322205602_1446275585_init();
    work_a_3529093948_1446275585_init();
    work_a_2172871599_1446275585_init();
    work_a_3622607723_1446275585_init();
    work_a_2538710697_1446275585_init();
    work_a_3631638868_1446275585_init();
    work_a_1418715410_1446275585_init();
    work_a_0342124220_1446275585_init();
    work_a_1817693529_1446275585_init();
    work_a_0753594523_1446275585_init();
    work_a_1674395494_1446275585_init();
    work_a_4013209376_1446275585_init();
    work_a_2950639758_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_2086904857_1446275585_init();
    work_a_3166761101_1446275585_init();
    work_a_3472607328_1446275585_init();
    work_a_2715896280_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_1390323287_1446275585_init();
    work_a_1441797956_1446275585_init();
    work_a_2879871186_1446275585_init();
    work_a_0442114026_1446275585_init();
    work_a_2960189900_1446275585_init();
    work_a_1447489003_1446275585_init();
    work_a_1080040885_1446275585_init();
    work_a_4107300914_1446275585_init();
    work_a_0080792841_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_3921828636");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
