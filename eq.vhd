-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eq is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a : IN STD_LOGIC_VECTOR (31 downto 0);
    b : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of eq is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "eq,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.630000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=96,HLS_SYN_LUT=251,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv65_19999999A : STD_LOGIC_VECTOR (64 downto 0) := "00000000000000000000000000000000110011001100110011001100110011010";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv65_0 : STD_LOGIC_VECTOR (64 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mul_ln4_fu_44_p2 : STD_LOGIC_VECTOR (64 downto 0);
    signal mul_ln4_reg_116 : STD_LOGIC_VECTOR (64 downto 0);
    signal tmp_2_reg_121 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_127 : STD_LOGIC_VECTOR (28 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sext_ln4_fu_40_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln4_fu_44_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_50_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln4_fu_68_p2 : STD_LOGIC_VECTOR (64 downto 0);
    signal tmp_3_fu_73_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal sext_ln4_1_fu_83_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln4_2_fu_87_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln4_fu_90_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_ln4_1_fu_97_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln4_1_fu_103_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    mul_ln4_reg_116(64 downto 1) <= mul_ln4_fu_44_p2(64 downto 1);
                tmp_2_reg_121 <= tmp_2_fu_50_p1(31 downto 31);
                tmp_reg_127 <= mul_ln4_fu_44_p2(64 downto 36);
            end if;
        end if;
    end process;
    mul_ln4_reg_116(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_done_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= std_logic_vector(unsigned(a) + unsigned(select_ln4_1_fu_103_p3));
    mul_ln4_fu_44_p0 <= sext_ln4_fu_40_p0;
    mul_ln4_fu_44_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln4_fu_44_p0) * signed('0' &ap_const_lv65_19999999A))), 65));
    select_ln4_1_fu_103_p3 <= 
        sub_ln4_1_fu_97_p2 when (tmp_2_reg_121(0) = '1') else 
        sext_ln4_2_fu_87_p1;
    select_ln4_fu_90_p3 <= 
        sext_ln4_1_fu_83_p1 when (tmp_2_reg_121(0) = '1') else 
        sext_ln4_2_fu_87_p1;
        sext_ln4_1_fu_83_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_73_p4),32));

        sext_ln4_2_fu_87_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_reg_127),32));

    sext_ln4_fu_40_p0 <= b;
    sub_ln4_1_fu_97_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(select_ln4_fu_90_p3));
    sub_ln4_fu_68_p2 <= std_logic_vector(unsigned(ap_const_lv65_0) - unsigned(mul_ln4_reg_116));
    tmp_2_fu_50_p1 <= b;
    tmp_3_fu_73_p4 <= sub_ln4_fu_68_p2(64 downto 36);
end behav;
