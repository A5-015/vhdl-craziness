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
static const char *ng0 = "Function std_logic_vector_to_opcode_type ended without a return statement";



unsigned char work_p_2188849903_sub_651628915_1032961590(char *t1, char *t2)
{
    char t4[16];
    char t5[16];
    unsigned char t0;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 3;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 3);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t4 + 4U);
    t10 = (t2 != 0);
    if (t10 == 1)
        goto LAB3;

LAB2:    t11 = (t4 + 8U);
    *((char **)t11) = t5;
    t12 = (t1 + 4284);
    t14 = xsi_mem_cmp(t12, t2, 4U);
    if (t14 == 1)
        goto LAB5;

LAB22:    t15 = (t1 + 4288);
    t17 = xsi_mem_cmp(t15, t2, 4U);
    if (t17 == 1)
        goto LAB6;

LAB23:    t18 = (t1 + 4292);
    t20 = xsi_mem_cmp(t18, t2, 4U);
    if (t20 == 1)
        goto LAB7;

LAB24:    t21 = (t1 + 4296);
    t23 = xsi_mem_cmp(t21, t2, 4U);
    if (t23 == 1)
        goto LAB8;

LAB25:    t24 = (t1 + 4300);
    t26 = xsi_mem_cmp(t24, t2, 4U);
    if (t26 == 1)
        goto LAB9;

LAB26:    t27 = (t1 + 4304);
    t29 = xsi_mem_cmp(t27, t2, 4U);
    if (t29 == 1)
        goto LAB10;

LAB27:    t30 = (t1 + 4308);
    t32 = xsi_mem_cmp(t30, t2, 4U);
    if (t32 == 1)
        goto LAB11;

LAB28:    t33 = (t1 + 4312);
    t35 = xsi_mem_cmp(t33, t2, 4U);
    if (t35 == 1)
        goto LAB12;

LAB29:    t36 = (t1 + 4316);
    t38 = xsi_mem_cmp(t36, t2, 4U);
    if (t38 == 1)
        goto LAB13;

LAB30:    t39 = (t1 + 4320);
    t41 = xsi_mem_cmp(t39, t2, 4U);
    if (t41 == 1)
        goto LAB14;

LAB31:    t42 = (t1 + 4324);
    t44 = xsi_mem_cmp(t42, t2, 4U);
    if (t44 == 1)
        goto LAB15;

LAB32:    t45 = (t1 + 4328);
    t47 = xsi_mem_cmp(t45, t2, 4U);
    if (t47 == 1)
        goto LAB16;

LAB33:    t48 = (t1 + 4332);
    t50 = xsi_mem_cmp(t48, t2, 4U);
    if (t50 == 1)
        goto LAB17;

LAB34:    t51 = (t1 + 4336);
    t53 = xsi_mem_cmp(t51, t2, 4U);
    if (t53 == 1)
        goto LAB18;

LAB35:    t54 = (t1 + 4340);
    t56 = xsi_mem_cmp(t54, t2, 4U);
    if (t56 == 1)
        goto LAB19;

LAB36:    t57 = (t1 + 4344);
    t59 = xsi_mem_cmp(t57, t2, 4U);
    if (t59 == 1)
        goto LAB20;

LAB37:
LAB21:    t0 = (unsigned char)7;

LAB1:    return t0;
LAB3:    *((char **)t7) = t2;
    goto LAB2;

LAB4:    xsi_error(ng0);
    t0 = 0;
    goto LAB1;

LAB5:    t0 = (unsigned char)0;
    goto LAB1;

LAB6:    t0 = (unsigned char)1;
    goto LAB1;

LAB7:    t0 = (unsigned char)2;
    goto LAB1;

LAB8:    t0 = (unsigned char)3;
    goto LAB1;

LAB9:    t0 = (unsigned char)4;
    goto LAB1;

LAB10:    t0 = (unsigned char)5;
    goto LAB1;

LAB11:    t0 = (unsigned char)6;
    goto LAB1;

LAB12:    t0 = (unsigned char)7;
    goto LAB1;

LAB13:    t0 = (unsigned char)8;
    goto LAB1;

LAB14:    t0 = (unsigned char)9;
    goto LAB1;

LAB15:    t0 = (unsigned char)10;
    goto LAB1;

LAB16:    t0 = (unsigned char)11;
    goto LAB1;

LAB17:    t0 = (unsigned char)12;
    goto LAB1;

LAB18:    t0 = (unsigned char)13;
    goto LAB1;

LAB19:    t0 = (unsigned char)14;
    goto LAB1;

LAB20:    t0 = (unsigned char)15;
    goto LAB1;

LAB38:;
LAB39:    goto LAB4;

LAB40:    goto LAB4;

LAB41:    goto LAB4;

LAB42:    goto LAB4;

LAB43:    goto LAB4;

LAB44:    goto LAB4;

LAB45:    goto LAB4;

LAB46:    goto LAB4;

LAB47:    goto LAB4;

LAB48:    goto LAB4;

LAB49:    goto LAB4;

LAB50:    goto LAB4;

LAB51:    goto LAB4;

LAB52:    goto LAB4;

LAB53:    goto LAB4;

LAB54:    goto LAB4;

LAB55:    goto LAB4;

}


extern void work_p_2188849903_init()
{
	static char *se[] = {(void *)work_p_2188849903_sub_651628915_1032961590};
	xsi_register_didat("work_p_2188849903", "isim/top_FPGA_tb_isim_beh.exe.sim/work/p_2188849903.didat");
	xsi_register_subprogram_executes(se);
}
