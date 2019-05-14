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
static const char *ng0 = "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_4_bs3528_nsa325/VHDL/Top_Level_Basic/alu_8_bit.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;
extern char *WORK_P_2188849903;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_3273568981_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3610762270_3212880686_p_0(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    unsigned char t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;
    unsigned char t45;
    char *t46;
    char *t47;
    unsigned char t48;
    unsigned char t49;
    char *t50;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB17, &&LAB17, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB14, &&LAB15, &&LAB16};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2188849903) + 1288U);
    t5 = *((char **)t1);
    t15 = *((int *)t5);
    t17 = (t15 - 1);
    t18 = (t17 - 7);
    t13 = (t18 * -1);
    t14 = (1U * t13);
    t19 = (0 + t14);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t6 = ((WORK_P_2188849903) + 1288U);
    t8 = *((char **)t6);
    t21 = *((int *)t8);
    t22 = (t21 - 1);
    t23 = (t22 - 7);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t6 = (t7 + t26);
    t27 = *((unsigned char *)t6);
    t28 = (t20 == t27);
    if (t28 == 1)
        goto LAB24;

LAB25:    t16 = (unsigned char)0;

LAB26:    if (t16 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;

LAB19:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3592);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3656);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3512);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(57, ng0);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t5 = (t0 + 6336U);
    t7 = (t0 + 1512U);
    t8 = *((char **)t7);
    t7 = (t0 + 6352U);
    t9 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t4, t6, t5, t8, t7);
    t10 = (t0 + 1968U);
    t11 = *((char **)t10);
    t10 = (t11 + 0);
    t12 = (t4 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    memcpy(t10, t9, t14);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB6:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB7:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t5);
    t7 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t4, t2, t1, t15);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    memcpy(t8, t7, t13);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB8:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t15 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t6, t5);
    t7 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t4, t2, t1, t15);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t13 = (t13 * 1U);
    memcpy(t8, t7, t13);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB9:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB10:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB11:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB12:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273568981_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB13:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB14:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB15:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB16:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6336U);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 6352U);
    t7 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t4, t2, t1, t6, t5);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t4 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    memcpy(t8, t7, t14);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    goto LAB2;

LAB17:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    memcpy(t1, t2, 8U);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2208U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB2;

LAB18:    xsi_set_current_line(125, ng0);
    t46 = (t0 + 2088U);
    t50 = *((char **)t46);
    t46 = (t50 + 0);
    *((unsigned char *)t46) = (unsigned char)3;
    goto LAB19;

LAB21:    t46 = (t0 + 2208U);
    t47 = *((char **)t46);
    t48 = *((unsigned char *)t47);
    t49 = (t48 == (unsigned char)3);
    t3 = t49;
    goto LAB23;

LAB24:    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t9 = ((WORK_P_2188849903) + 1288U);
    t11 = *((char **)t9);
    t29 = *((int *)t11);
    t30 = (t29 - 1);
    t31 = (t30 - 7);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t9 = (t10 + t34);
    t35 = *((unsigned char *)t9);
    t12 = (t0 + 1968U);
    t36 = *((char **)t12);
    t12 = ((WORK_P_2188849903) + 1288U);
    t37 = *((char **)t12);
    t38 = *((int *)t37);
    t39 = (t38 - 1);
    t40 = (t39 - 7);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t12 = (t36 + t43);
    t44 = *((unsigned char *)t12);
    t45 = (t35 != t44);
    t16 = t45;
    goto LAB26;

}


extern void work_a_3610762270_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3610762270_3212880686_p_0};
	xsi_register_didat("work_a_3610762270_3212880686", "isim/tb_top_processor_isim_beh.exe.sim/work/a_3610762270_3212880686.didat");
	xsi_register_executes(pe);
}
