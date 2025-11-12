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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_08293944881061990514_3511878592_init();
    work_m_08293944881061990514_1883929495_init();
    work_m_08293944881061990514_2550501546_init();
    work_m_10128803708789514441_3250226253_init();
    work_m_10928469439138033099_3967065893_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_10928469439138033099_3967065893");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
