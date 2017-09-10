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
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *STD_TEXTIO;
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
    work_m_00000000003340926460_2429417932_init();
    work_m_00000000000328252045_1746916048_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_0949719008_1446275585_init();
    work_a_2898113281_1446275585_init();
    work_a_2857145592_1446275585_init();
    work_a_1254570482_1446275585_init();
    work_a_3071440408_1446275585_init();
    work_a_4042745142_1446275585_init();
    work_a_1691441623_1446275585_init();
    work_a_1646296622_1446275585_init();
    work_a_2192298788_1446275585_init();
    work_a_0212410410_1446275585_init();
    work_a_3333936067_1446275585_init();
    work_a_2642611104_1446275585_init();
    work_a_3690281826_1446275585_init();
    work_a_2745091426_1446275585_init();
    work_a_4216666645_1446275585_init();
    work_a_2097972721_1446275585_init();
    work_a_0641228178_1446275585_init();
    work_a_1615752528_1446275585_init();
    work_a_0405115728_1446275585_init();
    work_a_1089367079_1446275585_init();
    ieee_p_1242562249_init();
    work_a_0185480855_1446275585_init();
    work_a_1250357637_1446275585_init();
    work_a_0957181235_1446275585_init();
    work_a_1626358285_1446275585_init();
    work_a_2403772773_1446275585_init();
    work_a_1065213910_1446275585_init();
    work_a_1132167015_1446275585_init();
    work_a_3679130687_1446275585_init();
    work_a_1611690236_1446275585_init();
    work_a_4178751749_1446275585_init();
    work_a_2782232821_1446275585_init();
    work_a_1821049198_1446275585_init();
    work_a_0253136431_1446275585_init();


    xsi_register_tops("work_m_00000000000328252045_1746916048");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
