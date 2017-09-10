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
char *IEEE_P_3620187407;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_1242562249;
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
    work_m_00000000000515019447_1492969594_init();
    work_m_00000000003940592141_0464028609_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_3708485823_1446275585_init();
    work_a_2773947394_1446275585_init();
    work_a_2144433614_1446275585_init();
    work_a_0249541741_1446275585_init();
    work_a_0001503835_1446275585_init();
    work_a_0359131753_1446275585_init();
    work_a_1832648404_1446275585_init();
    work_a_3082657560_1446275585_init();
    work_a_3333643963_1446275585_init();
    work_a_3148719209_1446275585_init();
    work_a_2206630158_1446275585_init();
    work_a_3244827564_1446275585_init();
    work_a_0643164480_1446275585_init();
    work_a_3208521998_1446275585_init();
    work_a_0776642938_1446275585_init();
    work_a_0943576892_1446275585_init();
    work_a_2060678558_1446275585_init();
    work_a_2649669490_1446275585_init();
    work_a_0075857724_1446275585_init();
    work_a_2515662664_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_4162651144_1446275585_init();
    work_a_2064048356_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_0525023336_1446275585_init();
    work_a_3765088351_1446275585_init();
    work_a_1421240690_1446275585_init();
    work_a_1299940912_1446275585_init();
    work_a_2614070814_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_3879134808_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_2165988953_1446275585_init();
    work_a_0280845729_1446275585_init();
    work_a_1223243421_1446275585_init();
    work_a_2565541962_1446275585_init();
    work_a_0544528428_1446275585_init();
    work_a_0891189021_1446275585_init();
    work_a_3218338093_1446275585_init();
    work_a_4181716636_1446275585_init();
    work_a_3183241641_1446275585_init();
    work_a_0872111414_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_0464028609");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
