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

char *IEEE_P_3499444699;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000003478801067_3475911154_init();
    work_m_00000000003940592141_3433628864_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_1305287661_1446275585_init();
    work_a_0816038539_1446275585_init();
    work_a_3897513255_1446275585_init();
    work_a_1891805671_1446275585_init();
    work_a_2315610061_1446275585_init();
    work_a_2241982779_1446275585_init();
    work_a_4174325853_1446275585_init();
    work_a_0539213809_1446275585_init();
    work_a_3098428209_1446275585_init();
    work_a_0834548223_1446275585_init();
    work_a_3103274318_1446275585_init();
    work_a_4116826183_1446275585_init();
    work_a_0637989879_1446275585_init();
    work_a_0325000707_1446275585_init();
    work_a_2757309676_1446275585_init();
    work_a_0054748028_1446275585_init();
    work_a_1322950261_1446275585_init();
    work_a_2646451653_1446275585_init();
    work_a_2833532977_1446275585_init();
    work_a_0534930142_1446275585_init();
    ieee_p_1242562249_init();
    work_a_3649374251_1446275585_init();
    work_a_3808907998_1446275585_init();
    work_a_2513967872_1446275585_init();
    work_a_0299637640_1446275585_init();
    work_a_3614545650_1446275585_init();
    work_a_3886075502_1446275585_init();
    work_a_4099579024_1446275585_init();
    work_a_2858896826_1446275585_init();
    work_a_3245924723_1446275585_init();
    work_a_3258710909_1446275585_init();
    work_a_2409456987_1446275585_init();
    work_a_3978836821_1446275585_init();
    work_a_2567751194_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_3433628864");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
