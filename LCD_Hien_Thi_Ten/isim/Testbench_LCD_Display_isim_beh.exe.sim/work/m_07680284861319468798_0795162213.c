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
static const char *ng0 = "/home/ise/Working_Space/Week8/LCD_Hien_Thi_Ten/Testbench_LCD_Display.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static int ng3[] = {255, 0};
static int ng4[] = {8, 0};
static int ng5[] = {127, 0};
static int ng6[] = {1, 0};
static const char *ng7 = "\n===================";
static const char *ng8 = " ";
static const char *ng9 = "%c";
static const char *ng10 = "";
static const char *ng11 = "===================";
static int ng12[] = {35, 0};



static int sp_display_lcd(char *t1, char *t2)
{
    char t8[8];
    char t15[8];
    char t29[8];
    char t30[8];
    char t33[8];
    char t34[8];
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    int t46;
    char *t47;
    unsigned int t48;
    int t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    int t53;
    int t54;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(73, ng0);

LAB5:    xsi_set_current_line(74, ng0);
    xsi_set_current_line(74, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 3480);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);

LAB6:    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(78, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(1, 0, 0, ng7, 1, t4);
    xsi_set_current_line(79, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(0, 0, 1, ng8, 1, t4);
    xsi_set_current_line(80, ng0);
    xsi_set_current_line(80, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3480);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB14:    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(83, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t4);
    xsi_set_current_line(85, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(0, 0, 1, ng8, 1, t4);
    xsi_set_current_line(86, ng0);
    xsi_set_current_line(86, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t1 + 3480);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);

LAB18:    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng2)));
    memset(t8, 0, 8);
    xsi_vlog_signed_less(t8, 32, t6, 32, t7, 32);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(89, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t4);
    xsi_set_current_line(90, ng0);
    t4 = (t1 + 848);
    xsi_vlogfile_write(1, 0, 0, ng11, 1, t4);

LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;

LAB1:    return t0;
LAB7:    xsi_set_current_line(74, ng0);

LAB9:    xsi_set_current_line(75, ng0);
    t16 = (t1 + 7312);
    t17 = *((char **)t16);
    t18 = ((((char*)(t17))) + 56U);
    t19 = *((char **)t18);
    t20 = (t1 + 7336);
    t21 = *((char **)t20);
    t22 = ((((char*)(t21))) + 72U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng3)));
    t25 = (t1 + 3480);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = ((char*)((ng4)));
    memset(t29, 0, 8);
    xsi_vlog_signed_multiply(t29, 32, t27, 32, t28, 32);
    memset(t30, 0, 8);
    xsi_vlog_signed_minus(t30, 32, t24, 32, t29, 32);
    t31 = ((char*)((ng4)));
    xsi_vlog_get_indexed_partselect(t15, 8, t19, ((int*)(t23)), 2, t30, 32, 1, t31, 32, 1, 0);
    t32 = (t1 + 3160);
    t35 = (t1 + 3160);
    t36 = (t35 + 72U);
    t37 = *((char **)t36);
    t38 = (t1 + 3160);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t1 + 3480);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    xsi_vlog_generic_convert_array_indices(t33, t34, t37, t40, 2, 1, t43, 32, 1);
    t44 = (t33 + 4);
    t45 = *((unsigned int *)t44);
    t46 = (!(t45));
    t47 = (t34 + 4);
    t48 = *((unsigned int *)t47);
    t49 = (!(t48));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB10;

LAB11:    xsi_set_current_line(76, ng0);
    t4 = (t1 + 7360);
    t5 = *((char **)t4);
    t6 = ((((char*)(t5))) + 56U);
    t7 = *((char **)t6);
    t9 = (t1 + 7384);
    t16 = *((char **)t9);
    t17 = ((((char*)(t16))) + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng5)));
    t20 = (t1 + 3480);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = ((char*)((ng4)));
    memset(t15, 0, 8);
    xsi_vlog_signed_multiply(t15, 32, t22, 32, t23, 32);
    memset(t29, 0, 8);
    xsi_vlog_signed_minus(t29, 32, t19, 32, t15, 32);
    t24 = ((char*)((ng4)));
    xsi_vlog_get_indexed_partselect(t8, 8, t7, ((int*)(t18)), 2, t29, 32, 1, t24, 32, 1, 0);
    t25 = (t1 + 3320);
    t26 = (t1 + 3320);
    t27 = (t26 + 72U);
    t28 = *((char **)t27);
    t31 = (t1 + 3320);
    t32 = (t31 + 64U);
    t35 = *((char **)t32);
    t36 = (t1 + 3480);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    xsi_vlog_generic_convert_array_indices(t30, t33, t28, t35, 2, 1, t38, 32, 1);
    t39 = (t30 + 4);
    t10 = *((unsigned int *)t39);
    t46 = (!(t10));
    t40 = (t33 + 4);
    t11 = *((unsigned int *)t40);
    t49 = (!(t11));
    t50 = (t46 && t49);
    if (t50 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(74, ng0);
    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 3480);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB6;

