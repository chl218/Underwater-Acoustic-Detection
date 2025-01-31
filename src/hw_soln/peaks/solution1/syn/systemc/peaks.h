// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _peaks_HH_
#define _peaks_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "peaks_urem_7ns_3ns_7_11.h"
#include "peaks_mul_9ns_7ns_16_3.h"
#include "peaks_mul_7ns_9ns_16_3.h"

namespace ap_rtl {

struct peaks : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > signals_0_address0;
    sc_out< sc_logic > signals_0_ce0;
    sc_in< sc_lv<32> > signals_0_q0;
    sc_out< sc_lv<6> > signals_0_address1;
    sc_out< sc_logic > signals_0_ce1;
    sc_in< sc_lv<32> > signals_0_q1;
    sc_out< sc_lv<6> > signals_1_address0;
    sc_out< sc_logic > signals_1_ce0;
    sc_in< sc_lv<32> > signals_1_q0;
    sc_out< sc_lv<6> > signals_1_address1;
    sc_out< sc_logic > signals_1_ce1;
    sc_in< sc_lv<32> > signals_1_q1;
    sc_out< sc_lv<6> > signals_2_address0;
    sc_out< sc_logic > signals_2_ce0;
    sc_in< sc_lv<32> > signals_2_q0;
    sc_out< sc_lv<6> > signals_2_address1;
    sc_out< sc_logic > signals_2_ce1;
    sc_in< sc_lv<32> > signals_2_q1;
    sc_out< sc_lv<6> > amplitude_address0;
    sc_out< sc_logic > amplitude_ce0;
    sc_out< sc_logic > amplitude_we0;
    sc_out< sc_lv<32> > amplitude_d0;
    sc_out< sc_lv<6> > locations_address0;
    sc_out< sc_logic > locations_ce0;
    sc_out< sc_logic > locations_we0;
    sc_out< sc_lv<32> > locations_d0;


    // Module declarations
    peaks(sc_module_name name);
    SC_HAS_PROCESS(peaks);

