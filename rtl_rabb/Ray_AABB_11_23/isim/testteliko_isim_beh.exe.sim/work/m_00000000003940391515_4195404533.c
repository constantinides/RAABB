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
static const char *ng0 = "C:/Users/George/Dropbox/Imperial_College_London/Thesis/RTL/flopoco/Ray_AABB_11_23/greater_than.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};



static void Always_35_0(char *t0)
{
    char t13[8];
    char t15[8];
    char t30[8];
    char t44[8];
    char t54[8];
    char t70[8];
    char t84[8];
    char t94[8];
    char t110[8];
    char t118[8];
    char t150[8];
    char t158[8];
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
    char *t16;
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
    unsigned int t28;
    char *t29;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    char *t56;
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
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    int t142;
    int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    char *t157;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    int t182;
    int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    char *t196;
    char *t197;

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
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 2);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t11 = ((char*)((ng1)));
    memset(t15, 0, 8);
    t12 = (t13 + 4);
    t16 = (t11 + 4);
    t17 = *((unsigned int *)t13);
    t18 = *((unsigned int *)t11);
    t19 = (t17 ^ t18);
    t20 = *((unsigned int *)t12);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = (t19 | t22);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t16);
    t26 = (t24 | t25);
    t27 = (~(t26));
    t28 = (t23 & t27);
    if (t28 != 0)
        goto LAB14;

LAB11:    if (t26 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t15) = 1;

LAB14:    memset(t30, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t31) != 0)
        goto LAB17;

LAB18:    t38 = (t30 + 4);
    t39 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB19;

LAB20:    memcpy(t158, t30, 8);

LAB21:    t190 = (t158 + 4);
    t191 = *((unsigned int *)t190);
    t192 = (~(t191));
    t193 = *((unsigned int *)t158);
    t194 = (t193 & t192);
    t195 = (t194 != 0);
    if (t195 > 0)
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

LAB13:    t29 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB14;

LAB15:    *((unsigned int *)t30) = 1;
    goto LAB18;

LAB17:    t37 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB18;

LAB19:    t42 = (t0 + 1824U);
    t43 = *((char **)t42);
    memset(t44, 0, 8);
    t42 = (t44 + 4);
    t45 = (t43 + 8);
    t46 = (t43 + 12);
    t47 = *((unsigned int *)t45);
    t48 = (t47 >> 4);
    t49 = (t48 & 1);
    *((unsigned int *)t44) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 >> 4);
    t52 = (t51 & 1);
    *((unsigned int *)t42) = t52;
    t53 = ((char*)((ng1)));
    memset(t54, 0, 8);
    t55 = (t44 + 4);
    t56 = (t53 + 4);
    t57 = *((unsigned int *)t44);
    t58 = *((unsigned int *)t53);
    t59 = (t57 ^ t58);
    t60 = *((unsigned int *)t55);
    t61 = *((unsigned int *)t56);
    t62 = (t60 ^ t61);
    t63 = (t59 | t62);
    t64 = *((unsigned int *)t55);
    t65 = *((unsigned int *)t56);
    t66 = (t64 | t65);
    t67 = (~(t66));
    t68 = (t63 & t67);
    if (t68 != 0)
        goto LAB25;

LAB22:    if (t66 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t54) = 1;

LAB25:    memset(t70, 0, 8);
    t71 = (t54 + 4);
    t72 = *((unsigned int *)t71);
    t73 = (~(t72));
    t74 = *((unsigned int *)t54);
    t75 = (t74 & t73);
    t76 = (t75 & 1U);
    if (t76 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t71) != 0)
        goto LAB28;

LAB29:    t78 = (t70 + 4);
    t79 = *((unsigned int *)t70);
    t80 = *((unsigned int *)t78);
    t81 = (t79 || t80);
    if (t81 > 0)
        goto LAB30;

LAB31:    memcpy(t118, t70, 8);

LAB32:    memset(t150, 0, 8);
    t151 = (t118 + 4);
    t152 = *((unsigned int *)t151);
    t153 = (~(t152));
    t154 = *((unsigned int *)t118);
    t155 = (t154 & t153);
    t156 = (t155 & 1U);
    if (t156 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t151) != 0)
        goto LAB46;

LAB47:    t159 = *((unsigned int *)t30);
    t160 = *((unsigned int *)t150);
    t161 = (t159 & t160);
    *((unsigned int *)t158) = t161;
    t162 = (t30 + 4);
    t163 = (t150 + 4);
    t164 = (t158 + 4);
    t165 = *((unsigned int *)t162);
    t166 = *((unsigned int *)t163);
    t167 = (t165 | t166);
    *((unsigned int *)t164) = t167;
    t168 = *((unsigned int *)t164);
    t169 = (t168 != 0);
    if (t169 == 1)
        goto LAB48;

LAB49:
LAB50:    goto LAB21;

LAB24:    t69 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t69) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t70) = 1;
    goto LAB29;

