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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/nishantaswani/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_FPGA/Instructions_ROM.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_2188849903;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_1483344290_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t1 = (t0 + 3820U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t4);
    t7 = (16U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 1828);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 1776);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1483344290_3212880686_p_1(char *t0)
{
    char t33[16];
    char t35[16];
    char t40[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    int t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    int t25;
    int t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    char *t34;
    char *t36;
    char *t37;
    int t38;
    unsigned int t39;
    char *t41;
    int t42;
    unsigned char t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = ((WORK_P_2188849903) + 1148U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 - 1);
    t1 = (t0 + 7996);
    *((int *)t1) = 0;
    t5 = (t0 + 8000);
    *((int *)t5) = t4;
    t6 = 0;
    t7 = t4;

LAB2:    if (t6 <= t7)
        goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 8008);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB12;

LAB13:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 0U, 16U, 0LL);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 8024);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 16U, 16U, 0LL);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 8040);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB16;

LAB17:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 32U, 16U, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 8056);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB18;

LAB19:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 48U, 16U, 0LL);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 8072);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB20;

LAB21:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 64U, 16U, 0LL);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 8088);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB22;

LAB23:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 3984U, 16U, 0LL);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 8104);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB24;

LAB25:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4000U, 16U, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 8120);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB26;

LAB27:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4016U, 16U, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 8136);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB28;

LAB29:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4032U, 16U, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 8152);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB30;

LAB31:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4048U, 16U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 8168);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB32;

LAB33:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4064U, 16U, 0LL);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 8184);
    t43 = (16U != 16U);
    if (t43 == 1)
        goto LAB34;

LAB35:    t5 = (t0 + 1864);
    t8 = (t5 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_delta(t5, 4080U, 16U, 0LL);
    t1 = (t0 + 1784);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(28, ng0);
    t8 = (t0 + 8004);
    t10 = xsi_get_transient_memory(12U);
    memset(t10, 0, 12U);
    t11 = t10;
    t12 = ((WORK_P_2188849903) + 808U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    t15 = (t14 - 1);
    t12 = ((WORK_P_2188849903) + 876U);
    t16 = *((char **)t12);
    t17 = *((int *)t16);
    t18 = (t15 - t17);
    if (-1 == 1)
        goto LAB6;

LAB7:    t19 = 0;

LAB8:    t20 = (t19 - 0);
    t21 = (t20 * 1);
    t22 = (1U * t21);
    t12 = (t11 + t22);
    t23 = ((WORK_P_2188849903) + 808U);
    t24 = *((char **)t23);
    t25 = *((int *)t24);
    t26 = (t25 - 1);
    t23 = ((WORK_P_2188849903) + 876U);
    t27 = *((char **)t23);
    t28 = *((int *)t27);
    t29 = (t26 - t28);
    t30 = (0 - t29);
    t31 = (t30 * -1);
    t31 = (t31 + 1);
    t32 = (1U * t31);
    memset(t12, (unsigned char)1, t32);
    t34 = ((IEEE_P_2592010699) + 2332);
    t36 = (t35 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 0;
    t37 = (t36 + 4U);
    *((int *)t37) = 3;
    t37 = (t36 + 8U);
    *((int *)t37) = 1;
    t38 = (3 - 0);
    t39 = (t38 * 1);
    t39 = (t39 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t39;
    t37 = (t40 + 0U);
    t41 = (t37 + 0U);
    *((int *)t41) = 0;
    t41 = (t37 + 4U);
    *((int *)t41) = 11;
    t41 = (t37 + 8U);
    *((int *)t41) = 1;
    t42 = (11 - 0);
    t39 = (t42 * 1);
    t39 = (t39 + 1);
    t41 = (t37 + 12U);
    *((unsigned int *)t41) = t39;
    t23 = xsi_base_array_concat(t23, t33, t34, (char)97, t8, t35, (char)97, t10, t40, (char)101);
    t39 = (4U + 12U);
    t43 = (16U != t39);
    if (t43 == 1)
        goto LAB9;

LAB10:    t41 = (t0 + 7996);
    t44 = *((int *)t41);
    t45 = (t44 - 0);
    t46 = (t45 * 1);
    t47 = (16U * t46);
    t48 = (0U + t47);
    t49 = (t0 + 1864);
    t50 = (t49 + 32U);
    t51 = *((char **)t50);
    t52 = (t51 + 40U);
    t53 = *((char **)t52);
    memcpy(t53, t23, 16U);
    xsi_driver_first_trans_delta(t49, t48, 16U, 0LL);

LAB4:    t1 = (t0 + 7996);
    t6 = *((int *)t1);
    t2 = (t0 + 8000);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB5;

LAB11:    t3 = (t6 + 1);
    t6 = t3;
    t5 = (t0 + 7996);
    *((int *)t5) = t6;
    goto LAB2;

LAB6:    t19 = t18;
    goto LAB8;

LAB9:    xsi_size_not_matching(16U, t39, 0);
    goto LAB10;

LAB12:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB35;

}


extern void work_a_1483344290_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1483344290_3212880686_p_0,(void *)work_a_1483344290_3212880686_p_1};
	xsi_register_didat("work_a_1483344290_3212880686", "isim/top_FPGA_tb_isim_beh.exe.sim/work/a_1483344290_3212880686.didat");
	xsi_register_executes(pe);
}
