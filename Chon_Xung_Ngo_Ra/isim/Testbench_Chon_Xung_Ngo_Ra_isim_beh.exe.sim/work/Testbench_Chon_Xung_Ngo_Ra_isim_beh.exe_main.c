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
    work_m_08460914193836529480_3250226253_init();
    work_m_04464146032759940934_3048804750_init();
    work_m_06960370101133877608_3980911944_init();
    work_m_10390298700170207241_0161757922_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_10390298700170207241_0161757922");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
