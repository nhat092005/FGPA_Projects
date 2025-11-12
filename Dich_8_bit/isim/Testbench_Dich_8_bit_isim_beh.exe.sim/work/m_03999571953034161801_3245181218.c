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
static const char *ng0 = "/home/ise/Working_Space/Week7/Dich_8_bit/Dich_8_bit.v";
static unsigned int ng1[] = {0U, 0U};



static void Always_29_0(char *t0)
{
    char t11[8];
    char t15[8];
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
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    t3 = (t0 + 2872);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
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

LAB7:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);

LAB9:    xsi_set_current_line(31, ng0);
    t12 = (t0 + 1528U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng1)));
    xsi_vlogtype_concat(t11, 8, 8, 2U, t12, 7, t13, 1);
    t14 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t14, t11, 0, 0, 8, 0LL);
    goto LAB8;

LAB10:    xsi_set_current_line(33, ng0);

LAB13:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 1928);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    memset(t15, 0, 8);
    t14 = (t15 + 4);
    t16 = (t13 + 4);
    t17 = *((unsigned int *)t13);
    t18 = (t17 >> 0);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t16);
    t20 = (t19 >> 0);
    *((unsigned int *)t14) = t20;
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t21 & 127U);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t22 & 127U);
    xsi_vlogtype_concat(t11, 8, 8, 2U, t15, 7, t5, 1);
    t23 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t23, t11, 0, 0, 8, 0LL);
    goto LAB12;

}


extern void work_m_03999571953034161801_3245181218_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_03999571953034161801_3245181218", "isim/Testbench_Dich_8_bit_isim_beh.exe.sim/work/m_03999571953034161801_3245181218.didat");
	xsi_register_executes(pe);
}
