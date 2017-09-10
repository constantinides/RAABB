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
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003647086056_0285162525_init();
    work_m_00000000003940391515_4195404533_init();
    work_m_00000000000710311090_1772860128_init();
    work_m_00000000001332760287_3551311824_init();
    work_m_00000000000725554080_2827706269_init();
    work_m_00000000001639569137_1097633966_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_3454973265_1446275585_init();
    work_a_3616856963_1446275585_init();
    work_a_3497306386_1446275585_init();
    work_a_4272300609_1446275585_init();
    work_a_4173691667_1446275585_init();
    work_a_3022037914_1446275585_init();
    work_a_1985340259_1446275585_init();
    work_a_1815055793_1446275585_init();
    work_a_1808793376_1446275585_init();
    work_a_1159558259_1446275585_init();
    work_a_1132342561_1446275585_init();
    work_a_0261879208_1446275585_init();
    ieee_p_1242562249_init();
    work_a_3221914289_1446275585_init();
    work_a_1338787647_1446275585_init();
    work_a_3815950644_1446275585_init();
    work_a_0737455740_1446275585_init();
    work_a_1231152790_1446275585_init();
    work_a_1525621480_1446275585_init();
    work_a_3879134808_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2127855705_1446275585_init();
    work_a_3210370969_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_2165988953_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_2656643264_1446275585_init();
    work_a_0649462444_1446275585_init();
    work_a_3090964657_1446275585_init();
    work_a_4134954620_1446275585_init();
    work_a_4281450351_1446275585_init();
    work_a_2473686505_1446275585_init();
    work_a_0609592591_1446275585_init();
    work_a_0213664585_1446275585_init();
    work_a_1732780963_1446275585_init();
    work_a_1388409668_1446275585_init();
    work_a_1134973498_1446275585_init();
    work_a_3233658582_1446275585_init();
    work_a_1785652936_1446275585_init();
    work_a_3288758105_1446275585_init();
    work_a_1860048167_1446275585_init();
    work_a_2767220314_1446275585_init();
    work_a_1027886755_1446275585_init();
    work_a_2866286162_1446275585_init();
    work_a_3705200840_1446275585_init();
    work_a_3210286789_1446275585_init();
    work_a_1305292878_1446275585_init();
    work_a_2250844432_1446275585_init();
    work_a_0569822505_1446275585_init();
    work_a_1744633191_1446275585_init();
    work_a_0566226492_1446275585_init();
    work_a_1058479893_1446275585_init();
    work_a_0967878884_1446275585_init();


    xsi_register_tops("work_m_00000000001639569137_1097633966");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
