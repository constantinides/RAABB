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
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
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
    work_m_00000000003340926460_0629424044_init();
    work_m_00000000000328252045_1018541703_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_3292110368_1446275585_init();
    work_a_3165729254_1446275585_init();
    work_a_3787207446_1446275585_init();
    work_a_2845930537_1446275585_init();
    work_a_3018323772_1446275585_init();
    work_a_0206927094_1446275585_init();
    work_a_1960696624_1446275585_init();
    work_a_0701553088_1446275585_init();
    work_a_1640865535_1446275585_init();
    work_a_0140288270_1446275585_init();
    work_a_3710807960_1446275585_init();
    work_a_1266398778_1446275585_init();
    work_a_0797348423_1446275585_init();
    work_a_2799176938_1446275585_init();
    work_a_4288723761_1446275585_init();
    work_a_1721055658_1446275585_init();
    work_a_4039172104_1446275585_init();
    work_a_2487075957_1446275585_init();
    work_a_0493050584_1446275585_init();
    work_a_1142680835_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1925748490_1446275585_init();
    work_a_3997523902_1446275585_init();
    work_a_1678099241_1446275585_init();
    work_a_2820518338_1446275585_init();
    work_a_0409352691_1446275585_init();
    work_a_3753809179_1446275585_init();
    work_a_1073561938_1446275585_init();
    work_a_0354707969_1446275585_init();
    work_a_1359730003_1446275585_init();
    work_a_2412704465_1446275585_init();
    work_a_3934341294_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_1018541703");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
