onerror {quit -f}
vlib work
vlog -work work RIPPER.vo
vlog -work work RIPPER.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RIPPER_vlg_vec_tst
vcd file -direction RIPPER.msim.vcd
vcd add -internal RIPPER_vlg_vec_tst/*
vcd add -internal RIPPER_vlg_vec_tst/i1/*
add wave /*
run -all
