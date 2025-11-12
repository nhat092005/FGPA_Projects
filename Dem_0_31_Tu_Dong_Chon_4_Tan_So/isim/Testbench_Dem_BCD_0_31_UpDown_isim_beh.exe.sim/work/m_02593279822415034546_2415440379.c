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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Working_Space/Backup/Dem_0_31_Tu_Dong_Chon_4_Tan_So/Dem_BCD_0_31_UpDown.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {9U, 0U};



static void Always_54_0(char *t0)
{
    char t13[8];
    char t26[8];
    char t42[8];
    char t50[8];
    char t82[8];
    char t96[8];
    char t112[8];
    char t120[8];
    char t160[8];
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    int t74;
    int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t97;
    char *t98;
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
    unsigned int t109;
    unsigned int t110;
    char *t111;
    char *t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    int t144;
    int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    char *t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    char *t159;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    char *t170;

LAB0:    t1 = (t0 + 3800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4864);
    *((int *)t2) = 1;
    t3 = (t0 + 3832);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(56, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(57, ng0);

LAB12:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    memset(t13, 0, 8);
    t12 = (t11 + 4);
    t14 = *((unsigned int *)t12);
    t15 = (~(t14));
    t16 = *((unsigned int *)t11);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t12) != 0)
        goto LAB15;

LAB16:    t20 = (t13 + 4);
    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB17;

LAB18:    memcpy(t50, t13, 8);

LAB19:    memset(t82, 0, 8);
    t83 = (t50 + 4);
    t84 = *((unsigned int *)t83);
    t85 = (~(t84));
    t86 = *((unsigned int *)t50);
    t87 = (t86 & t85);
    t88 = (t87 & 1U);
    if (t88 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t83) != 0)
        goto LAB33;

LAB34:    t90 = (t82 + 4);
    t91 = *((unsigned int *)t82);
    t92 = *((unsigned int *)t90);
    t93 = (t91 || t92);
    if (t93 > 0)
        goto LAB35;

LAB36:    memcpy(t120, t82, 8);

LAB37:    t152 = (t120 + 4);
    t153 = *((unsigned int *)t152);
    t154 = (~(t153));
    t155 = *((unsigned int *)t120);
    t156 = (t155 & t154);
    t157 = (t156 != 0);
    if (t157 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB55;

LAB53:    if (*((unsigned int *)t5) == 0)
        goto LAB52;

LAB54:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB55:    t12 = (t13 + 4);
    t19 = (t4 + 4);
    t14 = *((unsigned int *)t4);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t19) != 0)
        goto LAB57;

LAB56:    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t23 & 1U);
    memset(t26, 0, 8);
    t20 = (t13 + 4);
    t29 = *((unsigned int *)t20);
    t30 = (~(t29));
    t31 = *((unsigned int *)t13);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t20) != 0)
        goto LAB60;

LAB61:    t25 = (t26 + 4);
    t34 = *((unsigned int *)t26);
    t35 = *((unsigned int *)t25);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB62;

LAB63:    memcpy(t82, t26, 8);

LAB64:    memset(t96, 0, 8);
    t90 = (t82 + 4);
    t99 = *((unsigned int *)t90);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB76;

LAB77:    if (*((unsigned int *)t90) != 0)
        goto LAB78;

LAB79:    t95 = (t96 + 4);
    t104 = *((unsigned int *)t96);
    t105 = *((unsigned int *)t95);
    t106 = (t104 || t105);
    if (t106 > 0)
        goto LAB80;

LAB81:    memcpy(t160, t96, 8);

LAB82:    t159 = (t160 + 4);
    t164 = *((unsigned int *)t159);
    t165 = (~(t164));
    t166 = *((unsigned int *)t160);
    t167 = (t166 & t165);
    t168 = (t167 != 0);
    if (t168 > 0)
        goto LAB94;

LAB95:
LAB96:
LAB51:    goto LAB11;

LAB13:    *((unsigned int *)t13) = 1;
    goto LAB16;

