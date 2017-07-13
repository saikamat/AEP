vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_8
vlib msim/blk_mem_gen_v8_3_1
vlib msim/axi_bram_ctrl_v4_0_6
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_7
vlib msim/fifo_generator_v13_0_1
vlib msim/axi_data_fifo_v2_1_6
vlib msim/axi_crossbar_v2_1_8
vlib msim/axi_protocol_converter_v2_1_7

vmap xil_defaultlib msim/xil_defaultlib
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_8 msim/proc_sys_reset_v5_0_8
vmap blk_mem_gen_v8_3_1 msim/blk_mem_gen_v8_3_1
vmap axi_bram_ctrl_v4_0_6 msim/axi_bram_ctrl_v4_0_6
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_7 msim/axi_register_slice_v2_1_7
vmap fifo_generator_v13_0_1 msim/fifo_generator_v13_0_1
vmap axi_data_fifo_v2_1_6 msim/axi_data_fifo_v2_1_6
vmap axi_crossbar_v2_1_8 msim/axi_crossbar_v2_1_8
vmap axi_protocol_converter_v2_1_7 msim/axi_protocol_converter_v2_1_7

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ipshared/xilinx.com/zs_func_v1_0/hdl/verilog/zs_func_CRTL_BUS_s_axi.v" \
"../../../bd/design_1/ipshared/xilinx.com/zs_func_v1_0/hdl/verilog/zs_func.v" \
"../../../bd/design_1/ip/design_1_zs_func_0_0/sim/design_1_zs_func_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_8 -64 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/sim/design_1_rst_processing_system7_0_100M_0.vhd" \

vcom -work blk_mem_gen_v8_3_1 -64 -93 \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_zs_func_0_bram_0/sim/design_1_zs_func_0_bram_0.vhd" \

vcom -work axi_bram_ctrl_v4_0_6 -64 -93 \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_funcs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/coregen_comp_defs.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite_if.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit_64.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ecc_gen.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/lite_ecc_reg.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_lite.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/sng_port_arb.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/ua_narrow.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wrap_brst.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/rd_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/wr_chnl.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/full_axi.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl_top.vhd" \
"../../../ipstatic/axi_bram_ctrl_v4_0/hdl/vhdl/axi_bram_ctrl.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_7 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vcom -work fifo_generator_v13_0_1 -64 -93 \
"../../../ipstatic/fifo_generator_v13_0/simulation/fifo_generator_vhdl_beh.vhd" \
"../../../ipstatic/fifo_generator_v13_0/hdl/fifo_generator_v13_0_rfs.vhd" \

vlog -work axi_data_fifo_v2_1_6 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_8 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_zs_func_0_bram_0_0/sim/design_1_zs_func_0_bram_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work axi_protocol_converter_v2_1_7 -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../../ZS_BRAM_F_V1.srcs/sources_1/bd/design_1/ipshared/xilinx.com/zs_func_v1_0/drivers/zs_func_v1_0/src" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

