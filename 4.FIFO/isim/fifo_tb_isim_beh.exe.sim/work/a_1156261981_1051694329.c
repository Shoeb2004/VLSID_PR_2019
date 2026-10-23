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
static const char *ng0 = "C:/Xilinx/42279/fifo/fifo.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1156261981_1051694329_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(27, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5168);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1156261981_1051694329_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(28, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5344);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5184);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1156261981_1051694329_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    int t23;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 5200);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(128U);
    memset(t1, 0, 128U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 5408);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 128U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(39, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t5 = (t0 + 5472);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 5664);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB3;

LAB5:    t9 = (128U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t8 = *((unsigned char *)t5);
    t15 = (t8 == (unsigned char)3);
    if (t15 == 1)
        goto LAB12;

LAB13:    t4 = (unsigned char)0;

LAB14:    if (t4 != 0)
        goto LAB9;

LAB11:
LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t8 = (t4 == (unsigned char)3);
    if (t8 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t1 = (t0 + 3248U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t23 = (t19 - 1);
    t3 = (t18 == t23);
    if (t3 != 0)
        goto LAB21;

LAB23:
LAB22:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t1 = (t0 + 3248U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t23 = (t19 - 1);
    t3 = (t18 == t23);
    if (t3 != 0)
        goto LAB24;

LAB26:
LAB25:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t3 = (t18 == 0);
    if (t3 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5536);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB28:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t1 = (t0 + 3248U);
    t5 = *((char **)t1);
    t19 = *((int *)t5);
    t3 = (t18 == t19);
    if (t3 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 5600);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB31:    goto LAB3;

LAB9:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2312U);
    t10 = *((char **)t2);
    t2 = (t0 + 2472U);
    t11 = *((char **)t2);
    t18 = *((int *)t11);
    t19 = (t18 - 0);
    t6 = (t19 * 1);
    xsi_vhdl_check_range_of_index(0, 15, 1, t18);
    t9 = (8U * t6);
    t20 = (0 + t9);
    t2 = (t10 + t20);
    t12 = (t0 + 5472);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t21 = (t14 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t2, 8U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t19 = (t18 + 1);
    t1 = (t0 + 5664);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t19;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t19 = (t18 - 1);
    t1 = (t0 + 3368U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;
    goto LAB10;

LAB12:    t2 = (t0 + 2792U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)2);
    t4 = t17;
    goto LAB14;

LAB15:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1672U);
    t7 = *((char **)t1);
    t1 = (t0 + 2632U);
    t10 = *((char **)t1);
    t18 = *((int *)t10);
    t19 = (t18 - 0);
    t6 = (t19 * 1);
    t9 = (8U * t6);
    t20 = (0U + t9);
    t1 = (t0 + 5408);
    t11 = (t1 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_delta(t1, t20, 8U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t19 = (t18 + 1);
    t1 = (t0 + 5728);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t19;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3368U);
    t2 = *((char **)t1);
    t18 = *((int *)t2);
    t19 = (t18 + 1);
    t1 = (t0 + 3368U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;
    goto LAB16;

LAB18:    t1 = (t0 + 2952U);
    t5 = *((char **)t1);
    t15 = *((unsigned char *)t5);
    t16 = (t15 == (unsigned char)2);
    t3 = t16;
    goto LAB20;

LAB21:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5664);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB22;

LAB24:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5728);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((int *)t12) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB25;

LAB27:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5536);
    t5 = (t1 + 56U);
    t7 = *((char **)t5);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB28;

LAB30:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5600);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB31;

}


extern void work_a_1156261981_1051694329_init()
{
	static char *pe[] = {(void *)work_a_1156261981_1051694329_p_0,(void *)work_a_1156261981_1051694329_p_1,(void *)work_a_1156261981_1051694329_p_2};
	xsi_register_didat("work_a_1156261981_1051694329", "isim/fifo_tb_isim_beh.exe.sim/work/a_1156261981_1051694329.didat");
	xsi_register_executes(pe);
}
