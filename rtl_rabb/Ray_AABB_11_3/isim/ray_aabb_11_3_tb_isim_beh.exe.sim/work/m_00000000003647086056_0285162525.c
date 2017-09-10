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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_3/less_than.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_35_0(char *t0)
{
    char t13[8];
    char t15[8];
    char t29[8];
    char t43[8];
    char t52[8];
    char t68[8];
    char t82[8];
    char t91[8];
    char t107[8];
    char t115[8];
    char t147[8];
    char t155[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    char *t114;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    char *t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    int t139;
    int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    char *t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    char *t154;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    int t179;
    int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    char *t194;

LAB0:    t1 = (t0 + 3144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3464);
    *((int *)t2) = 1;
    t3 = (t0 + 3176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1344U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(41, ng0);

LAB10:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1824U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 14);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 14);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t11 = (t13 + 4);
    t12 = (t5 + 4);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t5);
    t18 = (t16 ^ t17);
    t19 = *((unsigned int *)t11);
    t20 = *((unsigned int *)t12);
    t21 = (t19 ^ t20);
    t22 = (t18 | t21);
    t23 = *((unsigned int *)t11);
    t24 = *((unsigned int *)t12);
    t25 = (t23 | t24);
    t26 = (~(t25));
    t27 = (t22 & t26);
    if (t27 != 0)
        goto LAB14;

LAB11:    if (t25 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t15) = 1;

LAB14:    memset(t29, 0, 8);
    t30 = (t15 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t15);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t30) != 0)
        goto LAB17;

LAB18:    t37 = (t29 + 4);
    t38 = *((unsigned int *)t29);
    t39 = *((unsigned int *)t37);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB19;

LAB20:    memcpy(t155, t29, 8);

LAB21:    t187 = (t155 + 4);
    t188 = *((unsigned int *)t187);
    t189 = (~(t188));
    t190 = *((unsigned int *)t155);
    t191 = (t190 & t189);
    t192 = (t191 != 0);
    if (t192 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(46, ng0);

LAB55:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2224);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB53:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(37, ng0);

LAB9:    xsi_set_current_line(38, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2224);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    goto LAB8;

LAB13:    t28 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t29) = 1;
    goto LAB18;

LAB17:    t36 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB18;

LAB19:    t41 = (t0 + 1824U);
    t42 = *((char **)t41);
    memset(t43, 0, 8);
    t41 = (t43 + 4);
    t44 = (t42 + 4);
    t45 = *((unsigned int *)t42);
    t46 = (t45 >> 16);
    t47 = (t46 & 1);
    *((unsigned int *)t43) = t47;
    t48 = *((unsigned int *)t44);
    t49 = (t48 >> 16);
    t50 = (t49 & 1);
    *((unsigned int *)t41) = t50;
    t51 = ((char*)((ng1)));
    memset(t52, 0, 8);
    t53 = (t43 + 4);
    t54 = (t51 + 4);
    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t51);
    t57 = (t55 ^ t56);
    t58 = *((unsigned int *)t53);
    t59 = *((unsigned int *)t54);
    t60 = (t58 ^ t59);
    t61 = (t57 | t60);
    t62 = *((unsigned int *)t53);
    t63 = *((unsigned int *)t54);
    t64 = (t62 | t63);
    t65 = (~(t64));
    t66 = (t61 & t65);
    if (t66 != 0)
        goto LAB25;

LAB22:    if (t64 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t52) = 1;

LAB25:    memset(t68, 0, 8);
    t69 = (t52 + 4);
    t70 = *((unsigned int *)t69);
    t71 = (~(t70));
    t72 = *((unsigned int *)t52);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t69) != 0)
        goto LAB28;

LAB29:    t76 = (t68 + 4);
    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t76);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB30;

LAB31:    memcpy(t115, t68, 8);

LAB32:    memset(t147, 0, 8);
    t148 = (t115 + 4);
    t149 = *((unsigned int *)t148);
    t150 = (~(t149));
    t151 = *((unsigned int *)t115);
    t152 = (t151 & t150);
    t153 = (t152 & 1U);
    if (t153 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t148) != 0)
        goto LAB46;

LAB47:    t156 = *((unsigned int *)t29);
    t157 = *((unsigned int *)t147);
    t158 = (t156 & t157);
    *((unsigned int *)t155) = t158;
    t159 = (t29 + 4);
    t160 = (t147 + 4);
    t161 = (t155 + 4);
    t162 = *((unsigned int *)t159);
    t163 = *((unsigned int *)t160);
    t164 = (t162 | t163);
    *((unsigned int *)t161) = t164;
    t165 = *((unsigned int *)t161);
    t166 = (t165 != 0);
    if (t166 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB21;

LAB24:    t67 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t68) = 1;
    goto LAB29;

LAB28:    t75 = (t68 + 4);
    *((unsigned int *)t68) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB29;

