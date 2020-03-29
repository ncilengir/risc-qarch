onerror {exit -code 1}
vlib work
vlog -work work DEUARC_BUSYSTEM.vo
vlog -work work 2016510111_Nuri_Cilengir.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DEUARC_BUSYSTEM_vlg_vec_tst -voptargs="+acc"
vcd file -direction DEUARC_BUSYSTEM.msim.vcd
vcd add -internal DEUARC_BUSYSTEM_vlg_vec_tst/*
vcd add -internal DEUARC_BUSYSTEM_vlg_vec_tst/i1/*
run -all
quit -f