LAB15:    t19 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB17:    t24 = (t0 + 1528U);
    t25 = *((char **)t24);
    t24 = ((char*)((ng2)));
    memset(t26, 0, 8);
    t27 = (t25 + 4);
    t28 = (t24 + 4);
    t29 = *((unsigned int *)t25);
    t30 = *((unsigned int *)t24);
    t31 = (t29 ^ t30);
    t32 = *((unsigned int *)t27);
    t33 = *((unsigned int *)t28);
    t34 = (t32 ^ t33);
    t35 = (t31 | t34);
    t36 = *((unsigned int *)t27);
    t37 = *((unsigned int *)t28);
    t38 = (t36 | t37);
    t39 = (~(t38));
    t40 = (t35 & t39);
    if (t40 != 0)
        goto LAB23;

LAB20:    if (t38 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t26) = 1;

LAB23:    memset(t42, 0, 8);
    t43 = (t26 + 4);
    t44 = *((unsigned int *)t43);
    t45 = (~(t44));
    t46 = *((unsigned int *)t26);
    t47 = (t46 & t45);
    t48 = (t47 & 1U);
    if (t48 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t43) != 0)
        goto LAB26;

LAB27:    t51 = *((unsigned int *)t13);
    t52 = *((unsigned int *)t42);
    t53 = (t51 & t52);
    *((unsigned int *)t50) = t53;
    t54 = (t13 + 4);
    t55 = (t42 + 4);
    t56 = (t50 + 4);
    t57 = *((unsigned int *)t54);
    t58 = *((unsigned int *)t55);
    t59 = (t57 | t58);
    *((unsigned int *)t56) = t59;
    t60 = *((unsigned int *)t56);
    t61 = (t60 != 0);
    if (t61 == 1)
        goto LAB28;

LAB29:
LAB30:    goto LAB19;

LAB22:    t41 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB23;

LAB24:    *((unsigned int *)t42) = 1;
    goto LAB27;

LAB26:    t49 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB27;

LAB28:    t62 = *((unsigned int *)t50);
    t63 = *((unsigned int *)t56);
    *((unsigned int *)t50) = (t62 | t63);
    t64 = (t13 + 4);
    t65 = (t42 + 4);
    t66 = *((unsigned int *)t13);
    t67 = (~(t66));
    t68 = *((unsigned int *)t64);
    t69 = (~(t68));
    t70 = *((unsigned int *)t42);
    t71 = (~(t70));
    t72 = *((unsigned int *)t65);
    t73 = (~(t72));
    t74 = (t67 & t69);
    t75 = (t71 & t73);
    t76 = (~(t74));
    t77 = (~(t75));
    t78 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t78 & t76);
    t79 = *((unsigned int *)t56);
    *((unsigned int *)t56) = (t79 & t77);
    t80 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t80 & t76);
    t81 = *((unsigned int *)t50);
    *((unsigned int *)t50) = (t81 & t77);
    goto LAB30;

LAB31:    *((unsigned int *)t82) = 1;
    goto LAB34;

LAB33:    t89 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t89) = 1;
    goto LAB34;

LAB35:    t94 = (t0 + 1688U);
    t95 = *((char **)t94);
    t94 = ((char*)((ng2)));
    memset(t96, 0, 8);
    t97 = (t95 + 4);
    t98 = (t94 + 4);
    t99 = *((unsigned int *)t95);
    t100 = *((unsigned int *)t94);
    t101 = (t99 ^ t100);
    t102 = *((unsigned int *)t97);
    t103 = *((unsigned int *)t98);
    t104 = (t102 ^ t103);
    t105 = (t101 | t104);
    t106 = *((unsigned int *)t97);
    t107 = *((unsigned int *)t98);
    t108 = (t106 | t107);
    t109 = (~(t108));
    t110 = (t105 & t109);
    if (t110 != 0)
        goto LAB41;

LAB38:    if (t108 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t96) = 1;

LAB41:    memset(t112, 0, 8);
    t113 = (t96 + 4);
    t114 = *((unsigned int *)t113);
    t115 = (~(t114));
    t116 = *((unsigned int *)t96);
    t117 = (t116 & t115);
    t118 = (t117 & 1U);
    if (t118 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t113) != 0)
        goto LAB44;

LAB45:    t121 = *((unsigned int *)t82);
    t122 = *((unsigned int *)t112);
    t123 = (t121 & t122);
    *((unsigned int *)t120) = t123;
    t124 = (t82 + 4);
    t125 = (t112 + 4);
    t126 = (t120 + 4);
    t127 = *((unsigned int *)t124);
    t128 = *((unsigned int *)t125);
    t129 = (t127 | t128);
    *((unsigned int *)t126) = t129;
    t130 = *((unsigned int *)t126);
    t131 = (t130 != 0);
    if (t131 == 1)
        goto LAB46;

