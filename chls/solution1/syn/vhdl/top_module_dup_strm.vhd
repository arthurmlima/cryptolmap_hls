-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_module_dup_strm is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    nblk_strm_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    nblk_strm_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm_empty_n : IN STD_LOGIC;
    nblk_strm_read : OUT STD_LOGIC;
    end_nblk_strm_dout : IN STD_LOGIC_VECTOR (0 downto 0);
    end_nblk_strm_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm_empty_n : IN STD_LOGIC;
    end_nblk_strm_read : OUT STD_LOGIC;
    nblk_strm1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    nblk_strm1_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm1_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm1_full_n : IN STD_LOGIC;
    nblk_strm1_write : OUT STD_LOGIC;
    end_nblk_strm1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    end_nblk_strm1_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm1_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm1_full_n : IN STD_LOGIC;
    end_nblk_strm1_write : OUT STD_LOGIC;
    nblk_strm2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    nblk_strm2_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm2_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    nblk_strm2_full_n : IN STD_LOGIC;
    nblk_strm2_write : OUT STD_LOGIC;
    end_nblk_strm2_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    end_nblk_strm2_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm2_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
    end_nblk_strm2_full_n : IN STD_LOGIC;
    end_nblk_strm2_write : OUT STD_LOGIC );
end;


architecture behav of top_module_dup_strm is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal end_nblk_strm_blk_n : STD_LOGIC;
    signal end_nblk_strm1_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal end_nblk_strm2_blk_n : STD_LOGIC;
    signal e_reg_79 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_idle : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm_read : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm_read : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_write : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_write : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_din : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_write : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_din : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_write : STD_LOGIC;
    signal grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_block_state4 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component top_module_dup_strm_Pipeline_VITIS_LOOP_506_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        end_nblk_strm_dout : IN STD_LOGIC_VECTOR (0 downto 0);
        end_nblk_strm_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm_empty_n : IN STD_LOGIC;
        end_nblk_strm_read : OUT STD_LOGIC;
        nblk_strm_dout : IN STD_LOGIC_VECTOR (63 downto 0);
        nblk_strm_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm_empty_n : IN STD_LOGIC;
        nblk_strm_read : OUT STD_LOGIC;
        nblk_strm1_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        nblk_strm1_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm1_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm1_full_n : IN STD_LOGIC;
        nblk_strm1_write : OUT STD_LOGIC;
        end_nblk_strm1_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        end_nblk_strm1_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm1_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm1_full_n : IN STD_LOGIC;
        end_nblk_strm1_write : OUT STD_LOGIC;
        nblk_strm2_din : OUT STD_LOGIC_VECTOR (63 downto 0);
        nblk_strm2_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm2_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        nblk_strm2_full_n : IN STD_LOGIC;
        nblk_strm2_write : OUT STD_LOGIC;
        end_nblk_strm2_din : OUT STD_LOGIC_VECTOR (0 downto 0);
        end_nblk_strm2_num_data_valid : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm2_fifo_cap : IN STD_LOGIC_VECTOR (5 downto 0);
        end_nblk_strm2_full_n : IN STD_LOGIC;
        end_nblk_strm2_write : OUT STD_LOGIC;
        e : IN STD_LOGIC_VECTOR (0 downto 0) );
    end component;



