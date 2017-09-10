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
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
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
    work_m_00000000000515019447_1363846225_init();
    work_m_00000000003940592141_1367227513_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_2306557761_1446275585_init();
    work_a_3539512724_1446275585_init();
    work_a_2361485581_1446275585_init();
    work_a_4247322493_1446275585_init();
    work_a_3139260602_1446275585_init();
    work_a_1092070807_1446275585_init();
    work_a_0445925186_1446275585_init();
    work_a_1152222171_1446275585_init();
    work_a_0893654443_1446275585_init();
    work_a_0010880648_1446275585_init();
    work_a_1877877175_1446275585_init();
    work_a_0376750990_1446275585_init();
    work_a_2402837074_1446275585_init();
    work_a_4043600156_1446275585_init();
    work_a_2504065947_1446275585_init();
    work_a_3562370949_1446275585_init();
    work_a_2916062652_1446275585_init();
    work_a_0881013856_1446275585_init();
    work_a_1254041390_1446275585_init();
    work_a_0788157865_1446275585_init();
    ieee_p_1242562249_init();
    work_a_1149954397_1446275585_init();
    work_a_3580183317_1446275585_init();
    work_a_3655873559_1446275585_init();
    work_a_4163742450_1446275585_init();
    work_a_0748726143_1446275585_init();
    work_a_0549727487_1446275585_init();
    work_a_3221914289_1446275585_init();
    work_a_2247832400_1446275585_init();
    work_a_0934911249_1446275585_init();
    work_a_0514090264_1446275585_init();
    work_a_3610781939_1446275585_init();
    work_a_2608822989_1446275585_init();
    work_a_4046551077_1446275585_init();
    work_a_2175036851_1446275585_init();
    work_a_3540322813_1446275585_init();
    work_a_2444708724_1446275585_init();
    work_a_3543289169_1446275585_init();


    xsi_register_tops("work_m_00000000003940592141_1367227513");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
