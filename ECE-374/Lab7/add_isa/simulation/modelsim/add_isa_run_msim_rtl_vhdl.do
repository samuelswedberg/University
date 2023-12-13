transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/trin.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/regN.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/mux2to1.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/fulladd.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/dec2to4.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/components.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/regM.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/reg1.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/mux1to1.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/pipeline.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/ripple_carry.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/register_file.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/mux4to1.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/instruction_memory.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/instruction_decode.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/dec4to16.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/ALU.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/data_memory.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/forwarding_unit.vhd}
vcom -93 -work work {C:/Users/Reds2/OneDrive/School/College/Junior/Fa23/Comp Org/Lab7/add_isa/hazarding_unit.vhd}

