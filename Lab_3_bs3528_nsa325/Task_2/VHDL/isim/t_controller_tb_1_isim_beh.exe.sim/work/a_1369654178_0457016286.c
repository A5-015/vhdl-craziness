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
static const char *ng0 = "C:/Users/bs3528/Documents/GitHub/vhdl-craziness/Lab_3_bs3528_nsa325/Task_2/VHDL/t_controller.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1369654178_0457016286_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(124, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 3752U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 7088);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 7088);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_1369654178_0457016286_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB6, &&LAB7};

LAB0:    xsi_set_current_line(146, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(148, ng0);
    t3 = (t0 + 3592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(152, ng0);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t9 = *((int *)t8);
    t10 = (t9 == 0);
    if (t10 == 1)
        goto LAB11;

LAB12:    t6 = (unsigned char)0;

LAB13:    if (t6 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB15:
LAB9:    goto LAB5;

LAB7:    xsi_set_current_line(162, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB5;

LAB8:    xsi_set_current_line(153, ng0);
    t7 = (t0 + 7152);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

LAB11:    t7 = (t0 + 2952U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t13 = (t12 == (unsigned char)1);
    t6 = t13;
    goto LAB13;

LAB14:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 7152);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB16:    xsi_set_current_line(163, ng0);
    t1 = (t0 + 7152);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB17;

}

static void work_a_1369654178_0457016286_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    int t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    static char *nl0[] = {&&LAB6, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(182, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6976);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(184, ng0);
    t3 = (t0 + 3592U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(189, ng0);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t9 = *((int *)t8);
    t7 = (t0 + 4408U);
    t10 = *((char **)t7);
    t11 = *((int *)t10);
    t12 = (t9 == t11);
    if (t12 == 1)
        goto LAB17;

LAB18:    t6 = (unsigned char)0;

LAB19:    if (t6 != 0)
        goto LAB14;

LAB16:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4408U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t5 = (t9 == t11);
    if (t5 == 1)
        goto LAB22;

LAB23:    t2 = (unsigned char)0;

LAB24:    if (t2 != 0)
        goto LAB20;

LAB21:    xsi_set_current_line(198, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB5;

LAB7:    xsi_set_current_line(205, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4168U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t9 == t11);
    if (t2 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(210, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB26:    goto LAB5;

LAB8:    xsi_set_current_line(217, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4408U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t9 == t11);
    if (t2 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(222, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB29:    goto LAB5;

LAB9:    xsi_set_current_line(228, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4168U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t6 = (t9 == t11);
    if (t6 == 1)
        goto LAB37;

LAB38:    t5 = (unsigned char)0;

LAB39:    if (t5 == 1)
        goto LAB34;

LAB35:    t2 = (unsigned char)0;

LAB36:    if (t2 != 0)
        goto LAB31;

LAB33:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4288U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t6 = (t9 == t11);
    if (t6 == 1)
        goto LAB45;

LAB46:    t5 = (unsigned char)0;

LAB47:    if (t5 == 1)
        goto LAB42;

LAB43:    t2 = (unsigned char)0;

LAB44:    if (t2 != 0)
        goto LAB40;

LAB41:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4168U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t5 = (t9 == t11);
    if (t5 == 1)
        goto LAB50;

LAB51:    t2 = (unsigned char)0;

LAB52:    if (t2 != 0)
        goto LAB48;

LAB49:    xsi_set_current_line(243, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB32:    goto LAB5;

LAB10:    xsi_set_current_line(250, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4408U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t9 == t11);
    if (t2 != 0)
        goto LAB53;

LAB55:    xsi_set_current_line(255, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB54:    goto LAB5;

LAB11:    xsi_set_current_line(261, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4408U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t5 = (t9 == t11);
    if (t5 == 1)
        goto LAB59;

LAB60:    t2 = (unsigned char)0;

LAB61:    if (t2 != 0)
        goto LAB56;

LAB58:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4408U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t5 = (t9 == t11);
    if (t5 == 1)
        goto LAB64;

LAB65:    t2 = (unsigned char)0;

LAB66:    if (t2 != 0)
        goto LAB62;

LAB63:    xsi_set_current_line(270, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB57:    goto LAB5;

LAB12:    xsi_set_current_line(276, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4168U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t9 == t11);
    if (t2 != 0)
        goto LAB67;

LAB69:    xsi_set_current_line(281, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB68:    goto LAB5;

LAB13:    xsi_set_current_line(287, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 4528U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t2 = (t9 == t11);
    if (t2 != 0)
        goto LAB70;

LAB72:    xsi_set_current_line(292, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t11 = (t9 + 1);
    t1 = (t0 + 7280);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB71:    goto LAB5;

LAB14:    xsi_set_current_line(190, ng0);
    t7 = (t0 + 7216);
    t16 = (t7 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)6;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(191, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    t7 = (t0 + 2952U);
    t13 = *((char **)t7);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)1);
    t6 = t15;
    goto LAB19;

LAB20:    xsi_set_current_line(194, ng0);
    t1 = (t0 + 7216);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    *((unsigned char *)t16) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(195, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB22:    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t6 = *((unsigned char *)t7);
    t12 = (t6 == (unsigned char)0);
    t2 = t12;
    goto LAB24;

LAB25:    xsi_set_current_line(206, ng0);
    t1 = (t0 + 7216);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(207, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB26;

LAB28:    xsi_set_current_line(218, ng0);
    t1 = (t0 + 7216);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(219, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB31:    xsi_set_current_line(229, ng0);
    t1 = (t0 + 7344);
    t10 = (t1 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(230, ng0);
    t1 = (t0 + 7216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(231, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB34:    t1 = (t0 + 3112U);
    t8 = *((char **)t1);
    t15 = *((unsigned char *)t8);
    t20 = (t15 == (unsigned char)0);
    t2 = t20;
    goto LAB36;

LAB37:    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t12 = *((unsigned char *)t7);
    t14 = (t12 == (unsigned char)3);
    t5 = t14;
    goto LAB39;

LAB40:    xsi_set_current_line(234, ng0);
    t1 = (t0 + 7344);
    t10 = (t1 + 56U);
    t13 = *((char **)t10);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(235, ng0);
    t1 = (t0 + 7216);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(236, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB42:    t1 = (t0 + 3112U);
    t8 = *((char **)t1);
    t15 = *((unsigned char *)t8);
    t20 = (t15 == (unsigned char)1);
    t2 = t20;
    goto LAB44;

LAB45:    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t12 = *((unsigned char *)t7);
    t14 = (t12 == (unsigned char)3);
    t5 = t14;
    goto LAB47;

LAB48:    xsi_set_current_line(239, ng0);
    t1 = (t0 + 7216);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    *((unsigned char *)t16) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(240, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB32;

LAB50:    t1 = (t0 + 1032U);
    t7 = *((char **)t1);
    t6 = *((unsigned char *)t7);
    t12 = (t6 == (unsigned char)2);
    t2 = t12;
    goto LAB52;

LAB53:    xsi_set_current_line(251, ng0);
    t1 = (t0 + 7216);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(252, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB54;

LAB56:    xsi_set_current_line(262, ng0);
    t1 = (t0 + 7216);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    *((unsigned char *)t16) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(263, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB57;

LAB59:    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t6 = *((unsigned char *)t7);
    t12 = (t6 == (unsigned char)0);
    t2 = t12;
    goto LAB61;

LAB62:    xsi_set_current_line(266, ng0);
    t1 = (t0 + 7216);
    t8 = (t1 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    *((unsigned char *)t16) = (unsigned char)6;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(267, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB57;

LAB64:    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t6 = *((unsigned char *)t7);
    t12 = (t6 == (unsigned char)1);
    t2 = t12;
    goto LAB66;

LAB67:    xsi_set_current_line(277, ng0);
    t1 = (t0 + 7216);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)5;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(278, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB68;

LAB70:    xsi_set_current_line(288, ng0);
    t1 = (t0 + 7216);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(289, ng0);
    t1 = (t0 + 7280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB71;

}

static void work_a_1369654178_0457016286_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(311, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(313, ng0);
    t5 = (t0 + 3592U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)7);
    if (t8 == 1)
        goto LAB11;

LAB12:    t4 = (unsigned char)0;

LAB13:    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3592U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t7 = (t4 == (unsigned char)7);
    if (t7 == 1)
        goto LAB19;

LAB20:    t3 = (unsigned char)0;

LAB21:    if (t3 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(322, ng0);
    t1 = (t0 + 3432U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t15 = (t13 + 1);
    t1 = (t0 + 7472);
    t6 = (t1 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    *((int *)t14) = t15;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(314, ng0);
    t5 = (t0 + 7408);
    t17 = (t5 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(315, ng0);
    t1 = (t0 + 7472);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    t5 = (t0 + 3432U);
    t12 = *((char **)t5);
    t13 = *((int *)t12);
    t5 = (t0 + 4648U);
    t14 = *((char **)t5);
    t15 = *((int *)t14);
    t16 = (t13 == t15);
    t3 = t16;
    goto LAB10;

LAB11:    t5 = (t0 + 3272U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t4 = t11;
    goto LAB13;

LAB14:    xsi_set_current_line(318, ng0);
    t1 = (t0 + 7408);
    t14 = (t1 + 56U);
    t17 = *((char **)t14);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(319, ng0);
    t1 = (t0 + 7472);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB16:    t1 = (t0 + 3432U);
    t9 = *((char **)t1);
    t13 = *((int *)t9);
    t1 = (t0 + 4648U);
    t12 = *((char **)t1);
    t15 = *((int *)t12);
    t11 = (t13 == t15);
    t2 = t11;
    goto LAB18;

LAB19:    t1 = (t0 + 3272U);
    t6 = *((char **)t1);
    t8 = *((unsigned char *)t6);
    t10 = (t8 == (unsigned char)2);
    t3 = t10;
    goto LAB21;

}

static void work_a_1369654178_0457016286_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6, &&LAB7, &&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(338, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 7008);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(341, ng0);
    t4 = (t0 + 7536);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(342, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(343, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(344, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(345, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(346, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(347, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(350, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(351, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(352, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(353, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(354, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(355, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(356, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(359, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(360, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(361, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(362, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(363, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(364, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(365, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(368, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(369, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(370, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(371, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(372, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(373, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(374, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(377, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(378, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(379, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(380, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(381, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(382, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(383, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(386, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(387, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(388, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(389, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(390, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(391, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(392, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(395, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(396, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(397, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(398, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(399, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(400, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(401, ng0);
    t1 = (t0 + 7920);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(404, ng0);
    t1 = (t0 + 7536);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(405, ng0);
    t1 = (t0 + 7600);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(406, ng0);
    t1 = (t0 + 7664);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(407, ng0);
    t1 = (t0 + 7728);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(408, ng0);
    t1 = (t0 + 7792);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(409, ng0);
    t1 = (t0 + 7856);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(410, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7920);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

}


extern void work_a_1369654178_0457016286_init()
{
	static char *pe[] = {(void *)work_a_1369654178_0457016286_p_0,(void *)work_a_1369654178_0457016286_p_1,(void *)work_a_1369654178_0457016286_p_2,(void *)work_a_1369654178_0457016286_p_3,(void *)work_a_1369654178_0457016286_p_4};
	xsi_register_didat("work_a_1369654178_0457016286", "isim/t_controller_tb_1_isim_beh.exe.sim/work/a_1369654178_0457016286.didat");
	xsi_register_executes(pe);
}
