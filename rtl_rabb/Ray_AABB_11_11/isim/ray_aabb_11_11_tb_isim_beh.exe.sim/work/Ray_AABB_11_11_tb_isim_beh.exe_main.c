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
char *IEEE_P_2592010699;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
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
    work_m_00000000003340926460_1441712931_init();
    work_m_00000000000328252045_0191579829_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_4070393288_1446275585_init();
    work_a_3465312420_1446275585_init();
    work_a_0476928211_1446275585_init();
    work_a_0822176220_1446275585_init();
    work_a_1539574852_1446275585_init();
    work_a_0988917534_1446275585_init();
    work_a_0115380850_1446275585_init();
    work_a_3556880901_1446275585_init();
    work_a_4184703754_1446275585_init();
    work_a_3766442614_1446275585_init();
    work_a_2059366706_1446275585_init();
    work_a_1901425148_1446275585_init();
    work_a_2618568029_1446275585_init();
    work_a_3571795368_1446275585_init();
    work_a_0394477641_1446275585_init();
    work_a_3238274816_1446275585_init();
    work_a_3404605390_1446275585_init();
    work_a_0665811823_1446275585_init();
    work_a_1868436378_1446275585_init();
    work_a_2889356923_1446275585_init();
    ieee_p_1242562249_init();
    work_a_3825111687_1446275585_init();
    work_a_3685280237_1446275585_init();
    work_a_2351315025_1446275585_init();
    work_a_0452309287_1446275585_init();
    work_a_3083826233_1446275585_init();
    work_a_0933064291_1446275585_init();
    work_a_1858981446_1446275585_init();
    work_a_0571472446_1446275585_init();
    work_a_2880697384_1446275585_init();
    work_a_0966784124_1446275585_init();
    work_a_3557541140_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_0191579829");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