LAB47:
LAB48:    goto LAB37;

LAB40:    t111 = (t96 + 4);
    *((unsigned int *)t96) = 1;
    *((unsigned int *)t111) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t112) = 1;
    goto LAB45;

LAB44:    t119 = (t112 + 4);
    *((unsigned int *)t112) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB45;

LAB46:    t132 = *((unsigned int *)t120);
    t133 = *((unsigned int *)t126);
    *((unsigned int *)t120) = (t132 | t133);
    t134 = (t82 + 4);
    t135 = (t112 + 4);
    t136 = *((unsigned int *)t82);
    t137 = (~(t136));
    t138 = *((unsigned int *)t134);
    t139 = (~(t138));
    t140 = *((unsigned int *)t112);
    t141 = (~(t140));
    t142 = *((unsigned int *)t135);
    t143 = (~(t142));
    t144 = (t137 & t139);
    t145 = (t141 & t143);
    t146 = (~(t144));
    t147 = (~(t145));
    t148 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t148 & t146);
    t149 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t149 & t147);
    t150 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t150 & t146);
    t151 = *((unsigned int *)t120);
    *((unsigned int *)t120) = (t151 & t147);
    goto LAB48;

LAB49:    xsi_set_current_line(60, ng0);
    t158 = ((char*)((ng3)));
    t159 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t159, t158, 0, 0, 1, 0LL);
    goto LAB51;

LAB52:    *((unsigned int *)t13) = 1;
    goto LAB55;

LAB57:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    *((unsigned int *)t13) = (t16 | t17);
    t18 = *((unsigned int *)t12);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t12) = (t18 | t21);
    goto LAB56;

LAB58:    *((unsigned int *)t26) = 1;
    goto LAB61;

LAB60:    t24 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB61;

LAB62:    t27 = (t0 + 1528U);
    t28 = *((char **)t27);
    t27 = ((char*)((ng3)));
    memset(t42, 0, 8);
    t41 = (t28 + 4);
    t43 = (t27 + 4);
    t37 = *((unsigned int *)t28);
    t38 = *((unsigned int *)t27);
    t39 = (t37 ^ t38);
    t40 = *((unsigned int *)t41);
    t44 = *((unsigned int *)t43);
    t45 = (t40 ^ t44);
    t46 = (t39 | t45);
    t47 = *((unsigned int *)t41);
    t48 = *((unsigned int *)t43);
    t51 = (t47 | t48);
    t52 = (~(t51));
    t53 = (t46 & t52);
    if (t53 != 0)
        goto LAB68;

LAB65:    if (t51 != 0)
        goto LAB67;

LAB66:    *((unsigned int *)t42) = 1;

LAB68:    memset(t50, 0, 8);
    t54 = (t42 + 4);
    t57 = *((unsigned int *)t54);
    t58 = (~(t57));
    t59 = *((unsigned int *)t42);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB69;

LAB70:    if (*((unsigned int *)t54) != 0)
        goto LAB71;

LAB72:    t62 = *((unsigned int *)t26);
    t63 = *((unsigned int *)t50);
    t66 = (t62 & t63);
    *((unsigned int *)t82) = t66;
    t56 = (t26 + 4);
    t64 = (t50 + 4);
    t65 = (t82 + 4);
    t67 = *((unsigned int *)t56);
    t68 = *((unsigned int *)t64);
    t69 = (t67 | t68);
    *((unsigned int *)t65) = t69;
    t70 = *((unsigned int *)t65);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB73;

LAB74:
LAB75:    goto LAB64;

LAB67:    t49 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB68;

LAB69:    *((unsigned int *)t50) = 1;
    goto LAB72;

LAB71:    t55 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t55) = 1;
    goto LAB72;

LAB73:    t72 = *((unsigned int *)t82);
    t73 = *((unsigned int *)t65);
    *((unsigned int *)t82) = (t72 | t73);
    t83 = (t26 + 4);
    t89 = (t50 + 4);
    t76 = *((unsigned int *)t26);
    t77 = (~(t76));
    t78 = *((unsigned int *)t83);
    t79 = (~(t78));
    t80 = *((unsigned int *)t50);
    t81 = (~(t80));
    t84 = *((unsigned int *)t89);
    t85 = (~(t84));
    t74 = (t77 & t79);
    t75 = (t81 & t85);
    t86 = (~(t74));
    t87 = (~(t75));
    t88 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t88 & t86);
    t91 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t91 & t87);
    t92 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t92 & t86);
    t93 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t93 & t87);
    goto LAB75;

