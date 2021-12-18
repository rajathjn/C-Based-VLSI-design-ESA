// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _eq_HH_
#define _eq_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "eq_sitofp_32ns_32bkb.h"

namespace ap_rtl {

struct eq : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    eq(sc_module_name name);
    SC_HAS_PROCESS(eq);

    ~eq();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    eq_sitofp_32ns_32bkb<1,4,32,32>* eq_sitofp_32ns_32bkb_U1;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<65> > mul_ln4_fu_49_p2;
    sc_signal< sc_lv<65> > mul_ln4_reg_121;
    sc_signal< sc_lv<1> > tmp_2_reg_126;
    sc_signal< sc_lv<29> > tmp_reg_132;
    sc_signal< sc_lv<32> > add_ln4_fu_115_p2;
    sc_signal< sc_lv<32> > add_ln4_reg_137;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > sext_ln4_fu_45_p0;
    sc_signal< sc_lv<32> > mul_ln4_fu_49_p0;
    sc_signal< sc_lv<32> > tmp_2_fu_55_p1;
    sc_signal< sc_lv<65> > sub_ln4_fu_73_p2;
    sc_signal< sc_lv<29> > tmp_3_fu_78_p4;
    sc_signal< sc_lv<32> > sext_ln4_1_fu_88_p1;
    sc_signal< sc_lv<32> > sext_ln4_2_fu_92_p1;
    sc_signal< sc_lv<32> > select_ln4_fu_95_p3;
    sc_signal< sc_lv<32> > sub_ln4_1_fu_102_p2;
    sc_signal< sc_lv<32> > select_ln4_1_fu_108_p3;
    sc_signal< sc_lv<32> > grp_fu_42_p1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<65> ap_const_lv65_19999999A;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<65> ap_const_lv65_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln4_fu_115_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_mul_ln4_fu_49_p0();
    void thread_mul_ln4_fu_49_p2();
    void thread_select_ln4_1_fu_108_p3();
    void thread_select_ln4_fu_95_p3();
    void thread_sext_ln4_1_fu_88_p1();
    void thread_sext_ln4_2_fu_92_p1();
    void thread_sext_ln4_fu_45_p0();
    void thread_sub_ln4_1_fu_102_p2();
    void thread_sub_ln4_fu_73_p2();
    void thread_tmp_2_fu_55_p1();
    void thread_tmp_3_fu_78_p4();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
