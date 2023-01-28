transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/laris/Documents/GitHub/Projeto_Testbench_MIC/codes/PROJETO_MIC.vhd}
vcom -93 -work work {C:/Users/laris/Documents/GitHub/Projeto_Testbench_MIC/codes/MIC_Banck_Registers.vhd}

vcom -93 -work work {C:/Users/laris/Documents/GitHub/Projeto_Testbench_MIC/codes/tb_projeto_mic.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  PROJETO_MIC

add wave *
view structure
view signals
run 30 ms
