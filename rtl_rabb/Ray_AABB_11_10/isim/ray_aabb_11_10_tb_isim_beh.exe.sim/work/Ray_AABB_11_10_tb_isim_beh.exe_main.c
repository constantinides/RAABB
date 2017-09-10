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

char *IEEE_P_1242562249;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
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
    work_m_00000000003991397060_0585759669_init();
    work_m_00000000003940592141_3017220560_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_3072231289_1446275585_init();
    work_a_1795680426_1446275585_init();
    work_a_3631329358_1446275585_init();
    work_a_3592212299_1446275585_init();
    work_a_3672205667_1446275585_init();
    work_a_2138205615_1446275585_init();
    work_a_2741699196_1446275585_init();
    work_a_0270359192_1446275585_init();
    work_a_0510666141_1446275585_init();
    work_a_1633304401_1446275585_init();
    work_a_0639743263_1446275585_init();
    work_a_4033877211_1446275585_init();
    work_a_3786803364_1446275585_init();
    work_a_1903089062_1446275585_init();
    work_a_2527470958_1446275585_init();
    work_a_2644173613_1446275585_init();
    work_a_1271612137_1446275585_init();
    work_a_1510825622_1446275585_init();
    work_a_3402990484_1446275585_init();
    work_a_0756904796_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_4162651144_1446275585_init();
    work_a_2064048356_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_2264864913_1446275585_init();
    work_a_0525023336_1446275585_init();
    work_a_0419978497_1446275585_init();
    work_a_3802830760_1446275585_init();
    work_a_1386507025_1446275585_init();
    work_a_0218324342_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_3879134808_1446275585_init();
    work_a_3680433187_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_4066763168_1446275585_init();
    work_a_2165988953_1446275585_init();
    work_a_3774284675_1446275585_init();
    work_a_1642558784_1446275585_init();
    work_a_1949035102_1446275585_init();
    work_a_3065514820_1446275585_init();
    work_a_2180722273_1446275585_init();
    work_a_4125981286_1446275585_init();
    work_a_2238518996_1446275585_init();
    work_a_1559809850_1446275585_init();
    work_a_0065619276_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_3017220560");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
