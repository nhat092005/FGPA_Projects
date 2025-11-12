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
static const char *ng0 = "/home/ise/Working_Space/Chapter_2/Decoder3_8/Decoder3_8.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static int ng6[] = {2, 0};
static unsigned int ng7[] = {4U, 0U};
static int ng8[] = {3, 0};
static unsigned int ng9[] = {8U, 0U};
static int ng10[] = {4, 0};
static unsigned int ng11[] = {16U, 0U};
static int ng12[] = {5, 0};
static unsigned int ng13[] = {32U, 0U};
static int ng14[] = {6, 0};
static unsigned int ng15[] = {64U, 0U};
static int ng16[] = {7, 0};
static unsigned int ng17[] = {128U, 0U};



static void Always_27_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
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
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2840);
    *((int *)t2) = 1;
    t3 = (t0 + 2552);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1608);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 8);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(29, ng0);

LAB13:    xsi_set_current_line(30, ng0);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);

LAB14:    t26 = ((char*)((ng2)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t26, 32);
    if (t28 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng4)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng6)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng8)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng14)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng16)));
    t28 = xsi_vlog_unsigned_case_compare(t27, 3, t2, 32);
    if (t28 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB33:    goto LAB12;

LAB15:    xsi_set_current_line(31, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 1608);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 8);
    goto LAB33;

LAB17:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB19:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB21:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB23:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB25:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB27:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

LAB29:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    goto LAB33;

}


extern void work_m_07494349428984172562_2240812806_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_07494349428984172562_2240812806", "isim/Test_bench_Decoder3_8_isim_beh.exe.sim/work/m_07494349428984172562_2240812806.didat");
	xsi_register_executes(pe);
}
