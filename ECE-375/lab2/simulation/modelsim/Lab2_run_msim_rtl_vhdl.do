transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {A:/OneDrive/School/College/Junior/Fa23/Digi 2/lab2/Lab2.vhd}
vcom -93 -work work {A:/OneDrive/School/College/Junior/Fa23/Digi 2/lab2/Timer.vhd}
vcom -93 -work work {A:/OneDrive/School/College/Junior/Fa23/Digi 2/lab2/FSM2.vhd}