LAB76:    *((unsigned int *)t96) = 1;
    goto LAB79;

LAB78:    t94 = (t96 + 4);
    *((unsigned int *)t96) = 1;
    *((unsigned int *)t94) = 1;
    goto LAB79;

LAB80:    t97 = (t0 + 1688U);
    t98 = *((char **)t97);
    t97 = ((char*)((ng1)));
    memset(t112, 0, 8);
    t111 = (t98 + 4);
    t113 = (t97 + 4);
    t107 = *((unsigned int *)t98);
    t108 = *((unsigned int *)t97);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t111);
    t114 = *((unsigned int *)t113);
    t115 = (t110 ^ t114);
    t116 = (t109 | t115);
    t117 = *((unsigned int *)t111);
    t118 = *((unsigned int *)t113);
    t121 = (t117 | t118);
    t122 = (~(t121));
    t123 = (t116 & t122);
    if (t123 != 0)
        goto LAB86;

LAB83:    if (t121 != 0)
        goto LAB85;

LAB84:    *((unsigned int *)t112) = 1;

LAB86:    memset(t120, 0, 8);
    t124 = (t112 + 4);
    t127 = *((unsigned int *)t124);
    t128 = (~(t127));
    t129 = *((unsigned int *)t112);
    t130 = (t129 & t128);
    t131 = (t130 & 1U);
    if (t131 != 0)
        goto LAB87;

LAB88:    if (*((unsigned int *)t124) != 0)
        goto LAB89;

LAB90:    t132 = *((unsigned int *)t96);
    t133 = *((unsigned int *)t120);
    t136 = (t132 & t133);
    *((unsigned int *)t160) = t136;
    t126 = (t96 + 4);
    t134 = (t120 + 4);
    t135 = (t160 + 4);
    t137 = *((unsigned int *)t126);
    t138 = *((unsigned int *)t134);
    t139 = (t137 | t138);
    *((unsigned int *)t135) = t139;
    t140 = *((unsigned int *)t135);
    t141 = (t140 != 0);
    if (t141 == 1)
        goto LAB91;

LAB92:
LAB93:    goto LAB82;

LAB85:    t119 = (t112 + 4);
    *((unsigned int *)t112) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB86;

LAB87:    *((unsigned int *)t120) = 1;
    goto LAB90;

LAB89:    t125 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t125) = 1;
    goto LAB90;

LAB91:    t142 = *((unsigned int *)t160);
    t143 = *((unsigned int *)t135);
    *((unsigned int *)t160) = (t142 | t143);
    t152 = (t96 + 4);
    t158 = (t120 + 4);
    t146 = *((unsigned int *)t96);
    t147 = (~(t146));
    t148 = *((unsigned int *)t152);
    t149 = (~(t148));
    t150 = *((unsigned int *)t120);
    t151 = (~(t150));
    t153 = *((unsigned int *)t158);
    t154 = (~(t153));
    t144 = (t147 & t149);
    t145 = (t151 & t154);
    t155 = (~(t144));
    t156 = (~(t145));
    t157 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t157 & t155);
    t161 = *((unsigned int *)t135);
    *((unsigned int *)t135) = (t161 & t156);
    t162 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t162 & t155);
    t163 = *((unsigned int *)t160);
    *((unsigned int *)t160) = (t163 & t156);
    goto LAB93;

LAB94:    xsi_set_current_line(63, ng0);
    t169 = ((char*)((ng1)));
    t170 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t170, t169, 0, 0, 1, 0LL);
    goto LAB96;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 4048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng4)));
    t3 = (t0 + 4960);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 3);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t5[8];
    char t39[8];
    char t70[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    char *t111;

LAB0:    t1 = (t0 + 4296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1848U);
    t4 = *((char **)t2);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t4);
    t8 = (t6 & t7);
    *((unsigned int *)t5) = t8;
    t2 = (t3 + 4);
    t9 = (t4 + 4);
    t10 = (t5 + 4);
    t11 = *((unsigned int *)t2);
    t12 = *((unsigned int *)t9);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 != 0);
    if (t15 == 1)
        goto LAB4;

