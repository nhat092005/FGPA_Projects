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
    work_m_09208678455931121379_2302417345_init();
    work_m_12321877621960513054_3542794079_init();
    work_m_17334921519769914777_3291519893_init();
    work_m_05682943858539908255_1430122060_init();
    work_m_14038027987792238322_3823007873_init();
    work_m_12327582943502128442_3259998080_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_12327582943502128442_3259998080");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
