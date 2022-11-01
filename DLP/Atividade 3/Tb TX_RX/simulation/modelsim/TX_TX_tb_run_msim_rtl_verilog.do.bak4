transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/SIPO.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/RX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/FFJK.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/FFD.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/demutex.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/RX/contador.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/TX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/TX/TX.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/TX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/TX/RegParSer.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/TX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/TX/mutex.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX/ATV2-Henrique/TX_RX {C:/Users/Henrique/Desktop/Tb TX_RX/ATV2-Henrique/TX_RX/TX_RX.v}

vlog -vlog01compat -work work +incdir+C:/Users/Henrique/Desktop/Tb\ TX_RX {C:/Users/Henrique/Desktop/Tb TX_RX/RX_TX_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  RX_TX_tb

add wave *
view structure
view signals
run 1500 ns
