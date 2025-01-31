-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parse_audio_parse_signal is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    signal_r_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    signal_r_ce0 : OUT STD_LOGIC;
    signal_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    locs_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    locs_ce0 : OUT STD_LOGIC;
    locs_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    locs_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    locs_ce1 : OUT STD_LOGIC;
    locs_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    pairs_amplitude_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    pairs_amplitude_V_full_n : IN STD_LOGIC;
    pairs_amplitude_V_write : OUT STD_LOGIC;
    pairs_duration_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    pairs_duration_V_full_n : IN STD_LOGIC;
    pairs_duration_V_write : OUT STD_LOGIC );
end;


architecture behav of parse_audio_parse_signal is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_pp0_stg0_fsm_6 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_st9_fsm_7 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_C : STD_LOGIC_VECTOR (3 downto 0) := "1100";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_27 : BOOLEAN;
    signal b1_reg_136 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_151_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_222 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_66 : BOOLEAN;
    signal j_cast1_fu_157_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond5_fu_145_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal locs_addr_reg_232 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_83 : BOOLEAN;
    signal exitcond_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal b_reg_245 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_94 : BOOLEAN;
    signal e_reg_253 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_260 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_104 : BOOLEAN;
    signal duration_fu_191_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal duration_reg_265 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_113 : BOOLEAN;
    signal tmp_6_fu_197_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_reg_270 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_122 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_130 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal b_1_fu_207_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_1_fu_213_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st9_fsm_7 : STD_LOGIC;
    signal ap_sig_bdd_153 : BOOLEAN;
    signal j_reg_115 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_bdd_166 : BOOLEAN;
    signal j1_reg_126 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_161_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_172_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_202_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_fu_186_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal smax_fu_181_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_145_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_lv1_0 = tmp_6_fu_197_p2))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((ap_const_lv1_0 = tmp_6_fu_197_p2)))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_lv1_0 = tmp_6_fu_197_p2)))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- b1_reg_136 assign process. --
    b1_reg_136_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and not((ap_const_lv1_0 = tmp_6_fu_197_p2)))) then 
                b1_reg_136 <= b_1_fu_207_p2;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
                b1_reg_136 <= b_reg_245;
            end if; 
        end if;
    end process;

    -- j1_reg_126 assign process. --
    j1_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_145_p2 = ap_const_lv1_0))) then 
                j1_reg_126 <= j_cast1_fu_157_p1;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_7) and not((pairs_duration_V_full_n = ap_const_logic_0)))) then 
                j1_reg_126 <= j_1_fu_213_p2;
            end if; 
        end if;
    end process;

    -- j_reg_115 assign process. --
    j_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = exitcond_fu_166_p2)))) then 
                j_reg_115 <= i_reg_222;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_166))) then 
                j_reg_115 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                b_reg_245 <= locs_q0;
                e_reg_253 <= locs_q1;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
                duration_reg_265 <= duration_fu_191_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i_reg_222 <= i_fu_151_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (exitcond5_fu_145_p2 = ap_const_lv1_0))) then
                locs_addr_reg_232 <= tmp_fu_161_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                tmp_3_reg_260 <= tmp_3_fu_177_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                tmp_6_reg_270 <= tmp_6_fu_197_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, pairs_duration_V_full_n, exitcond5_fu_145_p2, exitcond_fu_166_p2, tmp_6_fu_197_p2, ap_reg_ppiten_pp0_it0, ap_sig_bdd_130, ap_reg_ppiten_pp0_it1, ap_sig_bdd_166)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_166)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((exitcond5_fu_145_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((ap_const_lv1_0 = exitcond_fu_166_p2)) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                ap_NS_fsm <= ap_ST_st5_fsm_4;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_6;
            when ap_ST_pp0_stg0_fsm_6 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_lv1_0 = tmp_6_fu_197_p2)))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_6;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))) and (ap_const_lv1_0 = tmp_6_fu_197_p2))) then
                    ap_NS_fsm <= ap_ST_st9_fsm_7;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_6;
                end if;
            when ap_ST_st9_fsm_7 => 
                if (not((pairs_duration_V_full_n = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st9_fsm_7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st2_fsm_1, exitcond5_fu_145_p2)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_145_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond5_fu_145_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((exitcond5_fu_145_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_104 assign process. --
    ap_sig_bdd_104_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_104 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_113 assign process. --
    ap_sig_bdd_113_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_113 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_122 assign process. --
    ap_sig_bdd_122_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_122 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_130 assign process. --
    ap_sig_bdd_130_assign_proc : process(pairs_amplitude_V_full_n, tmp_6_reg_270)
    begin
                ap_sig_bdd_130 <= ((pairs_amplitude_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = tmp_6_reg_270)));
    end process;


    -- ap_sig_bdd_153 assign process. --
    ap_sig_bdd_153_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_153 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    -- ap_sig_bdd_166 assign process. --
    ap_sig_bdd_166_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_sig_bdd_166 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_27 assign process. --
    ap_sig_bdd_27_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_27 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_66 assign process. --
    ap_sig_bdd_66_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_66 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_83 assign process. --
    ap_sig_bdd_83_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_83 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_94 assign process. --
    ap_sig_bdd_94_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_94 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_6 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_6_assign_proc : process(ap_sig_bdd_122)
    begin
        if (ap_sig_bdd_122) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_27)
    begin
        if (ap_sig_bdd_27) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_66)
    begin
        if (ap_sig_bdd_66) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_83)
    begin
        if (ap_sig_bdd_83) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_94)
    begin
        if (ap_sig_bdd_94) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st5_fsm_4 assign process. --
    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_bdd_104)
    begin
        if (ap_sig_bdd_104) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st6_fsm_5 assign process. --
    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_bdd_113)
    begin
        if (ap_sig_bdd_113) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st9_fsm_7 assign process. --
    ap_sig_cseq_ST_st9_fsm_7_assign_proc : process(ap_sig_bdd_153)
    begin
        if (ap_sig_bdd_153) then 
            ap_sig_cseq_ST_st9_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st9_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;

    b_1_fu_207_p2 <= std_logic_vector(unsigned(b1_reg_136) + unsigned(ap_const_lv32_1));
    duration_fu_191_p2 <= std_logic_vector(unsigned(tmp_4_fu_186_p2) + unsigned(smax_fu_181_p3));
    exitcond5_fu_145_p2 <= "1" when (j_reg_115 = ap_const_lv4_C) else "0";
    exitcond_fu_166_p2 <= "1" when (j1_reg_126 = ap_const_lv32_C) else "0";
    i_fu_151_p2 <= std_logic_vector(unsigned(j_reg_115) + unsigned(ap_const_lv4_1));
    j_1_fu_213_p2 <= std_logic_vector(unsigned(j1_reg_126) + unsigned(ap_const_lv32_1));
    j_cast1_fu_157_p1 <= std_logic_vector(resize(unsigned(j_reg_115),32));
    locs_address0 <= locs_addr_reg_232;
    locs_address1 <= tmp_2_fu_172_p1(4 - 1 downto 0);

    -- locs_ce0 assign process. --
    locs_ce0_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            locs_ce0 <= ap_const_logic_1;
        else 
            locs_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    -- locs_ce1 assign process. --
    locs_ce1_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            locs_ce1 <= ap_const_logic_1;
        else 
            locs_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    pairs_amplitude_V_din <= signal_r_q0;

    -- pairs_amplitude_V_write assign process. --
    pairs_amplitude_V_write_assign_proc : process(tmp_6_reg_270, ap_sig_cseq_ST_pp0_stg0_fsm_6, ap_sig_bdd_130, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and not((ap_const_lv1_0 = tmp_6_reg_270)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            pairs_amplitude_V_write <= ap_const_logic_1;
        else 
            pairs_amplitude_V_write <= ap_const_logic_0;
        end if; 
    end process;

    pairs_duration_V_din <= duration_reg_265;

    -- pairs_duration_V_write assign process. --
    pairs_duration_V_write_assign_proc : process(pairs_duration_V_full_n, ap_sig_cseq_ST_st9_fsm_7)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st9_fsm_7) and not((pairs_duration_V_full_n = ap_const_logic_0)))) then 
            pairs_duration_V_write <= ap_const_logic_1;
        else 
            pairs_duration_V_write <= ap_const_logic_0;
        end if; 
    end process;

    signal_r_address0 <= tmp_7_fu_202_p1(14 - 1 downto 0);

    -- signal_r_ce0 assign process. --
    signal_r_ce0_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_6, ap_reg_ppiten_pp0_it0, ap_sig_bdd_130, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_6) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((ap_sig_bdd_130 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then 
            signal_r_ce0 <= ap_const_logic_1;
        else 
            signal_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    smax_fu_181_p3 <= 
        b_reg_245 when (tmp_3_reg_260(0) = '1') else 
        e_reg_253;
        tmp_2_fu_172_p1 <= std_logic_vector(resize(signed(j1_reg_126),64));

    tmp_3_fu_177_p2 <= "1" when (signed(b_reg_245) > signed(e_reg_253)) else "0";
    tmp_4_fu_186_p2 <= std_logic_vector(unsigned(ap_const_lv32_1) - unsigned(b_reg_245));
    tmp_6_fu_197_p2 <= "1" when (signed(b1_reg_136) < signed(e_reg_253)) else "0";
        tmp_7_fu_202_p1 <= std_logic_vector(resize(signed(b1_reg_136),64));

    tmp_fu_161_p1 <= std_logic_vector(resize(unsigned(j_reg_115),64));
end behav;