LAB5:
LAB6:    t36 = (t0 + 1368U);
    t37 = *((char **)t36);
    t36 = (t0 + 2008U);
    t38 = *((char **)t36);
    t40 = *((unsigned int *)t37);
    t41 = *((unsigned int *)t38);
    t42 = (t40 & t41);
    *((unsigned int *)t39) = t42;
    t36 = (t37 + 4);
    t43 = (t38 + 4);
    t44 = (t39 + 4);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t43);
    t47 = (t45 | t46);
    *((unsigned int *)t44) = t47;
    t48 = *((unsigned int *)t44);
    t49 = (t48 != 0);
    if (t49 == 1)
        goto LAB7;

LAB8:
LAB9:    t71 = *((unsigned int *)t5);
    t72 = *((unsigned int *)t39);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = (t5 + 4);
    t75 = (t39 + 4);
    t76 = (t70 + 4);
    t77 = *((unsigned int *)t74);
    t78 = *((unsigned int *)t75);
    t79 = (t77 | t78);
    *((unsigned int *)t76) = t79;
    t80 = *((unsigned int *)t76);
    t81 = (t80 != 0);
    if (t81 == 1)
        goto LAB10;

LAB11:
LAB12:    t98 = (t0 + 5024);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    memset(t102, 0, 8);
    t103 = 1U;
    t104 = t103;
    t105 = (t70 + 4);
    t106 = *((unsigned int *)t70);
    t103 = (t103 & t106);
    t107 = *((unsigned int *)t105);
    t104 = (t104 & t107);
    t108 = (t102 + 4);
    t109 = *((unsigned int *)t102);
    *((unsigned int *)t102) = (t109 | t103);
    t110 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t110 | t104);
    xsi_driver_vfirst_trans(t98, 0, 0);
    t111 = (t0 + 4880);
    *((int *)t111) = 1;

LAB1:    return;
LAB4:    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t10);
    *((unsigned int *)t5) = (t16 | t17);
    t18 = (t3 + 4);
    t19 = (t4 + 4);
    t20 = *((unsigned int *)t3);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (~(t24));
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t28 = (t21 & t23);
    t29 = (t25 & t27);
    t30 = (~(t28));
    t31 = (~(t29));
    t32 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t32 & t30);
    t33 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t33 & t31);
    t34 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t34 & t30);
    t35 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t35 & t31);
    goto LAB6;

LAB7:    t50 = *((unsigned int *)t39);
    t51 = *((unsigned int *)t44);
    *((unsigned int *)t39) = (t50 | t51);
    t52 = (t37 + 4);
    t53 = (t38 + 4);
    t54 = *((unsigned int *)t37);
    t55 = (~(t54));
    t56 = *((unsigned int *)t52);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (~(t58));
    t60 = *((unsigned int *)t53);
    t61 = (~(t60));
    t62 = (t55 & t57);
    t63 = (t59 & t61);
    t64 = (~(t62));
    t65 = (~(t63));
    t66 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t66 & t64);
    t67 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t67 & t65);
    t68 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t68 & t64);
    t69 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t69 & t65);
    goto LAB9;

LAB10:    t82 = *((unsigned int *)t70);
    t83 = *((unsigned int *)t76);
    *((unsigned int *)t70) = (t82 | t83);
    t84 = (t5 + 4);
    t85 = (t39 + 4);
    t86 = *((unsigned int *)t84);
    t87 = (~(t86));
    t88 = *((unsigned int *)t5);
    t89 = (t88 & t87);
    t90 = *((unsigned int *)t85);
    t91 = (~(t90));
    t92 = *((unsigned int *)t39);
    t93 = (t92 & t91);
    t94 = (~(t89));
    t95 = (~(t93));
    t96 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t96 & t94);
    t97 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t97 & t95);
    goto LAB12;

}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 4544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng2)));
    t3 = (t0 + 5088);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 15U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 3);

LAB1:    return;
}


extern void work_m_02593279822415034546_2415440379_init()
{
	static char *pe[] = {(void *)Always_54_0,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_02593279822415034546_2415440379", "isim/Testbench_Dem_BCD_0_31_UpDown_isim_beh.exe.sim/work/m_02593279822415034546_2415440379.didat");
	xsi_register_executes(pe);
}