LAB30:    t80 = (t0 + 1824U);
    t81 = *((char **)t80);
    memset(t82, 0, 8);
    t80 = (t82 + 4);
    t83 = (t81 + 4);
    t84 = *((unsigned int *)t81);
    t85 = (t84 >> 15);
    t86 = (t85 & 1);
    *((unsigned int *)t82) = t86;
    t87 = *((unsigned int *)t83);
    t88 = (t87 >> 15);
    t89 = (t88 & 1);
    *((unsigned int *)t80) = t89;
    t90 = ((char*)((ng2)));
    memset(t91, 0, 8);
    t92 = (t82 + 4);
    t93 = (t90 + 4);
    t94 = *((unsigned int *)t82);
    t95 = *((unsigned int *)t90);
    t96 = (t94 ^ t95);
    t97 = *((unsigned int *)t92);
    t98 = *((unsigned int *)t93);
    t99 = (t97 ^ t98);
    t100 = (t96 | t99);
    t101 = *((unsigned int *)t92);
    t102 = *((unsigned int *)t93);
    t103 = (t101 | t102);
    t104 = (~(t103));
    t105 = (t100 & t104);
    if (t105 != 0)
        goto LAB36;

LAB33:    if (t103 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t91) = 1;

LAB36:    memset(t107, 0, 8);
    t108 = (t91 + 4);
    t109 = *((unsigned int *)t108);
    t110 = (~(t109));
    t111 = *((unsigned int *)t91);
    t112 = (t111 & t110);
    t113 = (t112 & 1U);
    if (t113 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t108) != 0)
        goto LAB39;

LAB40:    t116 = *((unsigned int *)t68);
    t117 = *((unsigned int *)t107);
    t118 = (t116 & t117);
    *((unsigned int *)t115) = t118;
    t119 = (t68 + 4);
    t120 = (t107 + 4);
    t121 = (t115 + 4);
    t122 = *((unsigned int *)t119);
    t123 = *((unsigned int *)t120);
    t124 = (t122 | t123);
    *((unsigned int *)t121) = t124;
    t125 = *((unsigned int *)t121);
    t126 = (t125 != 0);
    if (t126 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB32;

LAB35:    t106 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t106) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t107) = 1;
    goto LAB40;

LAB39:    t114 = (t107 + 4);
    *((unsigned int *)t107) = 1;
    *((unsigned int *)t114) = 1;
    goto LAB40;

LAB41:    t127 = *((unsigned int *)t115);
    t128 = *((unsigned int *)t121);
    *((unsigned int *)t115) = (t127 | t128);
    t129 = (t68 + 4);
    t130 = (t107 + 4);
    t131 = *((unsigned int *)t68);
    t132 = (~(t131));
    t133 = *((unsigned int *)t129);
    t134 = (~(t133));
    t135 = *((unsigned int *)t107);
    t136 = (~(t135));
    t137 = *((unsigned int *)t130);
    t138 = (~(t137));
    t139 = (t132 & t134);
    t140 = (t136 & t138);
    t141 = (~(t139));
    t142 = (~(t140));
    t143 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t143 & t141);
    t144 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t144 & t142);
    t145 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t145 & t141);
    t146 = *((unsigned int *)t115);
    *((unsigned int *)t115) = (t146 & t142);
    goto LAB43;

LAB44:    *((unsigned int *)t147) = 1;
    goto LAB47;

LAB46:    t154 = (t147 + 4);
    *((unsigned int *)t147) = 1;
    *((unsigned int *)t154) = 1;
    goto LAB47;

LAB48:    t167 = *((unsigned int *)t155);
    t168 = *((unsigned int *)t161);
    *((unsigned int *)t155) = (t167 | t168);
    t169 = (t29 + 4);
    t170 = (t147 + 4);
    t171 = *((unsigned int *)t29);
    t172 = (~(t171));
    t173 = *((unsigned int *)t169);
    t174 = (~(t173));
    t175 = *((unsigned int *)t147);
    t176 = (~(t175));
    t177 = *((unsigned int *)t170);
    t178 = (~(t177));
    t179 = (t172 & t174);
    t180 = (t176 & t178);
    t181 = (~(t179));
    t182 = (~(t180));
    t183 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t183 & t181);
    t184 = *((unsigned int *)t161);
    *((unsigned int *)t161) = (t184 & t182);
    t185 = *((unsigned int *)t155);
    *((unsigned int *)t155) = (t185 & t181);
    t186 = *((unsigned int *)t155);
    *((unsigned int *)t155) = (t186 & t182);
    goto LAB50;

LAB51:    xsi_set_current_line(43, ng0);

LAB54:    xsi_set_current_line(44, ng0);
    t193 = ((char*)((ng2)));
    t194 = (t0 + 2224);
    xsi_vlogvar_assign_value(t194, t193, 0, 0, 1);
    goto LAB53;

}


extern void work_m_00000000003647086056_0285162525_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000003647086056_0285162525", "isim/Ray_AABB_11_3_tb_isim_beh.exe.sim/work/m_00000000003647086056_0285162525.didat");
	xsi_register_executes(pe);
}