    ~peaks();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    peaks_urem_7ns_3ns_7_11<1,11,7,3,7>* peaks_urem_7ns_3ns_7_11_U0;
    peaks_urem_7ns_3ns_7_11<1,11,7,3,7>* peaks_urem_7ns_3ns_7_11_U1;
    peaks_mul_9ns_7ns_16_3<1,3,9,7,16>* peaks_mul_9ns_7ns_16_3_U2;
    peaks_mul_9ns_7ns_16_3<1,3,9,7,16>* peaks_mul_9ns_7ns_16_3_U3;
    peaks_mul_7ns_9ns_16_3<1,3,7,9,16>* peaks_mul_7ns_9ns_16_3_U4;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_25;
    sc_signal< sc_lv<7> > i_reg_274;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it1;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_4;
    sc_signal< bool > ap_sig_bdd_81;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it2;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it3;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it4;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it5;
    sc_signal< sc_lv<7> > ap_reg_ppstg_i_reg_274_pp0_it6;
    sc_signal< sc_lv<32> > reg_289;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_114;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg1_fsm_5;
    sc_signal< bool > ap_sig_bdd_121;
    sc_signal< sc_logic > ap_sig_cseq_ST_st26_fsm_7;
    sc_signal< bool > ap_sig_bdd_130;
    sc_signal< sc_lv<32> > reg_295;
    sc_signal< sc_lv<32> > reg_299;
    sc_signal< sc_lv<1> > tmp_5_reg_673;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_5_reg_673_pp0_it8;
    sc_signal< sc_lv<1> > sel_tmp6_reg_651;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp6_reg_651_pp0_it8;
    sc_signal< sc_lv<32> > i_cast_fu_319_p1;
    sc_signal< sc_lv<32> > i_cast_reg_563;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it1;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it2;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it3;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it4;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it5;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it6;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it8;
    sc_signal< sc_lv<32> > ap_reg_ppstg_i_cast_reg_563_pp0_it9;
    sc_signal< sc_lv<1> > exitcond_fu_323_p2;
    sc_signal< sc_lv<1> > exitcond_reg_568;
    sc_signal< sc_lv<7> > tmp_2_fu_329_p2;
    sc_signal< sc_lv<7> > tmp_2_reg_572;
    sc_signal< sc_lv<7> > ap_reg_ppstg_tmp_2_reg_572_pp0_it1;
    sc_signal< sc_lv<7> > ap_reg_ppstg_tmp_2_reg_572_pp0_it2;
    sc_signal< sc_lv<7> > ap_reg_ppstg_tmp_2_reg_572_pp0_it3;
    sc_signal< sc_lv<7> > i_1_fu_346_p2;
    sc_signal< sc_lv<7> > i_1_reg_578;
    sc_signal< sc_lv<7> > tmp_4_reg_593;
    sc_signal< sc_lv<3> > tmp_12_fu_387_p1;
    sc_signal< sc_lv<3> > tmp_12_reg_613;
    sc_signal< sc_lv<7> > tmp_8_reg_619;
    sc_signal< sc_lv<3> > tmp_11_fu_401_p1;
    sc_signal< sc_lv<3> > tmp_11_reg_624;
    sc_signal< sc_lv<1> > sel_tmp4_fu_411_p2;
    sc_signal< sc_lv<1> > sel_tmp4_reg_645;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp4_reg_645_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp4_reg_645_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp4_reg_645_pp0_it8;
    sc_signal< sc_lv<1> > sel_tmp6_fu_416_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp6_reg_651_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_sel_tmp6_reg_651_pp0_it7;
    sc_signal< sc_lv<32> > signals_load_5_phi_fu_439_p3;
    sc_signal< sc_lv<32> > signals_load_5_phi_reg_657;
    sc_signal< sc_lv<32> > sel_tmp5_fu_447_p3;
    sc_signal< sc_lv<32> > sel_tmp5_reg_662;
    sc_signal< sc_lv<32> > signals_load_6_phi_fu_454_p3;
    sc_signal< sc_lv<32> > signals_load_6_phi_reg_667;
    sc_signal< sc_lv<32> > ap_reg_ppstg_signals_load_6_phi_reg_667_pp0_it7;
    sc_signal< sc_lv<32> > ap_reg_ppstg_signals_load_6_phi_reg_667_pp0_it8;
    sc_signal< sc_lv<1> > tmp_5_fu_460_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_5_reg_673_pp0_it7;
    sc_signal< sc_lv<7> > tmp_7_fu_465_p2;
    sc_signal< sc_lv<7> > tmp_7_reg_677;
    sc_signal< sc_lv<7> > tmp_10_reg_687;
    sc_signal< sc_lv<32> > sel_tmp3_fu_496_p3;
    sc_signal< sc_lv<32> > sel_tmp3_reg_707;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_6;
    sc_signal< bool > ap_sig_bdd_286;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_295;
    sc_signal< sc_lv<1> > peak_1_ph_reg_261;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_310;
    sc_signal< sc_lv<1> > tmp_fu_304_p2;
    sc_signal< sc_lv<7> > i_phi_fu_278_p4;
    sc_signal< sc_lv<64> > newIndex2_fu_381_p1;
    sc_signal< sc_lv<64> > newIndex4_fu_405_p1;
    sc_signal< sc_lv<64> > newIndex9_fu_490_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_514_p1;
    sc_signal< sc_lv<1> > tmp_9_fu_509_p2;
    sc_signal< sc_lv<64> > tmp_6_fu_537_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st27_fsm_8;
    sc_signal< bool > ap_sig_bdd_350;
    sc_signal< sc_lv<1> > tmp_1_fu_531_p2;
    sc_signal< sc_lv<32> > peak_1_fu_68;
    sc_signal< sc_lv<32> > peak_1_ph_cast_fu_310_p1;
    sc_signal< sc_lv<32> > peak_fu_520_p2;
    sc_signal< sc_lv<3> > grp_fu_335_p1;
    sc_signal< sc_lv<3> > grp_fu_341_p1;
    sc_signal< sc_lv<9> > grp_fu_355_p0;
    sc_signal< sc_lv<7> > grp_fu_355_p1;
    sc_signal< sc_lv<9> > grp_fu_365_p0;
    sc_signal< sc_lv<7> > grp_fu_365_p1;
    sc_signal< sc_lv<16> > grp_fu_355_p2;
    sc_signal< sc_lv<7> > grp_fu_335_p2;
    sc_signal< sc_lv<16> > grp_fu_365_p2;
    sc_signal< sc_lv<7> > grp_fu_341_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_421_p2;
    sc_signal< sc_lv<1> > sel_tmp2_fu_434_p2;
    sc_signal< sc_lv<32> > sel_tmp1_fu_426_p3;
    sc_signal< sc_lv<7> > grp_fu_474_p0;
    sc_signal< sc_lv<9> > grp_fu_474_p1;
    sc_signal< sc_lv<16> > grp_fu_474_p2;
    sc_signal< sc_lv<32> > signals_load_8_phi_fu_503_p3;
    sc_signal< sc_logic > grp_fu_335_ce;
    sc_signal< sc_logic > grp_fu_341_ce;
    sc_signal< sc_logic > grp_fu_355_ce;
    sc_signal< sc_logic > grp_fu_365_ce;
    sc_signal< sc_logic > grp_fu_474_ce;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_lv<16> > grp_fu_355_p10;
    sc_signal< sc_lv<16> > grp_fu_365_p10;
    sc_signal< sc_lv<16> > grp_fu_474_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_st1_fsm_0;
    static const sc_lv<9> ap_ST_st2_fsm_1;
    static const sc_lv<9> ap_ST_st3_fsm_2;
    static const sc_lv<9> ap_ST_st4_fsm_3;
    static const sc_lv<9> ap_ST_pp0_stg0_fsm_4;
    static const sc_lv<9> ap_ST_pp0_stg1_fsm_5;
    static const sc_lv<9> ap_ST_st25_fsm_6;
    static const sc_lv<9> ap_ST_st26_fsm_7;
    static const sc_lv<9> ap_ST_st27_fsm_8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<64> ap_const_lv64_21;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_63;
    static const sc_lv<7> ap_const_lv7_63;
    static const sc_lv<7> ap_const_lv7_7F;
    static const sc_lv<7> ap_const_lv7_3;
    static const sc_lv<16> ap_const_lv16_AB;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_amplitude_address0();
    void thread_amplitude_ce0();
    void thread_amplitude_d0();
    void thread_amplitude_we0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_114();
    void thread_ap_sig_bdd_121();
    void thread_ap_sig_bdd_130();
    void thread_ap_sig_bdd_25();
    void thread_ap_sig_bdd_286();
    void thread_ap_sig_bdd_295();
    void thread_ap_sig_bdd_310();
    void thread_ap_sig_bdd_350();
    void thread_ap_sig_bdd_81();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_4();
    void thread_ap_sig_cseq_ST_pp0_stg1_fsm_5();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st25_fsm_6();
    void thread_ap_sig_cseq_ST_st26_fsm_7();
    void thread_ap_sig_cseq_ST_st27_fsm_8();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_exitcond_fu_323_p2();
    void thread_grp_fu_335_ce();
    void thread_grp_fu_335_p1();
    void thread_grp_fu_341_ce();
    void thread_grp_fu_341_p1();
    void thread_grp_fu_355_ce();
    void thread_grp_fu_355_p0();
    void thread_grp_fu_355_p1();
    void thread_grp_fu_355_p10();
    void thread_grp_fu_365_ce();
    void thread_grp_fu_365_p0();
    void thread_grp_fu_365_p1();
    void thread_grp_fu_365_p10();
    void thread_grp_fu_474_ce();
    void thread_grp_fu_474_p0();
    void thread_grp_fu_474_p00();
    void thread_grp_fu_474_p1();
    void thread_i_1_fu_346_p2();
    void thread_i_cast_fu_319_p1();
    void thread_i_phi_fu_278_p4();
    void thread_locations_address0();
    void thread_locations_ce0();
    void thread_locations_d0();
    void thread_locations_we0();
    void thread_newIndex2_fu_381_p1();
    void thread_newIndex4_fu_405_p1();
    void thread_newIndex9_fu_490_p1();
    void thread_peak_1_ph_cast_fu_310_p1();
    void thread_peak_fu_520_p2();
    void thread_sel_tmp1_fu_426_p3();
    void thread_sel_tmp2_fu_434_p2();
    void thread_sel_tmp3_fu_496_p3();
    void thread_sel_tmp4_fu_411_p2();
    void thread_sel_tmp5_fu_447_p3();
    void thread_sel_tmp6_fu_416_p2();
    void thread_sel_tmp_fu_421_p2();
    void thread_signals_0_address0();
    void thread_signals_0_address1();
    void thread_signals_0_ce0();
    void thread_signals_0_ce1();
    void thread_signals_1_address0();
    void thread_signals_1_address1();
    void thread_signals_1_ce0();
    void thread_signals_1_ce1();
    void thread_signals_2_address0();
    void thread_signals_2_address1();
    void thread_signals_2_ce0();
    void thread_signals_2_ce1();
    void thread_signals_load_5_phi_fu_439_p3();
    void thread_signals_load_6_phi_fu_454_p3();
    void thread_signals_load_8_phi_fu_503_p3();
    void thread_tmp_11_fu_401_p1();
    void thread_tmp_12_fu_387_p1();
    void thread_tmp_1_fu_531_p2();
    void thread_tmp_2_fu_329_p2();
    void thread_tmp_5_fu_460_p2();
    void thread_tmp_6_fu_537_p1();
    void thread_tmp_7_fu_465_p2();
    void thread_tmp_9_fu_509_p2();
    void thread_tmp_fu_304_p2();
    void thread_tmp_s_fu_514_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
