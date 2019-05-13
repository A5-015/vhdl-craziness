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
static const char *ng0 = "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/Task_2_Documentation/VHDL used for Behavioral Task 2/Top_Level_FPGA/Display_Signed_BCD.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_1242562249_sub_1781543830_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


static void work_a_2451614547_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4216);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4120);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2451614547_3212880686_p_1(char *t0)
{
    char t11[16];
    char t12[16];
    char t23[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)2, 12U);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 12U);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = (7 - 7);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2568U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    memcpy(t1, t2, 8U);

LAB3:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 8964);
    *((int *)t1) = 0;
    t2 = (t0 + 8968);
    *((int *)t2) = 7;
    t5 = 0;
    t20 = 7;

LAB5:    if (t5 <= t20)
        goto LAB6;

LAB8:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 11);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 4280);
    t4 = (t3 + 56U);
    t13 = *((char **)t4);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 4344);
    t4 = (t3 + 56U);
    t13 = *((char **)t4);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 4408);
    t4 = (t3 + 56U);
    t13 = *((char **)t4);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 4U);
    xsi_driver_first_trans_fast(t3);
    t1 = (t0 + 4136);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 8772U);
    t13 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t12, t4, t3);
    t14 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t13, t12, 1);
    t15 = (t0 + 2568U);
    t16 = *((char **)t15);
    t15 = (t16 + 0);
    t17 = (t11 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    memcpy(t15, t14, t19);
    goto LAB3;

LAB6:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t6 = (11 - 3);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t3 = (t4 + t8);
    t13 = (t11 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 3;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t21 = (0 - 3);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t18;
    t9 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t3, t11, 4);
    if (t9 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 7);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t11 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 7;
    t4 = (t3 + 4U);
    *((int *)t4) = 4;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t21 = (4 - 7);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t18;
    t9 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t1, t11, 4);
    if (t9 != 0)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 11);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t11 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 11;
    t4 = (t3 + 4U);
    *((int *)t4) = 8;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t21 = (8 - 11);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t18;
    t9 = ieee_p_1242562249_sub_1781543830_1035706684(IEEE_P_1242562249, t1, t11, 4);
    if (t9 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t6 = (11 - 10);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t3 = (t0 + 2568U);
    t4 = *((char **)t3);
    t21 = (7 - 7);
    t18 = (t21 * -1);
    t19 = (1U * t18);
    t22 = (0 + t19);
    t3 = (t4 + t22);
    t9 = *((unsigned char *)t3);
    t14 = ((IEEE_P_2592010699) + 4024);
    t15 = (t12 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 10;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t24 = (0 - 10);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t25;
    t13 = xsi_base_array_concat(t13, t11, t14, (char)97, t1, t12, (char)99, t9, (char)101);
    t16 = (t0 + 2448U);
    t17 = *((char **)t16);
    t16 = (t17 + 0);
    t25 = (11U + 1U);
    memcpy(t16, t13, t25);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t6 = (7 - 6);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t4 = ((IEEE_P_2592010699) + 4024);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 6;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t21 = (0 - 6);
    t18 = (t21 * -1);
    t18 = (t18 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t18;
    t3 = xsi_base_array_concat(t3, t11, t4, (char)97, t1, t12, (char)99, (unsigned char)2, (char)101);
    t14 = (t0 + 2568U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    t18 = (7U + 1U);
    memcpy(t14, t3, t18);

LAB7:    t1 = (t0 + 8964);
    t5 = *((int *)t1);
    t2 = (t0 + 8968);
    t20 = *((int *)t2);
    if (t5 == t20)
        goto LAB8;

LAB18:    t21 = (t5 + 1);
    t5 = t21;
    t3 = (t0 + 8964);
    *((int *)t3) = t5;
    goto LAB5;

LAB9:    xsi_set_current_line(84, ng0);
    t14 = (t0 + 2448U);
    t15 = *((char **)t14);
    t18 = (11 - 3);
    t19 = (t18 * 1U);
    t22 = (0 + t19);
    t14 = (t15 + t22);
    t16 = (t23 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 3;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t24 = (0 - 3);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t25;
    t17 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t14, t23, 3);
    t26 = (t0 + 2448U);
    t27 = *((char **)t26);
    t25 = (11 - 3);
    t28 = (t25 * 1U);
    t29 = (0 + t28);
    t26 = (t27 + t29);
    t30 = (t12 + 12U);
    t31 = *((unsigned int *)t30);
    t32 = (1U * t31);
    memcpy(t26, t17, t32);
    goto LAB10;

LAB12:    xsi_set_current_line(89, ng0);
    t4 = (t0 + 2448U);
    t13 = *((char **)t4);
    t18 = (11 - 7);
    t19 = (t18 * 1U);
    t22 = (0 + t19);
    t4 = (t13 + t22);
    t14 = (t23 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 7;
    t15 = (t14 + 4U);
    *((int *)t15) = 4;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t24 = (4 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t25;
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t4, t23, 3);
    t16 = (t0 + 2448U);
    t17 = *((char **)t16);
    t25 = (11 - 7);
    t28 = (t25 * 1U);
    t29 = (0 + t28);
    t16 = (t17 + t29);
    t26 = (t12 + 12U);
    t31 = *((unsigned int *)t26);
    t32 = (1U * t31);
    memcpy(t16, t15, t32);
    goto LAB13;

LAB15:    xsi_set_current_line(94, ng0);
    t4 = (t0 + 2448U);
    t13 = *((char **)t4);
    t18 = (11 - 11);
    t19 = (t18 * 1U);
    t22 = (0 + t19);
    t4 = (t13 + t22);
    t14 = (t23 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 11;
    t15 = (t14 + 4U);
    *((int *)t15) = 8;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t24 = (8 - 11);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t25;
    t15 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t12, t4, t23, 3);
    t16 = (t0 + 2448U);
    t17 = *((char **)t16);
    t25 = (11 - 11);
    t28 = (t25 * 1U);
    t29 = (0 + t28);
    t16 = (t17 + t29);
    t26 = (t12 + 12U);
    t31 = *((unsigned int *)t26);
    t32 = (1U * t31);
    memcpy(t16, t15, t32);
    goto LAB16;

}


extern void work_a_2451614547_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2451614547_3212880686_p_0,(void *)work_a_2451614547_3212880686_p_1};
	xsi_register_didat("work_a_2451614547_3212880686", "isim/top_FPGA_tb_isim_beh.exe.sim/work/a_2451614547_3212880686.didat");
	xsi_register_executes(pe);
}
