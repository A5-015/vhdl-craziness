--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_FPGA_synthesis.vhd
-- /___/   /\     Timestamp: Mon May 13 15:25:32 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top_FPGA -w -dir netgen/synthesis -ofmt vhdl -sim top_FPGA.ngc top_FPGA_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: top_FPGA.ngc
-- Output file	: C:\Users\bs3528\Documents\GitHub\vhdl-craziness\Lab_4_bs3528_nsa325\VHDL\Top_Level_FPGA\netgen\synthesis\top_FPGA_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top_FPGA
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top_FPGA is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    clk_proc_in : in STD_LOGIC := 'X'; 
    seg_bits : out STD_LOGIC_VECTOR ( 0 to 7 ); 
    seg_an : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end top_FPGA;

architecture Structure of top_FPGA is
  signal ALU_inst_computed_result_0_115 : STD_LOGIC; 
  signal ALU_inst_computed_result_0_12_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_1_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_2_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_3_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_3_29_20 : STD_LOGIC; 
  signal ALU_inst_computed_result_4_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_4_29_22 : STD_LOGIC; 
  signal ALU_inst_computed_result_5_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_6_16 : STD_LOGIC; 
  signal ALU_inst_computed_result_7_35_25 : STD_LOGIC; 
  signal ALU_inst_computed_result_7_8 : STD_LOGIC; 
  signal Decoder_Controller_inst_N02 : STD_LOGIC; 
  signal Decoder_Controller_inst_N1 : STD_LOGIC; 
  signal Decoder_Controller_inst_N2 : STD_LOGIC; 
  signal Decoder_Controller_inst_N4 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq00128120_56 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012826_57 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012853_58 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012893_59 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0014 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu2_3_12_61 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu2_3_25_62 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu2_or0000 : STD_LOGIC; 
  signal Decoder_Controller_inst_r2_addr_or0000 : STD_LOGIC; 
  signal Decoder_Controller_inst_r2_addr_or00001_66 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_131_73 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_176_74 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_132 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1321_77 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N0 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N10 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N16 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N17 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N18 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N19 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N2 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N20 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N26 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N27 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N30 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N4 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N5 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_N64 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000416_99 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux00045_100 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000464_101 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000428 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004281_109 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004282_110 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000447_111 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000462_112 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000471_113 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000221 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000235_115 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000256_116 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_rt_121 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_rt_123 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_rt_125 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_rt_127 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_rt_129 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_rt_131 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_rt_133 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_rt_135 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_rt_137 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_rt_139 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_rt_141 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_rt_143 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_rt_145 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_rt_147 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_rt_149 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_16_rt_151 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_rt_154 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_rt_156 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_rt_158 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_rt_160 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_rt_162 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_rt_164 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_rt_166 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_rt_168 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_rt_170 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_rt_172 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_rt_174 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_rt_176 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_rt_178 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_rt_180 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_rt_182 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_rt_184 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_rt_186 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_rt_188 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_rt_190 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_rt_192 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_rt_194 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_rt_196 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_rt_198 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_rt_200 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_25_rt_202 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_0_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_10_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_11_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_12_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_13_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_14_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_15_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_16_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_1_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_2_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_3_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_4_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_5_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_6_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_7_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_8_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_Result_9_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_binary_input_0_1 : STD_LOGIC; 
  signal Display_Control_Unit_inst_binary_input_0_11_250 : STD_LOGIC; 
  signal Display_Control_Unit_inst_clk_cnt_block_and0000 : STD_LOGIC; 
  signal Display_Control_Unit_inst_clk_cnt_block_and00001 : STD_LOGIC; 
  signal Display_Control_Unit_inst_clk_cnt_block_and00002 : STD_LOGIC; 
  signal Display_Control_Unit_inst_clk_cnt_block_and00003 : STD_LOGIC; 
  signal Display_Control_Unit_inst_clk_cnt_block_not0000 : STD_LOGIC; 
  signal Display_Control_Unit_inst_opcode_visibility_toggle : STD_LOGIC; 
  signal Display_Control_Unit_inst_page_mode_FSM_FFd1_312 : STD_LOGIC; 
  signal Display_Control_Unit_inst_page_mode_FSM_FFd2_313 : STD_LOGIC; 
  signal Display_Control_Unit_inst_page_mode_FSM_FFd3_314 : STD_LOGIC; 
  signal Display_Control_Unit_inst_page_mode_FSM_FFd4_315 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_0_10 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_0_101_317 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_0_20_318 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_0_7_319 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_131_320 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_153_321 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_206_322 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_94 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_941_324 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_1_942_325 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_2_27_326 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_2_40_327 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_2_58_328 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_2_95_329 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_3_14_330 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_3_25 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_4_13_332 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_4_2 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_4_41_334 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_4_53_335 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_5_101_336 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_5_19_337 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_5_46_338 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_5_65_339 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_141_340 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_35 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_351_342 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_352_343 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_62_344 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_bits_6_87_345 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_mode_FSM_FFd1_346 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_mode_FSM_FFd2_347 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_mode_FSM_FFd3_348 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_mode_FSM_FFd4_349 : STD_LOGIC; 
  signal Display_Control_Unit_inst_seg_mode_cmp_eq0004 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000011_365 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_366 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00002 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000021_3 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00003 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000051_4 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_371 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00009 : STD_LOGIC; 
  signal Instructions_ROM_inst_N0 : STD_LOGIC; 
  signal Instructions_ROM_inst_N7 : STD_LOGIC; 
  signal Instructions_ROM_inst_N9 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_10_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_10_mux00001_377 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_3_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_3_mux00001_379 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_4_mux000020_380 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_9_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_9_mux00001_382 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N153 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N345 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N347 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg1 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg2 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg3 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg4 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg5 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg6 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg7 : STD_LOGIC; 
  signal PC_inst_PC_reg_1_1_534 : STD_LOGIC; 
  signal PC_inst_PC_reg_2_1_536 : STD_LOGIC; 
  signal PC_we : STD_LOGIC; 
  signal PC_we_inv : STD_LOGIC; 
  signal Rd_we : STD_LOGIC; 
  signal Registers_inst_mux10_3_f5_553 : STD_LOGIC; 
  signal Registers_inst_mux10_4_554 : STD_LOGIC; 
  signal Registers_inst_mux10_4_f5_555 : STD_LOGIC; 
  signal Registers_inst_mux10_5_556 : STD_LOGIC; 
  signal Registers_inst_mux10_51_557 : STD_LOGIC; 
  signal Registers_inst_mux10_6_558 : STD_LOGIC; 
  signal Registers_inst_mux11_3_f5_559 : STD_LOGIC; 
  signal Registers_inst_mux11_4_560 : STD_LOGIC; 
  signal Registers_inst_mux11_4_f5_561 : STD_LOGIC; 
  signal Registers_inst_mux11_5_562 : STD_LOGIC; 
  signal Registers_inst_mux11_51_563 : STD_LOGIC; 
  signal Registers_inst_mux11_6_564 : STD_LOGIC; 
  signal Registers_inst_mux12_3_f5_565 : STD_LOGIC; 
  signal Registers_inst_mux12_4_566 : STD_LOGIC; 
  signal Registers_inst_mux12_4_f5_567 : STD_LOGIC; 
  signal Registers_inst_mux12_5_568 : STD_LOGIC; 
  signal Registers_inst_mux12_51_569 : STD_LOGIC; 
  signal Registers_inst_mux12_6_570 : STD_LOGIC; 
  signal Registers_inst_mux13_3_f5_571 : STD_LOGIC; 
  signal Registers_inst_mux13_4_572 : STD_LOGIC; 
  signal Registers_inst_mux13_4_f5_573 : STD_LOGIC; 
  signal Registers_inst_mux13_5_574 : STD_LOGIC; 
  signal Registers_inst_mux13_51_575 : STD_LOGIC; 
  signal Registers_inst_mux13_6_576 : STD_LOGIC; 
  signal Registers_inst_mux14_3_f5_577 : STD_LOGIC; 
  signal Registers_inst_mux14_4_578 : STD_LOGIC; 
  signal Registers_inst_mux14_4_f5_579 : STD_LOGIC; 
  signal Registers_inst_mux14_5_580 : STD_LOGIC; 
  signal Registers_inst_mux14_51_581 : STD_LOGIC; 
  signal Registers_inst_mux14_6_582 : STD_LOGIC; 
  signal Registers_inst_mux15_3_f5_583 : STD_LOGIC; 
  signal Registers_inst_mux15_4_584 : STD_LOGIC; 
  signal Registers_inst_mux15_4_f5_585 : STD_LOGIC; 
  signal Registers_inst_mux15_5_586 : STD_LOGIC; 
  signal Registers_inst_mux15_51_587 : STD_LOGIC; 
  signal Registers_inst_mux15_6_588 : STD_LOGIC; 
  signal Registers_inst_mux1_3_f5_589 : STD_LOGIC; 
  signal Registers_inst_mux1_4_590 : STD_LOGIC; 
  signal Registers_inst_mux1_4_f5_591 : STD_LOGIC; 
  signal Registers_inst_mux1_5_592 : STD_LOGIC; 
  signal Registers_inst_mux1_51_593 : STD_LOGIC; 
  signal Registers_inst_mux1_6_594 : STD_LOGIC; 
  signal Registers_inst_mux2_3_f5_595 : STD_LOGIC; 
  signal Registers_inst_mux2_4_596 : STD_LOGIC; 
  signal Registers_inst_mux2_4_f5_597 : STD_LOGIC; 
  signal Registers_inst_mux2_5_598 : STD_LOGIC; 
  signal Registers_inst_mux2_51_599 : STD_LOGIC; 
  signal Registers_inst_mux2_6_600 : STD_LOGIC; 
  signal Registers_inst_mux3_3_f5_601 : STD_LOGIC; 
  signal Registers_inst_mux3_4_602 : STD_LOGIC; 
  signal Registers_inst_mux3_4_f5_603 : STD_LOGIC; 
  signal Registers_inst_mux3_5_604 : STD_LOGIC; 
  signal Registers_inst_mux3_51_605 : STD_LOGIC; 
  signal Registers_inst_mux3_6_606 : STD_LOGIC; 
  signal Registers_inst_mux4_3_f5_607 : STD_LOGIC; 
  signal Registers_inst_mux4_4_608 : STD_LOGIC; 
  signal Registers_inst_mux4_4_f5_609 : STD_LOGIC; 
  signal Registers_inst_mux4_5_610 : STD_LOGIC; 
  signal Registers_inst_mux4_51_611 : STD_LOGIC; 
  signal Registers_inst_mux4_6_612 : STD_LOGIC; 
  signal Registers_inst_mux5_3_f5_613 : STD_LOGIC; 
  signal Registers_inst_mux5_4_614 : STD_LOGIC; 
  signal Registers_inst_mux5_4_f5_615 : STD_LOGIC; 
  signal Registers_inst_mux5_5_616 : STD_LOGIC; 
  signal Registers_inst_mux5_51_617 : STD_LOGIC; 
  signal Registers_inst_mux5_6_618 : STD_LOGIC; 
  signal Registers_inst_mux6_3_f5_619 : STD_LOGIC; 
  signal Registers_inst_mux6_4_620 : STD_LOGIC; 
  signal Registers_inst_mux6_4_f5_621 : STD_LOGIC; 
  signal Registers_inst_mux6_5_622 : STD_LOGIC; 
  signal Registers_inst_mux6_51_623 : STD_LOGIC; 
  signal Registers_inst_mux6_6_624 : STD_LOGIC; 
  signal Registers_inst_mux7_3_f5_625 : STD_LOGIC; 
  signal Registers_inst_mux7_4_626 : STD_LOGIC; 
  signal Registers_inst_mux7_4_f5_627 : STD_LOGIC; 
  signal Registers_inst_mux7_5_628 : STD_LOGIC; 
  signal Registers_inst_mux7_51_629 : STD_LOGIC; 
  signal Registers_inst_mux7_6_630 : STD_LOGIC; 
  signal Registers_inst_mux8_3_f5_631 : STD_LOGIC; 
  signal Registers_inst_mux8_4_632 : STD_LOGIC; 
  signal Registers_inst_mux8_4_f5_633 : STD_LOGIC; 
  signal Registers_inst_mux8_5_634 : STD_LOGIC; 
  signal Registers_inst_mux8_51_635 : STD_LOGIC; 
  signal Registers_inst_mux8_6_636 : STD_LOGIC; 
  signal Registers_inst_mux9_3_f5_637 : STD_LOGIC; 
  signal Registers_inst_mux9_4_638 : STD_LOGIC; 
  signal Registers_inst_mux9_4_f5_639 : STD_LOGIC; 
  signal Registers_inst_mux9_5_640 : STD_LOGIC; 
  signal Registers_inst_mux9_51_641 : STD_LOGIC; 
  signal Registers_inst_mux9_6_642 : STD_LOGIC; 
  signal Registers_inst_mux_3_f5_643 : STD_LOGIC; 
  signal Registers_inst_mux_4_644 : STD_LOGIC; 
  signal Registers_inst_mux_4_f5_645 : STD_LOGIC; 
  signal Registers_inst_mux_5_646 : STD_LOGIC; 
  signal Registers_inst_mux_51_647 : STD_LOGIC; 
  signal Registers_inst_mux_6_648 : STD_LOGIC; 
  signal Registers_inst_reg_1_0_649 : STD_LOGIC; 
  signal Registers_inst_reg_1_1_650 : STD_LOGIC; 
  signal Registers_inst_reg_1_2_651 : STD_LOGIC; 
  signal Registers_inst_reg_1_3_652 : STD_LOGIC; 
  signal Registers_inst_reg_1_4_653 : STD_LOGIC; 
  signal Registers_inst_reg_1_5_654 : STD_LOGIC; 
  signal Registers_inst_reg_1_6_655 : STD_LOGIC; 
  signal Registers_inst_reg_1_7_656 : STD_LOGIC; 
  signal Registers_inst_reg_1_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_2_0_658 : STD_LOGIC; 
  signal Registers_inst_reg_2_1_659 : STD_LOGIC; 
  signal Registers_inst_reg_2_2_660 : STD_LOGIC; 
  signal Registers_inst_reg_2_3_661 : STD_LOGIC; 
  signal Registers_inst_reg_2_4_662 : STD_LOGIC; 
  signal Registers_inst_reg_2_5_663 : STD_LOGIC; 
  signal Registers_inst_reg_2_6_664 : STD_LOGIC; 
  signal Registers_inst_reg_2_7_665 : STD_LOGIC; 
  signal Registers_inst_reg_2_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_3_0_667 : STD_LOGIC; 
  signal Registers_inst_reg_3_1_668 : STD_LOGIC; 
  signal Registers_inst_reg_3_2_669 : STD_LOGIC; 
  signal Registers_inst_reg_3_3_670 : STD_LOGIC; 
  signal Registers_inst_reg_3_4_671 : STD_LOGIC; 
  signal Registers_inst_reg_3_5_672 : STD_LOGIC; 
  signal Registers_inst_reg_3_6_673 : STD_LOGIC; 
  signal Registers_inst_reg_3_7_674 : STD_LOGIC; 
  signal Registers_inst_reg_3_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_4_0_676 : STD_LOGIC; 
  signal Registers_inst_reg_4_1_677 : STD_LOGIC; 
  signal Registers_inst_reg_4_2_678 : STD_LOGIC; 
  signal Registers_inst_reg_4_3_679 : STD_LOGIC; 
  signal Registers_inst_reg_4_4_680 : STD_LOGIC; 
  signal Registers_inst_reg_4_5_681 : STD_LOGIC; 
  signal Registers_inst_reg_4_6_682 : STD_LOGIC; 
  signal Registers_inst_reg_4_7_683 : STD_LOGIC; 
  signal Registers_inst_reg_4_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_5_0_685 : STD_LOGIC; 
  signal Registers_inst_reg_5_1_686 : STD_LOGIC; 
  signal Registers_inst_reg_5_2_687 : STD_LOGIC; 
  signal Registers_inst_reg_5_3_688 : STD_LOGIC; 
  signal Registers_inst_reg_5_4_689 : STD_LOGIC; 
  signal Registers_inst_reg_5_5_690 : STD_LOGIC; 
  signal Registers_inst_reg_5_6_691 : STD_LOGIC; 
  signal Registers_inst_reg_5_7_692 : STD_LOGIC; 
  signal Registers_inst_reg_5_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_6_0_694 : STD_LOGIC; 
  signal Registers_inst_reg_6_1_695 : STD_LOGIC; 
  signal Registers_inst_reg_6_2_696 : STD_LOGIC; 
  signal Registers_inst_reg_6_3_697 : STD_LOGIC; 
  signal Registers_inst_reg_6_4_698 : STD_LOGIC; 
  signal Registers_inst_reg_6_5_699 : STD_LOGIC; 
  signal Registers_inst_reg_6_6_700 : STD_LOGIC; 
  signal Registers_inst_reg_6_7_701 : STD_LOGIC; 
  signal Registers_inst_reg_6_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_7_0_703 : STD_LOGIC; 
  signal Registers_inst_reg_7_1_704 : STD_LOGIC; 
  signal Registers_inst_reg_7_2_705 : STD_LOGIC; 
  signal Registers_inst_reg_7_3_706 : STD_LOGIC; 
  signal Registers_inst_reg_7_4_707 : STD_LOGIC; 
  signal Registers_inst_reg_7_5_708 : STD_LOGIC; 
  signal Registers_inst_reg_7_6_709 : STD_LOGIC; 
  signal Registers_inst_reg_7_7_710 : STD_LOGIC; 
  signal Registers_inst_reg_7_and0000 : STD_LOGIC; 
  signal alu_result_0_Q : STD_LOGIC; 
  signal alu_result_5_Q : STD_LOGIC; 
  signal clk_BUFGP_748 : STD_LOGIC; 
  signal clk_proc_in_BUFGP_750 : STD_LOGIC; 
  signal instruction_10_Q : STD_LOGIC; 
  signal instruction_11_Q : STD_LOGIC; 
  signal instruction_12_Q : STD_LOGIC; 
  signal instruction_13_Q : STD_LOGIC; 
  signal instruction_15_Q : STD_LOGIC; 
  signal instruction_3_Q : STD_LOGIC; 
  signal instruction_4_Q : STD_LOGIC; 
  signal instruction_5_Q : STD_LOGIC; 
  signal instruction_6_Q : STD_LOGIC; 
  signal instruction_7_Q : STD_LOGIC; 
  signal instruction_8_Q : STD_LOGIC; 
  signal instruction_9_Q : STD_LOGIC; 
  signal rst_IBUF_764 : STD_LOGIC; 
  signal seg_an_0_OBUF_769 : STD_LOGIC; 
  signal seg_an_1_OBUF_770 : STD_LOGIC; 
  signal seg_an_2_OBUF_771 : STD_LOGIC; 
  signal seg_an_3_OBUF_772 : STD_LOGIC; 
  signal seg_bits_0_OBUF_781 : STD_LOGIC; 
  signal seg_bits_1_OBUF_782 : STD_LOGIC; 
  signal seg_bits_2_OBUF_783 : STD_LOGIC; 
  signal seg_bits_3_OBUF_784 : STD_LOGIC; 
  signal seg_bits_4_OBUF_785 : STD_LOGIC; 
  signal seg_bits_5_OBUF_786 : STD_LOGIC; 
  signal seg_bits_6_OBUF_787 : STD_LOGIC; 
  signal seg_bits_7_OBUF_788 : STD_LOGIC; 
  signal ALU_inst_Maddsub_computed_result_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ALU_inst_Maddsub_computed_result_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_inst_computed_result_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_imval : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000 : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1 : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_block_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal Display_Control_Unit_inst_Mcount_clk_cnt_page_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Display_Control_Unit_inst_Result : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Display_Control_Unit_inst_bcd_seg_10 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal Display_Control_Unit_inst_bcd_seg_1 : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal Display_Control_Unit_inst_binary_input : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Display_Control_Unit_inst_clk_cnt_block : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Display_Control_Unit_inst_clk_cnt_page : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal PC_inst_Mcount_PC_reg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal PC_inst_Mcount_PC_reg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_inst_PC_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rd_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rs1_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rs2_addr : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Rs2_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_operand_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_operand_2 : STD_LOGIC_VECTOR ( 7 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => ALU_inst_computed_result_0_115
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  PC_inst_Mcount_PC_reg_cy_0_Q : MUXCY
    port map (
      CI => PC_we_inv,
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(0),
      O => PC_inst_Mcount_PC_reg_cy(0)
    );
  PC_inst_Mcount_PC_reg_xor_0_Q : XORCY
    port map (
      CI => PC_we_inv,
      LI => PC_inst_Mcount_PC_reg_lut(0),
      O => PC_inst_Mcount_PC_reg
    );
  PC_inst_Mcount_PC_reg_cy_1_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(0),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(1),
      O => PC_inst_Mcount_PC_reg_cy(1)
    );
  PC_inst_Mcount_PC_reg_xor_1_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(0),
      LI => PC_inst_Mcount_PC_reg_lut(1),
      O => PC_inst_Mcount_PC_reg1
    );
  PC_inst_Mcount_PC_reg_cy_2_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(1),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(2),
      O => PC_inst_Mcount_PC_reg_cy(2)
    );
  PC_inst_Mcount_PC_reg_xor_2_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(1),
      LI => PC_inst_Mcount_PC_reg_lut(2),
      O => PC_inst_Mcount_PC_reg2
    );
  PC_inst_Mcount_PC_reg_cy_3_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(2),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(3),
      O => PC_inst_Mcount_PC_reg_cy(3)
    );
  PC_inst_Mcount_PC_reg_xor_3_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(2),
      LI => PC_inst_Mcount_PC_reg_lut(3),
      O => PC_inst_Mcount_PC_reg3
    );
  PC_inst_Mcount_PC_reg_cy_4_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(3),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(4),
      O => PC_inst_Mcount_PC_reg_cy(4)
    );
  PC_inst_Mcount_PC_reg_xor_4_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(3),
      LI => PC_inst_Mcount_PC_reg_lut(4),
      O => PC_inst_Mcount_PC_reg4
    );
  PC_inst_Mcount_PC_reg_cy_5_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(4),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(5),
      O => PC_inst_Mcount_PC_reg_cy(5)
    );
  PC_inst_Mcount_PC_reg_xor_5_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(4),
      LI => PC_inst_Mcount_PC_reg_lut(5),
      O => PC_inst_Mcount_PC_reg5
    );
  PC_inst_Mcount_PC_reg_cy_6_Q : MUXCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(5),
      DI => ALU_inst_computed_result_0_115,
      S => PC_inst_Mcount_PC_reg_lut(6),
      O => PC_inst_Mcount_PC_reg_cy(6)
    );
  PC_inst_Mcount_PC_reg_xor_6_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(5),
      LI => PC_inst_Mcount_PC_reg_lut(6),
      O => PC_inst_Mcount_PC_reg6
    );
  PC_inst_Mcount_PC_reg_xor_7_Q : XORCY
    port map (
      CI => PC_inst_Mcount_PC_reg_cy(6),
      LI => PC_inst_Mcount_PC_reg_lut(7),
      O => PC_inst_Mcount_PC_reg7
    );
  PC_inst_PC_reg_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg,
      Q => PC_inst_PC_reg(0)
    );
  PC_inst_PC_reg_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg1,
      Q => PC_inst_PC_reg(1)
    );
  PC_inst_PC_reg_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg2,
      Q => PC_inst_PC_reg(2)
    );
  PC_inst_PC_reg_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg3,
      Q => PC_inst_PC_reg(3)
    );
  PC_inst_PC_reg_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg4,
      Q => PC_inst_PC_reg(4)
    );
  PC_inst_PC_reg_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg5,
      Q => PC_inst_PC_reg(5)
    );
  PC_inst_PC_reg_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg6,
      Q => PC_inst_PC_reg(6)
    );
  PC_inst_PC_reg_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg7,
      Q => PC_inst_PC_reg(7)
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_3 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(5),
      I2 => PC_inst_PC_reg(6),
      I3 => N347,
      O => Instructions_ROM_inst_Mrom_address_in_rom000021_3
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_4 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => PC_inst_PC_reg(5),
      I2 => PC_inst_PC_reg(4),
      I3 => Instructions_ROM_inst_Mrom_address_in_rom00003,
      O => Instructions_ROM_inst_Mrom_address_in_rom000051_4
    );
  Registers_inst_mux15_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_7_710,
      I1 => Registers_inst_reg_6_7_701,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_4_584
    );
  Registers_inst_mux15_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_7_692,
      I1 => Registers_inst_reg_4_7_683,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_5_586
    );
  Registers_inst_mux15_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux15_5_586,
      I1 => Registers_inst_mux15_4_584,
      S => instruction_7_Q,
      O => Registers_inst_mux15_3_f5_583
    );
  Registers_inst_mux15_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_7_674,
      I1 => Registers_inst_reg_2_7_665,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_51_587
    );
  Registers_inst_mux15_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_7_656,
      I1 => instruction_6_Q,
      O => Registers_inst_mux15_6_588
    );
  Registers_inst_mux15_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux15_6_588,
      I1 => Registers_inst_mux15_51_587,
      S => instruction_7_Q,
      O => Registers_inst_mux15_4_f5_585
    );
  Registers_inst_mux15_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux15_4_f5_585,
      I1 => Registers_inst_mux15_3_f5_583,
      S => instruction_8_Q,
      O => Rs1_data(7)
    );
  Registers_inst_mux14_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_6_709,
      I1 => Registers_inst_reg_6_6_700,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_4_578
    );
  Registers_inst_mux14_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_6_691,
      I1 => Registers_inst_reg_4_6_682,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_5_580
    );
  Registers_inst_mux14_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux14_5_580,
      I1 => Registers_inst_mux14_4_578,
      S => instruction_7_Q,
      O => Registers_inst_mux14_3_f5_577
    );
  Registers_inst_mux14_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_6_673,
      I1 => Registers_inst_reg_2_6_664,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_51_581
    );
  Registers_inst_mux14_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_6_655,
      I1 => instruction_6_Q,
      O => Registers_inst_mux14_6_582
    );
  Registers_inst_mux14_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux14_6_582,
      I1 => Registers_inst_mux14_51_581,
      S => instruction_7_Q,
      O => Registers_inst_mux14_4_f5_579
    );
  Registers_inst_mux14_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux14_4_f5_579,
      I1 => Registers_inst_mux14_3_f5_577,
      S => instruction_8_Q,
      O => Rs1_data(6)
    );
  Registers_inst_mux13_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_5_708,
      I1 => Registers_inst_reg_6_5_699,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_4_572
    );
  Registers_inst_mux13_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_5_690,
      I1 => Registers_inst_reg_4_5_681,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_5_574
    );
  Registers_inst_mux13_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux13_5_574,
      I1 => Registers_inst_mux13_4_572,
      S => instruction_7_Q,
      O => Registers_inst_mux13_3_f5_571
    );
  Registers_inst_mux13_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_5_672,
      I1 => Registers_inst_reg_2_5_663,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_51_575
    );
  Registers_inst_mux13_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_5_654,
      I1 => instruction_6_Q,
      O => Registers_inst_mux13_6_576
    );
  Registers_inst_mux13_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux13_6_576,
      I1 => Registers_inst_mux13_51_575,
      S => instruction_7_Q,
      O => Registers_inst_mux13_4_f5_573
    );
  Registers_inst_mux13_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux13_4_f5_573,
      I1 => Registers_inst_mux13_3_f5_571,
      S => instruction_8_Q,
      O => Rs1_data(5)
    );
  Registers_inst_mux12_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_4_707,
      I1 => Registers_inst_reg_6_4_698,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_4_566
    );
  Registers_inst_mux12_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_4_689,
      I1 => Registers_inst_reg_4_4_680,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_5_568
    );
  Registers_inst_mux12_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux12_5_568,
      I1 => Registers_inst_mux12_4_566,
      S => instruction_7_Q,
      O => Registers_inst_mux12_3_f5_565
    );
  Registers_inst_mux12_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_4_671,
      I1 => Registers_inst_reg_2_4_662,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_51_569
    );
  Registers_inst_mux12_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_4_653,
      I1 => instruction_6_Q,
      O => Registers_inst_mux12_6_570
    );
  Registers_inst_mux12_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux12_6_570,
      I1 => Registers_inst_mux12_51_569,
      S => instruction_7_Q,
      O => Registers_inst_mux12_4_f5_567
    );
  Registers_inst_mux12_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux12_4_f5_567,
      I1 => Registers_inst_mux12_3_f5_565,
      S => instruction_8_Q,
      O => Rs1_data(4)
    );
  Registers_inst_mux11_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_3_706,
      I1 => Registers_inst_reg_6_3_697,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_4_560
    );
  Registers_inst_mux11_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_3_688,
      I1 => Registers_inst_reg_4_3_679,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_5_562
    );
  Registers_inst_mux11_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux11_5_562,
      I1 => Registers_inst_mux11_4_560,
      S => instruction_7_Q,
      O => Registers_inst_mux11_3_f5_559
    );
  Registers_inst_mux11_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_3_670,
      I1 => Registers_inst_reg_2_3_661,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_51_563
    );
  Registers_inst_mux11_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_3_652,
      I1 => instruction_6_Q,
      O => Registers_inst_mux11_6_564
    );
  Registers_inst_mux11_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux11_6_564,
      I1 => Registers_inst_mux11_51_563,
      S => instruction_7_Q,
      O => Registers_inst_mux11_4_f5_561
    );
  Registers_inst_mux11_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux11_4_f5_561,
      I1 => Registers_inst_mux11_3_f5_559,
      S => instruction_8_Q,
      O => Rs1_data(3)
    );
  Registers_inst_mux10_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_2_705,
      I1 => Registers_inst_reg_6_2_696,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_4_554
    );
  Registers_inst_mux10_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_2_687,
      I1 => Registers_inst_reg_4_2_678,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_5_556
    );
  Registers_inst_mux10_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux10_5_556,
      I1 => Registers_inst_mux10_4_554,
      S => instruction_7_Q,
      O => Registers_inst_mux10_3_f5_553
    );
  Registers_inst_mux10_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_2_669,
      I1 => Registers_inst_reg_2_2_660,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_51_557
    );
  Registers_inst_mux10_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_2_651,
      I1 => instruction_6_Q,
      O => Registers_inst_mux10_6_558
    );
  Registers_inst_mux10_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux10_6_558,
      I1 => Registers_inst_mux10_51_557,
      S => instruction_7_Q,
      O => Registers_inst_mux10_4_f5_555
    );
  Registers_inst_mux10_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux10_4_f5_555,
      I1 => Registers_inst_mux10_3_f5_553,
      S => instruction_8_Q,
      O => Rs1_data(2)
    );
  Registers_inst_mux9_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_1_704,
      I1 => Registers_inst_reg_6_1_695,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_4_638
    );
  Registers_inst_mux9_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_1_686,
      I1 => Registers_inst_reg_4_1_677,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_5_640
    );
  Registers_inst_mux9_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux9_5_640,
      I1 => Registers_inst_mux9_4_638,
      S => instruction_7_Q,
      O => Registers_inst_mux9_3_f5_637
    );
  Registers_inst_mux9_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_1_668,
      I1 => Registers_inst_reg_2_1_659,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_51_641
    );
  Registers_inst_mux9_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_1_650,
      I1 => instruction_6_Q,
      O => Registers_inst_mux9_6_642
    );
  Registers_inst_mux9_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux9_6_642,
      I1 => Registers_inst_mux9_51_641,
      S => instruction_7_Q,
      O => Registers_inst_mux9_4_f5_639
    );
  Registers_inst_mux9_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux9_4_f5_639,
      I1 => Registers_inst_mux9_3_f5_637,
      S => instruction_8_Q,
      O => Rs1_data(1)
    );
  Registers_inst_mux8_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_0_703,
      I1 => Registers_inst_reg_6_0_694,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_4_632
    );
  Registers_inst_mux8_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_0_685,
      I1 => Registers_inst_reg_4_0_676,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_5_634
    );
  Registers_inst_mux8_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux8_5_634,
      I1 => Registers_inst_mux8_4_632,
      S => instruction_7_Q,
      O => Registers_inst_mux8_3_f5_631
    );
  Registers_inst_mux8_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_0_667,
      I1 => Registers_inst_reg_2_0_658,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_51_635
    );
  Registers_inst_mux8_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_0_649,
      I1 => instruction_6_Q,
      O => Registers_inst_mux8_6_636
    );
  Registers_inst_mux8_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux8_6_636,
      I1 => Registers_inst_mux8_51_635,
      S => instruction_7_Q,
      O => Registers_inst_mux8_4_f5_633
    );
  Registers_inst_mux8_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux8_4_f5_633,
      I1 => Registers_inst_mux8_3_f5_631,
      S => instruction_8_Q,
      O => Rs1_data(0)
    );
  Registers_inst_mux7_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux7_5_628,
      I1 => Registers_inst_mux7_4_626,
      S => Rs2_addr(1),
      O => Registers_inst_mux7_3_f5_625
    );
  Registers_inst_mux7_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux7_6_630,
      I1 => Registers_inst_mux7_51_629,
      S => Rs2_addr(1),
      O => Registers_inst_mux7_4_f5_627
    );
  Registers_inst_mux7_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux7_4_f5_627,
      I1 => Registers_inst_mux7_3_f5_625,
      S => Rs2_addr(2),
      O => Rs2_data(7)
    );
  Registers_inst_mux6_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux6_5_622,
      I1 => Registers_inst_mux6_4_620,
      S => Rs2_addr(1),
      O => Registers_inst_mux6_3_f5_619
    );
  Registers_inst_mux6_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux6_6_624,
      I1 => Registers_inst_mux6_51_623,
      S => Rs2_addr(1),
      O => Registers_inst_mux6_4_f5_621
    );
  Registers_inst_mux6_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux6_4_f5_621,
      I1 => Registers_inst_mux6_3_f5_619,
      S => Rs2_addr(2),
      O => Rs2_data(6)
    );
  Registers_inst_mux5_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux5_5_616,
      I1 => Registers_inst_mux5_4_614,
      S => Rs2_addr(1),
      O => Registers_inst_mux5_3_f5_613
    );
  Registers_inst_mux5_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux5_6_618,
      I1 => Registers_inst_mux5_51_617,
      S => Rs2_addr(1),
      O => Registers_inst_mux5_4_f5_615
    );
  Registers_inst_mux5_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux5_4_f5_615,
      I1 => Registers_inst_mux5_3_f5_613,
      S => Rs2_addr(2),
      O => Rs2_data(5)
    );
  Registers_inst_mux4_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux4_5_610,
      I1 => Registers_inst_mux4_4_608,
      S => Rs2_addr(1),
      O => Registers_inst_mux4_3_f5_607
    );
  Registers_inst_mux4_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux4_6_612,
      I1 => Registers_inst_mux4_51_611,
      S => Rs2_addr(1),
      O => Registers_inst_mux4_4_f5_609
    );
  Registers_inst_mux4_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux4_4_f5_609,
      I1 => Registers_inst_mux4_3_f5_607,
      S => Rs2_addr(2),
      O => Rs2_data(4)
    );
  Registers_inst_mux3_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux3_5_604,
      I1 => Registers_inst_mux3_4_602,
      S => Rs2_addr(1),
      O => Registers_inst_mux3_3_f5_601
    );
  Registers_inst_mux3_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux3_6_606,
      I1 => Registers_inst_mux3_51_605,
      S => Rs2_addr(1),
      O => Registers_inst_mux3_4_f5_603
    );
  Registers_inst_mux3_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux3_4_f5_603,
      I1 => Registers_inst_mux3_3_f5_601,
      S => Rs2_addr(2),
      O => Rs2_data(3)
    );
  Registers_inst_mux2_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux2_5_598,
      I1 => Registers_inst_mux2_4_596,
      S => Rs2_addr(1),
      O => Registers_inst_mux2_3_f5_595
    );
  Registers_inst_mux2_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux2_6_600,
      I1 => Registers_inst_mux2_51_599,
      S => Rs2_addr(1),
      O => Registers_inst_mux2_4_f5_597
    );
  Registers_inst_mux2_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux2_4_f5_597,
      I1 => Registers_inst_mux2_3_f5_595,
      S => Rs2_addr(2),
      O => Rs2_data(2)
    );
  Registers_inst_mux1_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux1_5_592,
      I1 => Registers_inst_mux1_4_590,
      S => Rs2_addr(1),
      O => Registers_inst_mux1_3_f5_589
    );
  Registers_inst_mux1_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux1_6_594,
      I1 => Registers_inst_mux1_51_593,
      S => Rs2_addr(1),
      O => Registers_inst_mux1_4_f5_591
    );
  Registers_inst_mux1_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux1_4_f5_591,
      I1 => Registers_inst_mux1_3_f5_589,
      S => Rs2_addr(2),
      O => Rs2_data(1)
    );
  Registers_inst_mux_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux_5_646,
      I1 => Registers_inst_mux_4_644,
      S => Rs2_addr(1),
      O => Registers_inst_mux_3_f5_643
    );
  Registers_inst_mux_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux_6_648,
      I1 => Registers_inst_mux_51_647,
      S => Rs2_addr(1),
      O => Registers_inst_mux_4_f5_645
    );
  Registers_inst_mux_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux_4_f5_645,
      I1 => Registers_inst_mux_3_f5_643,
      S => Rs2_addr(2),
      O => Rs2_data(0)
    );
  Registers_inst_reg_7_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_7_7_710
    );
  Registers_inst_reg_7_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_7_6_709
    );
  Registers_inst_reg_7_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_7_5_708
    );
  Registers_inst_reg_7_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_7_4_707
    );
  Registers_inst_reg_7_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_7_3_706
    );
  Registers_inst_reg_7_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_7_2_705
    );
  Registers_inst_reg_7_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_7_1_704
    );
  Registers_inst_reg_7_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_7_0_703
    );
  Registers_inst_reg_6_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_6_7_701
    );
  Registers_inst_reg_6_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_6_6_700
    );
  Registers_inst_reg_6_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_6_5_699
    );
  Registers_inst_reg_6_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_6_4_698
    );
  Registers_inst_reg_6_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_6_3_697
    );
  Registers_inst_reg_6_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_6_2_696
    );
  Registers_inst_reg_6_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_6_1_695
    );
  Registers_inst_reg_6_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_6_0_694
    );
  Registers_inst_reg_5_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_5_7_692
    );
  Registers_inst_reg_5_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_5_6_691
    );
  Registers_inst_reg_5_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_5_5_690
    );
  Registers_inst_reg_5_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_5_4_689
    );
  Registers_inst_reg_5_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_5_3_688
    );
  Registers_inst_reg_5_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_5_2_687
    );
  Registers_inst_reg_5_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_5_1_686
    );
  Registers_inst_reg_5_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_5_0_685
    );
  Registers_inst_reg_4_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_4_7_683
    );
  Registers_inst_reg_4_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_4_6_682
    );
  Registers_inst_reg_4_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_4_5_681
    );
  Registers_inst_reg_4_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_4_4_680
    );
  Registers_inst_reg_4_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_4_3_679
    );
  Registers_inst_reg_4_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_4_2_678
    );
  Registers_inst_reg_4_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_4_1_677
    );
  Registers_inst_reg_4_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_4_0_676
    );
  Registers_inst_reg_2_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_2_7_665
    );
  Registers_inst_reg_2_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_2_6_664
    );
  Registers_inst_reg_2_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_2_5_663
    );
  Registers_inst_reg_2_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_2_4_662
    );
  Registers_inst_reg_2_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_2_3_661
    );
  Registers_inst_reg_2_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_2_2_660
    );
  Registers_inst_reg_2_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_2_1_659
    );
  Registers_inst_reg_2_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_2_0_658
    );
  Registers_inst_reg_1_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_1_7_656
    );
  Registers_inst_reg_1_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_1_6_655
    );
  Registers_inst_reg_1_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_1_5_654
    );
  Registers_inst_reg_1_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_1_4_653
    );
  Registers_inst_reg_1_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_1_3_652
    );
  Registers_inst_reg_1_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_1_2_651
    );
  Registers_inst_reg_1_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_1_1_650
    );
  Registers_inst_reg_1_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_1_0_649
    );
  Registers_inst_reg_3_7 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(7),
      Q => Registers_inst_reg_3_7_674
    );
  Registers_inst_reg_3_6 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(6),
      Q => Registers_inst_reg_3_6_673
    );
  Registers_inst_reg_3_5 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(5),
      Q => Registers_inst_reg_3_5_672
    );
  Registers_inst_reg_3_4 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(4),
      Q => Registers_inst_reg_3_4_671
    );
  Registers_inst_reg_3_3 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(3),
      Q => Registers_inst_reg_3_3_670
    );
  Registers_inst_reg_3_2 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(2),
      Q => Registers_inst_reg_3_2_669
    );
  Registers_inst_reg_3_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(1),
      Q => Registers_inst_reg_3_1_668
    );
  Registers_inst_reg_3_0 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_764,
      D => Rd_data(0),
      Q => Registers_inst_reg_3_0_667
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_7_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(6),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(7),
      O => ALU_inst_computed_result_addsub0000(7)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => alu_operand_1(7),
      I2 => alu_operand_2(7),
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(7)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_6_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(5),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(6),
      O => ALU_inst_computed_result_addsub0000(6)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(5),
      DI => alu_operand_1(6),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(6),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(6)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => alu_operand_1(6),
      I2 => alu_operand_2(6),
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(6)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_5_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(4),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(5),
      O => ALU_inst_computed_result_addsub0000(5)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(4),
      DI => alu_operand_1(5),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(5),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(5)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => alu_operand_1(5),
      I2 => alu_operand_2(5),
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(5)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_4_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(3),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(4),
      O => ALU_inst_computed_result_addsub0000(4)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(3),
      DI => alu_operand_1(4),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(4),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(4)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_3_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(2),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(3),
      O => ALU_inst_computed_result_addsub0000(3)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(2),
      DI => alu_operand_1(3),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(3),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(3)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_2_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(1),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(2),
      O => ALU_inst_computed_result_addsub0000(2)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(1),
      DI => alu_operand_1(2),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(2),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(2)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_1_Q : XORCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(0),
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(1),
      O => ALU_inst_computed_result_addsub0000(1)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => ALU_inst_Maddsub_computed_result_addsub0000_cy(0),
      DI => alu_operand_1(1),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(1),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(1)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(0),
      O => ALU_inst_computed_result_addsub0000(0)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      DI => alu_operand_1(0),
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(0),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(0)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(6),
      DI => Rs1_data(7),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(7),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(7)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(7),
      I1 => Rs2_data(7),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(7)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(5),
      DI => Rs1_data(6),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(6),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(6)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(6),
      I1 => Rs2_data(6),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(6)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(4),
      DI => Rs1_data(5),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(5),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(5)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(5),
      I1 => Rs2_data(5),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(5)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(3),
      DI => Rs1_data(4),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(4),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(4)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(4),
      I1 => Rs2_data(4),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(4)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(2),
      DI => Rs1_data(3),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(3),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(3)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(3),
      I1 => Rs2_data(3),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(3)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(1),
      DI => Rs1_data(2),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(2),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(2)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(2),
      I1 => Rs2_data(2),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(2)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(0),
      DI => Rs1_data(1),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(1),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(1)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(1),
      I1 => Rs2_data(1),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(1)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Rs1_data(0),
      S => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(0),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(0)
    );
  Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Rs1_data(0),
      I1 => Rs2_data(0),
      O => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut(0)
    );
  Display_Control_Unit_inst_seg_mode_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_and0000,
      D => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      Q => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346
    );
  Display_Control_Unit_inst_seg_mode_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_and0000,
      D => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      Q => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348
    );
  Display_Control_Unit_inst_seg_mode_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_and0000,
      D => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      Q => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347
    );
  Display_Control_Unit_inst_seg_mode_FSM_FFd4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_and0000,
      D => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      Q => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_25_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(24),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_25_rt_202,
      O => Display_Control_Unit_inst_Result(25)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_24_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(23),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_rt_184,
      O => Display_Control_Unit_inst_Result(24)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(23),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_rt_184,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(24)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_23_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(22),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_rt_182,
      O => Display_Control_Unit_inst_Result(23)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(22),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_rt_182,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(23)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_22_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(21),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_rt_180,
      O => Display_Control_Unit_inst_Result(22)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(21),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_rt_180,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(22)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_21_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(20),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_rt_178,
      O => Display_Control_Unit_inst_Result(21)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(20),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_rt_178,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(21)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_20_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(19),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_rt_176,
      O => Display_Control_Unit_inst_Result(20)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(19),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_rt_176,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(20)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_19_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(18),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_rt_172,
      O => Display_Control_Unit_inst_Result(19)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(18),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_rt_172,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(19)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_18_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(17),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_rt_170,
      O => Display_Control_Unit_inst_Result(18)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(17),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_rt_170,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(18)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_17_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(16),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_rt_168,
      O => Display_Control_Unit_inst_Result(17)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(16),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_rt_168,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(17)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_16_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(15),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_rt_166,
      O => Display_Control_Unit_inst_Result_16_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(15),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_rt_166,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(16)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_15_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(14),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_rt_164,
      O => Display_Control_Unit_inst_Result_15_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(14),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_rt_164,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(15)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_14_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(13),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_rt_162,
      O => Display_Control_Unit_inst_Result_14_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(13),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_rt_162,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(14)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_13_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(12),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_rt_160,
      O => Display_Control_Unit_inst_Result_13_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(12),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_rt_160,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(13)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_12_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(11),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_rt_158,
      O => Display_Control_Unit_inst_Result_12_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(11),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_rt_158,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(12)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_11_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(10),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_rt_156,
      O => Display_Control_Unit_inst_Result_11_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(10),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_rt_156,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(11)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_10_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(9),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_rt_154,
      O => Display_Control_Unit_inst_Result_10_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(9),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_rt_154,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(10)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_9_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(8),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_rt_200,
      O => Display_Control_Unit_inst_Result_9_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(8),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_rt_200,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(9)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_8_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(7),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_rt_198,
      O => Display_Control_Unit_inst_Result_8_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(7),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_rt_198,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(8)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_7_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(6),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_rt_196,
      O => Display_Control_Unit_inst_Result_7_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(6),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_rt_196,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(7)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_6_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(5),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_rt_194,
      O => Display_Control_Unit_inst_Result_6_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(5),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_rt_194,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(6)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_5_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(4),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_rt_192,
      O => Display_Control_Unit_inst_Result_5_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(4),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_rt_192,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(5)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_4_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(3),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_rt_190,
      O => Display_Control_Unit_inst_Result_4_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(3),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_rt_190,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(4)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_3_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(2),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_rt_188,
      O => Display_Control_Unit_inst_Result_3_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(2),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_rt_188,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(3)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_2_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(1),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_rt_186,
      O => Display_Control_Unit_inst_Result_2_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(1),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_rt_186,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(2)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_1_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(0),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_rt_174,
      O => Display_Control_Unit_inst_Result_1_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(0),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_rt_174,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(1)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_0_Q : XORCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_page_lut(0),
      O => Display_Control_Unit_inst_Result_0_1
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_0_Q : MUXCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      DI => N1,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_page_lut(0),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy(0)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_16_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(15),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_16_rt_151,
      O => Display_Control_Unit_inst_Result(16)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_15_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(14),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_rt_131,
      O => Display_Control_Unit_inst_Result(15)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(14),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_rt_131,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(15)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_14_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(13),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_rt_129,
      O => Display_Control_Unit_inst_Result(14)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(13),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_rt_129,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(14)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_13_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(12),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_rt_127,
      O => Display_Control_Unit_inst_Result(13)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(12),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_rt_127,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(13)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_12_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(11),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_rt_125,
      O => Display_Control_Unit_inst_Result(12)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(11),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_rt_125,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(12)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_11_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(10),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_rt_123,
      O => Display_Control_Unit_inst_Result(11)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(10),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_rt_123,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(11)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_10_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(9),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_rt_121,
      O => Display_Control_Unit_inst_Result(10)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(9),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_rt_121,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(10)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_9_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(8),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_rt_149,
      O => Display_Control_Unit_inst_Result(9)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(8),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_rt_149,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(9)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_8_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(7),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_rt_147,
      O => Display_Control_Unit_inst_Result(8)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(7),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_rt_147,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(8)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_7_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(6),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_rt_145,
      O => Display_Control_Unit_inst_Result(7)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(6),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_rt_145,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(7)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_6_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(5),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_rt_143,
      O => Display_Control_Unit_inst_Result(6)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(5),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_rt_143,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(6)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_5_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(4),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_rt_141,
      O => Display_Control_Unit_inst_Result(5)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(4),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_rt_141,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(5)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_4_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(3),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_rt_139,
      O => Display_Control_Unit_inst_Result(4)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(3),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_rt_139,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(4)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_3_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(2),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_rt_137,
      O => Display_Control_Unit_inst_Result(3)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(2),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_rt_137,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(3)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_2_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(1),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_rt_135,
      O => Display_Control_Unit_inst_Result(2)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(1),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_rt_135,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(2)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_1_Q : XORCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(0),
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_rt_133,
      O => Display_Control_Unit_inst_Result(1)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(0),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_rt_133,
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(1)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_0_Q : XORCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      LI => Display_Control_Unit_inst_Mcount_clk_cnt_block_lut(0),
      O => Display_Control_Unit_inst_Result(0)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_0_Q : MUXCY
    port map (
      CI => ALU_inst_computed_result_0_115,
      DI => N1,
      S => Display_Control_Unit_inst_Mcount_clk_cnt_block_lut(0),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy(0)
    );
  Display_Control_Unit_inst_clk_cnt_block_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(16),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(16)
    );
  Display_Control_Unit_inst_clk_cnt_block_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(15),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(15)
    );
  Display_Control_Unit_inst_clk_cnt_block_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(14),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(14)
    );
  Display_Control_Unit_inst_clk_cnt_block_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(13),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(13)
    );
  Display_Control_Unit_inst_clk_cnt_block_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(12),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(12)
    );
  Display_Control_Unit_inst_clk_cnt_block_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(11),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(11)
    );
  Display_Control_Unit_inst_clk_cnt_block_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(10),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(10)
    );
  Display_Control_Unit_inst_clk_cnt_block_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(9),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(9)
    );
  Display_Control_Unit_inst_clk_cnt_block_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(8),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(8)
    );
  Display_Control_Unit_inst_clk_cnt_block_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(7),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(7)
    );
  Display_Control_Unit_inst_clk_cnt_block_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(6),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(6)
    );
  Display_Control_Unit_inst_clk_cnt_block_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(5),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(5)
    );
  Display_Control_Unit_inst_clk_cnt_block_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(4),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(4)
    );
  Display_Control_Unit_inst_clk_cnt_block_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(3),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(3)
    );
  Display_Control_Unit_inst_clk_cnt_block_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(2),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(2)
    );
  Display_Control_Unit_inst_clk_cnt_block_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(1),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(1)
    );
  Display_Control_Unit_inst_clk_cnt_block_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_clk_cnt_block_not0000,
      D => Display_Control_Unit_inst_Result(0),
      R => Display_Control_Unit_inst_clk_cnt_block_and0000,
      Q => Display_Control_Unit_inst_clk_cnt_block(0)
    );
  Display_Control_Unit_inst_clk_cnt_page_25 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(25),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(25)
    );
  Display_Control_Unit_inst_clk_cnt_page_24 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(24),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(24)
    );
  Display_Control_Unit_inst_clk_cnt_page_23 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(23),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(23)
    );
  Display_Control_Unit_inst_clk_cnt_page_22 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(22),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(22)
    );
  Display_Control_Unit_inst_clk_cnt_page_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(21),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(21)
    );
  Display_Control_Unit_inst_clk_cnt_page_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(20),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(20)
    );
  Display_Control_Unit_inst_clk_cnt_page_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(19),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(19)
    );
  Display_Control_Unit_inst_clk_cnt_page_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(18),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(18)
    );
  Display_Control_Unit_inst_clk_cnt_page_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result(17),
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(17)
    );
  Display_Control_Unit_inst_clk_cnt_page_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_16_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(16)
    );
  Display_Control_Unit_inst_clk_cnt_page_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_15_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(15)
    );
  Display_Control_Unit_inst_clk_cnt_page_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_14_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(14)
    );
  Display_Control_Unit_inst_clk_cnt_page_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_13_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(13)
    );
  Display_Control_Unit_inst_clk_cnt_page_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_12_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(12)
    );
  Display_Control_Unit_inst_clk_cnt_page_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_11_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(11)
    );
  Display_Control_Unit_inst_clk_cnt_page_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_10_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(10)
    );
  Display_Control_Unit_inst_clk_cnt_page_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_9_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(9)
    );
  Display_Control_Unit_inst_clk_cnt_page_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_8_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(8)
    );
  Display_Control_Unit_inst_clk_cnt_page_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_7_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(7)
    );
  Display_Control_Unit_inst_clk_cnt_page_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_6_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(6)
    );
  Display_Control_Unit_inst_clk_cnt_page_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_5_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(5)
    );
  Display_Control_Unit_inst_clk_cnt_page_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_4_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(4)
    );
  Display_Control_Unit_inst_clk_cnt_page_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_3_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(3)
    );
  Display_Control_Unit_inst_clk_cnt_page_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_2_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(2)
    );
  Display_Control_Unit_inst_clk_cnt_page_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_1_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(1)
    );
  Display_Control_Unit_inst_clk_cnt_page_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      D => Display_Control_Unit_inst_Result_0_1,
      R => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      Q => Display_Control_Unit_inst_clk_cnt_page(0)
    );
  Display_Control_Unit_inst_page_mode_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      D => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      Q => Display_Control_Unit_inst_page_mode_FSM_FFd1_312
    );
  Display_Control_Unit_inst_page_mode_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      D => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      Q => Display_Control_Unit_inst_page_mode_FSM_FFd2_313
    );
  Display_Control_Unit_inst_page_mode_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      D => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      Q => Display_Control_Unit_inst_page_mode_FSM_FFd3_314
    );
  Display_Control_Unit_inst_page_mode_FSM_FFd4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk_BUFGP_748,
      CE => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      D => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      Q => Display_Control_Unit_inst_page_mode_FSM_FFd4_315
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(3),
      I1 => Display_Control_Unit_inst_clk_cnt_block(4),
      O => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(0)
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(0),
      O => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy(0)
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(6),
      I1 => Display_Control_Unit_inst_clk_cnt_block(2),
      I2 => Display_Control_Unit_inst_clk_cnt_block(5),
      I3 => Display_Control_Unit_inst_clk_cnt_block(7),
      O => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(1)
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy_1_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy(0),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(1),
      O => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy(1)
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(8),
      I1 => Display_Control_Unit_inst_clk_cnt_block(0),
      I2 => Display_Control_Unit_inst_clk_cnt_block(10),
      I3 => Display_Control_Unit_inst_clk_cnt_block(9),
      O => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(2)
    );
  Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy_2_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_cy(1),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_clk_cnt_block_and0000_wg_lut(2),
      O => Display_Control_Unit_inst_clk_cnt_block_and00001
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_0_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(5),
      I1 => Display_Control_Unit_inst_clk_cnt_page(9),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(0)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(0),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(0)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(8),
      I1 => Display_Control_Unit_inst_clk_cnt_page(4),
      I2 => Display_Control_Unit_inst_clk_cnt_page(7),
      I3 => Display_Control_Unit_inst_clk_cnt_page(12),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(1)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_1_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(0),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(1),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(1)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(13),
      I1 => Display_Control_Unit_inst_clk_cnt_page(10),
      I2 => Display_Control_Unit_inst_clk_cnt_page(11),
      I3 => Display_Control_Unit_inst_clk_cnt_page(6),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(2)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_2_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(1),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(2),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(2)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(3),
      I1 => Display_Control_Unit_inst_clk_cnt_page(16),
      I2 => Display_Control_Unit_inst_clk_cnt_page(14),
      I3 => Display_Control_Unit_inst_clk_cnt_page(15),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(3)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_3_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(2),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(3),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(3)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(2),
      I1 => Display_Control_Unit_inst_clk_cnt_page(18),
      I2 => Display_Control_Unit_inst_clk_cnt_page(19),
      I3 => Display_Control_Unit_inst_clk_cnt_page(17),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(4)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_4_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(3),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(4),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(4)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(20),
      I1 => Display_Control_Unit_inst_clk_cnt_page(1),
      I2 => Display_Control_Unit_inst_clk_cnt_page(22),
      I3 => Display_Control_Unit_inst_clk_cnt_page(21),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(5)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_5_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(4),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(5),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(5)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(0),
      I1 => Display_Control_Unit_inst_clk_cnt_page(24),
      I2 => Display_Control_Unit_inst_clk_cnt_page(25),
      I3 => Display_Control_Unit_inst_clk_cnt_page(23),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(6)
    );
  Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy_6_Q : MUXCY
    port map (
      CI => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_cy(5),
      DI => ALU_inst_computed_result_0_115,
      S => Display_Control_Unit_inst_seg_mode_cmp_eq0004_wg_lut(6),
      O => Display_Control_Unit_inst_seg_mode_cmp_eq0004
    );
  Display_Control_Unit_inst_clk_cnt_block_and000021 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(12),
      I1 => Display_Control_Unit_inst_clk_cnt_block(11),
      I2 => Display_Control_Unit_inst_clk_cnt_block(13),
      I3 => Display_Control_Unit_inst_clk_cnt_block(1),
      O => Display_Control_Unit_inst_clk_cnt_block_and00002
    );
  Display_Control_Unit_inst_opcode_visibility_toggle1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      O => Display_Control_Unit_inst_opcode_visibility_toggle
    );
  Instructions_ROM_inst_data_out_11_mux00003 : LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => Instructions_ROM_inst_N9,
      I2 => Instructions_ROM_inst_N0,
      I3 => Instructions_ROM_inst_N7,
      O => instruction_11_Q
    );
  Display_Control_Unit_inst_clk_cnt_block_and000041 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block_and00003,
      I1 => Display_Control_Unit_inst_clk_cnt_block_and00002,
      I2 => Display_Control_Unit_inst_clk_cnt_block_and00001,
      O => Display_Control_Unit_inst_clk_cnt_block_and0000
    );
  Display_Control_Unit_inst_clk_cnt_block_and000031 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(14),
      I1 => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      I2 => Display_Control_Unit_inst_clk_cnt_block(16),
      I3 => Display_Control_Unit_inst_clk_cnt_block(15),
      O => Display_Control_Unit_inst_clk_cnt_block_and00003
    );
  Registers_inst_reg_7_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Rd_we,
      I1 => instruction_9_Q,
      I2 => instruction_10_Q,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_7_and0000
    );
  Registers_inst_reg_6_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Rd_we,
      I1 => instruction_9_Q,
      I2 => instruction_10_Q,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_6_and0000
    );
  Registers_inst_reg_5_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => instruction_9_Q,
      I1 => instruction_10_Q,
      I2 => Rd_we,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_5_and0000
    );
  Registers_inst_reg_4_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => instruction_9_Q,
      I1 => instruction_10_Q,
      I2 => Rd_we,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_4_and0000
    );
  Registers_inst_reg_3_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => instruction_9_Q,
      I1 => instruction_11_Q,
      I2 => instruction_10_Q,
      I3 => Rd_we,
      O => Registers_inst_reg_3_and0000
    );
  Registers_inst_reg_2_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => instruction_9_Q,
      I1 => instruction_11_Q,
      I2 => instruction_10_Q,
      I3 => Rd_we,
      O => Registers_inst_reg_2_and0000
    );
  Registers_inst_reg_1_and00001 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => instruction_11_Q,
      I1 => instruction_10_Q,
      I2 => instruction_9_Q,
      I3 => Rd_we,
      O => Registers_inst_reg_1_and0000
    );
  ALU_inst_computed_result_4_29 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => N354,
      I2 => ALU_inst_computed_result_addsub0000(4),
      O => ALU_inst_computed_result_4_29_22
    );
  ALU_inst_computed_result_3_29 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => N355,
      I2 => ALU_inst_computed_result_addsub0000(3),
      O => ALU_inst_computed_result_3_29_20
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_1_1 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(0),
      I1 => Display_Control_Unit_inst_binary_input(1),
      I2 => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_4_mux000111 : LUT4
    generic map(
      INIT => X"3339"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N26,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4,
      I3 => Display_Control_Unit_inst_binary_input(6),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1
    );
  Instructions_ROM_inst_data_out_8_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => Instructions_ROM_inst_N7,
      O => instruction_8_Q
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_2_1 : LUT4
    generic map(
      INIT => X"3C78"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(0),
      I1 => Display_Control_Unit_inst_binary_input(7),
      I2 => Display_Control_Unit_inst_binary_input(2),
      I3 => Display_Control_Unit_inst_binary_input(1),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux00011_SW1 : LUT4
    generic map(
      INIT => X"ABD5"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(5),
      I2 => Display_Control_Unit_inst_binary_input(4),
      I3 => Display_Control_Unit_inst_binary_input(6),
      O => N23
    );
  Instructions_ROM_inst_data_out_5_mux0000 : LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => N26,
      I2 => N25,
      I3 => Instructions_ROM_inst_N9,
      O => instruction_5_Q
    );
  Decoder_Controller_inst_alu1_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(6),
      I2 => Rs1_data(6),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(6)
    );
  Instructions_ROM_inst_data_out_6_mux0000 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => N31,
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => instruction_6_Q
    );
  Decoder_Controller_inst_alu1_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(7),
      I2 => Rs1_data(7),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(7)
    );
  Decoder_Controller_inst_alu1_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(5),
      I2 => Rs1_data(5),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(5)
    );
  Decoder_Controller_inst_alu1_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(4),
      I2 => Rs1_data(4),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(4)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000411 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0
    );
  Display_Control_Unit_inst_binary_input_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(6),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(6),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(6)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000431 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N19
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux000431 : LUT4
    generic map(
      INIT => X"9180"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N30
    );
  Display_Control_Unit_inst_seg_bits_2_27 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => Display_Control_Unit_inst_seg_bits_2_27_326
    );
  Display_Control_Unit_inst_seg_bits_2_40 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(1),
      I3 => ALU_inst_computed_result_0_115,
      O => Display_Control_Unit_inst_seg_bits_2_40_327
    );
  Display_Control_Unit_inst_seg_bits_2_58 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I1 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I2 => Display_Control_Unit_inst_seg_bits_2_40_327,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => Display_Control_Unit_inst_seg_bits_2_58_328
    );
  Display_Control_Unit_inst_seg_bits_2_95 : LUT4
    generic map(
      INIT => X"A8AC"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I3 => Display_Control_Unit_inst_binary_input(0),
      O => Display_Control_Unit_inst_seg_bits_2_95_329
    );
  Display_Control_Unit_inst_seg_bits_2_105 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_2_27_326,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => Display_Control_Unit_inst_seg_bits_2_95_329,
      I3 => Display_Control_Unit_inst_seg_bits_2_58_328,
      O => seg_bits_2_OBUF_783
    );
  Instructions_ROM_inst_data_out_11_mux00002 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(7),
      I2 => PC_inst_PC_reg(5),
      I3 => N336,
      O => Instructions_ROM_inst_N9
    );
  Instructions_ROM_inst_data_out_11_mux00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(7),
      I2 => PC_inst_PC_reg(5),
      I3 => N337,
      O => Instructions_ROM_inst_N7
    );
  Instructions_ROM_inst_data_out_4_mux000020 : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => N342,
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => Instructions_ROM_inst_data_out_4_mux000020_380
    );
  Instructions_ROM_inst_data_out_3_mux00001 : LUT4
    generic map(
      INIT => X"7350"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => Instructions_ROM_inst_N0,
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => Instructions_ROM_inst_data_out_3_mux0000
    );
  Instructions_ROM_inst_data_out_3_mux00002 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => PC_inst_PC_reg(1),
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => Instructions_ROM_inst_data_out_3_mux00001_379
    );
  Instructions_ROM_inst_data_out_3_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_3_mux00001_379,
      I1 => Instructions_ROM_inst_data_out_3_mux0000,
      S => PC_inst_PC_reg(2),
      O => instruction_3_Q
    );
  Instructions_ROM_inst_Mrom_address_in_rom000011 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => PC_inst_PC_reg_1_1_534,
      I1 => PC_inst_PC_reg_2_1_536,
      I2 => PC_inst_PC_reg(3),
      O => Instructions_ROM_inst_Mrom_address_in_rom0000
    );
  Decoder_Controller_inst_alu1_cmp_eq0012826 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => Rs1_data(1),
      I1 => Rs1_data(0),
      I2 => Rs2_data(1),
      I3 => Rs2_data(0),
      O => Decoder_Controller_inst_alu1_cmp_eq0012826_57
    );
  Decoder_Controller_inst_alu1_cmp_eq0012853 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => Rs1_data(3),
      I1 => Rs1_data(2),
      I2 => Rs2_data(3),
      I3 => Rs2_data(2),
      O => Decoder_Controller_inst_alu1_cmp_eq0012853_58
    );
  Decoder_Controller_inst_alu1_cmp_eq0012893 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => Rs1_data(5),
      I1 => Rs1_data(4),
      I2 => Rs2_data(5),
      I3 => Rs2_data(4),
      O => Decoder_Controller_inst_alu1_cmp_eq0012893_59
    );
  Decoder_Controller_inst_alu1_cmp_eq00128136 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq00128120_56,
      I1 => Decoder_Controller_inst_alu1_cmp_eq0012853_58,
      I2 => Decoder_Controller_inst_alu1_cmp_eq0012893_59,
      I3 => Decoder_Controller_inst_alu1_cmp_eq0012826_57,
      O => Decoder_Controller_inst_alu1_cmp_eq0012
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000421 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_4_mux00011 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(1)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000421 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000441 : LUT3
    generic map(
      INIT => X"98"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N27
    );
  Instructions_ROM_inst_Mrom_address_in_rom00001111 : LUT4
    generic map(
      INIT => X"F0E0"
    )
    port map (
      I0 => PC_inst_PC_reg_2_1_536,
      I1 => PC_inst_PC_reg_1_1_534,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      O => Instructions_ROM_inst_Mrom_address_in_rom000011_365
    );
  Display_Control_Unit_inst_binary_input_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(7),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(7),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(7)
    );
  Display_Control_Unit_inst_binary_input_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(5),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(5),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(5)
    );
  Display_Control_Unit_inst_binary_input_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(4),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(4),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(4)
    );
  Decoder_Controller_inst_alu2_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N351,
      I1 => Rs2_data(7),
      I2 => Decoder_Controller_inst_imval(6),
      I3 => Decoder_Controller_inst_N2,
      O => alu_operand_2(7)
    );
  Decoder_Controller_inst_alu1_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(3),
      I2 => Rs1_data(3),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(3)
    );
  Decoder_Controller_inst_alu1_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(2),
      I2 => Rs1_data(2),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(2)
    );
  Decoder_Controller_inst_alu1_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N352,
      I1 => PC_inst_PC_reg(1),
      I2 => Rs1_data(1),
      I3 => Decoder_Controller_inst_N1,
      O => alu_operand_1(1)
    );
  Decoder_Controller_inst_alu1_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(0),
      I2 => Rs1_data(0),
      I3 => N358,
      O => alu_operand_1(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_seg_dec_1_inst_Mrom_seg71 : LUT4
    generic map(
      INIT => X"EE14"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      O => Display_Control_Unit_inst_bcd_seg_1(7)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000256 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000256_116
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000262 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000221,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N5,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000256_116,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000235_115,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000486 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000471_113,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000428,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000447_111,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2)
    );
  Display_Control_Unit_inst_seg_bits_5_65 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I1 => Display_Control_Unit_inst_seg_bits_5_19_337,
      I2 => Display_Control_Unit_inst_seg_bits_5_46_338,
      O => Display_Control_Unit_inst_seg_bits_5_65_339
    );
  Display_Control_Unit_inst_seg_bits_6_52 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(1),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      O => Display_Control_Unit_inst_seg_bits_3_25
    );
  Display_Control_Unit_inst_seg_bits_6_156 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_6_35,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => Display_Control_Unit_inst_seg_bits_6_141_340,
      I3 => Display_Control_Unit_inst_seg_bits_6_87_345,
      O => seg_bits_6_OBUF_787
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux000413 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N10
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_4_1 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(4),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000211 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N64
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_111 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N20
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_5_1 : LUT4
    generic map(
      INIT => X"3C78"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(4),
      I1 => Display_Control_Unit_inst_binary_input(7),
      I2 => Display_Control_Unit_inst_binary_input(5),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0002 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N16,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N5,
      I3 => N46,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_SW0 : LUT4
    generic map(
      INIT => X"999D"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(6),
      I2 => Display_Control_Unit_inst_binary_input(5),
      I3 => Display_Control_Unit_inst_binary_input(4),
      O => N48
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      I1 => N23,
      I2 => N48,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000416 : LUT4
    generic map(
      INIT => X"3111"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N10,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000416_99
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000473 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux00045_100,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000464_101,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000416_99,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1)
    );
  Display_Control_Unit_inst_seg_bits_0_7 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => Display_Control_Unit_inst_bcd_seg_1(7),
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => Display_Control_Unit_inst_seg_bits_0_7_319
    );
  Display_Control_Unit_inst_seg_bits_0_20 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_0_10,
      I1 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I3 => Display_Control_Unit_inst_bcd_seg_10(7),
      O => Display_Control_Unit_inst_seg_bits_0_20_318
    );
  Display_Control_Unit_inst_seg_bits_0_23 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_0_7_319,
      I1 => Display_Control_Unit_inst_seg_bits_0_20_318,
      O => seg_bits_0_OBUF_781
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_131 : LUT4
    generic map(
      INIT => X"766E"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_131_73
    );
  Display_Control_Unit_inst_seg_bits_4_13 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      I3 => Display_Control_Unit_inst_binary_input(0),
      O => Display_Control_Unit_inst_seg_bits_4_13_332
    );
  Display_Control_Unit_inst_seg_bits_4_53 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I2 => ALU_inst_computed_result_0_115,
      I3 => Display_Control_Unit_inst_seg_bits_4_41_334,
      O => Display_Control_Unit_inst_seg_bits_4_53_335
    );
  Display_Control_Unit_inst_seg_bits_1_131 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(1),
      I3 => ALU_inst_computed_result_0_115,
      O => Display_Control_Unit_inst_seg_bits_1_131_320
    );
  Display_Control_Unit_inst_seg_bits_1_153 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I1 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I2 => Display_Control_Unit_inst_seg_bits_1_131_320,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => Display_Control_Unit_inst_seg_bits_1_153_321
    );
  Display_Control_Unit_inst_seg_bits_1_206 : LUT4
    generic map(
      INIT => X"EE48"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      O => Display_Control_Unit_inst_seg_bits_1_206_322
    );
  Display_Control_Unit_inst_seg_bits_1_219 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_1_94,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => Display_Control_Unit_inst_seg_bits_1_206_322,
      I3 => Display_Control_Unit_inst_seg_bits_1_153_321,
      O => seg_bits_1_OBUF_782
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000011 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(4),
      I1 => Display_Control_Unit_inst_binary_input(5),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux00001 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(6),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2)
    );
  Display_Control_Unit_inst_binary_input_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(3),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(3),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(3)
    );
  Display_Control_Unit_inst_binary_input_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(2),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(2),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(2)
    );
  Display_Control_Unit_inst_binary_input_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => alu_operand_1(1),
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      I2 => alu_operand_2(1),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      O => Display_Control_Unit_inst_binary_input(1)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy_2_111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(1),
      I1 => Display_Control_Unit_inst_binary_input(2),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_binary_input(3),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2
    );
  Decoder_Controller_inst_alu2_2_Q : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => Rs2_data(2),
      I3 => N348,
      O => alu_operand_2(2)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux0001_SW0 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(6),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4,
      I2 => Display_Control_Unit_inst_binary_input(7),
      O => N71
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux0001 : LUT4
    generic map(
      INIT => X"AA28"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N26,
      I2 => N71,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux0003_SW0 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      O => N73
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux0003 : LUT4
    generic map(
      INIT => X"6222"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I3 => N73,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0)
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_764
    );
  seg_bits_0_OBUF : OBUF
    port map (
      I => seg_bits_0_OBUF_781,
      O => seg_bits(0)
    );
  seg_bits_1_OBUF : OBUF
    port map (
      I => seg_bits_1_OBUF_782,
      O => seg_bits(1)
    );
  seg_bits_2_OBUF : OBUF
    port map (
      I => seg_bits_2_OBUF_783,
      O => seg_bits(2)
    );
  seg_bits_3_OBUF : OBUF
    port map (
      I => seg_bits_3_OBUF_784,
      O => seg_bits(3)
    );
  seg_bits_4_OBUF : OBUF
    port map (
      I => seg_bits_4_OBUF_785,
      O => seg_bits(4)
    );
  seg_bits_5_OBUF : OBUF
    port map (
      I => seg_bits_5_OBUF_786,
      O => seg_bits(5)
    );
  seg_bits_6_OBUF : OBUF
    port map (
      I => seg_bits_6_OBUF_787,
      O => seg_bits(6)
    );
  seg_bits_7_OBUF : OBUF
    port map (
      I => seg_bits_7_OBUF_788,
      O => seg_bits(7)
    );
  seg_an_3_OBUF : OBUF
    port map (
      I => seg_an_3_OBUF_772,
      O => seg_an(3)
    );
  seg_an_2_OBUF : OBUF
    port map (
      I => seg_an_2_OBUF_771,
      O => seg_an(2)
    );
  seg_an_1_OBUF : OBUF
    port map (
      I => seg_an_1_OBUF_770,
      O => seg_an(1)
    );
  seg_an_0_OBUF : OBUF
    port map (
      I => seg_an_0_OBUF_769,
      O => seg_an(0)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(24),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_24_rt_184
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(23),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_23_rt_182
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(22),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_22_rt_180
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(21),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_21_rt_178
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(20),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_20_rt_176
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(19),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_19_rt_172
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(18),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_18_rt_170
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(17),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_17_rt_168
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(16),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_16_rt_166
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(15),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_15_rt_164
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(14),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_14_rt_162
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(13),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_13_rt_160
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(12),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_12_rt_158
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(11),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_11_rt_156
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(10),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_10_rt_154
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(9),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_9_rt_200
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(8),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_8_rt_198
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(7),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_7_rt_196
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(6),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_6_rt_194
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(5),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_5_rt_192
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(4),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_4_rt_190
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(3),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_3_rt_188
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(2),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_2_rt_186
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(1),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_cy_1_rt_174
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(15),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_15_rt_131
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(14),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_14_rt_129
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(13),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_13_rt_127
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(12),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_12_rt_125
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(11),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_11_rt_123
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(10),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_10_rt_121
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(9),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_9_rt_149
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(8),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_8_rt_147
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(7),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_7_rt_145
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(6),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_6_rt_143
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(5),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_5_rt_141
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(4),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_4_rt_139
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(3),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_3_rt_137
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(2),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_2_rt_135
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(1),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_cy_1_rt_133
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_page(25),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_xor_25_rt_202
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Display_Control_Unit_inst_clk_cnt_block(16),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_xor_16_rt_151
    );
  PC_inst_Mcount_PC_reg_lut_0_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => alu_result_0_Q,
      O => PC_inst_Mcount_PC_reg_lut(0)
    );
  PC_inst_Mcount_PC_reg_lut_5_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(5),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => alu_result_5_Q,
      O => PC_inst_Mcount_PC_reg_lut(5)
    );
  ALU_inst_computed_result_5_156 : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => instruction_15_Q,
      I2 => N353,
      I3 => ALU_inst_computed_result_addsub0000(5),
      O => alu_result_5_Q
    );
  Instructions_ROM_inst_data_out_4_mux000023 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Instructions_ROM_inst_data_out_4_mux000020_380,
      I1 => PC_inst_PC_reg(1),
      I2 => N346,
      O => instruction_4_Q
    );
  Decoder_Controller_inst_alu1_0_111 : LUT4
    generic map(
      INIT => X"2345"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(7),
      I3 => Decoder_Controller_inst_alu1_cmp_eq0012,
      O => Decoder_Controller_inst_N02
    );
  Registers_inst_mux_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_0_694,
      I1 => Registers_inst_reg_7_0_703,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_4_644
    );
  Registers_inst_mux_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_0_676,
      I1 => Registers_inst_reg_5_0_685,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_5_646
    );
  Registers_inst_mux_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_0_658,
      I1 => Registers_inst_reg_3_0_667,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_51_647
    );
  Registers_inst_mux1_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_1_695,
      I1 => Registers_inst_reg_7_1_704,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_4_590
    );
  Registers_inst_mux1_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_1_677,
      I1 => Registers_inst_reg_5_1_686,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_5_592
    );
  Registers_inst_mux1_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_1_659,
      I1 => Registers_inst_reg_3_1_668,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_51_593
    );
  Registers_inst_mux2_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_2_696,
      I1 => Registers_inst_reg_7_2_705,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_4_596
    );
  Registers_inst_mux2_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_2_678,
      I1 => Registers_inst_reg_5_2_687,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_5_598
    );
  Registers_inst_mux2_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_2_660,
      I1 => Registers_inst_reg_3_2_669,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_51_599
    );
  Registers_inst_mux3_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_3_697,
      I1 => Registers_inst_reg_7_3_706,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_4_602
    );
  Registers_inst_mux3_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_3_679,
      I1 => Registers_inst_reg_5_3_688,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_5_604
    );
  Registers_inst_mux3_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_3_661,
      I1 => Registers_inst_reg_3_3_670,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_51_605
    );
  Registers_inst_mux4_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_4_698,
      I1 => Registers_inst_reg_7_4_707,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_4_608
    );
  Registers_inst_mux4_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_4_680,
      I1 => Registers_inst_reg_5_4_689,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_5_610
    );
  Registers_inst_mux4_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_4_662,
      I1 => Registers_inst_reg_3_4_671,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_51_611
    );
  Registers_inst_mux5_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_5_699,
      I1 => Registers_inst_reg_7_5_708,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_4_614
    );
  Registers_inst_mux5_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_5_681,
      I1 => Registers_inst_reg_5_5_690,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_5_616
    );
  Registers_inst_mux5_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_5_663,
      I1 => Registers_inst_reg_3_5_672,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_51_617
    );
  Registers_inst_mux6_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_6_700,
      I1 => Registers_inst_reg_7_6_709,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_4_620
    );
  Registers_inst_mux6_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_6_682,
      I1 => Registers_inst_reg_5_6_691,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_5_622
    );
  Registers_inst_mux6_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_6_664,
      I1 => Registers_inst_reg_3_6_673,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_51_623
    );
  Registers_inst_mux7_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_7_701,
      I1 => Registers_inst_reg_7_7_710,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_4_626
    );
  Registers_inst_mux7_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_7_683,
      I1 => Registers_inst_reg_5_7_692,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_5_628
    );
  Registers_inst_mux7_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_7_665,
      I1 => Registers_inst_reg_3_7_674,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_51_629
    );
  Instructions_ROM_inst_Mrom_address_in_rom000091 : LUT4
    generic map(
      INIT => X"0507"
    )
    port map (
      I0 => PC_inst_PC_reg_2_1_536,
      I1 => PC_inst_PC_reg_1_1_534,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      O => Instructions_ROM_inst_Mrom_address_in_rom00009
    );
  Registers_inst_mux_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_0_649,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_6_648
    );
  Registers_inst_mux1_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_1_650,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_6_594
    );
  Registers_inst_mux2_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_2_651,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_6_600
    );
  Registers_inst_mux3_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_3_652,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_6_606
    );
  Registers_inst_mux4_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_4_653,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_6_612
    );
  Registers_inst_mux5_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_5_654,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_6_618
    );
  Registers_inst_mux6_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_6_655,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_6_624
    );
  Registers_inst_mux7_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_7_656,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_6_630
    );
  Decoder_Controller_inst_alu2_1_SW0 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => Rs2_data(1),
      O => N89
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => N89,
      I2 => alu_operand_1(1),
      I3 => N65,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(1)
    );
  Decoder_Controller_inst_alu2_2_SW1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => Rs2_data(2),
      O => N91
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"A596"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => N91,
      I2 => alu_operand_1(2),
      I3 => N65,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(2)
    );
  Instructions_ROM_inst_data_out_7_mux0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PC_inst_PC_reg(5),
      I1 => PC_inst_PC_reg(1),
      I2 => PC_inst_PC_reg(0),
      I3 => PC_inst_PC_reg(7),
      O => N135
    );
  Instructions_ROM_inst_data_out_11_mux00001_SW1 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => PC_inst_PC_reg(5),
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(7),
      I3 => PC_inst_PC_reg(1),
      O => N141
    );
  Decoder_Controller_inst_alu2_4_SW3 : LUT4
    generic map(
      INIT => X"596A"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => instruction_4_Q,
      I2 => N41,
      I3 => N40,
      O => N150
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N149,
      I1 => N150,
      I2 => alu_operand_1(4),
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(4)
    );
  Decoder_Controller_inst_alu2_0_1 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N153,
      I2 => N152,
      I3 => Decoder_Controller_inst_N02,
      O => Decoder_Controller_inst_N2
    );
  Decoder_Controller_inst_r2_addr_1_1 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => N77,
      I2 => Instructions_ROM_inst_data_out_4_mux000020_380,
      I3 => Decoder_Controller_inst_r2_addr_or00001_66,
      O => Rs2_addr(1)
    );
  Decoder_Controller_inst_r2_addr_or00001 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_366,
      I1 => instruction_12_Q,
      I2 => N359,
      O => Decoder_Controller_inst_r2_addr_or0000
    );
  PC_inst_Mcount_PC_reg_lut_1_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => PC_we,
      I1 => ALU_inst_computed_result_0_115,
      I2 => PC_inst_PC_reg(1),
      I3 => N173,
      O => PC_inst_Mcount_PC_reg_lut(1)
    );
  PC_inst_Mcount_PC_reg_lut_2_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => PC_we,
      I1 => ALU_inst_computed_result_0_115,
      I2 => PC_inst_PC_reg(2),
      I3 => N175,
      O => PC_inst_Mcount_PC_reg_lut(2)
    );
  Decoder_Controller_inst_r2_addr_2_1 : LUT4
    generic map(
      INIT => X"220A"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => instruction_15_Q,
      I2 => instruction_12_Q,
      I3 => N345,
      O => Rs2_addr(2)
    );
  Decoder_Controller_inst_alu2_0_1_SW1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_imval(6),
      I1 => N356,
      I2 => Decoder_Controller_inst_alu2_or0000,
      I3 => Rs2_data(6),
      O => N196
    );
  Decoder_Controller_inst_alu2_0_1_SW3 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_imval(6),
      I1 => N357,
      I2 => Decoder_Controller_inst_alu2_or0000,
      I3 => Rs2_data(6),
      O => N197
    );
  Decoder_Controller_inst_alu2_0_1_SW4 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => N152,
      I2 => N38,
      I3 => N338,
      O => N201
    );
  Decoder_Controller_inst_alu2_0_1_SW5 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => N153,
      I2 => N339,
      I3 => N37,
      O => N202
    );
  Decoder_Controller_inst_alu2_5_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N202,
      I2 => N201,
      I3 => Decoder_Controller_inst_N02,
      O => alu_operand_2(5)
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW1 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(3),
      I3 => N208,
      O => N26
    );
  PC_inst_Mcount_PC_reg_lut_6_Q : LUT4
    generic map(
      INIT => X"FAD8"
    )
    port map (
      I0 => PC_we,
      I1 => ALU_inst_computed_result_0_115,
      I2 => PC_inst_PC_reg(6),
      I3 => N210,
      O => PC_inst_Mcount_PC_reg_lut(6)
    );
  Decoder_Controller_inst_alu2_0_1_SW6 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_4_Q,
      I1 => N152,
      I2 => N41,
      I3 => N340,
      O => N215
    );
  Decoder_Controller_inst_alu2_0_1_SW7 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_4_Q,
      I1 => N153,
      I2 => N341,
      I3 => N40,
      O => N216
    );
  Decoder_Controller_inst_alu2_4_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N216,
      I2 => N215,
      I3 => Decoder_Controller_inst_N02,
      O => alu_operand_2(4)
    );
  Decoder_Controller_inst_alu2_0_1_SW9 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N343,
      I2 => N152,
      I3 => N153,
      O => N219
    );
  Decoder_Controller_inst_alu2_3_27 : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => N218,
      I1 => N219,
      I2 => N344,
      I3 => Decoder_Controller_inst_N02,
      O => alu_operand_2(3)
    );
  Decoder_Controller_inst_alu2_4_SW2 : LUT4
    generic map(
      INIT => X"C9CC"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => ALU_inst_computed_result_0_115,
      I2 => instruction_12_Q,
      I3 => Rs2_data(4),
      O => N149
    );
  ALU_inst_computed_result_1_153_SW0 : MUXF5
    port map (
      I0 => N240,
      I1 => N241,
      S => ALU_inst_computed_result_addsub0000(1),
      O => N173
    );
  ALU_inst_computed_result_1_153_SW0_F : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => instruction_15_Q,
      I2 => Decoder_Controller_inst_N4,
      I3 => ALU_inst_computed_result_1_16,
      O => N240
    );
  ALU_inst_computed_result_1_153_SW0_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_inst_PC_reg(1),
      I3 => ALU_inst_computed_result_1_16,
      O => N241
    );
  ALU_inst_computed_result_2_153_SW0 : MUXF5
    port map (
      I0 => N242,
      I1 => N243,
      S => ALU_inst_computed_result_addsub0000(2),
      O => N175
    );
  ALU_inst_computed_result_2_153_SW0_F : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => instruction_15_Q,
      I2 => Decoder_Controller_inst_N4,
      I3 => ALU_inst_computed_result_2_16,
      O => N242
    );
  ALU_inst_computed_result_2_153_SW0_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_inst_PC_reg(2),
      I3 => ALU_inst_computed_result_2_16,
      O => N243
    );
  ALU_inst_computed_result_6_156_SW0 : MUXF5
    port map (
      I0 => N250,
      I1 => N251,
      S => ALU_inst_computed_result_addsub0000(6),
      O => N210
    );
  ALU_inst_computed_result_6_156_SW0_F : LUT4
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => instruction_15_Q,
      I2 => Decoder_Controller_inst_N4,
      I3 => ALU_inst_computed_result_6_16,
      O => N250
    );
  ALU_inst_computed_result_6_156_SW0_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_inst_PC_reg(6),
      I3 => ALU_inst_computed_result_6_16,
      O => N251
    );
  Decoder_Controller_inst_alu2_2_SW0_SW2 : MUXF5
    port map (
      I0 => N252,
      I1 => N253,
      S => Rs2_data(1),
      O => N221
    );
  Decoder_Controller_inst_alu2_2_SW0_SW2_G : LUT4
    generic map(
      INIT => X"EEE0"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => N155,
      I3 => N83,
      O => N253
    );
  Decoder_Controller_inst_alu2_2_SW0_SW3 : MUXF5
    port map (
      I0 => N254,
      I1 => N255,
      S => Rs2_data(1),
      O => N222
    );
  Decoder_Controller_inst_alu2_2_SW0_SW3_F : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N83,
      I1 => N156,
      O => N254
    );
  Decoder_Controller_inst_alu2_2_SW0_SW3_G : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => N83,
      I1 => instruction_12_Q,
      I2 => N156,
      I3 => instruction_13_Q,
      O => N255
    );
  Decoder_Controller_inst_alu2_2_SW0_SW4 : MUXF5
    port map (
      I0 => N256,
      I1 => N257,
      S => Rs2_data(0),
      O => N224
    );
  Decoder_Controller_inst_alu2_2_SW0_SW4_F : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N83,
      I1 => N155,
      O => N256
    );
  Decoder_Controller_inst_alu2_2_SW0_SW4_G : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => N83,
      I1 => instruction_12_Q,
      I2 => N155,
      I3 => instruction_13_Q,
      O => N257
    );
  Decoder_Controller_inst_alu2_2_SW0_SW5 : MUXF5
    port map (
      I0 => N258,
      I1 => N259,
      S => Rs2_data(0),
      O => N225
    );
  Decoder_Controller_inst_alu2_2_SW0_SW5_F : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => N83,
      I1 => N156,
      O => N258
    );
  Decoder_Controller_inst_alu2_2_SW0_SW5_G : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => N83,
      I1 => instruction_12_Q,
      I2 => N156,
      I3 => instruction_13_Q,
      O => N259
    );
  Display_Control_Unit_inst_seg_bits_5_101 : LUT4
    generic map(
      INIT => X"EEB2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      O => Display_Control_Unit_inst_seg_bits_5_101_336
    );
  Decoder_Controller_inst_alu2_0_1_SW2 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => Instructions_ROM_inst_N0,
      I2 => Instructions_ROM_inst_N9,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => N83
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000464_SW0 : LUT4
    generic map(
      INIT => X"0E07"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17,
      O => N268
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000464 : LUT4
    generic map(
      INIT => X"4105"
    )
    port map (
      I0 => N268,
      I1 => Display_Control_Unit_inst_binary_input(7),
      I2 => Display_Control_Unit_inst_binary_input(1),
      I3 => Display_Control_Unit_inst_binary_input(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux000464_101
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux0002211_SW0 : LUT4
    generic map(
      INIT => X"EBFB"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      O => N270
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux0002211 : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      I1 => N270,
      I2 => N23,
      I3 => N48,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000221
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux000420_SW0 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N30,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N19,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N10,
      O => N272
    );
  Display_Control_Unit_inst_seg_bits_5_2_SW0 : LUT4
    generic map(
      INIT => X"C080"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      O => N274
    );
  Display_Control_Unit_inst_seg_bits_5_2 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I2 => N274,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => Display_Control_Unit_inst_seg_bits_4_2
    );
  Display_Control_Unit_inst_seg_bits_6_141 : LUT4
    generic map(
      INIT => X"EE91"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      O => Display_Control_Unit_inst_seg_bits_6_141_340
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_191 : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_131_73,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_176_74,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(1)
    );
  Display_Control_Unit_inst_seg_bits_3_14 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => Display_Control_Unit_inst_opcode_visibility_toggle,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I2 => N276,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      O => Display_Control_Unit_inst_seg_bits_3_14_330
    );
  Display_Control_Unit_inst_seg_bits_7_Q : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      O => seg_bits_7_OBUF_788
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000235_SW0 : LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      O => N278
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000235 : LUT4
    generic map(
      INIT => X"060A"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(6),
      I1 => Display_Control_Unit_inst_binary_input(7),
      I2 => N278,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux000235_115
    );
  Decoder_Controller_inst_r_control1 : LUT3
    generic map(
      INIT => X"27"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      O => Rd_we
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_111 : LUT4
    generic map(
      INIT => X"69A5"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(4),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I3 => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N5
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0002_SW0 : LUT4
    generic map(
      INIT => X"4002"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      O => N46
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000471_SW0 : LUT4
    generic map(
      INIT => X"ADA8"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(1),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      O => N284
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000471 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => N284,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000462_112,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000471_113
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux00022_SW0 : LUT4
    generic map(
      INIT => X"6EEA"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      O => N286
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux00022 : LUT4
    generic map(
      INIT => X"965A"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(6),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N4,
      I2 => N286,
      I3 => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000447 : LUT4
    generic map(
      INIT => X"820A"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N19,
      I1 => Display_Control_Unit_inst_binary_input(0),
      I2 => Display_Control_Unit_inst_binary_input(1),
      I3 => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000447_111
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000462 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      I1 => Display_Control_Unit_inst_binary_input(1),
      I2 => Display_Control_Unit_inst_binary_input(0),
      I3 => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000462_112
    );
  Display_Control_Unit_inst_seg_bits_5_147_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_5_65_339,
      I1 => Display_Control_Unit_inst_seg_bits_5_101_336,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => N288
    );
  Display_Control_Unit_inst_seg_bits_5_147 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I2 => N288,
      I3 => Display_Control_Unit_inst_seg_bits_4_2,
      O => seg_bits_5_OBUF_786
    );
  Display_Control_Unit_inst_seg_bits_6_87_SW0 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I1 => Display_Control_Unit_inst_binary_input(7),
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I3 => Display_Control_Unit_inst_seg_bits_6_62_344,
      O => N290
    );
  Display_Control_Unit_inst_seg_bits_6_87 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      I3 => N290,
      O => Display_Control_Unit_inst_seg_bits_6_87_345
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux00045 : LUT4
    generic map(
      INIT => X"1400"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N27,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_0_mux00045_100
    );
  Display_Control_Unit_inst_seg_bits_4_41 : LUT4
    generic map(
      INIT => X"882A"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      O => Display_Control_Unit_inst_seg_bits_4_41_334
    );
  Display_Control_Unit_inst_seg_bits_4_92_SW0 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_4_53_335,
      I1 => Display_Control_Unit_inst_seg_bits_4_13_332,
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => N292
    );
  Display_Control_Unit_inst_seg_bits_4_92 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I2 => N292,
      I3 => Display_Control_Unit_inst_seg_bits_4_2,
      O => seg_bits_4_OBUF_785
    );
  ALU_inst_computed_result_0_131_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => alu_operand_1(0),
      I2 => ALU_inst_computed_result_0_12_16,
      I3 => ALU_inst_computed_result_addsub0000(0),
      O => alu_result_0_Q
    );
  Decoder_Controller_inst_rd_data_6_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_6_16,
      I3 => ALU_inst_computed_result_addsub0000(6),
      O => Rd_data(6)
    );
  Decoder_Controller_inst_rd_data_2_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_2_16,
      I3 => ALU_inst_computed_result_addsub0000(2),
      O => Rd_data(2)
    );
  Decoder_Controller_inst_rd_data_1_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_1_16,
      I3 => ALU_inst_computed_result_addsub0000(1),
      O => Rd_data(1)
    );
  PC_inst_Mcount_PC_reg_lut_4_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_4_29_22,
      O => PC_inst_Mcount_PC_reg_lut(4)
    );
  PC_inst_Mcount_PC_reg_lut_3_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_3_29_20,
      O => PC_inst_Mcount_PC_reg_lut(3)
    );
  Decoder_Controller_inst_rd_data_5_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_5_16,
      I3 => ALU_inst_computed_result_addsub0000(5),
      O => Rd_data(5)
    );
  Decoder_Controller_inst_alu2_0_1_SW8 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_3_Q,
      I2 => instruction_12_Q,
      I3 => instruction_15_Q,
      O => N218
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_0_Q : LUT4
    generic map(
      INIT => X"AC53"
    )
    port map (
      I0 => N225,
      I1 => N224,
      I2 => Decoder_Controller_inst_N02,
      I3 => alu_operand_1(0),
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(0)
    );
  Decoder_Controller_inst_rd_data_0_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => alu_result_0_Q,
      O => Rd_data(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_176_SW0 : LUT3
    generic map(
      INIT => X"95"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(4),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      I2 => Display_Control_Unit_inst_binary_input(7),
      O => N296
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_176 : LUT4
    generic map(
      INIT => X"8121"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I3 => N296,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_1_176_74
    );
  Display_Control_Unit_inst_seg_bits_3_14_SW0 : LUT4
    generic map(
      INIT => X"E9D8"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(1),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(2),
      I3 => Display_Control_Unit_inst_binary_input(0),
      O => N276
    );
  Display_Control_Unit_inst_seg_bits_5_46_SW0 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N26,
      I1 => N71,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      O => N300
    );
  Display_Control_Unit_inst_seg_bits_5_46 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I3 => N300,
      O => Display_Control_Unit_inst_seg_bits_5_46_338
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux000420_SW1 : LUT4
    generic map(
      INIT => X"1110"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_lut(3),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      O => N302
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_mux000420 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => N302,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I3 => N272,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0)
    );
  Display_Control_Unit_inst_seg_bits_3_51_SW0 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I1 => Display_Control_Unit_inst_bcd_seg_10(7),
      I2 => Display_Control_Unit_inst_seg_bits_0_10,
      I3 => Display_Control_Unit_inst_seg_bits_3_25,
      O => N304
    );
  Display_Control_Unit_inst_seg_bits_3_51 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I2 => N304,
      I3 => Display_Control_Unit_inst_seg_bits_3_14_330,
      O => seg_bits_3_OBUF_784
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"1E3C"
    )
    port map (
      I0 => Decoder_Controller_inst_alu2_3_12_61,
      I1 => Decoder_Controller_inst_alu2_3_25_62,
      I2 => alu_operand_1(3),
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(3)
    );
  Decoder_Controller_inst_rd_data_7_1 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => Rd_we,
      I1 => ALU_inst_computed_result_7_35_25,
      I2 => instruction_15_Q,
      I3 => ALU_inst_computed_result_addsub0000(7),
      O => Rd_data(7)
    );
  Decoder_Controller_inst_rd_data_4_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_4_16,
      I3 => ALU_inst_computed_result_addsub0000(4),
      O => Rd_data(4)
    );
  Decoder_Controller_inst_rd_data_3_1 : LUT4
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => ALU_inst_computed_result_3_16,
      I3 => ALU_inst_computed_result_addsub0000(3),
      O => Rd_data(3)
    );
  PC_inst_Mcount_PC_reg_lut_7_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => alu_operand_1(7),
      I2 => ALU_inst_computed_result_7_8,
      I3 => ALU_inst_computed_result_addsub0000(7),
      O => N308
    );
  PC_inst_Mcount_PC_reg_lut_7_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => N308,
      O => PC_inst_Mcount_PC_reg_lut(7)
    );
  Decoder_Controller_inst_new_pc_0_211 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_13_Q,
      I2 => instruction_12_Q,
      O => Decoder_Controller_inst_N4
    );
  ALU_inst_computed_result_6_161 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => alu_operand_1(6),
      I2 => N349,
      O => ALU_inst_computed_result_6_16
    );
  ALU_inst_computed_result_2_161 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => alu_operand_1(2),
      I1 => instruction_13_Q,
      I2 => alu_operand_2(2),
      O => ALU_inst_computed_result_2_16
    );
  ALU_inst_computed_result_1_161 : LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N350,
      I2 => alu_operand_1(1),
      O => ALU_inst_computed_result_1_16
    );
  Decoder_Controller_inst_alu2_0_SW61 : LUT3
    generic map(
      INIT => X"31"
    )
    port map (
      I0 => Rs2_data(0),
      I1 => instruction_13_Q,
      I2 => instruction_12_Q,
      O => N193
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW31 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      O => N155
    );
  PC_we_inv11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => N6,
      I1 => instruction_15_Q,
      O => PC_we_inv
    );
  Decoder_Controller_inst_new_pc_0_31 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0012,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      I3 => instruction_12_Q,
      O => PC_we
    );
  PC_inst_PC_reg_1_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg1,
      Q => PC_inst_PC_reg_1_1_534
    );
  Decoder_Controller_inst_alu2_2_SW0_SW2_F : LUT4
    generic map(
      INIT => X"FF5D"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      I3 => N83,
      O => N252
    );
  PC_inst_PC_reg_2_1 : FDCE
    port map (
      C => clk_proc_in_BUFGP_750,
      CE => N1,
      CLR => rst_IBUF_764,
      D => PC_inst_Mcount_PC_reg2,
      Q => PC_inst_PC_reg_2_1_536
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux0004 : MUXF5
    port map (
      I0 => N310,
      I1 => N311,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1(3)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux0004_F : LUT4
    generic map(
      INIT => X"C844"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17,
      O => N310
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_2_mux0004_G : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N0,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N19,
      O => N311
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1 : MUXF5
    port map (
      I0 => N312,
      I1 => N313,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(2)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1_F : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N64,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N16,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N20,
      O => N312
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1_G : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N64,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N5,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N20,
      O => N313
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002 : MUXF5
    port map (
      I0 => N314,
      I1 => N315,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0000_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_F : LUT3
    generic map(
      INIT => X"6E"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      O => N314
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_G : LUT4
    generic map(
      INIT => X"F776"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      O => N315
    );
  Decoder_Controller_inst_imval_6_Q : MUXF5
    port map (
      I0 => N316,
      I1 => N317,
      S => PC_inst_PC_reg(7),
      O => Decoder_Controller_inst_imval(6)
    );
  Decoder_Controller_inst_imval_6_F : LUT4
    generic map(
      INIT => X"B180"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => instruction_5_Q,
      I3 => instruction_12_Q,
      O => N316
    );
  Decoder_Controller_inst_imval_6_G : LUT4
    generic map(
      INIT => X"B180"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => instruction_5_Q,
      I3 => instruction_12_Q,
      O => N317
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_seg_dec_10_inst_Mrom_seg7 : MUXF5
    port map (
      I0 => N318,
      I1 => N319,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      O => Display_Control_Unit_inst_bcd_seg_10(7)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_seg_dec_10_inst_Mrom_seg7_F : LUT4
    generic map(
      INIT => X"4A12"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      O => N318
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_seg_dec_10_inst_Mrom_seg7_G : LUT4
    generic map(
      INIT => X"4182"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      O => N319
    );
  Display_Control_Unit_inst_seg_bits_5_19 : MUXF5
    port map (
      I0 => N320,
      I1 => N321,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      O => Display_Control_Unit_inst_seg_bits_5_19_337
    );
  Display_Control_Unit_inst_seg_bits_5_19_F : LUT4
    generic map(
      INIT => X"A2F2"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      O => N320
    );
  Display_Control_Unit_inst_seg_bits_5_19_G : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      O => N321
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW4 : MUXF5
    port map (
      I0 => N322,
      I1 => N323,
      S => instruction_15_Q,
      O => N156
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW4_F : LUT4
    generic map(
      INIT => X"D8FF"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => instruction_12_Q,
      O => N322
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW4_G : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => instruction_12_Q,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I3 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      O => N323
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux00011 : MUXF5
    port map (
      I0 => N324,
      I1 => N325,
      S => Display_Control_Unit_inst_binary_input(5),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N26
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux00011_F : LUT4
    generic map(
      INIT => X"9D9F"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(6),
      I2 => Display_Control_Unit_inst_binary_input(4),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      O => N324
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_5_mux00011_G : LUT4
    generic map(
      INIT => X"B999"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(7),
      I1 => Display_Control_Unit_inst_binary_input(6),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      I3 => Display_Control_Unit_inst_binary_input(4),
      O => N325
    );
  Display_Control_Unit_inst_seg_bits_6_62 : MUXF5
    port map (
      I0 => N326,
      I1 => N327,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      O => Display_Control_Unit_inst_seg_bits_6_62_344
    );
  Display_Control_Unit_inst_seg_bits_6_62_F : LUT4
    generic map(
      INIT => X"4909"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      O => N326
    );
  Display_Control_Unit_inst_seg_bits_6_62_G : LUT4
    generic map(
      INIT => X"6941"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(2),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_10(0),
      O => N327
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5 : MUXF5
    port map (
      I0 => N328,
      I1 => N329,
      S => PC_inst_PC_reg(5),
      O => instruction_12_Q
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom0000,
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(7),
      O => N328
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5_G : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(7),
      I3 => Instructions_ROM_inst_Mrom_address_in_rom00002,
      O => N329
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5 : MUXF5
    port map (
      I0 => N330,
      I1 => N331,
      S => PC_inst_PC_reg(6),
      O => instruction_15_Q
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom00009,
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(5),
      I3 => PC_inst_PC_reg(7),
      O => N330
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_G : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom000011_365,
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(5),
      I3 => PC_inst_PC_reg(7),
      O => N331
    );
  Instructions_ROM_inst_data_out_7_mux0000 : MUXF5
    port map (
      I0 => N332,
      I1 => N333,
      S => PC_inst_PC_reg(1),
      O => instruction_7_Q
    );
  Instructions_ROM_inst_data_out_7_mux0000_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => PC_inst_PC_reg(3),
      I2 => N33,
      I3 => N135,
      O => N332
    );
  Instructions_ROM_inst_data_out_7_mux0000_G : LUT4
    generic map(
      INIT => X"AAEA"
    )
    port map (
      I0 => Instructions_ROM_inst_N7,
      I1 => PC_inst_PC_reg(0),
      I2 => Instructions_ROM_inst_N9,
      I3 => PC_inst_PC_reg(2),
      O => N333
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1 : MUXF5
    port map (
      I0 => N334,
      I1 => N335,
      S => PC_inst_PC_reg(6),
      O => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_366
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom00009,
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(5),
      I3 => PC_inst_PC_reg(7),
      O => N334
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1_G : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom000011_365,
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(5),
      I3 => PC_inst_PC_reg(7),
      O => N335
    );
  clk_proc_in_BUFGP : BUFGP
    port map (
      I => clk_proc_in,
      O => clk_proc_in_BUFGP_750
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_748
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_page_lut_0_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_clk_cnt_page(0),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_page_lut(0)
    );
  Display_Control_Unit_inst_Mcount_clk_cnt_block_lut_0_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_clk_cnt_block(0),
      O => Display_Control_Unit_inst_Mcount_clk_cnt_block_lut(0)
    );
  Display_Control_Unit_inst_seg_mode_FSM_Out71_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => seg_an_0_OBUF_769
    );
  Display_Control_Unit_inst_seg_mode_FSM_Out61_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => seg_an_1_OBUF_770
    );
  Display_Control_Unit_inst_seg_mode_FSM_Out51_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      O => seg_an_2_OBUF_771
    );
  Display_Control_Unit_inst_seg_mode_FSM_Out41_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      O => seg_an_3_OBUF_772
    );
  Display_Control_Unit_inst_clk_cnt_block_not00001_INV_0 : INV
    port map (
      I => Display_Control_Unit_inst_seg_mode_cmp_eq0004,
      O => Display_Control_Unit_inst_clk_cnt_block_not0000
    );
  Instructions_ROM_inst_data_out_10_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => Instructions_ROM_inst_N7,
      O => Instructions_ROM_inst_data_out_10_mux0000
    );
  Instructions_ROM_inst_data_out_10_mux00002 : LUT4
    generic map(
      INIT => X"EAC8"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => Instructions_ROM_inst_N9,
      I2 => PC_inst_PC_reg(0),
      I3 => Instructions_ROM_inst_N7,
      O => Instructions_ROM_inst_data_out_10_mux00001_377
    );
  Instructions_ROM_inst_data_out_10_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_10_mux00001_377,
      I1 => Instructions_ROM_inst_data_out_10_mux0000,
      S => PC_inst_PC_reg(2),
      O => instruction_10_Q
    );
  Instructions_ROM_inst_data_out_9_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Instructions_ROM_inst_N7,
      I1 => PC_inst_PC_reg(0),
      O => Instructions_ROM_inst_data_out_9_mux0000
    );
  Instructions_ROM_inst_data_out_9_mux00002 : LUT4
    generic map(
      INIT => X"EAE2"
    )
    port map (
      I0 => Instructions_ROM_inst_N9,
      I1 => PC_inst_PC_reg(0),
      I2 => Instructions_ROM_inst_N7,
      I3 => PC_inst_PC_reg(1),
      O => Instructions_ROM_inst_data_out_9_mux00001_382
    );
  Instructions_ROM_inst_data_out_9_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_9_mux00001_382,
      I1 => Instructions_ROM_inst_data_out_9_mux0000,
      S => PC_inst_PC_reg(2),
      O => instruction_9_Q
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004281 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004281_109
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004282 : LUT4
    generic map(
      INIT => X"0F09"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0002_118,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0),
      I2 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N17,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0004_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004282_110
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000428_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004282_110,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux0004281_109,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_N18,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_1_mux000428
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1321 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_cy(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_132
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1322 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_bcd_3_cmp_gt0001_117,
      I1 => Display_Control_Unit_inst_binary_input(4),
      I2 => Display_Control_Unit_inst_binary_input(7),
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N2,
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1321_77
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_132_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_1321_77,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0003_cy_2_132,
      S => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0001_lut(2),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_N16
    );
  Display_Control_Unit_inst_seg_bits_0_101 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => Display_Control_Unit_inst_Display_Signed_BCD_inst_N1,
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0000_cy(0),
      I2 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I3 => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_7_4_add0001_cy(0),
      O => Display_Control_Unit_inst_seg_bits_0_101_317
    );
  Display_Control_Unit_inst_seg_bits_0_10_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I1 => Display_Control_Unit_inst_seg_bits_0_101_317,
      S => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      O => Display_Control_Unit_inst_seg_bits_0_10
    );
  Display_Control_Unit_inst_binary_input_0_11 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      I1 => N225,
      I2 => alu_operand_1(0),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      O => Display_Control_Unit_inst_binary_input_0_1
    );
  Display_Control_Unit_inst_binary_input_0_12 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd3_314,
      I1 => N224,
      I2 => alu_operand_1(0),
      I3 => Display_Control_Unit_inst_page_mode_FSM_FFd4_315,
      O => Display_Control_Unit_inst_binary_input_0_11_250
    );
  Display_Control_Unit_inst_binary_input_0_1_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_binary_input_0_11_250,
      I1 => Display_Control_Unit_inst_binary_input_0_1,
      S => Decoder_Controller_inst_N02,
      O => Display_Control_Unit_inst_binary_input(0)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_3_1 : LUT4
    generic map(
      INIT => X"3336"
    )
    port map (
      I0 => Display_Control_Unit_inst_binary_input(2),
      I1 => Display_Control_Unit_inst_binary_input(3),
      I2 => Display_Control_Unit_inst_binary_input(1),
      I3 => Display_Control_Unit_inst_binary_input(0),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000(3)
    );
  Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000_3_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_binary_input(3),
      I1 => Display_Control_Unit_inst_Display_Signed_BCD_inst_abs_num_mux0000(3),
      S => Display_Control_Unit_inst_binary_input(7),
      O => Display_Control_Unit_inst_Display_Signed_BCD_inst_Madd_bcd_3_0_add0002_cy(0)
    );
  Display_Control_Unit_inst_seg_bits_6_351 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      O => Display_Control_Unit_inst_seg_bits_6_351_342
    );
  Display_Control_Unit_inst_seg_bits_6_352 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd2_347,
      I2 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      O => Display_Control_Unit_inst_seg_bits_6_352_343
    );
  Display_Control_Unit_inst_seg_bits_6_35_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_6_352_343,
      I1 => Display_Control_Unit_inst_seg_bits_6_351_342,
      S => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => Display_Control_Unit_inst_seg_bits_6_35
    );
  Display_Control_Unit_inst_seg_bits_1_941 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I1 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      O => Display_Control_Unit_inst_seg_bits_1_941_324
    );
  Display_Control_Unit_inst_seg_bits_1_942 : LUT4
    generic map(
      INIT => X"FAC8"
    )
    port map (
      I0 => Display_Control_Unit_inst_page_mode_FSM_FFd1_312,
      I1 => Display_Control_Unit_inst_seg_mode_FSM_FFd1_346,
      I2 => Display_Control_Unit_inst_page_mode_FSM_FFd2_313,
      I3 => Display_Control_Unit_inst_seg_mode_FSM_FFd3_348,
      O => Display_Control_Unit_inst_seg_bits_1_942_325
    );
  Display_Control_Unit_inst_seg_bits_1_94_f5 : MUXF5
    port map (
      I0 => Display_Control_Unit_inst_seg_bits_1_942_325,
      I1 => Display_Control_Unit_inst_seg_bits_1_941_324,
      S => Display_Control_Unit_inst_seg_mode_FSM_FFd4_349,
      O => Display_Control_Unit_inst_seg_bits_1_94
    );
  Instructions_ROM_inst_data_out_11_mux00002_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(6),
      LO => N336,
      O => N33
    );
  Instructions_ROM_inst_data_out_11_mux00001_SW0 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(6),
      LO => N337,
      O => N35
    );
  Decoder_Controller_inst_alu1_cmp_eq00128120 : LUT4_L
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => Rs1_data(7),
      I1 => Rs1_data(6),
      I2 => Rs2_data(7),
      I3 => Rs2_data(6),
      LO => Decoder_Controller_inst_alu1_cmp_eq00128120_56
    );
  Decoder_Controller_inst_alu2_5_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => Rs2_data(5),
      LO => N338,
      O => N37
    );
  Decoder_Controller_inst_alu2_5_SW1 : LUT4_D
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_12_Q,
      I2 => instruction_13_Q,
      I3 => Rs2_data(5),
      LO => N339,
      O => N38
    );
  Decoder_Controller_inst_alu2_4_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => Rs2_data(4),
      LO => N340,
      O => N40
    );
  Decoder_Controller_inst_alu2_4_SW1 : LUT4_D
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_12_Q,
      I2 => instruction_13_Q,
      I3 => Rs2_data(4),
      LO => N341,
      O => N41
    );
  Instructions_ROM_inst_data_out_5_mux000011 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => PC_inst_PC_reg(0),
      LO => N342,
      O => Instructions_ROM_inst_N0
    );
  Decoder_Controller_inst_alu2_3_12 : LUT4_D
    generic map(
      INIT => X"C840"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_3_Q,
      I2 => instruction_12_Q,
      I3 => instruction_15_Q,
      LO => N343,
      O => Decoder_Controller_inst_alu2_3_12_61
    );
  Decoder_Controller_inst_alu2_3_25 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(3),
      LO => N344,
      O => Decoder_Controller_inst_alu2_3_25_62
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      LO => N345,
      O => instruction_13_Q
    );
  Instructions_ROM_inst_data_out_4_mux000023_SW0 : LUT4_D
    generic map(
      INIT => X"B3A0"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => PC_inst_PC_reg(2),
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      LO => N346,
      O => N77
    );
  Instructions_ROM_inst_Mrom_address_in_rom000031 : LUT4_L
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => PC_inst_PC_reg_1_1_534,
      I1 => PC_inst_PC_reg_2_1_536,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      LO => Instructions_ROM_inst_Mrom_address_in_rom00003
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021 : LUT4_D
    generic map(
      INIT => X"0F1F"
    )
    port map (
      I0 => PC_inst_PC_reg_2_1_536,
      I1 => PC_inst_PC_reg_1_1_534,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      LO => N347,
      O => Instructions_ROM_inst_Mrom_address_in_rom00002
    );
  Instructions_ROM_inst_data_out_6_mux0000_SW0 : LUT3_L
    generic map(
      INIT => X"1A"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(2),
      LO => N31
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(2),
      I2 => N35,
      I3 => N141,
      LO => N25
    );
  Decoder_Controller_inst_alu2_2_SW0 : LUT4_D
    generic map(
      INIT => X"0305"
    )
    port map (
      I0 => N155,
      I1 => N156,
      I2 => N83,
      I3 => Decoder_Controller_inst_N02,
      LO => N348,
      O => N65
    );
  ALU_inst_computed_result_0_12 : LUT4_L
    generic map(
      INIT => X"1103"
    )
    port map (
      I0 => ALU_inst_computed_result_0_115,
      I1 => instruction_15_Q,
      I2 => N193,
      I3 => N65,
      LO => ALU_inst_computed_result_0_12_16
    );
  Decoder_Controller_inst_alu2_6_1 : LUT4_D
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N197,
      I2 => N196,
      I3 => Decoder_Controller_inst_N02,
      LO => N349,
      O => alu_operand_2(6)
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW1_SW1 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(6),
      I2 => PC_inst_PC_reg(5),
      I3 => PC_inst_PC_reg(7),
      LO => N208
    );
  Decoder_Controller_inst_alu2_1_Q : LUT3_D
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => N221,
      I1 => N222,
      I2 => Decoder_Controller_inst_N02,
      LO => N350,
      O => alu_operand_2(1)
    );
  Decoder_Controller_inst_alu2_or00001 : LUT4_D
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => instruction_12_Q,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I3 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      LO => N351,
      O => Decoder_Controller_inst_alu2_or0000
    );
  Decoder_Controller_inst_new_pc_0_3_SW01 : LUT3_L
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => Decoder_Controller_inst_alu1_cmp_eq0012,
      I2 => instruction_12_Q,
      LO => N6
    );
  Decoder_Controller_inst_alu1_cmp_eq001411 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => instruction_15_Q,
      LO => N352,
      O => Decoder_Controller_inst_alu1_cmp_eq0014
    );
  ALU_inst_computed_result_5_161 : LUT3_D
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => alu_operand_1(5),
      I2 => alu_operand_2(5),
      LO => N353,
      O => ALU_inst_computed_result_5_16
    );
  ALU_inst_computed_result_4_161 : LUT3_D
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => alu_operand_2(4),
      I2 => alu_operand_1(4),
      LO => N354,
      O => ALU_inst_computed_result_4_16
    );
  ALU_inst_computed_result_3_161 : LUT3_D
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => alu_operand_2(3),
      I2 => alu_operand_1(3),
      LO => N355,
      O => ALU_inst_computed_result_3_16
    );
  ALU_inst_computed_result_7_81 : LUT3_L
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_15_Q,
      I2 => alu_operand_2(7),
      LO => ALU_inst_computed_result_7_8
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW11 : LUT3_D
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      LO => N356,
      O => N152
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW21 : LUT3_D
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      LO => N357,
      O => N153
    );
  Decoder_Controller_inst_alu1_0_12 : LUT4_D
    generic map(
      INIT => X"0F4F"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_15_Q,
      I2 => instruction_13_Q,
      I3 => Decoder_Controller_inst_alu1_cmp_eq0012,
      LO => N358,
      O => Decoder_Controller_inst_N1
    );
  ALU_inst_computed_result_7_35 : LUT4_L
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => alu_operand_1(7),
      I2 => instruction_15_Q,
      I3 => alu_operand_2(7),
      LO => ALU_inst_computed_result_7_35_25
    );
  Decoder_Controller_inst_r2_addr_or00001_1 : LUT3_L
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_366,
      I1 => instruction_12_Q,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_371,
      LO => Decoder_Controller_inst_r2_addr_or00001_66
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_1 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      LO => N359,
      O => Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_371
    );

end Structure;

