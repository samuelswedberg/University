transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab1/Add_Sub/add_sub.vhd}

