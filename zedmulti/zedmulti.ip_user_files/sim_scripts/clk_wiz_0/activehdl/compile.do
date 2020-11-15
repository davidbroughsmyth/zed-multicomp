vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"D:/xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"D:/xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../zedmulti.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../zedmulti.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"