begin
    grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62 : component top_module_dup_strm_Pipeline_VITIS_LOOP_506_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start,
        ap_done => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done,
        ap_idle => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_idle,
        ap_ready => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready,
        end_nblk_strm_dout => end_nblk_strm_dout,
        end_nblk_strm_num_data_valid => ap_const_lv6_0,
        end_nblk_strm_fifo_cap => ap_const_lv6_0,
        end_nblk_strm_empty_n => end_nblk_strm_empty_n,
        end_nblk_strm_read => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm_read,
        nblk_strm_dout => nblk_strm_dout,
        nblk_strm_num_data_valid => ap_const_lv6_0,
        nblk_strm_fifo_cap => ap_const_lv6_0,
        nblk_strm_empty_n => nblk_strm_empty_n,
        nblk_strm_read => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm_read,
        nblk_strm1_din => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_din,
        nblk_strm1_num_data_valid => ap_const_lv6_0,
        nblk_strm1_fifo_cap => ap_const_lv6_0,
        nblk_strm1_full_n => nblk_strm1_full_n,
        nblk_strm1_write => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_write,
        end_nblk_strm1_din => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_din,
        end_nblk_strm1_num_data_valid => ap_const_lv6_0,
        end_nblk_strm1_fifo_cap => ap_const_lv6_0,
        end_nblk_strm1_full_n => end_nblk_strm1_full_n,
        end_nblk_strm1_write => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_write,
        nblk_strm2_din => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_din,
        nblk_strm2_num_data_valid => ap_const_lv6_0,
        nblk_strm2_fifo_cap => ap_const_lv6_0,
        nblk_strm2_full_n => nblk_strm2_full_n,
        nblk_strm2_write => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_write,
        end_nblk_strm2_din => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_din,
        end_nblk_strm2_num_data_valid => ap_const_lv6_0,
        end_nblk_strm2_fifo_cap => ap_const_lv6_0,
        end_nblk_strm2_full_n => end_nblk_strm2_full_n,
        end_nblk_strm2_write => grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_write,
        e => e_reg_79);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready = ap_const_logic_1)) then 
                    grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((end_nblk_strm_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                e_reg_79 <= end_nblk_strm_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, end_nblk_strm_empty_n, end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((end_nblk_strm_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg, end_nblk_strm_empty_n)
    begin
        if (((end_nblk_strm_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done)
    begin
        if ((grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state4_blk_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n)
    begin
        if (((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg, end_nblk_strm_empty_n)
    begin
                ap_block_state1 <= ((end_nblk_strm_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0));
    end process;


    ap_block_state4_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n)
    begin
                ap_block_state4 <= ((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (real_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    end_nblk_strm1_blk_n_assign_proc : process(end_nblk_strm1_full_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            end_nblk_strm1_blk_n <= end_nblk_strm1_full_n;
        else 
            end_nblk_strm1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    end_nblk_strm1_din_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_din, ap_CS_fsm_state3)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            end_nblk_strm1_din <= ap_const_lv1_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            end_nblk_strm1_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_din;
        else 
            end_nblk_strm1_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_din;
        end if; 
    end process;


    end_nblk_strm1_write_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_write, ap_CS_fsm_state3)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            end_nblk_strm1_write <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            end_nblk_strm1_write <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm1_write;
        else 
            end_nblk_strm1_write <= ap_const_logic_0;
        end if; 
    end process;


    end_nblk_strm2_blk_n_assign_proc : process(end_nblk_strm2_full_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            end_nblk_strm2_blk_n <= end_nblk_strm2_full_n;
        else 
            end_nblk_strm2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    end_nblk_strm2_din_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_din, ap_CS_fsm_state3)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            end_nblk_strm2_din <= ap_const_lv1_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            end_nblk_strm2_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_din;
        else 
            end_nblk_strm2_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_din;
        end if; 
    end process;


    end_nblk_strm2_write_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_write, ap_CS_fsm_state3)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            end_nblk_strm2_write <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            end_nblk_strm2_write <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm2_write;
        else 
            end_nblk_strm2_write <= ap_const_logic_0;
        end if; 
    end process;


    end_nblk_strm_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, end_nblk_strm_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            end_nblk_strm_blk_n <= end_nblk_strm_empty_n;
        else 
            end_nblk_strm_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    end_nblk_strm_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, end_nblk_strm_empty_n, grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm_read, ap_CS_fsm_state3)
    begin
        if ((not(((end_nblk_strm_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (real_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            end_nblk_strm_read <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            end_nblk_strm_read <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm_read;
        else 
            end_nblk_strm_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg;

    internal_ap_ready_assign_proc : process(end_nblk_strm1_full_n, end_nblk_strm2_full_n, ap_CS_fsm_state4)
    begin
        if ((not(((end_nblk_strm2_full_n = ap_const_logic_0) or (end_nblk_strm1_full_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    nblk_strm1_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_din;

    nblk_strm1_write_assign_proc : process(grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            nblk_strm1_write <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm1_write;
        else 
            nblk_strm1_write <= ap_const_logic_0;
        end if; 
    end process;

    nblk_strm2_din <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_din;

    nblk_strm2_write_assign_proc : process(grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            nblk_strm2_write <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm2_write;
        else 
            nblk_strm2_write <= ap_const_logic_0;
        end if; 
    end process;


    nblk_strm_read_assign_proc : process(grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            nblk_strm_read <= grp_dup_strm_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm_read;
        else 
            nblk_strm_read <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
