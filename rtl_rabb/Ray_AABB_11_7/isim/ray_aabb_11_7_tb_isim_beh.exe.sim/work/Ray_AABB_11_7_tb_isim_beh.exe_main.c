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
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
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
    work_m_00000000000515019447_3208955261_init();
    work_m_00000000003940592141_4218942706_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_1099509778_1446275585_init();
    work_a_0892416607_1446275585_init();
    work_a_0418505804_1446275585_init();
    work_a_0462814978_1446275585_init();
    work_a_1646697653_1446275585_init();
    work_a_2313542340_1446275585_init();
    work_a_4250785929_1446275585_init();
    work_a_3499953818_1446275585_init();
    work_a_3556316628_1446275585_init();
    work_a_3650996871_1446275585_init();
    work_a_0739287507_1446275585_init();
    work_a_0408154019_1446275585_init();
    work_a_3683559387_1446275585_init();
    work_a_0794300243_1446275585_init();
    work_a_1283116948_1446275585_init();
    work_a_2544629729_1446275585_init();
    work_a_2749938065_1446275585_init();
    work_a_1614148073_1446275585_init();
    work_a_2497927521_1446275585_init();
    work_a_4156660134_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_2064048356_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_3002993423_1446275585_init();
    work_a_3057014196_1446275585_init();
    work_a_0049248228_1446275585_init();
    work_a_4194296048_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_0772664739_1446275585_init();
    work_a_2480293617_1446275585_init();
    work_a_4097634087_1446275585_init();
    work_a_1111799490_1446275585_init();
    work_a_4168596304_1446275585_init();
    work_a_3412588508_1446275585_init();
    work_a_0731969901_1446275585_init();
    work_a_2003967781_1446275585_init();
    work_a_2810596256_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_4218942706");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
