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
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
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
    work_m_00000000003340926460_3152062991_init();
    work_m_00000000000328252045_2707590718_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_2922125798_1446275585_init();
    work_a_1592418041_1446275585_init();
    work_a_1176303254_1446275585_init();
    work_a_0608903859_1446275585_init();
    work_a_2197798987_1446275585_init();
    work_a_1715532592_1446275585_init();
    work_a_2525410351_1446275585_init();
    work_a_2389711936_1446275585_init();
    work_a_3962030181_1446275585_init();
    work_a_0960796281_1446275585_init();
    work_a_2022267785_1446275585_init();
    work_a_2825829875_1446275585_init();
    work_a_3898962851_1446275585_init();
    work_a_1149461493_1446275585_init();
    work_a_3468201030_1446275585_init();
    work_a_3274837435_1446275585_init();
    work_a_0332786625_1446275585_init();
    work_a_1407067537_1446275585_init();
    work_a_4281873863_1446275585_init();
    work_a_1963186804_1446275585_init();
    ieee_p_1242562249_init();
    work_a_3780548825_1446275585_init();
    work_a_1271844784_1446275585_init();
    work_a_1428026462_1446275585_init();
    work_a_3973069289_1446275585_init();
    work_a_2097218229_1446275585_init();
    work_a_4003897964_1446275585_init();
    work_a_2333612078_1446275585_init();
    work_a_1455160527_1446275585_init();
    work_a_0760818971_1446275585_init();
    work_a_4082205424_1446275585_init();
    work_a_2696922085_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_2707590718");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
