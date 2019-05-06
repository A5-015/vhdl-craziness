--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_processor_synthesis.vhd
-- /___/   /\     Timestamp: Mon May 06 16:53:33 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top_processor -w -dir netgen/synthesis -ofmt vhdl -sim top_processor.ngc top_processor_synthesis.vhd 
-- Device	: xc3s100e-4-cp132
-- Input file	: top_processor.ngc
-- Output file	: C:\Users\bs3528\Documents\GitHub\vhdl-craziness\Lab_4_bs3528_nsa325\VHDL\netgen\synthesis\top_processor_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top_processor
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

entity top_processor is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    result : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    operand_1 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    operand_2 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    opcode : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end top_processor;

architecture Structure of top_processor is
  signal ALU_inst_N6 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_0_117 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_0_13 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_0_8 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_1_14_27 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_1_27_28 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_2_14_29 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_2_27_30 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_3_14_31 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_3_27_32 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_4_14_33 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_4_27_34 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_5_14_35 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_5_27_36 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_6_14_37 : STD_LOGIC; 
  signal ALU_inst_computed_result_mux0000_6_27_38 : STD_LOGIC; 
  signal Decoder_Controller_inst_N02 : STD_LOGIC; 
  signal Decoder_Controller_inst_N1 : STD_LOGIC; 
  signal Decoder_Controller_inst_N2 : STD_LOGIC; 
  signal Decoder_Controller_inst_N4 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq00128120_60 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012826_61 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012853_62 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0012893_63 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu1_cmp_eq0014 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu2_0_1_66 : STD_LOGIC; 
  signal Decoder_Controller_inst_alu2_or0000 : STD_LOGIC; 
  signal Decoder_Controller_inst_r2_addr_or0000 : STD_LOGIC; 
  signal Decoder_Controller_inst_r2_addr_or00001_70 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000011_72 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_73 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00002 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000021_3 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00003 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000051_4 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_78 : STD_LOGIC; 
  signal Instructions_ROM_inst_Mrom_address_in_rom00009 : STD_LOGIC; 
  signal Instructions_ROM_inst_N0 : STD_LOGIC; 
  signal Instructions_ROM_inst_N7 : STD_LOGIC; 
  signal Instructions_ROM_inst_N9 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_10_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_10_mux00001_84 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_3_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_3_mux00001_86 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_4_mux000020_87 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_9_mux0000 : STD_LOGIC; 
  signal Instructions_ROM_inst_data_out_9_mux00001_89 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg1 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg2 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg3 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg4 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg5 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg6 : STD_LOGIC; 
  signal PC_inst_Mcount_PC_reg7 : STD_LOGIC; 
  signal PC_inst_PC_reg_1_1_188 : STD_LOGIC; 
  signal PC_inst_PC_reg_2_1_190 : STD_LOGIC; 
  signal PC_we : STD_LOGIC; 
  signal PC_we_inv : STD_LOGIC; 
  signal Rd_we : STD_LOGIC; 
  signal Registers_inst_mux10_3_f5_207 : STD_LOGIC; 
  signal Registers_inst_mux10_4_208 : STD_LOGIC; 
  signal Registers_inst_mux10_4_f5_209 : STD_LOGIC; 
  signal Registers_inst_mux10_5_210 : STD_LOGIC; 
  signal Registers_inst_mux10_51_211 : STD_LOGIC; 
  signal Registers_inst_mux10_6_212 : STD_LOGIC; 
  signal Registers_inst_mux11_3_f5_213 : STD_LOGIC; 
  signal Registers_inst_mux11_4_214 : STD_LOGIC; 
  signal Registers_inst_mux11_4_f5_215 : STD_LOGIC; 
  signal Registers_inst_mux11_5_216 : STD_LOGIC; 
  signal Registers_inst_mux11_51_217 : STD_LOGIC; 
  signal Registers_inst_mux11_6_218 : STD_LOGIC; 
  signal Registers_inst_mux12_3_f5_219 : STD_LOGIC; 
  signal Registers_inst_mux12_4_220 : STD_LOGIC; 
  signal Registers_inst_mux12_4_f5_221 : STD_LOGIC; 
  signal Registers_inst_mux12_5_222 : STD_LOGIC; 
  signal Registers_inst_mux12_51_223 : STD_LOGIC; 
  signal Registers_inst_mux12_6_224 : STD_LOGIC; 
  signal Registers_inst_mux13_3_f5_225 : STD_LOGIC; 
  signal Registers_inst_mux13_4_226 : STD_LOGIC; 
  signal Registers_inst_mux13_4_f5_227 : STD_LOGIC; 
  signal Registers_inst_mux13_5_228 : STD_LOGIC; 
  signal Registers_inst_mux13_51_229 : STD_LOGIC; 
  signal Registers_inst_mux13_6_230 : STD_LOGIC; 
  signal Registers_inst_mux14_3_f5_231 : STD_LOGIC; 
  signal Registers_inst_mux14_4_232 : STD_LOGIC; 
  signal Registers_inst_mux14_4_f5_233 : STD_LOGIC; 
  signal Registers_inst_mux14_5_234 : STD_LOGIC; 
  signal Registers_inst_mux14_51_235 : STD_LOGIC; 
  signal Registers_inst_mux14_6_236 : STD_LOGIC; 
  signal Registers_inst_mux15_3_f5_237 : STD_LOGIC; 
  signal Registers_inst_mux15_4_238 : STD_LOGIC; 
  signal Registers_inst_mux15_4_f5_239 : STD_LOGIC; 
  signal Registers_inst_mux15_5_240 : STD_LOGIC; 
  signal Registers_inst_mux15_51_241 : STD_LOGIC; 
  signal Registers_inst_mux15_6_242 : STD_LOGIC; 
  signal Registers_inst_mux1_3_f5_243 : STD_LOGIC; 
  signal Registers_inst_mux1_4_244 : STD_LOGIC; 
  signal Registers_inst_mux1_4_f5_245 : STD_LOGIC; 
  signal Registers_inst_mux1_5_246 : STD_LOGIC; 
  signal Registers_inst_mux1_51_247 : STD_LOGIC; 
  signal Registers_inst_mux1_6_248 : STD_LOGIC; 
  signal Registers_inst_mux2_3_f5_249 : STD_LOGIC; 
  signal Registers_inst_mux2_4_250 : STD_LOGIC; 
  signal Registers_inst_mux2_4_f5_251 : STD_LOGIC; 
  signal Registers_inst_mux2_5_252 : STD_LOGIC; 
  signal Registers_inst_mux2_51_253 : STD_LOGIC; 
  signal Registers_inst_mux2_6_254 : STD_LOGIC; 
  signal Registers_inst_mux3_3_f5_255 : STD_LOGIC; 
  signal Registers_inst_mux3_4_256 : STD_LOGIC; 
  signal Registers_inst_mux3_4_f5_257 : STD_LOGIC; 
  signal Registers_inst_mux3_5_258 : STD_LOGIC; 
  signal Registers_inst_mux3_51_259 : STD_LOGIC; 
  signal Registers_inst_mux3_6_260 : STD_LOGIC; 
  signal Registers_inst_mux4_3_f5_261 : STD_LOGIC; 
  signal Registers_inst_mux4_4_262 : STD_LOGIC; 
  signal Registers_inst_mux4_4_f5_263 : STD_LOGIC; 
  signal Registers_inst_mux4_5_264 : STD_LOGIC; 
  signal Registers_inst_mux4_51_265 : STD_LOGIC; 
  signal Registers_inst_mux4_6_266 : STD_LOGIC; 
  signal Registers_inst_mux5_3_f5_267 : STD_LOGIC; 
  signal Registers_inst_mux5_4_268 : STD_LOGIC; 
  signal Registers_inst_mux5_4_f5_269 : STD_LOGIC; 
  signal Registers_inst_mux5_5_270 : STD_LOGIC; 
  signal Registers_inst_mux5_51_271 : STD_LOGIC; 
  signal Registers_inst_mux5_6_272 : STD_LOGIC; 
  signal Registers_inst_mux6_3_f5_273 : STD_LOGIC; 
  signal Registers_inst_mux6_4_274 : STD_LOGIC; 
  signal Registers_inst_mux6_4_f5_275 : STD_LOGIC; 
  signal Registers_inst_mux6_5_276 : STD_LOGIC; 
  signal Registers_inst_mux6_51_277 : STD_LOGIC; 
  signal Registers_inst_mux6_6_278 : STD_LOGIC; 
  signal Registers_inst_mux7_3_f5_279 : STD_LOGIC; 
  signal Registers_inst_mux7_4_280 : STD_LOGIC; 
  signal Registers_inst_mux7_4_f5_281 : STD_LOGIC; 
  signal Registers_inst_mux7_5_282 : STD_LOGIC; 
  signal Registers_inst_mux7_51_283 : STD_LOGIC; 
  signal Registers_inst_mux7_6_284 : STD_LOGIC; 
  signal Registers_inst_mux8_3_f5_285 : STD_LOGIC; 
  signal Registers_inst_mux8_4_286 : STD_LOGIC; 
  signal Registers_inst_mux8_4_f5_287 : STD_LOGIC; 
  signal Registers_inst_mux8_5_288 : STD_LOGIC; 
  signal Registers_inst_mux8_51_289 : STD_LOGIC; 
  signal Registers_inst_mux8_6_290 : STD_LOGIC; 
  signal Registers_inst_mux9_3_f5_291 : STD_LOGIC; 
  signal Registers_inst_mux9_4_292 : STD_LOGIC; 
  signal Registers_inst_mux9_4_f5_293 : STD_LOGIC; 
  signal Registers_inst_mux9_5_294 : STD_LOGIC; 
  signal Registers_inst_mux9_51_295 : STD_LOGIC; 
  signal Registers_inst_mux9_6_296 : STD_LOGIC; 
  signal Registers_inst_mux_3_f5_297 : STD_LOGIC; 
  signal Registers_inst_mux_4_298 : STD_LOGIC; 
  signal Registers_inst_mux_4_f5_299 : STD_LOGIC; 
  signal Registers_inst_mux_5_300 : STD_LOGIC; 
  signal Registers_inst_mux_51_301 : STD_LOGIC; 
  signal Registers_inst_mux_6_302 : STD_LOGIC; 
  signal Registers_inst_reg_1_0_303 : STD_LOGIC; 
  signal Registers_inst_reg_1_1_304 : STD_LOGIC; 
  signal Registers_inst_reg_1_2_305 : STD_LOGIC; 
  signal Registers_inst_reg_1_3_306 : STD_LOGIC; 
  signal Registers_inst_reg_1_4_307 : STD_LOGIC; 
  signal Registers_inst_reg_1_5_308 : STD_LOGIC; 
  signal Registers_inst_reg_1_6_309 : STD_LOGIC; 
  signal Registers_inst_reg_1_7_310 : STD_LOGIC; 
  signal Registers_inst_reg_1_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_2_0_312 : STD_LOGIC; 
  signal Registers_inst_reg_2_1_313 : STD_LOGIC; 
  signal Registers_inst_reg_2_2_314 : STD_LOGIC; 
  signal Registers_inst_reg_2_3_315 : STD_LOGIC; 
  signal Registers_inst_reg_2_4_316 : STD_LOGIC; 
  signal Registers_inst_reg_2_5_317 : STD_LOGIC; 
  signal Registers_inst_reg_2_6_318 : STD_LOGIC; 
  signal Registers_inst_reg_2_7_319 : STD_LOGIC; 
  signal Registers_inst_reg_2_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_3_0_321 : STD_LOGIC; 
  signal Registers_inst_reg_3_1_322 : STD_LOGIC; 
  signal Registers_inst_reg_3_2_323 : STD_LOGIC; 
  signal Registers_inst_reg_3_3_324 : STD_LOGIC; 
  signal Registers_inst_reg_3_4_325 : STD_LOGIC; 
  signal Registers_inst_reg_3_5_326 : STD_LOGIC; 
  signal Registers_inst_reg_3_6_327 : STD_LOGIC; 
  signal Registers_inst_reg_3_7_328 : STD_LOGIC; 
  signal Registers_inst_reg_3_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_4_0_330 : STD_LOGIC; 
  signal Registers_inst_reg_4_1_331 : STD_LOGIC; 
  signal Registers_inst_reg_4_2_332 : STD_LOGIC; 
  signal Registers_inst_reg_4_3_333 : STD_LOGIC; 
  signal Registers_inst_reg_4_4_334 : STD_LOGIC; 
  signal Registers_inst_reg_4_5_335 : STD_LOGIC; 
  signal Registers_inst_reg_4_6_336 : STD_LOGIC; 
  signal Registers_inst_reg_4_7_337 : STD_LOGIC; 
  signal Registers_inst_reg_4_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_5_0_339 : STD_LOGIC; 
  signal Registers_inst_reg_5_1_340 : STD_LOGIC; 
  signal Registers_inst_reg_5_2_341 : STD_LOGIC; 
  signal Registers_inst_reg_5_3_342 : STD_LOGIC; 
  signal Registers_inst_reg_5_4_343 : STD_LOGIC; 
  signal Registers_inst_reg_5_5_344 : STD_LOGIC; 
  signal Registers_inst_reg_5_6_345 : STD_LOGIC; 
  signal Registers_inst_reg_5_7_346 : STD_LOGIC; 
  signal Registers_inst_reg_5_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_6_0_348 : STD_LOGIC; 
  signal Registers_inst_reg_6_1_349 : STD_LOGIC; 
  signal Registers_inst_reg_6_2_350 : STD_LOGIC; 
  signal Registers_inst_reg_6_3_351 : STD_LOGIC; 
  signal Registers_inst_reg_6_4_352 : STD_LOGIC; 
  signal Registers_inst_reg_6_5_353 : STD_LOGIC; 
  signal Registers_inst_reg_6_6_354 : STD_LOGIC; 
  signal Registers_inst_reg_6_7_355 : STD_LOGIC; 
  signal Registers_inst_reg_6_and0000 : STD_LOGIC; 
  signal Registers_inst_reg_7_0_357 : STD_LOGIC; 
  signal Registers_inst_reg_7_1_358 : STD_LOGIC; 
  signal Registers_inst_reg_7_2_359 : STD_LOGIC; 
  signal Registers_inst_reg_7_3_360 : STD_LOGIC; 
  signal Registers_inst_reg_7_4_361 : STD_LOGIC; 
  signal Registers_inst_reg_7_5_362 : STD_LOGIC; 
  signal Registers_inst_reg_7_6_363 : STD_LOGIC; 
  signal Registers_inst_reg_7_7_364 : STD_LOGIC; 
  signal Registers_inst_reg_7_and0000 : STD_LOGIC; 
  signal clk_BUFGP_385 : STD_LOGIC; 
  signal instruction_0_Q : STD_LOGIC; 
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
  signal operand_1_0_OBUF_411 : STD_LOGIC; 
  signal operand_1_1_OBUF_412 : STD_LOGIC; 
  signal operand_1_2_OBUF_413 : STD_LOGIC; 
  signal operand_1_3_OBUF_414 : STD_LOGIC; 
  signal operand_1_4_OBUF_415 : STD_LOGIC; 
  signal operand_1_5_OBUF_416 : STD_LOGIC; 
  signal operand_1_6_OBUF_417 : STD_LOGIC; 
  signal operand_1_7_OBUF_418 : STD_LOGIC; 
  signal operand_2_0_OBUF_427 : STD_LOGIC; 
  signal operand_2_1_OBUF_428 : STD_LOGIC; 
  signal operand_2_2_OBUF_429 : STD_LOGIC; 
  signal operand_2_3_OBUF_430 : STD_LOGIC; 
  signal operand_2_4_OBUF_431 : STD_LOGIC; 
  signal operand_2_5_OBUF_432 : STD_LOGIC; 
  signal operand_2_6_OBUF_433 : STD_LOGIC; 
  signal operand_2_7_OBUF_434 : STD_LOGIC; 
  signal result_0_OBUF_443 : STD_LOGIC; 
  signal result_7_OBUF_444 : STD_LOGIC; 
  signal rst_IBUF_446 : STD_LOGIC; 
  signal ALU_inst_Maddsub_computed_result_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal ALU_inst_Maddsub_computed_result_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ALU_inst_computed_result_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Decoder_Controller_inst_alu2 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Decoder_Controller_inst_imval : STD_LOGIC_VECTOR ( 6 downto 6 ); 
  signal PC_inst_Mcount_PC_reg_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal PC_inst_Mcount_PC_reg_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_inst_PC_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rd_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rs1_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Rs2_addr : STD_LOGIC_VECTOR ( 2 downto 1 ); 
  signal Rs2_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => ALU_inst_computed_result_mux0000_0_117
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  PC_inst_Mcount_PC_reg_cy_0_Q : MUXCY
    port map (
      CI => PC_we_inv,
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      DI => ALU_inst_computed_result_mux0000_0_117,
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
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg,
      Q => PC_inst_PC_reg(0)
    );
  PC_inst_PC_reg_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg1,
      Q => PC_inst_PC_reg(1)
    );
  PC_inst_PC_reg_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg2,
      Q => PC_inst_PC_reg(2)
    );
  PC_inst_PC_reg_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg3,
      Q => PC_inst_PC_reg(3)
    );
  PC_inst_PC_reg_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg4,
      Q => PC_inst_PC_reg(4)
    );
  PC_inst_PC_reg_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg5,
      Q => PC_inst_PC_reg(5)
    );
  PC_inst_PC_reg_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg6,
      Q => PC_inst_PC_reg(6)
    );
  PC_inst_PC_reg_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
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
      I3 => N248,
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
      I0 => Registers_inst_reg_7_7_364,
      I1 => Registers_inst_reg_6_7_355,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_4_238
    );
  Registers_inst_mux15_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_7_346,
      I1 => Registers_inst_reg_4_7_337,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_5_240
    );
  Registers_inst_mux15_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux15_5_240,
      I1 => Registers_inst_mux15_4_238,
      S => instruction_7_Q,
      O => Registers_inst_mux15_3_f5_237
    );
  Registers_inst_mux15_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_7_328,
      I1 => Registers_inst_reg_2_7_319,
      I2 => instruction_6_Q,
      O => Registers_inst_mux15_51_241
    );
  Registers_inst_mux15_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_7_310,
      I1 => instruction_6_Q,
      O => Registers_inst_mux15_6_242
    );
  Registers_inst_mux15_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux15_6_242,
      I1 => Registers_inst_mux15_51_241,
      S => instruction_7_Q,
      O => Registers_inst_mux15_4_f5_239
    );
  Registers_inst_mux15_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux15_4_f5_239,
      I1 => Registers_inst_mux15_3_f5_237,
      S => instruction_8_Q,
      O => Rs1_data(7)
    );
  Registers_inst_mux14_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_6_363,
      I1 => Registers_inst_reg_6_6_354,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_4_232
    );
  Registers_inst_mux14_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_6_345,
      I1 => Registers_inst_reg_4_6_336,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_5_234
    );
  Registers_inst_mux14_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux14_5_234,
      I1 => Registers_inst_mux14_4_232,
      S => instruction_7_Q,
      O => Registers_inst_mux14_3_f5_231
    );
  Registers_inst_mux14_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_6_327,
      I1 => Registers_inst_reg_2_6_318,
      I2 => instruction_6_Q,
      O => Registers_inst_mux14_51_235
    );
  Registers_inst_mux14_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_6_309,
      I1 => instruction_6_Q,
      O => Registers_inst_mux14_6_236
    );
  Registers_inst_mux14_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux14_6_236,
      I1 => Registers_inst_mux14_51_235,
      S => instruction_7_Q,
      O => Registers_inst_mux14_4_f5_233
    );
  Registers_inst_mux14_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux14_4_f5_233,
      I1 => Registers_inst_mux14_3_f5_231,
      S => instruction_8_Q,
      O => Rs1_data(6)
    );
  Registers_inst_mux13_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_5_362,
      I1 => Registers_inst_reg_6_5_353,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_4_226
    );
  Registers_inst_mux13_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_5_344,
      I1 => Registers_inst_reg_4_5_335,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_5_228
    );
  Registers_inst_mux13_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux13_5_228,
      I1 => Registers_inst_mux13_4_226,
      S => instruction_7_Q,
      O => Registers_inst_mux13_3_f5_225
    );
  Registers_inst_mux13_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_5_326,
      I1 => Registers_inst_reg_2_5_317,
      I2 => instruction_6_Q,
      O => Registers_inst_mux13_51_229
    );
  Registers_inst_mux13_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_5_308,
      I1 => instruction_6_Q,
      O => Registers_inst_mux13_6_230
    );
  Registers_inst_mux13_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux13_6_230,
      I1 => Registers_inst_mux13_51_229,
      S => instruction_7_Q,
      O => Registers_inst_mux13_4_f5_227
    );
  Registers_inst_mux13_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux13_4_f5_227,
      I1 => Registers_inst_mux13_3_f5_225,
      S => instruction_8_Q,
      O => Rs1_data(5)
    );
  Registers_inst_mux12_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_4_361,
      I1 => Registers_inst_reg_6_4_352,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_4_220
    );
  Registers_inst_mux12_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_4_343,
      I1 => Registers_inst_reg_4_4_334,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_5_222
    );
  Registers_inst_mux12_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux12_5_222,
      I1 => Registers_inst_mux12_4_220,
      S => instruction_7_Q,
      O => Registers_inst_mux12_3_f5_219
    );
  Registers_inst_mux12_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_4_325,
      I1 => Registers_inst_reg_2_4_316,
      I2 => instruction_6_Q,
      O => Registers_inst_mux12_51_223
    );
  Registers_inst_mux12_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_4_307,
      I1 => instruction_6_Q,
      O => Registers_inst_mux12_6_224
    );
  Registers_inst_mux12_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux12_6_224,
      I1 => Registers_inst_mux12_51_223,
      S => instruction_7_Q,
      O => Registers_inst_mux12_4_f5_221
    );
  Registers_inst_mux12_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux12_4_f5_221,
      I1 => Registers_inst_mux12_3_f5_219,
      S => instruction_8_Q,
      O => Rs1_data(4)
    );
  Registers_inst_mux11_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_3_360,
      I1 => Registers_inst_reg_6_3_351,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_4_214
    );
  Registers_inst_mux11_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_3_342,
      I1 => Registers_inst_reg_4_3_333,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_5_216
    );
  Registers_inst_mux11_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux11_5_216,
      I1 => Registers_inst_mux11_4_214,
      S => instruction_7_Q,
      O => Registers_inst_mux11_3_f5_213
    );
  Registers_inst_mux11_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_3_324,
      I1 => Registers_inst_reg_2_3_315,
      I2 => instruction_6_Q,
      O => Registers_inst_mux11_51_217
    );
  Registers_inst_mux11_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_3_306,
      I1 => instruction_6_Q,
      O => Registers_inst_mux11_6_218
    );
  Registers_inst_mux11_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux11_6_218,
      I1 => Registers_inst_mux11_51_217,
      S => instruction_7_Q,
      O => Registers_inst_mux11_4_f5_215
    );
  Registers_inst_mux11_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux11_4_f5_215,
      I1 => Registers_inst_mux11_3_f5_213,
      S => instruction_8_Q,
      O => Rs1_data(3)
    );
  Registers_inst_mux10_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_2_359,
      I1 => Registers_inst_reg_6_2_350,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_4_208
    );
  Registers_inst_mux10_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_2_341,
      I1 => Registers_inst_reg_4_2_332,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_5_210
    );
  Registers_inst_mux10_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux10_5_210,
      I1 => Registers_inst_mux10_4_208,
      S => instruction_7_Q,
      O => Registers_inst_mux10_3_f5_207
    );
  Registers_inst_mux10_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_2_323,
      I1 => Registers_inst_reg_2_2_314,
      I2 => instruction_6_Q,
      O => Registers_inst_mux10_51_211
    );
  Registers_inst_mux10_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_2_305,
      I1 => instruction_6_Q,
      O => Registers_inst_mux10_6_212
    );
  Registers_inst_mux10_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux10_6_212,
      I1 => Registers_inst_mux10_51_211,
      S => instruction_7_Q,
      O => Registers_inst_mux10_4_f5_209
    );
  Registers_inst_mux10_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux10_4_f5_209,
      I1 => Registers_inst_mux10_3_f5_207,
      S => instruction_8_Q,
      O => Rs1_data(2)
    );
  Registers_inst_mux9_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_1_358,
      I1 => Registers_inst_reg_6_1_349,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_4_292
    );
  Registers_inst_mux9_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_1_340,
      I1 => Registers_inst_reg_4_1_331,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_5_294
    );
  Registers_inst_mux9_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux9_5_294,
      I1 => Registers_inst_mux9_4_292,
      S => instruction_7_Q,
      O => Registers_inst_mux9_3_f5_291
    );
  Registers_inst_mux9_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_1_322,
      I1 => Registers_inst_reg_2_1_313,
      I2 => instruction_6_Q,
      O => Registers_inst_mux9_51_295
    );
  Registers_inst_mux9_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_1_304,
      I1 => instruction_6_Q,
      O => Registers_inst_mux9_6_296
    );
  Registers_inst_mux9_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux9_6_296,
      I1 => Registers_inst_mux9_51_295,
      S => instruction_7_Q,
      O => Registers_inst_mux9_4_f5_293
    );
  Registers_inst_mux9_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux9_4_f5_293,
      I1 => Registers_inst_mux9_3_f5_291,
      S => instruction_8_Q,
      O => Rs1_data(1)
    );
  Registers_inst_mux8_4 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_7_0_357,
      I1 => Registers_inst_reg_6_0_348,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_4_286
    );
  Registers_inst_mux8_5 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_5_0_339,
      I1 => Registers_inst_reg_4_0_330,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_5_288
    );
  Registers_inst_mux8_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux8_5_288,
      I1 => Registers_inst_mux8_4_286,
      S => instruction_7_Q,
      O => Registers_inst_mux8_3_f5_285
    );
  Registers_inst_mux8_51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Registers_inst_reg_3_0_321,
      I1 => Registers_inst_reg_2_0_312,
      I2 => instruction_6_Q,
      O => Registers_inst_mux8_51_289
    );
  Registers_inst_mux8_6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Registers_inst_reg_1_0_303,
      I1 => instruction_6_Q,
      O => Registers_inst_mux8_6_290
    );
  Registers_inst_mux8_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux8_6_290,
      I1 => Registers_inst_mux8_51_289,
      S => instruction_7_Q,
      O => Registers_inst_mux8_4_f5_287
    );
  Registers_inst_mux8_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux8_4_f5_287,
      I1 => Registers_inst_mux8_3_f5_285,
      S => instruction_8_Q,
      O => Rs1_data(0)
    );
  Registers_inst_mux7_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux7_5_282,
      I1 => Registers_inst_mux7_4_280,
      S => Rs2_addr(1),
      O => Registers_inst_mux7_3_f5_279
    );
  Registers_inst_mux7_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux7_6_284,
      I1 => Registers_inst_mux7_51_283,
      S => Rs2_addr(1),
      O => Registers_inst_mux7_4_f5_281
    );
  Registers_inst_mux7_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux7_4_f5_281,
      I1 => Registers_inst_mux7_3_f5_279,
      S => Rs2_addr(2),
      O => Rs2_data(7)
    );
  Registers_inst_mux6_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux6_5_276,
      I1 => Registers_inst_mux6_4_274,
      S => Rs2_addr(1),
      O => Registers_inst_mux6_3_f5_273
    );
  Registers_inst_mux6_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux6_6_278,
      I1 => Registers_inst_mux6_51_277,
      S => Rs2_addr(1),
      O => Registers_inst_mux6_4_f5_275
    );
  Registers_inst_mux6_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux6_4_f5_275,
      I1 => Registers_inst_mux6_3_f5_273,
      S => Rs2_addr(2),
      O => Rs2_data(6)
    );
  Registers_inst_mux5_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux5_5_270,
      I1 => Registers_inst_mux5_4_268,
      S => Rs2_addr(1),
      O => Registers_inst_mux5_3_f5_267
    );
  Registers_inst_mux5_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux5_6_272,
      I1 => Registers_inst_mux5_51_271,
      S => Rs2_addr(1),
      O => Registers_inst_mux5_4_f5_269
    );
  Registers_inst_mux5_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux5_4_f5_269,
      I1 => Registers_inst_mux5_3_f5_267,
      S => Rs2_addr(2),
      O => Rs2_data(5)
    );
  Registers_inst_mux4_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux4_5_264,
      I1 => Registers_inst_mux4_4_262,
      S => Rs2_addr(1),
      O => Registers_inst_mux4_3_f5_261
    );
  Registers_inst_mux4_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux4_6_266,
      I1 => Registers_inst_mux4_51_265,
      S => Rs2_addr(1),
      O => Registers_inst_mux4_4_f5_263
    );
  Registers_inst_mux4_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux4_4_f5_263,
      I1 => Registers_inst_mux4_3_f5_261,
      S => Rs2_addr(2),
      O => Rs2_data(4)
    );
  Registers_inst_mux3_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux3_5_258,
      I1 => Registers_inst_mux3_4_256,
      S => Rs2_addr(1),
      O => Registers_inst_mux3_3_f5_255
    );
  Registers_inst_mux3_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux3_6_260,
      I1 => Registers_inst_mux3_51_259,
      S => Rs2_addr(1),
      O => Registers_inst_mux3_4_f5_257
    );
  Registers_inst_mux3_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux3_4_f5_257,
      I1 => Registers_inst_mux3_3_f5_255,
      S => Rs2_addr(2),
      O => Rs2_data(3)
    );
  Registers_inst_mux2_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux2_5_252,
      I1 => Registers_inst_mux2_4_250,
      S => Rs2_addr(1),
      O => Registers_inst_mux2_3_f5_249
    );
  Registers_inst_mux2_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux2_6_254,
      I1 => Registers_inst_mux2_51_253,
      S => Rs2_addr(1),
      O => Registers_inst_mux2_4_f5_251
    );
  Registers_inst_mux2_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux2_4_f5_251,
      I1 => Registers_inst_mux2_3_f5_249,
      S => Rs2_addr(2),
      O => Rs2_data(2)
    );
  Registers_inst_mux1_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux1_5_246,
      I1 => Registers_inst_mux1_4_244,
      S => Rs2_addr(1),
      O => Registers_inst_mux1_3_f5_243
    );
  Registers_inst_mux1_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux1_6_248,
      I1 => Registers_inst_mux1_51_247,
      S => Rs2_addr(1),
      O => Registers_inst_mux1_4_f5_245
    );
  Registers_inst_mux1_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux1_4_f5_245,
      I1 => Registers_inst_mux1_3_f5_243,
      S => Rs2_addr(2),
      O => Rs2_data(1)
    );
  Registers_inst_mux_3_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux_5_300,
      I1 => Registers_inst_mux_4_298,
      S => Rs2_addr(1),
      O => Registers_inst_mux_3_f5_297
    );
  Registers_inst_mux_4_f5 : MUXF5
    port map (
      I0 => Registers_inst_mux_6_302,
      I1 => Registers_inst_mux_51_301,
      S => Rs2_addr(1),
      O => Registers_inst_mux_4_f5_299
    );
  Registers_inst_mux_2_f6 : MUXF6
    port map (
      I0 => Registers_inst_mux_4_f5_299,
      I1 => Registers_inst_mux_3_f5_297,
      S => Rs2_addr(2),
      O => Rs2_data(0)
    );
  Registers_inst_reg_7_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_7_7_364
    );
  Registers_inst_reg_7_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_7_6_363
    );
  Registers_inst_reg_7_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_7_5_362
    );
  Registers_inst_reg_7_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_7_4_361
    );
  Registers_inst_reg_7_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_7_3_360
    );
  Registers_inst_reg_7_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_7_2_359
    );
  Registers_inst_reg_7_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_7_1_358
    );
  Registers_inst_reg_7_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_7_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_7_0_357
    );
  Registers_inst_reg_6_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_6_7_355
    );
  Registers_inst_reg_6_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_6_6_354
    );
  Registers_inst_reg_6_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_6_5_353
    );
  Registers_inst_reg_6_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_6_4_352
    );
  Registers_inst_reg_6_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_6_3_351
    );
  Registers_inst_reg_6_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_6_2_350
    );
  Registers_inst_reg_6_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_6_1_349
    );
  Registers_inst_reg_6_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_6_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_6_0_348
    );
  Registers_inst_reg_5_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_5_7_346
    );
  Registers_inst_reg_5_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_5_6_345
    );
  Registers_inst_reg_5_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_5_5_344
    );
  Registers_inst_reg_5_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_5_4_343
    );
  Registers_inst_reg_5_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_5_3_342
    );
  Registers_inst_reg_5_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_5_2_341
    );
  Registers_inst_reg_5_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_5_1_340
    );
  Registers_inst_reg_5_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_5_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_5_0_339
    );
  Registers_inst_reg_4_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_4_7_337
    );
  Registers_inst_reg_4_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_4_6_336
    );
  Registers_inst_reg_4_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_4_5_335
    );
  Registers_inst_reg_4_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_4_4_334
    );
  Registers_inst_reg_4_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_4_3_333
    );
  Registers_inst_reg_4_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_4_2_332
    );
  Registers_inst_reg_4_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_4_1_331
    );
  Registers_inst_reg_4_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_4_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_4_0_330
    );
  Registers_inst_reg_2_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_2_7_319
    );
  Registers_inst_reg_2_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_2_6_318
    );
  Registers_inst_reg_2_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_2_5_317
    );
  Registers_inst_reg_2_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_2_4_316
    );
  Registers_inst_reg_2_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_2_3_315
    );
  Registers_inst_reg_2_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_2_2_314
    );
  Registers_inst_reg_2_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_2_1_313
    );
  Registers_inst_reg_2_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_2_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_2_0_312
    );
  Registers_inst_reg_1_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_1_7_310
    );
  Registers_inst_reg_1_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_1_6_309
    );
  Registers_inst_reg_1_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_1_5_308
    );
  Registers_inst_reg_1_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_1_4_307
    );
  Registers_inst_reg_1_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_1_3_306
    );
  Registers_inst_reg_1_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_1_2_305
    );
  Registers_inst_reg_1_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_1_1_304
    );
  Registers_inst_reg_1_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_1_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_1_0_303
    );
  Registers_inst_reg_3_7 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(7),
      Q => Registers_inst_reg_3_7_328
    );
  Registers_inst_reg_3_6 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(6),
      Q => Registers_inst_reg_3_6_327
    );
  Registers_inst_reg_3_5 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(5),
      Q => Registers_inst_reg_3_5_326
    );
  Registers_inst_reg_3_4 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(4),
      Q => Registers_inst_reg_3_4_325
    );
  Registers_inst_reg_3_3 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(3),
      Q => Registers_inst_reg_3_3_324
    );
  Registers_inst_reg_3_2 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(2),
      Q => Registers_inst_reg_3_2_323
    );
  Registers_inst_reg_3_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(1),
      Q => Registers_inst_reg_3_1_322
    );
  Registers_inst_reg_3_0 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => Registers_inst_reg_3_and0000,
      CLR => rst_IBUF_446,
      D => Rd_data(0),
      Q => Registers_inst_reg_3_0_321
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
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => operand_2_7_OBUF_434,
      I2 => operand_1_7_OBUF_418,
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
      DI => operand_1_6_OBUF_417,
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(6),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(6)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => operand_1_6_OBUF_417,
      I2 => operand_2_6_OBUF_433,
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
      DI => operand_1_5_OBUF_416,
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(5),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(5)
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
      DI => operand_1_4_OBUF_415,
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
      DI => operand_1_3_OBUF_414,
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
      DI => operand_1_2_OBUF_413,
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
      DI => operand_1_1_OBUF_412,
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(1),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(1)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_xor_0_Q : XORCY
    port map (
      CI => ALU_inst_computed_result_mux0000_0_117,
      LI => ALU_inst_Maddsub_computed_result_addsub0000_lut(0),
      O => ALU_inst_computed_result_addsub0000(0)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => ALU_inst_computed_result_mux0000_0_117,
      DI => operand_1_0_OBUF_411,
      S => ALU_inst_Maddsub_computed_result_addsub0000_lut(0),
      O => ALU_inst_Maddsub_computed_result_addsub0000_cy(0)
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => operand_2_0_OBUF_427,
      I2 => operand_1_0_OBUF_411,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(0)
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
      INIT => X"0080"
    )
    port map (
      I0 => instruction_11_Q,
      I1 => Rd_we,
      I2 => instruction_10_Q,
      I3 => instruction_9_Q,
      O => Registers_inst_reg_6_and0000
    );
  Registers_inst_reg_5_and00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => instruction_11_Q,
      I1 => instruction_9_Q,
      I2 => Rd_we,
      I3 => instruction_10_Q,
      O => Registers_inst_reg_5_and0000
    );
  Registers_inst_reg_4_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instruction_11_Q,
      I1 => instruction_9_Q,
      I2 => Rd_we,
      I3 => instruction_10_Q,
      O => Registers_inst_reg_4_and0000
    );
  Registers_inst_reg_3_and00001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Rd_we,
      I1 => instruction_9_Q,
      I2 => instruction_10_Q,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_3_and0000
    );
  Registers_inst_reg_2_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Rd_we,
      I1 => instruction_9_Q,
      I2 => instruction_10_Q,
      I3 => instruction_11_Q,
      O => Registers_inst_reg_2_and0000
    );
  Registers_inst_reg_1_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Rd_we,
      I1 => instruction_11_Q,
      I2 => instruction_9_Q,
      I3 => instruction_10_Q,
      O => Registers_inst_reg_1_and0000
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
  Instructions_ROM_inst_data_out_5_mux0000 : LUT4
    generic map(
      INIT => X"E4F0"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => N11,
      I2 => N10,
      I3 => Instructions_ROM_inst_N9,
      O => instruction_5_Q
    );
  Instructions_ROM_inst_data_out_6_mux0000 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => N16,
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => instruction_6_Q
    );
  Decoder_Controller_inst_alu2_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu2_or0000,
      I1 => Rs2_data(6),
      I2 => Decoder_Controller_inst_imval(6),
      I3 => N250,
      O => operand_2_6_OBUF_433
    );
  Instructions_ROM_inst_data_out_11_mux00002 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(6),
      I2 => PC_inst_PC_reg(5),
      I3 => N236,
      O => Instructions_ROM_inst_N9
    );
  Instructions_ROM_inst_data_out_11_mux00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(6),
      I2 => PC_inst_PC_reg(5),
      I3 => N237,
      O => Instructions_ROM_inst_N7
    );
  Instructions_ROM_inst_data_out_4_mux000020 : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => N245,
      I2 => Instructions_ROM_inst_N7,
      I3 => Instructions_ROM_inst_N9,
      O => Instructions_ROM_inst_data_out_4_mux000020_87
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
      O => Instructions_ROM_inst_data_out_3_mux00001_86
    );
  Instructions_ROM_inst_data_out_3_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_3_mux00001_86,
      I1 => Instructions_ROM_inst_data_out_3_mux0000,
      S => PC_inst_PC_reg(2),
      O => instruction_3_Q
    );
  Decoder_Controller_inst_alu1_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0014,
      I1 => PC_inst_PC_reg(0),
      I2 => Rs1_data(0),
      I3 => N256,
      O => operand_1_0_OBUF_411
    );
  Decoder_Controller_inst_alu2_2_Q : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => instruction_0_Q,
      I1 => Decoder_Controller_inst_r2_addr_or0000,
      I2 => N22,
      I3 => Decoder_Controller_inst_N2,
      O => operand_2_2_OBUF_429
    );
  Instructions_ROM_inst_Mrom_address_in_rom000011 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(2),
      I2 => PC_inst_PC_reg(1),
      O => Instructions_ROM_inst_Mrom_address_in_rom0000
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
      O => operand_1_6_OBUF_417
    );
  Decoder_Controller_inst_alu1_cmp_eq0012853 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Rs1_data(2),
      I1 => Rs2_data(2),
      I2 => Rs1_data(3),
      I3 => Rs2_data(3),
      O => Decoder_Controller_inst_alu1_cmp_eq0012853_62
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
      O => Decoder_Controller_inst_alu1_cmp_eq0012893_63
    );
  Decoder_Controller_inst_alu1_cmp_eq00128120 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Rs1_data(6),
      I1 => Rs2_data(6),
      I2 => Rs1_data(7),
      I3 => Rs2_data(7),
      O => Decoder_Controller_inst_alu1_cmp_eq00128120_60
    );
  Decoder_Controller_inst_alu1_cmp_eq00128136 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0012826_61,
      I1 => Decoder_Controller_inst_alu1_cmp_eq0012853_62,
      I2 => Decoder_Controller_inst_alu1_cmp_eq0012893_63,
      I3 => Decoder_Controller_inst_alu1_cmp_eq00128120_60,
      O => Decoder_Controller_inst_alu1_cmp_eq0012
    );
  Instructions_ROM_inst_Mrom_address_in_rom00001111 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(1),
      I3 => PC_inst_PC_reg(2),
      O => Instructions_ROM_inst_Mrom_address_in_rom000011_72
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
      O => operand_1_7_OBUF_418
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
      O => operand_1_5_OBUF_416
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
      O => operand_1_4_OBUF_415
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
      O => operand_1_3_OBUF_414
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
      O => operand_1_2_OBUF_413
    );
  Decoder_Controller_inst_alu1_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N254,
      I1 => PC_inst_PC_reg(1),
      I2 => Rs1_data(1),
      I3 => Decoder_Controller_inst_N1,
      O => operand_1_1_OBUF_412
    );
  ALU_inst_computed_result_mux0000_6_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_6_14_37,
      I3 => ALU_inst_computed_result_addsub0000(6),
      O => ALU_inst_computed_result_mux0000_6_27_38
    );
  ALU_inst_computed_result_mux0000_5_14 : LUT4
    generic map(
      INIT => X"EC00"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_2_5_OBUF_432,
      I3 => operand_1_5_OBUF_416,
      O => ALU_inst_computed_result_mux0000_5_14_35
    );
  ALU_inst_computed_result_mux0000_5_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_5_14_35,
      I3 => ALU_inst_computed_result_addsub0000(5),
      O => ALU_inst_computed_result_mux0000_5_27_36
    );
  ALU_inst_computed_result_mux0000_4_14 : LUT4
    generic map(
      INIT => X"EC00"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_2_4_OBUF_431,
      I3 => operand_1_4_OBUF_415,
      O => ALU_inst_computed_result_mux0000_4_14_33
    );
  ALU_inst_computed_result_mux0000_4_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_4_14_33,
      I3 => ALU_inst_computed_result_addsub0000(4),
      O => ALU_inst_computed_result_mux0000_4_27_34
    );
  ALU_inst_computed_result_mux0000_3_14 : LUT4
    generic map(
      INIT => X"EC00"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_2_3_OBUF_430,
      I3 => operand_1_3_OBUF_414,
      O => ALU_inst_computed_result_mux0000_3_14_31
    );
  ALU_inst_computed_result_mux0000_3_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_3_14_31,
      I3 => ALU_inst_computed_result_addsub0000(3),
      O => ALU_inst_computed_result_mux0000_3_27_32
    );
  ALU_inst_computed_result_mux0000_2_14 : LUT4
    generic map(
      INIT => X"E0C0"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_1_2_OBUF_413,
      I3 => operand_2_2_OBUF_429,
      O => ALU_inst_computed_result_mux0000_2_14_29
    );
  ALU_inst_computed_result_mux0000_2_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_2_14_29,
      I3 => ALU_inst_computed_result_addsub0000(2),
      O => ALU_inst_computed_result_mux0000_2_27_30
    );
  ALU_inst_computed_result_mux0000_1_14 : LUT4
    generic map(
      INIT => X"E0C0"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_1_1_OBUF_412,
      I3 => operand_2_1_OBUF_428,
      O => ALU_inst_computed_result_mux0000_1_14_27
    );
  ALU_inst_computed_result_mux0000_1_27 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => ALU_inst_computed_result_mux0000_1_14_27,
      I3 => ALU_inst_computed_result_addsub0000(1),
      O => ALU_inst_computed_result_mux0000_1_27_28
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_446
    );
  result_7_OBUF : OBUF
    port map (
      I => result_7_OBUF_444,
      O => result(7)
    );
  result_6_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_6_27_38,
      O => result(6)
    );
  result_5_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_5_27_36,
      O => result(5)
    );
  result_4_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_4_27_34,
      O => result(4)
    );
  result_3_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_3_27_32,
      O => result(3)
    );
  result_2_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_2_27_30,
      O => result(2)
    );
  result_1_OBUF : OBUF
    port map (
      I => ALU_inst_computed_result_mux0000_1_27_28,
      O => result(1)
    );
  result_0_OBUF : OBUF
    port map (
      I => result_0_OBUF_443,
      O => result(0)
    );
  operand_1_7_OBUF : OBUF
    port map (
      I => operand_1_7_OBUF_418,
      O => operand_1(7)
    );
  operand_1_6_OBUF : OBUF
    port map (
      I => operand_1_6_OBUF_417,
      O => operand_1(6)
    );
  operand_1_5_OBUF : OBUF
    port map (
      I => operand_1_5_OBUF_416,
      O => operand_1(5)
    );
  operand_1_4_OBUF : OBUF
    port map (
      I => operand_1_4_OBUF_415,
      O => operand_1(4)
    );
  operand_1_3_OBUF : OBUF
    port map (
      I => operand_1_3_OBUF_414,
      O => operand_1(3)
    );
  operand_1_2_OBUF : OBUF
    port map (
      I => operand_1_2_OBUF_413,
      O => operand_1(2)
    );
  operand_1_1_OBUF : OBUF
    port map (
      I => operand_1_1_OBUF_412,
      O => operand_1(1)
    );
  operand_1_0_OBUF : OBUF
    port map (
      I => operand_1_0_OBUF_411,
      O => operand_1(0)
    );
  operand_2_7_OBUF : OBUF
    port map (
      I => operand_2_7_OBUF_434,
      O => operand_2(7)
    );
  operand_2_6_OBUF : OBUF
    port map (
      I => operand_2_6_OBUF_433,
      O => operand_2(6)
    );
  operand_2_5_OBUF : OBUF
    port map (
      I => operand_2_5_OBUF_432,
      O => operand_2(5)
    );
  operand_2_4_OBUF : OBUF
    port map (
      I => operand_2_4_OBUF_431,
      O => operand_2(4)
    );
  operand_2_3_OBUF : OBUF
    port map (
      I => operand_2_3_OBUF_430,
      O => operand_2(3)
    );
  operand_2_2_OBUF : OBUF
    port map (
      I => operand_2_2_OBUF_429,
      O => operand_2(2)
    );
  operand_2_1_OBUF : OBUF
    port map (
      I => operand_2_1_OBUF_428,
      O => operand_2(1)
    );
  operand_2_0_OBUF : OBUF
    port map (
      I => operand_2_0_OBUF_427,
      O => operand_2(0)
    );
  opcode_3_OBUF : OBUF
    port map (
      I => instruction_15_Q,
      O => opcode(3)
    );
  opcode_2_OBUF : OBUF
    port map (
      I => instruction_13_Q,
      O => opcode(2)
    );
  opcode_1_OBUF : OBUF
    port map (
      I => instruction_13_Q,
      O => opcode(1)
    );
  opcode_0_OBUF : OBUF
    port map (
      I => instruction_12_Q,
      O => opcode(0)
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      O => instruction_13_Q
    );
  PC_inst_Mcount_PC_reg_lut_1_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_mux0000_1_27_28,
      O => PC_inst_Mcount_PC_reg_lut(1)
    );
  PC_inst_Mcount_PC_reg_lut_0_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => result_0_OBUF_443,
      O => PC_inst_Mcount_PC_reg_lut(0)
    );
  PC_inst_Mcount_PC_reg_lut_7_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => result_7_OBUF_444,
      O => PC_inst_Mcount_PC_reg_lut(7)
    );
  Instructions_ROM_inst_data_out_4_mux000023 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => Instructions_ROM_inst_data_out_4_mux000020_87,
      I1 => PC_inst_PC_reg(1),
      I2 => N246,
      O => instruction_4_Q
    );
  Registers_inst_mux_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_0_348,
      I1 => Registers_inst_reg_7_0_357,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_4_298
    );
  Registers_inst_mux_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_0_330,
      I1 => Registers_inst_reg_5_0_339,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_5_300
    );
  Registers_inst_mux_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_0_312,
      I1 => Registers_inst_reg_3_0_321,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_51_301
    );
  Registers_inst_mux1_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_1_349,
      I1 => Registers_inst_reg_7_1_358,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_4_244
    );
  Registers_inst_mux1_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_1_331,
      I1 => Registers_inst_reg_5_1_340,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_5_246
    );
  Registers_inst_mux1_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_1_313,
      I1 => Registers_inst_reg_3_1_322,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_51_247
    );
  Registers_inst_mux2_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_2_350,
      I1 => Registers_inst_reg_7_2_359,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_4_250
    );
  Registers_inst_mux2_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_2_332,
      I1 => Registers_inst_reg_5_2_341,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_5_252
    );
  Registers_inst_mux2_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_2_314,
      I1 => Registers_inst_reg_3_2_323,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_51_253
    );
  Registers_inst_mux3_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_3_351,
      I1 => Registers_inst_reg_7_3_360,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_4_256
    );
  Registers_inst_mux3_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_3_333,
      I1 => Registers_inst_reg_5_3_342,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_5_258
    );
  Registers_inst_mux3_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_3_315,
      I1 => Registers_inst_reg_3_3_324,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_51_259
    );
  Registers_inst_mux4_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_4_352,
      I1 => Registers_inst_reg_7_4_361,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_4_262
    );
  Registers_inst_mux4_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_4_334,
      I1 => Registers_inst_reg_5_4_343,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_5_264
    );
  Registers_inst_mux4_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_4_316,
      I1 => Registers_inst_reg_3_4_325,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_51_265
    );
  Registers_inst_mux5_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_5_353,
      I1 => Registers_inst_reg_7_5_362,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_4_268
    );
  Registers_inst_mux5_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_5_335,
      I1 => Registers_inst_reg_5_5_344,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_5_270
    );
  Registers_inst_mux5_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_5_317,
      I1 => Registers_inst_reg_3_5_326,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_51_271
    );
  Registers_inst_mux6_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_6_354,
      I1 => Registers_inst_reg_7_6_363,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_4_274
    );
  Registers_inst_mux6_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_6_336,
      I1 => Registers_inst_reg_5_6_345,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_5_276
    );
  Registers_inst_mux6_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_6_318,
      I1 => Registers_inst_reg_3_6_327,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_51_277
    );
  Registers_inst_mux7_4 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_6_7_355,
      I1 => Registers_inst_reg_7_7_364,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_4_280
    );
  Registers_inst_mux7_5 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_4_7_337,
      I1 => Registers_inst_reg_5_7_346,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_5_282
    );
  Registers_inst_mux7_51 : LUT4
    generic map(
      INIT => X"AACA"
    )
    port map (
      I0 => Registers_inst_reg_2_7_319,
      I1 => Registers_inst_reg_3_7_328,
      I2 => instruction_3_Q,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_51_283
    );
  Instructions_ROM_inst_Mrom_address_in_rom000091 : LUT4
    generic map(
      INIT => X"1115"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(2),
      I2 => PC_inst_PC_reg(0),
      I3 => PC_inst_PC_reg(1),
      O => Instructions_ROM_inst_Mrom_address_in_rom00009
    );
  Registers_inst_mux_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_0_303,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux_6_302
    );
  Registers_inst_mux1_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_1_304,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux1_6_248
    );
  Registers_inst_mux2_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_2_305,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux2_6_254
    );
  Registers_inst_mux3_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_3_306,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux3_6_260
    );
  Registers_inst_mux4_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_4_307,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux4_6_266
    );
  Registers_inst_mux5_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_5_308,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux5_6_272
    );
  Registers_inst_mux6_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_6_309,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux6_6_278
    );
  Registers_inst_mux7_6 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Registers_inst_reg_1_7_310,
      I1 => instruction_3_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      O => Registers_inst_mux7_6_284
    );
  Decoder_Controller_inst_alu2_1_Q : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => instruction_0_Q,
      I1 => Decoder_Controller_inst_r2_addr_or0000,
      I2 => N59,
      I3 => Decoder_Controller_inst_N2,
      O => operand_2_1_OBUF_428
    );
  ALU_inst_computed_result_mux0000_7_147 : LUT4
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_15_Q,
      I2 => N205,
      I3 => ALU_inst_computed_result_addsub0000(7),
      O => result_7_OBUF_444
    );
  Decoder_Controller_inst_alu2_2_SW2 : LUT4
    generic map(
      INIT => X"556A"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_0_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      I3 => N238,
      O => N79
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_2_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N22,
      I1 => N79,
      I2 => operand_1_2_OBUF_413,
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(2)
    );
  Decoder_Controller_inst_alu2_3_SW3 : LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      I0 => instruction_3_Q,
      I1 => ALU_inst_computed_result_mux0000_0_117,
      I2 => N242,
      I3 => N27,
      O => N82
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_3_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N27,
      I1 => N82,
      I2 => operand_1_3_OBUF_414,
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(3)
    );
  Decoder_Controller_inst_alu2_4_SW3 : LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      I0 => instruction_4_Q,
      I1 => ALU_inst_computed_result_mux0000_0_117,
      I2 => N240,
      I3 => N24,
      O => N85
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_4_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N24,
      I1 => N85,
      I2 => operand_1_4_OBUF_415,
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(4)
    );
  Decoder_Controller_inst_alu2_5_SW3 : LUT4
    generic map(
      INIT => X"396C"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => ALU_inst_computed_result_mux0000_0_117,
      I2 => N244,
      I3 => N35,
      O => N88
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_5_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N35,
      I1 => N88,
      I2 => operand_1_5_OBUF_416,
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(5)
    );
  Decoder_Controller_inst_alu2_0_1_SW2 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => N251,
      I2 => N45,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => N90
    );
  Decoder_Controller_inst_alu2_0_1_SW3 : LUT4
    generic map(
      INIT => X"C800"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_0_Q,
      I2 => N253,
      I3 => Decoder_Controller_inst_r2_addr_or0000,
      O => N91
    );
  Instructions_ROM_inst_data_out_7_mux0000_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => PC_inst_PC_reg(5),
      I2 => PC_inst_PC_reg(0),
      I3 => PC_inst_PC_reg(1),
      O => N122
    );
  Instructions_ROM_inst_data_out_11_mux00001_SW1 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => PC_inst_PC_reg(5),
      I2 => PC_inst_PC_reg(0),
      I3 => PC_inst_PC_reg(1),
      O => N126
    );
  Decoder_Controller_inst_alu2_1_SW1 : LUT4
    generic map(
      INIT => X"556A"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_0_Q,
      I2 => Decoder_Controller_inst_r2_addr_or0000,
      I3 => N249,
      O => N129
    );
  ALU_inst_Maddsub_computed_result_addsub0000_lut_1_Q : LUT4
    generic map(
      INIT => X"3C5A"
    )
    port map (
      I0 => N128,
      I1 => N129,
      I2 => operand_1_1_OBUF_412,
      I3 => Decoder_Controller_inst_N2,
      O => ALU_inst_Maddsub_computed_result_addsub0000_lut(1)
    );
  Decoder_Controller_inst_r2_addr_1_1 : LUT4
    generic map(
      INIT => X"00F8"
    )
    port map (
      I0 => PC_inst_PC_reg(1),
      I1 => N57,
      I2 => Instructions_ROM_inst_data_out_4_mux000020_87,
      I3 => Decoder_Controller_inst_r2_addr_or00001_70,
      O => Rs2_addr(1)
    );
  Decoder_Controller_inst_r2_addr_or00001 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_73,
      I1 => instruction_12_Q,
      I2 => N257,
      O => Decoder_Controller_inst_r2_addr_or0000
    );
  Decoder_Controller_inst_r2_addr_2_1 : LUT4
    generic map(
      INIT => X"440C"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_5_Q,
      I2 => instruction_12_Q,
      I3 => instruction_13_Q,
      O => Rs2_addr(2)
    );
  Decoder_Controller_inst_alu2_0_1_SW1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_imval(6),
      I1 => N131,
      I2 => N252,
      I3 => Rs2_data(7),
      O => N163
    );
  Decoder_Controller_inst_alu2_7_1 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N164,
      I2 => N163,
      I3 => Decoder_Controller_inst_N02,
      O => operand_2_7_OBUF_434
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW1 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(3),
      I3 => N184,
      O => N11
    );
  Decoder_Controller_inst_alu2_0_1_SW6 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_4_Q,
      I1 => N132,
      I2 => N25,
      I3 => N239,
      O => N197
    );
  Decoder_Controller_inst_alu2_4_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N197,
      I2 => N196,
      I3 => Decoder_Controller_inst_N02,
      O => operand_2_4_OBUF_431
    );
  Decoder_Controller_inst_alu2_0_1_SW7 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_3_Q,
      I1 => N255,
      I2 => N28,
      I3 => N27,
      O => N199
    );
  Decoder_Controller_inst_alu2_0_1_SW8 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_3_Q,
      I1 => N132,
      I2 => N28,
      I3 => N241,
      O => N200
    );
  Decoder_Controller_inst_alu2_3_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N200,
      I2 => N199,
      I3 => N247,
      O => operand_2_3_OBUF_430
    );
  Decoder_Controller_inst_alu2_0_1_SW10 : LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => N132,
      I2 => N36,
      I3 => N243,
      O => N203
    );
  Decoder_Controller_inst_alu2_5_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N203,
      I2 => N202,
      I3 => Decoder_Controller_inst_N02,
      O => operand_2_5_OBUF_432
    );
  Decoder_Controller_inst_alu2_1_SW0 : LUT4
    generic map(
      INIT => X"A9AA"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_117,
      I1 => instruction_12_Q,
      I2 => instruction_13_Q,
      I3 => Rs2_data(1),
      O => N128
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
  ALU_inst_computed_result_mux0000_7_4 : LUT4
    generic map(
      INIT => X"0213"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => instruction_15_Q,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I3 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      O => ALU_inst_computed_result_mux0000_0_8
    );
  ALU_inst_computed_result_mux0000_0_134_SW0 : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => ALU_inst_computed_result_mux0000_0_13,
      I2 => operand_1_0_OBUF_411,
      I3 => ALU_inst_computed_result_addsub0000(0),
      O => result_0_OBUF_443
    );
  Decoder_Controller_inst_rd_data_7_1 : LUT4
    generic map(
      INIT => X"C8C0"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => Rd_we,
      I2 => N205,
      I3 => ALU_inst_computed_result_addsub0000(7),
      O => Rd_data(7)
    );
  Decoder_Controller_inst_rd_data_0_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => result_0_OBUF_443,
      O => Rd_data(0)
    );
  Decoder_Controller_inst_rd_data_6_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_6_27_38,
      O => Rd_data(6)
    );
  Decoder_Controller_inst_rd_data_5_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_5_27_36,
      O => Rd_data(5)
    );
  Decoder_Controller_inst_rd_data_4_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_4_27_34,
      O => Rd_data(4)
    );
  Decoder_Controller_inst_rd_data_3_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_3_27_32,
      O => Rd_data(3)
    );
  Decoder_Controller_inst_rd_data_2_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_2_27_30,
      O => Rd_data(2)
    );
  Decoder_Controller_inst_rd_data_1_1 : LUT4
    generic map(
      INIT => X"2700"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I3 => ALU_inst_computed_result_mux0000_1_27_28,
      O => Rd_data(1)
    );
  ALU_inst_computed_result_mux0000_2_41 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => PC_inst_PC_reg(7),
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I3 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      O => ALU_inst_N6
    );
  PC_inst_Mcount_PC_reg_lut_6_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(6),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_mux0000_6_27_38,
      O => PC_inst_Mcount_PC_reg_lut(6)
    );
  PC_inst_Mcount_PC_reg_lut_5_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(5),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_mux0000_5_27_36,
      O => PC_inst_Mcount_PC_reg_lut(5)
    );
  PC_inst_Mcount_PC_reg_lut_4_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_mux0000_4_27_34,
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
      I3 => ALU_inst_computed_result_mux0000_3_27_32,
      O => PC_inst_Mcount_PC_reg_lut(3)
    );
  PC_inst_Mcount_PC_reg_lut_2_Q : LUT4
    generic map(
      INIT => X"FA8A"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => Decoder_Controller_inst_N4,
      I2 => PC_we,
      I3 => ALU_inst_computed_result_mux0000_2_27_30,
      O => PC_inst_Mcount_PC_reg_lut(2)
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
  Decoder_Controller_inst_alu2_0_1_SW1_SW21 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => instruction_15_Q,
      O => N132
    );
  PC_we_inv11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => N7,
      I1 => instruction_15_Q,
      O => PC_we_inv
    );
  Decoder_Controller_inst_new_pc_0_31 : LUT4
    generic map(
      INIT => X"80A0"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_12_Q,
      I2 => instruction_13_Q,
      I3 => Decoder_Controller_inst_alu1_cmp_eq0012,
      O => PC_we
    );
  PC_inst_PC_reg_2_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg2,
      Q => PC_inst_PC_reg_2_1_190
    );
  PC_inst_PC_reg_1_1 : FDCE
    port map (
      C => clk_BUFGP_385,
      CE => N1,
      CLR => rst_IBUF_446,
      D => PC_inst_Mcount_PC_reg1,
      Q => PC_inst_PC_reg_1_1_188
    );
  Decoder_Controller_inst_imval_6_Q : MUXF5
    port map (
      I0 => N224,
      I1 => N225,
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
      O => N224
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
      O => N225
    );
  ALU_inst_computed_result_mux0000_7_38_SW0 : MUXF5
    port map (
      I0 => N226,
      I1 => N227,
      S => PC_inst_PC_reg(7),
      O => N205
    );
  ALU_inst_computed_result_mux0000_7_38_SW0_F : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I1 => operand_1_7_OBUF_418,
      I2 => instruction_15_Q,
      I3 => operand_2_7_OBUF_434,
      O => N226
    );
  ALU_inst_computed_result_mux0000_7_38_SW0_G : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      I1 => operand_1_7_OBUF_418,
      I2 => instruction_15_Q,
      I3 => operand_2_7_OBUF_434,
      O => N227
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5 : MUXF5
    port map (
      I0 => N228,
      I1 => N229,
      S => PC_inst_PC_reg(6),
      O => instruction_12_Q
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom0000,
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(5),
      O => N228
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021_2_f5_G : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => PC_inst_PC_reg(4),
      I2 => PC_inst_PC_reg(5),
      I3 => Instructions_ROM_inst_Mrom_address_in_rom00002,
      O => N229
    );
  Instructions_ROM_inst_data_out_7_mux0000 : MUXF5
    port map (
      I0 => N230,
      I1 => N231,
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
      I2 => N18,
      I3 => N122,
      O => N230
    );
  Instructions_ROM_inst_data_out_7_mux0000_G : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => Instructions_ROM_inst_N9,
      I2 => PC_inst_PC_reg(2),
      I3 => Instructions_ROM_inst_N7,
      O => N231
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5 : MUXF5
    port map (
      I0 => N232,
      I1 => N233,
      S => PC_inst_PC_reg(6),
      O => instruction_15_Q
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom00009,
      I1 => PC_inst_PC_reg(7),
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(5),
      O => N232
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_G : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000011_72,
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(5),
      O => N233
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1 : MUXF5
    port map (
      I0 => N234,
      I1 => N235,
      S => PC_inst_PC_reg(6),
      O => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_73
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1_F : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom00009,
      I1 => PC_inst_PC_reg(7),
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(5),
      O => N234
    );
  Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_1_G : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000011_72,
      I2 => PC_inst_PC_reg(4),
      I3 => PC_inst_PC_reg(5),
      O => N235
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_385
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
      O => Instructions_ROM_inst_data_out_10_mux00001_84
    );
  Instructions_ROM_inst_data_out_10_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_10_mux00001_84,
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
      INIT => X"F8D8"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => Instructions_ROM_inst_N7,
      I2 => Instructions_ROM_inst_N9,
      I3 => PC_inst_PC_reg(1),
      O => Instructions_ROM_inst_data_out_9_mux00001_89
    );
  Instructions_ROM_inst_data_out_9_mux0000_f5 : MUXF5
    port map (
      I0 => Instructions_ROM_inst_data_out_9_mux00001_89,
      I1 => Instructions_ROM_inst_data_out_9_mux0000,
      S => PC_inst_PC_reg(2),
      O => instruction_9_Q
    );
  Decoder_Controller_inst_alu2_0_2 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N91,
      I1 => Decoder_Controller_inst_N02,
      I2 => instruction_12_Q,
      I3 => N90,
      O => Decoder_Controller_inst_alu2(0)
    );
  Decoder_Controller_inst_alu2_0_3 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => N90,
      I2 => Rs2_data(0),
      I3 => N91,
      O => Decoder_Controller_inst_alu2_0_1_66
    );
  Decoder_Controller_inst_alu2_0_f5 : MUXF5
    port map (
      I0 => Decoder_Controller_inst_alu2_0_1_66,
      I1 => Decoder_Controller_inst_alu2(0),
      S => instruction_13_Q,
      O => operand_2_0_OBUF_427
    );
  Instructions_ROM_inst_data_out_11_mux00002_SW0 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(7),
      LO => N236,
      O => N18
    );
  Instructions_ROM_inst_data_out_11_mux00001_SW0 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(7),
      LO => N237,
      O => N20
    );
  Decoder_Controller_inst_alu2_2_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(2),
      LO => N238,
      O => N22
    );
  Decoder_Controller_inst_alu2_4_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(4),
      LO => N239,
      O => N24
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
      LO => N240,
      O => N25
    );
  Decoder_Controller_inst_alu2_3_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(3),
      LO => N241,
      O => N27
    );
  Decoder_Controller_inst_alu2_3_SW1 : LUT4_D
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => instruction_15_Q,
      I1 => instruction_12_Q,
      I2 => instruction_13_Q,
      I3 => Rs2_data(3),
      LO => N242,
      O => N28
    );
  Decoder_Controller_inst_alu1_cmp_eq0012826 : LUT4_L
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => Rs1_data(0),
      I1 => Rs2_data(0),
      I2 => Rs1_data(1),
      I3 => Rs2_data(1),
      LO => Decoder_Controller_inst_alu1_cmp_eq0012826_61
    );
  Decoder_Controller_inst_alu2_5_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(5),
      LO => N243,
      O => N35
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
      LO => N244,
      O => N36
    );
  ALU_inst_computed_result_mux0000_6_14 : LUT4_L
    generic map(
      INIT => X"E0C0"
    )
    port map (
      I0 => ALU_inst_computed_result_mux0000_0_8,
      I1 => ALU_inst_N6,
      I2 => operand_1_6_OBUF_417,
      I3 => operand_2_6_OBUF_433,
      LO => ALU_inst_computed_result_mux0000_6_14_37
    );
  Instructions_ROM_inst_data_out_5_mux000011 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => PC_inst_PC_reg(0),
      I1 => PC_inst_PC_reg(1),
      LO => N245,
      O => Instructions_ROM_inst_N0
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
      LO => N246,
      O => N57
    );
  Decoder_Controller_inst_alu1_0_111 : LUT4_D
    generic map(
      INIT => X"2345"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Decoder_Controller_inst_Mcompar_alu1_cmp_lt0000_cy(7),
      I3 => Decoder_Controller_inst_alu1_cmp_eq0012,
      LO => N247,
      O => Decoder_Controller_inst_N02
    );
  Instructions_ROM_inst_Mrom_address_in_rom000031 : LUT4_L
    generic map(
      INIT => X"FCF8"
    )
    port map (
      I0 => PC_inst_PC_reg_1_1_188,
      I1 => PC_inst_PC_reg_2_1_190,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      LO => Instructions_ROM_inst_Mrom_address_in_rom00003
    );
  Instructions_ROM_inst_Mrom_address_in_rom000021 : LUT4_D
    generic map(
      INIT => X"0F1F"
    )
    port map (
      I0 => PC_inst_PC_reg_2_1_190,
      I1 => PC_inst_PC_reg_1_1_188,
      I2 => PC_inst_PC_reg(3),
      I3 => PC_inst_PC_reg(0),
      LO => N248,
      O => Instructions_ROM_inst_Mrom_address_in_rom00002
    );
  Decoder_Controller_inst_alu2_1_SW0_SW0 : LUT3_D
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instruction_12_Q,
      I1 => instruction_13_Q,
      I2 => Rs2_data(1),
      LO => N249,
      O => N59
    );
  Instructions_ROM_inst_data_out_6_mux0000_SW0 : LUT3_L
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => PC_inst_PC_reg(2),
      I1 => PC_inst_PC_reg(1),
      I2 => PC_inst_PC_reg(0),
      LO => N16
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(3),
      I1 => PC_inst_PC_reg(2),
      I2 => N126,
      I3 => N20,
      LO => N10
    );
  Decoder_Controller_inst_alu2_0_1 : LUT4_D
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => N132,
      I2 => N131,
      I3 => Decoder_Controller_inst_N02,
      LO => N250,
      O => Decoder_Controller_inst_N2
    );
  Decoder_Controller_inst_alu2_0_1_SW4 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => Decoder_Controller_inst_imval(6),
      I1 => N132,
      I2 => Decoder_Controller_inst_alu2_or0000,
      I3 => Rs2_data(7),
      LO => N164
    );
  Instructions_ROM_inst_data_out_5_mux0000_SW1_SW1 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PC_inst_PC_reg(4),
      I1 => PC_inst_PC_reg(5),
      I2 => PC_inst_PC_reg(6),
      I3 => PC_inst_PC_reg(7),
      LO => N184
    );
  Decoder_Controller_inst_alu2_0_1_SW5 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_4_Q,
      I1 => N131,
      I2 => N25,
      I3 => N24,
      LO => N196
    );
  Decoder_Controller_inst_alu2_0_1_SW9 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => instruction_5_Q,
      I1 => N131,
      I2 => N36,
      I3 => N35,
      LO => N202
    );
  Instructions_ROM_inst_data_out_11_cmp_eq00041 : LUT4_D
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Instructions_ROM_inst_N9,
      I1 => PC_inst_PC_reg(0),
      I2 => PC_inst_PC_reg(2),
      I3 => PC_inst_PC_reg(1),
      LO => N251,
      O => instruction_0_Q
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
      LO => N252,
      O => Decoder_Controller_inst_alu2_or0000
    );
  Decoder_Controller_inst_alu2_0_1_SW0 : LUT4_D
    generic map(
      INIT => X"10B0"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => instruction_12_Q,
      I3 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      LO => N253,
      O => N45
    );
  Decoder_Controller_inst_alu1_cmp_eq001411 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => instruction_15_Q,
      LO => N254,
      O => Decoder_Controller_inst_alu1_cmp_eq0014
    );
  Decoder_Controller_inst_new_pc_0_3_SW01 : LUT3_L
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => Decoder_Controller_inst_alu1_cmp_eq0012,
      I1 => instruction_13_Q,
      I2 => instruction_12_Q,
      LO => N7
    );
  ALU_inst_computed_result_mux0000_0_131 : LUT3_L
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_15_Q,
      I2 => operand_2_0_OBUF_427,
      LO => ALU_inst_computed_result_mux0000_0_13
    );
  Decoder_Controller_inst_alu2_0_1_SW1_SW11 : LUT3_D
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => instruction_13_Q,
      I1 => instruction_12_Q,
      I2 => instruction_15_Q,
      LO => N255,
      O => N131
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
      LO => N256,
      O => Decoder_Controller_inst_N1
    );
  Decoder_Controller_inst_r2_addr_or00001_1 : LUT3_L
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => Instructions_ROM_inst_Mrom_address_in_rom0000112_2_f5_73,
      I1 => instruction_12_Q,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_78,
      LO => Decoder_Controller_inst_r2_addr_or00001_70
    );
  Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_1 : LUT3_D
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PC_inst_PC_reg(7),
      I1 => Instructions_ROM_inst_Mrom_address_in_rom000051_4,
      I2 => Instructions_ROM_inst_Mrom_address_in_rom000021_3,
      LO => N257,
      O => Instructions_ROM_inst_Mrom_address_in_rom000081_2_f51_78
    );

end Structure;

