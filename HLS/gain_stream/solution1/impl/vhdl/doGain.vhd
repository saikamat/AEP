-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity doGain is
generic (
    C_S_AXI_CRTL_BUS_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_CRTL_BUS_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    inStream_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    inStream_TVALID : IN STD_LOGIC;
    inStream_TREADY : OUT STD_LOGIC;
    inStream_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    inStream_TUSER : IN STD_LOGIC_VECTOR (1 downto 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    inStream_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    inStream_TDEST : IN STD_LOGIC_VECTOR (5 downto 0);
    outStream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    outStream_TVALID : OUT STD_LOGIC;
    outStream_TREADY : IN STD_LOGIC;
    outStream_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    outStream_TUSER : OUT STD_LOGIC_VECTOR (1 downto 0);
    outStream_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    outStream_TID : OUT STD_LOGIC_VECTOR (4 downto 0);
    outStream_TDEST : OUT STD_LOGIC_VECTOR (5 downto 0);
    s_axi_CRTL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CRTL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CRTL_BUS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CRTL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CRTL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CRTL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CRTL_BUS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CRTL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CRTL_BUS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CRTL_BUS_DATA_WIDTH/8-1 downto 0);
    s_axi_CRTL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CRTL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CRTL_BUS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CRTL_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_CRTL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CRTL_BUS_RREADY : IN STD_LOGIC;
    s_axi_CRTL_BUS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CRTL_BUS_DATA_WIDTH-1 downto 0);
    s_axi_CRTL_BUS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_CRTL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CRTL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CRTL_BUS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of doGain is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "doGain,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.080000,HLS_SYN_LAT=106,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=146,HLS_SYN_LUT=148}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_pp0_stg0_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_st8_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_21 : BOOLEAN;
    signal ap_ready : STD_LOGIC;
    signal gain : STD_LOGIC_VECTOR (31 downto 0);
    signal doGain_CRTL_BUS_s_axi_U_ap_dummy_ce : STD_LOGIC;
    signal i_reg_123 : STD_LOGIC_VECTOR (6 downto 0);
    signal gain_read_reg_180 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_reg_185 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp0_stg0_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_97 : BOOLEAN;
    signal ap_sig_bdd_103 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it3 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it4 : STD_LOGIC := '0';
    signal ap_reg_ppstg_exitcond_reg_185_pp0_it4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_ioackin_outStream_TREADY : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it5 : STD_LOGIC := '0';
    signal ap_reg_ppstg_exitcond_reg_185_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_exitcond_reg_185_pp0_it2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_exitcond_reg_185_pp0_it3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_140_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_keep_V_reg_199 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_strb_V_reg_204 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it1 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_user_V_reg_209 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_ppstg_tmp_user_V_reg_209_pp0_it1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_ppstg_tmp_user_V_reg_209_pp0_it2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_ppstg_tmp_user_V_reg_209_pp0_it3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_ppstg_tmp_user_V_reg_209_pp0_it4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_last_V_reg_214 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_tmp_last_V_reg_214_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_tmp_last_V_reg_214_pp0_it2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_tmp_last_V_reg_214_pp0_it3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ppstg_tmp_last_V_reg_214_pp0_it4 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_id_V_reg_219 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_reg_ppstg_tmp_id_V_reg_219_pp0_it1 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_reg_ppstg_tmp_id_V_reg_219_pp0_it2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_reg_ppstg_tmp_id_V_reg_219_pp0_it3 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_reg_ppstg_tmp_id_V_reg_219_pp0_it4 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_dest_V_reg_224 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it1 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it4 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_174_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_reg_ioackin_outStream_TREADY : STD_LOGIC := '0';
    signal grp_fu_174_ce : STD_LOGIC;
    signal ap_sig_cseq_ST_st8_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_297 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component doGain_mul_32s_32s_32_6 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component doGain_CRTL_BUS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        gain : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    doGain_CRTL_BUS_s_axi_U : component doGain_CRTL_BUS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CRTL_BUS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CRTL_BUS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_CRTL_BUS_AWVALID,
        AWREADY => s_axi_CRTL_BUS_AWREADY,
        AWADDR => s_axi_CRTL_BUS_AWADDR,
        WVALID => s_axi_CRTL_BUS_WVALID,
        WREADY => s_axi_CRTL_BUS_WREADY,
        WDATA => s_axi_CRTL_BUS_WDATA,
        WSTRB => s_axi_CRTL_BUS_WSTRB,
        ARVALID => s_axi_CRTL_BUS_ARVALID,
        ARREADY => s_axi_CRTL_BUS_ARREADY,
        ARADDR => s_axi_CRTL_BUS_ARADDR,
        RVALID => s_axi_CRTL_BUS_RVALID,
        RREADY => s_axi_CRTL_BUS_RREADY,
        RDATA => s_axi_CRTL_BUS_RDATA,
        RRESP => s_axi_CRTL_BUS_RRESP,
        BVALID => s_axi_CRTL_BUS_BVALID,
        BREADY => s_axi_CRTL_BUS_BREADY,
        BRESP => s_axi_CRTL_BUS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => doGain_CRTL_BUS_s_axi_U_ap_dummy_ce,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        gain => gain);

    doGain_mul_32s_32s_32_6_U1 : component doGain_mul_32s_32s_32_6
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => inStream_TDATA,
        din1 => gain_read_reg_180,
        ce => grp_fu_174_ce,
        dout => grp_fu_174_p2);





    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_reg_ioackin_outStream_TREADY assign process. --
    ap_reg_ioackin_outStream_TREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_outStream_TREADY <= ap_const_logic_0;
            else
                if ((((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))))) then 
                    ap_reg_ioackin_outStream_TREADY <= ap_const_logic_0;
                elsif ((((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5) and not((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) and (ap_const_logic_1 = outStream_TREADY)))) then 
                    ap_reg_ioackin_outStream_TREADY <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it0 assign process. --
    ap_reg_ppiten_pp0_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((exitcond_fu_134_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                    ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_fu_134_p2 = ap_const_lv1_0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((exitcond_fu_134_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it2 assign process. --
    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))) then 
                    ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it3 assign process. --
    ap_reg_ppiten_pp0_it3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))) then 
                    ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it4 assign process. --
    ap_reg_ppiten_pp0_it4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it4 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))) then 
                    ap_reg_ppiten_pp0_it4 <= ap_reg_ppiten_pp0_it3;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it5 assign process. --
    ap_reg_ppiten_pp0_it5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
            else
                if (not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))) then 
                    ap_reg_ppiten_pp0_it5 <= ap_reg_ppiten_pp0_it4;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                    ap_reg_ppiten_pp0_it5 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- i_reg_123 assign process. --
    i_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_fu_134_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))))) then 
                i_reg_123 <= i_1_fu_140_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_123 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))))) then
                ap_reg_ppstg_exitcond_reg_185_pp0_it1 <= exitcond_reg_185;
                ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it1 <= tmp_dest_V_reg_224;
                ap_reg_ppstg_tmp_id_V_reg_219_pp0_it1 <= tmp_id_V_reg_219;
                ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it1 <= tmp_keep_V_reg_199;
                ap_reg_ppstg_tmp_last_V_reg_214_pp0_it1 <= tmp_last_V_reg_214;
                ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it1 <= tmp_strb_V_reg_204;
                ap_reg_ppstg_tmp_user_V_reg_209_pp0_it1 <= tmp_user_V_reg_209;
                exitcond_reg_185 <= exitcond_fu_134_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))) then
                ap_reg_ppstg_exitcond_reg_185_pp0_it2 <= ap_reg_ppstg_exitcond_reg_185_pp0_it1;
                ap_reg_ppstg_exitcond_reg_185_pp0_it3 <= ap_reg_ppstg_exitcond_reg_185_pp0_it2;
                ap_reg_ppstg_exitcond_reg_185_pp0_it4 <= ap_reg_ppstg_exitcond_reg_185_pp0_it3;
                ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it2 <= ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it1;
                ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it3 <= ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it2;
                ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it4 <= ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it3;
                ap_reg_ppstg_tmp_id_V_reg_219_pp0_it2 <= ap_reg_ppstg_tmp_id_V_reg_219_pp0_it1;
                ap_reg_ppstg_tmp_id_V_reg_219_pp0_it3 <= ap_reg_ppstg_tmp_id_V_reg_219_pp0_it2;
                ap_reg_ppstg_tmp_id_V_reg_219_pp0_it4 <= ap_reg_ppstg_tmp_id_V_reg_219_pp0_it3;
                ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it2 <= ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it1;
                ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it3 <= ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it2;
                ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it4 <= ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it3;
                ap_reg_ppstg_tmp_last_V_reg_214_pp0_it2 <= ap_reg_ppstg_tmp_last_V_reg_214_pp0_it1;
                ap_reg_ppstg_tmp_last_V_reg_214_pp0_it3 <= ap_reg_ppstg_tmp_last_V_reg_214_pp0_it2;
                ap_reg_ppstg_tmp_last_V_reg_214_pp0_it4 <= ap_reg_ppstg_tmp_last_V_reg_214_pp0_it3;
                ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it2 <= ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it1;
                ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it3 <= ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it2;
                ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it4 <= ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it3;
                ap_reg_ppstg_tmp_user_V_reg_209_pp0_it2 <= ap_reg_ppstg_tmp_user_V_reg_209_pp0_it1;
                ap_reg_ppstg_tmp_user_V_reg_209_pp0_it3 <= ap_reg_ppstg_tmp_user_V_reg_209_pp0_it2;
                ap_reg_ppstg_tmp_user_V_reg_209_pp0_it4 <= ap_reg_ppstg_tmp_user_V_reg_209_pp0_it3;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                gain_read_reg_180 <= gain;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_fu_134_p2 = ap_const_lv1_0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))))) then
                tmp_dest_V_reg_224 <= inStream_TDEST;
                tmp_id_V_reg_219 <= inStream_TID;
                tmp_keep_V_reg_199 <= inStream_TKEEP;
                tmp_last_V_reg_214 <= inStream_TLAST;
                tmp_strb_V_reg_204 <= inStream_TSTRB;
                tmp_user_V_reg_209 <= inStream_TUSER;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond_fu_134_p2, ap_sig_bdd_103, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it4, ap_reg_ppstg_exitcond_reg_185_pp0_it4, ap_sig_ioackin_outStream_TREADY, ap_reg_ppiten_pp0_it5)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_pp0_stg0_fsm_1 => 
                if ((not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it5) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it4)))) and not(((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((exitcond_fu_134_p2 = ap_const_lv1_0)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1)))))) then
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                elsif ((((ap_const_logic_1 = ap_reg_ppiten_pp0_it5) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it4))) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))) and not((exitcond_fu_134_p2 = ap_const_lv1_0)) and not((ap_const_logic_1 = ap_reg_ppiten_pp0_it1))))) then
                    ap_NS_fsm <= ap_ST_st8_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_pp0_stg0_fsm_1;
                end if;
            when ap_ST_st8_fsm_2 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_sig_cseq_ST_st8_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_2)) then 
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
    ap_ready_assign_proc : process(ap_sig_cseq_ST_st8_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_rst_n_inv assign process. --
    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    -- ap_sig_bdd_103 assign process. --
    ap_sig_bdd_103_assign_proc : process(inStream_TVALID, exitcond_fu_134_p2)
    begin
                ap_sig_bdd_103 <= ((inStream_TVALID = ap_const_logic_0) and (exitcond_fu_134_p2 = ap_const_lv1_0));
    end process;


    -- ap_sig_bdd_21 assign process. --
    ap_sig_bdd_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_297 assign process. --
    ap_sig_bdd_297_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_297 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_97 assign process. --
    ap_sig_bdd_97_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_97 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_1 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_1_assign_proc : process(ap_sig_bdd_97)
    begin
        if (ap_sig_bdd_97) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_21)
    begin
        if (ap_sig_bdd_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_2 assign process. --
    ap_sig_cseq_ST_st8_fsm_2_assign_proc : process(ap_sig_bdd_297)
    begin
        if (ap_sig_bdd_297) then 
            ap_sig_cseq_ST_st8_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_ioackin_outStream_TREADY assign process. --
    ap_sig_ioackin_outStream_TREADY_assign_proc : process(outStream_TREADY, ap_reg_ioackin_outStream_TREADY)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_outStream_TREADY)) then 
            ap_sig_ioackin_outStream_TREADY <= outStream_TREADY;
        else 
            ap_sig_ioackin_outStream_TREADY <= ap_const_logic_1;
        end if; 
    end process;

    doGain_CRTL_BUS_s_axi_U_ap_dummy_ce <= ap_const_logic_1;
    exitcond_fu_134_p2 <= "1" when (i_reg_123 = ap_const_lv7_64) else "0";

    -- grp_fu_174_ce assign process. --
    grp_fu_174_ce_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_sig_bdd_103, ap_reg_ppiten_pp0_it0, ap_reg_ppstg_exitcond_reg_185_pp0_it4, ap_sig_ioackin_outStream_TREADY, ap_reg_ppiten_pp0_it5)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5)))))) then 
            grp_fu_174_ce <= ap_const_logic_1;
        else 
            grp_fu_174_ce <= ap_const_logic_0;
        end if; 
    end process;

    i_1_fu_140_p2 <= std_logic_vector(unsigned(i_reg_123) + unsigned(ap_const_lv7_1));

    -- inStream_TREADY assign process. --
    inStream_TREADY_assign_proc : process(exitcond_fu_134_p2, ap_sig_cseq_ST_pp0_stg0_fsm_1, ap_sig_bdd_103, ap_reg_ppiten_pp0_it0, ap_reg_ppstg_exitcond_reg_185_pp0_it4, ap_sig_ioackin_outStream_TREADY, ap_reg_ppiten_pp0_it5)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_1) and (exitcond_fu_134_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0)) or ((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_0 = ap_sig_ioackin_outStream_TREADY) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5))))))) then 
            inStream_TREADY <= ap_const_logic_1;
        else 
            inStream_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    outStream_TDATA <= grp_fu_174_p2;
    outStream_TDEST <= ap_reg_ppstg_tmp_dest_V_reg_224_pp0_it4;
    outStream_TID <= ap_reg_ppstg_tmp_id_V_reg_219_pp0_it4;
    outStream_TKEEP <= ap_reg_ppstg_tmp_keep_V_reg_199_pp0_it4;
    outStream_TLAST <= ap_reg_ppstg_tmp_last_V_reg_214_pp0_it4;
    outStream_TSTRB <= ap_reg_ppstg_tmp_strb_V_reg_204_pp0_it4;
    outStream_TUSER <= ap_reg_ppstg_tmp_user_V_reg_209_pp0_it4;

    -- outStream_TVALID assign process. --
    outStream_TVALID_assign_proc : process(ap_sig_bdd_103, ap_reg_ppiten_pp0_it0, ap_reg_ppstg_exitcond_reg_185_pp0_it4, ap_reg_ppiten_pp0_it5, ap_reg_ioackin_outStream_TREADY)
    begin
        if ((((ap_const_lv1_0 = ap_reg_ppstg_exitcond_reg_185_pp0_it4) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it5) and not((ap_sig_bdd_103 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0))) and (ap_const_logic_0 = ap_reg_ioackin_outStream_TREADY)))) then 
            outStream_TVALID <= ap_const_logic_1;
        else 
            outStream_TVALID <= ap_const_logic_0;
        end if; 
    end process;

end behav;
