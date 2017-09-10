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
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
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
    work_m_00000000001776277242_3089695076_init();
    work_m_00000000003940592141_1947558821_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_2276399676_1446275585_init();
    work_a_2502447749_1446275585_init();
    work_a_0298030701_1446275585_init();
    work_a_2547978096_1446275585_init();
    work_a_0186647274_1446275585_init();
    work_a_1338241258_1446275585_init();
    work_a_1564784723_1446275585_init();
    work_a_3652156603_1446275585_init();
    work_a_1605625254_1446275585_init();
    work_a_2962969816_1446275585_init();
    work_a_1614507711_1446275585_init();
    work_a_1950657888_1446275585_init();
    work_a_4190108325_1446275585_init();
    work_a_3067383309_1446275585_init();
    work_a_0628904395_1446275585_init();
    work_a_3682613389_1446275585_init();
    work_a_3489659730_1446275585_init();
    work_a_1107602583_1446275585_init();
    work_a_0225433663_1446275585_init();
    work_a_2663843833_1446275585_init();
    ieee_p_1242562249_init();
    work_a_3693172000_1446275585_init();
    work_a_0246854985_1446275585_init();
    work_a_2687872339_1446275585_init();
    work_a_2432269999_1446275585_init();
    work_a_0646389120_1446275585_init();
    work_a_3791950693_1446275585_init();
    work_a_1542705498_1446275585_init();
    work_a_0725756061_1446275585_init();
    work_a_1713869961_1446275585_init();
    work_a_0366574373_1446275585_init();
    work_a_0826937088_1446275585_init();
    work_a_2286878739_1446275585_init();
    work_a_1324238402_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_1947558821");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
