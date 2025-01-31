// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _parse_HH_
#define _parse_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct parse : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > sig_i_V_dout;
    sc_in< sc_logic > sig_i_V_empty_n;
    sc_out< sc_logic > sig_i_V_read;
    sc_in< sc_lv<32> > hits_dout;
    sc_in< sc_logic > hits_empty_n;
    sc_out< sc_logic > hits_read;
    sc_in< sc_lv<32> > loc_V_dout;
    sc_in< sc_logic > loc_V_empty_n;
    sc_out< sc_logic > loc_V_read;
    sc_out< sc_lv<32> > sig_o_V_din;
    sc_in< sc_logic > sig_o_V_full_n;
    sc_out< sc_logic > sig_o_V_write;


    // Module declarations
    parse(sc_module_name name);
    SC_HAS_PROCESS(parse);

    ~parse();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_logic > sig_i_V_blk_n;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_5_i_i_fu_214_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_10_i_i_fu_245_p2;
    sc_signal< sc_logic > hits_blk_n;
    sc_signal< sc_logic > loc_V_blk_n;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_i_i_fu_142_p2;
    sc_signal< sc_logic > sig_o_V_blk_n;
    sc_signal< sc_lv<32> > hits_read_reg_249;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<31> > i_fu_147_p2;
    sc_signal< sc_lv<31> > i_reg_257;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<32> > tmp_4_reg_262;
    sc_signal< sc_lv<32> > e_fu_158_p2;
    sc_signal< sc_lv<32> > e_reg_269;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > tmp_1_i_i_fu_176_p3;
    sc_signal< sc_lv<32> > tmp_1_i_i_reg_275;
    sc_signal< sc_lv<32> > e_1_fu_189_p3;
    sc_signal< sc_lv<32> > e_1_reg_282;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > smax9_i_i_fu_201_p3;
    sc_signal< sc_lv<32> > smax9_i_i_reg_289;
    sc_signal< sc_lv<32> > tmp_3_i_i_fu_208_p2;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<32> > tmp_7_i_i_fu_219_p2;
    sc_signal< sc_lv<32> > tmp_7_i_i_reg_303;
    sc_signal< sc_lv<1> > tmp_8_i_i_fu_224_p2;
    sc_signal< sc_lv<1> > tmp_8_i_i_reg_309;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > read_count_fu_233_p2;
    sc_signal< sc_lv<32> > read_count_reg_314;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > read_count_1_fu_239_p2;
    sc_signal< sc_lv<32> > read_count_1_reg_319;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > read_count_i_i_reg_96;
    sc_signal< bool > ap_block_state9;
    sc_signal< sc_lv<31> > i_i_i_reg_108;
    sc_signal< sc_lv<32> > read_count_1_i_i_reg_119;
    sc_signal< sc_lv<32> > read_count_2_in_i_i_reg_129;
    sc_signal< sc_lv<32> > i_i_i_cast_fu_138_p1;
    sc_signal< sc_lv<32> > b_fu_153_p2;
    sc_signal< sc_lv<1> > tmp_fu_163_p3;
    sc_signal< sc_lv<32> > p_op_i_i_fu_171_p2;
    sc_signal< sc_lv<1> > tmp_i_i_11_fu_184_p2;
    sc_signal< sc_lv<1> > tmp_2_i_i_fu_196_p2;
    sc_signal< sc_lv<32> > smax8_i_i_fu_228_p3;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_FFFFFC17;
    static const sc_lv<32> ap_const_lv32_3E8;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFC16;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_927BF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_block_state5();
    void thread_ap_block_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_b_fu_153_p2();
    void thread_e_1_fu_189_p3();
    void thread_e_fu_158_p2();
    void thread_hits_blk_n();
    void thread_hits_read();
    void thread_i_fu_147_p2();
    void thread_i_i_i_cast_fu_138_p1();
    void thread_loc_V_blk_n();
    void thread_loc_V_read();
    void thread_p_op_i_i_fu_171_p2();
    void thread_read_count_1_fu_239_p2();
    void thread_read_count_fu_233_p2();
    void thread_sig_i_V_blk_n();
    void thread_sig_i_V_read();
    void thread_sig_o_V_blk_n();
    void thread_sig_o_V_din();
    void thread_sig_o_V_write();
    void thread_smax8_i_i_fu_228_p3();
    void thread_smax9_i_i_fu_201_p3();
    void thread_tmp_10_i_i_fu_245_p2();
    void thread_tmp_1_i_i_fu_176_p3();
    void thread_tmp_2_i_i_fu_196_p2();
    void thread_tmp_3_i_i_fu_208_p2();
    void thread_tmp_5_i_i_fu_214_p2();
    void thread_tmp_7_i_i_fu_219_p2();
    void thread_tmp_8_i_i_fu_224_p2();
    void thread_tmp_fu_163_p3();
    void thread_tmp_i_i_11_fu_184_p2();
    void thread_tmp_i_i_fu_142_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