LAB28:    t77 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t77) = 1;
    goto LAB29;

LAB30:    t82 = (t0 + 1824U);
    t83 = *((char **)t82);
    memset(t84, 0, 8);
    t82 = (t84 + 4);
    t85 = (t83 + 8);
    t86 = (t83 + 12);
    t87 = *((unsigned int *)t85);
    t88 = (t87 >> 3);
    t89 = (t88 & 1);
    *((unsigned int *)t84) = t89;
    t90 = *((unsigned int *)t86);
    t91 = (t90 >> 3);
    t92 = (t91 & 1);
    *((unsigned int *)t82) = t92;
    t93 = ((char*)((ng2)));
    memset(t94, 0, 8);
    t95 = (t84 + 4);
    t96 = (t93 + 4);
    t97 = *((unsigned int *)t84);
    t98 = *((unsigned int *)t93);
    t99 = (t97 ^ t98);
    t100 = *((unsigned int *)t95);
    t101 = *((unsigned int *)t96);
    t102 = (t100 ^ t101);
    t103 = (t99 | t102);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t96);
    t106 = (t104 | t105);
    t107 = (~(t106));
    t108 = (t103 & t107);
    if (t108 != 0)
        goto LAB36;

LAB33:    if (t106 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t94) = 1;

LAB36:    memset(t110, 0, 8);
    t111 = (t94 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t94);
    t115 = (t114 & t113);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t111) != 0)
        goto LAB39;

LAB40:    t119 = *((unsigned int *)t70);
    t120 = *((unsigned int *)t110);
    t121 = (t119 & t120);
    *((unsigned int *)t118) = t121;
    t122 = (t70 + 4);
    t123 = (t110 + 4);
    t124 = (t118 + 4);
    t125 = *((unsigned int *)t122);
    t126 = *((unsigned int *)t123);
    t127 = (t125 | t126);
    *((unsigned int *)t124) = t127;
    t128 = *((unsigned int *)t124);
    t129 = (t128 != 0);
    if (t129 == 1)
        goto LAB41;

LAB42:
LAB43:    goto LAB32;

LAB35:    t109 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB36;

LAB37:    *((unsigned int *)t110) = 1;
    goto LAB40;

LAB39:    t117 = (t110 + 4);
    *((unsigned int *)t110) = 1;
    *((unsigned int *)t117) = 1;
    goto LAB40;

LAB41:    t130 = *((unsigned int *)t118);
    t131 = *((unsigned int *)t124);
    *((unsigned int *)t118) = (t130 | t131);
    t132 = (t70 + 4);
    t133 = (t110 + 4);
    t134 = *((unsigned int *)t70);
    t135 = (~(t134));
    t136 = *((unsigned int *)t132);
    t137 = (~(t136));
    t138 = *((unsigned int *)t110);
    t139 = (~(t138));
    t140 = *((unsigned int *)t133);
    t141 = (~(t140));
    t142 = (t135 & t137);
    t143 = (t139 & t141);
    t144 = (~(t142));
    t145 = (~(t143));
    t146 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t146 & t144);
    t147 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t147 & t145);
    t148 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t148 & t144);
    t149 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t149 & t145);
    goto LAB43;

LAB44:    *((unsigned int *)t150) = 1;
    goto LAB47;

LAB46:    t157 = (t150 + 4);
    *((unsigned int *)t150) = 1;
    *((unsigned int *)t157) = 1;
    goto LAB47;

LAB48:    t170 = *((unsigned int *)t158);
    t171 = *((unsigned int *)t164);
    *((unsigned int *)t158) = (t170 | t171);
    t172 = (t30 + 4);
    t173 = (t150 + 4);
    t174 = *((unsigned int *)t30);
    t175 = (~(t174));
    t176 = *((unsigned int *)t172);
    t177 = (~(t176));
    t178 = *((unsigned int *)t150);
    t179 = (~(t178));
    t180 = *((unsigned int *)t173);
    t181 = (~(t180));
    t182 = (t175 & t177);
    t183 = (t179 & t181);
    t184 = (~(t182));
    t185 = (~(t183));
    t186 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t186 & t184);
    t187 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t187 & t185);
    t188 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t188 & t184);
    t189 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t189 & t185);
    goto LAB50;

LAB51:    xsi_set_current_line(43, ng0);

LAB54:    xsi_set_current_line(44, ng0);
    t196 = ((char*)((ng2)));
    t197 = (t0 + 2224);
    xsi_vlogvar_assign_value(t197, t196, 0, 0, 1);
    goto LAB53;

}


extern void work_m_00000000003940391515_4195404533_init()
{
	static char *pe[] = {(void *)Always_35_0};
	xsi_register_didat("work_m_00000000003940391515_4195404533", "isim/testteliko_isim_beh.exe.sim/work/m_00000000003940391515_4195404533.didat");
	xsi_register_executes(pe);
}
