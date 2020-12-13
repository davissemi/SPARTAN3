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
static const char *ng0 = "x = %b%b%b%b, sel = %b%b, y = %b";
static const char *ng1 = "C:/Users/pauls/fpgadev/SPARTAN3/mux_4_to_1/mux_4_to_1_tb.v";
static int ng2[] = {0, 0};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {3U, 0U};

void Monitor_80_2(char *);
void Monitor_80_2(char *);


static void Monitor_80_2_Func(char *t0)
{
    char t4[8];
    char t16[8];
    char t28[8];
    char t40[8];
    char t52[8];
    char t64[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    char *t39;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;

LAB0:    t1 = (t0 + 1608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t6 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 3);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t5) = t12;
    t13 = (t0 + 1608);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t16, 0, 8);
    t17 = (t16 + 4);
    t18 = (t15 + 4);
    t19 = *((unsigned int *)t15);
    t20 = (t19 >> 2);
    t21 = (t20 & 1);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t18);
    t23 = (t22 >> 2);
    t24 = (t23 & 1);
    *((unsigned int *)t17) = t24;
    t25 = (t0 + 1608);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memset(t28, 0, 8);
    t29 = (t28 + 4);
    t30 = (t27 + 4);
    t31 = *((unsigned int *)t27);
    t32 = (t31 >> 1);
    t33 = (t32 & 1);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t30);
    t35 = (t34 >> 1);
    t36 = (t35 & 1);
    *((unsigned int *)t29) = t36;
    t37 = (t0 + 1608);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memset(t40, 0, 8);
    t41 = (t40 + 4);
    t42 = (t39 + 4);
    t43 = *((unsigned int *)t39);
    t44 = (t43 >> 0);
    t45 = (t44 & 1);
    *((unsigned int *)t40) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 >> 0);
    t48 = (t47 & 1);
    *((unsigned int *)t41) = t48;
    t49 = (t0 + 1448);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memset(t52, 0, 8);
    t53 = (t52 + 4);
    t54 = (t51 + 4);
    t55 = *((unsigned int *)t51);
    t56 = (t55 >> 1);
    t57 = (t56 & 1);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t54);
    t59 = (t58 >> 1);
    t60 = (t59 & 1);
    *((unsigned int *)t53) = t60;
    t61 = (t0 + 1448);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memset(t64, 0, 8);
    t65 = (t64 + 4);
    t66 = (t63 + 4);
    t67 = *((unsigned int *)t63);
    t68 = (t67 >> 0);
    t69 = (t68 & 1);
    *((unsigned int *)t64) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 >> 0);
    t72 = (t71 & 1);
    *((unsigned int *)t65) = t72;
    t73 = (t0 + 1048U);
    t74 = *((char **)t73);
    xsi_vlogfile_write(1, 0, 3, ng0, 8, t0, (char)118, t4, 1, (char)118, t16, 1, (char)118, t28, 1, (char)118, t40, 1, (char)118, t52, 1, (char)118, t64, 1, (char)118, t74, 1);

LAB1:    return;
}

static void Initial_41_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng1);

LAB4:    xsi_set_current_line(43, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(44, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(47, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(50, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(51, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(52, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(54, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(55, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(56, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(58, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(59, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(60, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(62, ng1);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(63, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(64, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(66, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(67, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(68, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(70, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(71, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(72, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(74, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(75, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(76, ng1);
    t2 = (t0 + 2336);
    xsi_process_wait(t2, 200000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    goto LAB1;

}

static void Initial_79_1(char *t0)
{

LAB0:    xsi_set_current_line(79, ng1);

LAB2:    xsi_set_current_line(80, ng1);
    Monitor_80_2(t0);

LAB1:    return;
}

void Monitor_80_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 2832);
    t2 = (t0 + 3344);
    xsi_vlogfile_monitor((void *)Monitor_80_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000001854458264_3714148639_init()
{
	static char *pe[] = {(void *)Initial_41_0,(void *)Initial_79_1,(void *)Monitor_80_2};
	xsi_register_didat("work_m_00000000001854458264_3714148639", "isim/mux_4_to_1_tb_isim_beh.exe.sim/work/m_00000000001854458264_3714148639.didat");
	xsi_register_executes(pe);
}
