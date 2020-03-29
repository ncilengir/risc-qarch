onerror {quit -f}
vlib work
vlog -work work Control_Unit.vo
vlog -work work Control_Unit.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Control_Unit_vlg_vec_tst
vcd file -direction Control_Unit.msim.vcd
vcd add -internal Control_Unit_vlg_vec_tst/*
vcd add -internal Control_Unit_vlg_vec_tst/i1/*
add wave /*
run -all