LAB10:    t51 = *((unsigned int *)t33);
    t52 = *((unsigned int *)t34);
    t53 = (t51 - t52);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t32, t15, 0, *((unsigned int *)t34), t54);
    goto LAB11;

LAB12:    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t33);
    t53 = (t12 - t13);
    t54 = (t53 + 1);
    xsi_vlogvar_assign_value(t25, t8, 0, *((unsigned int *)t33), t54);
    goto LAB13;

LAB15:    xsi_set_current_line(80, ng0);

LAB17:    xsi_set_current_line(81, ng0);
    t16 = (t1 + 3160);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t1 + 3160);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t1 + 3160);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t1 + 3480);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t15, 8, t18, t21, t24, 2, 1, t27, 32, 1);
    t28 = (t1 + 848);
    xsi_vlogfile_write(0, 0, 1, ng9, 2, t28, (char)118, t15, 8);
    xsi_set_current_line(80, ng0);
    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 3480);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB14;

LAB19:    xsi_set_current_line(86, ng0);

LAB21:    xsi_set_current_line(87, ng0);
    t16 = (t1 + 3320);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t1 + 3320);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t1 + 3320);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t1 + 3480);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_get_array_select_value(t15, 8, t18, t21, t24, 2, 1, t27, 32, 1);
    t28 = (t1 + 848);
    xsi_vlogfile_write(0, 0, 1, ng9, 2, t28, (char)118, t15, 8);
    xsi_set_current_line(86, ng0);
    t4 = (t1 + 3480);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng6)));
    memset(t8, 0, 8);
    xsi_vlog_signed_add(t8, 32, t6, 32, t7, 32);
    t9 = (t1 + 3480);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 32);
    goto LAB18;

}

static void Initial_57_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);

LAB4:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4200);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}

static void Always_69_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(69, ng0);

LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4448);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 2840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 2840);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB4;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB12:    goto LAB2;

}

static void Always_70_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 4888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);

LAB4:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4696);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 3000);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 3000);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB4;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB12:    goto LAB2;

}

static void Initial_94_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 5136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);

LAB4:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 7392);
    *((int *)t8) = t7;

LAB5:    t9 = (t0 + 7392);
    if (*((int *)t9) > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(95, ng0);

LAB8:    xsi_set_current_line(96, ng0);
    t10 = (t0 + 5456);
    *((int *)t10) = 1;
    t11 = (t0 + 5168);
    *((char **)t11) = t10;
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4944);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4944);
    t3 = (t0 + 848);
    t8 = xsi_create_subprogram_invocation(t2, 0, t0, t3, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t3, t8);

LAB13:    t9 = (t0 + 5040);
    t10 = *((char **)t9);
    t11 = (t10 + 80U);
    t12 = *((char **)t11);
    t13 = (t12 + 272U);
    t14 = *((char **)t13);
    t15 = (t14 + 0U);
    t16 = *((char **)t15);
    t7 = ((int  (*)(char *, char *))t16)(t0, t10);

LAB15:    if (t7 != 0)
        goto LAB16;

LAB11:    t10 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t10);

LAB12:    t17 = (t0 + 5040);
    t18 = *((char **)t17);
    t17 = (t0 + 848);
    t19 = (t0 + 4944);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4944);
    xsi_process_wait(t2, 1000000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB14:;
LAB16:    t9 = (t0 + 5136U);
    *((char **)t9) = &&LAB13;
    goto LAB1;

LAB17:    t2 = (t0 + 7392);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB5;

}


extern void work_m_07680284861319468798_0795162213_init()
{
	static char *pe[] = {(void *)Initial_57_0,(void *)Always_69_1,(void *)Always_70_2,(void *)Initial_94_3};
	static char *se[] = {(void *)sp_display_lcd};
	xsi_register_didat("work_m_07680284861319468798_0795162213", "isim/Testbench_LCD_Display_isim_beh.exe.sim/work/m_07680284861319468798_0795162213.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
