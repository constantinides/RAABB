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
char *STD_TEXTIO;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
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
    work_m_00000000001776277242_1445421128_init();
    work_m_00000000003940592141_3726420782_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_3435453141_1446275585_init();
    work_a_0089027800_1446275585_init();
    work_a_3381053142_1446275585_init();
    work_a_2190820383_1446275585_init();
    work_a_3525037797_1446275585_init();
    work_a_0078131203_1446275585_init();
    work_a_3441597966_1446275585_init();
    work_a_0032123904_1446275585_init();
    work_a_1257877193_1446275585_init();
    work_a_1772132567_1446275585_init();
    work_a_0254787738_1446275585_init();
    work_a_2910806383_1446275585_init();
    work_a_1533130691_1446275585_init();
    work_a_0649242704_1446275585_init();
    work_a_4232551876_1446275585_init();
    work_a_3029636776_1446275585_init();
    work_a_0381957981_1446275585_init();
    work_a_3772441073_1446275585_init();
    work_a_2634677858_1446275585_init();
    work_a_1207749622_1446275585_init();
    ieee_p_1242562249_init();
    work_a_0391386291_1446275585_init();
    work_a_3247207407_1446275585_init();
    work_a_0810781454_1446275585_init();
    work_a_1237496480_1446275585_init();
    work_a_4058041940_1446275585_init();
    work_a_0695325430_1446275585_init();
    work_a_2436736982_1446275585_init();
    work_a_4068074642_1446275585_init();
    work_a_0388996150_1446275585_init();
    work_a_1634565588_1446275585_init();
    work_a_0336222495_1446275585_init();
    work_a_1115780767_1446275585_init();
    work_a_0978993331_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_3726420782");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
