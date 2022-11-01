transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/statemachine.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/TX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/SIPO_register.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/RX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/ram_mem.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/PISO_register.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/JK_FF.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/D_FF.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/device.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/rom_mem.v}

vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final {C:/Users/Henrique/Desktop/Trabalho_Final-20220223T011117Z-001/Trabalho_Final/device_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  device_tb

add wave *
view structure
view signals
run 3800 ns
