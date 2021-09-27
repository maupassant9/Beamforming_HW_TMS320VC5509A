transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/Parallel2Serial4OneAD7265New.v}
vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/DelayDrv.v}
vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/ad7864Drv.v}
vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/pll.v}
vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/cnter8bits.v}

vlog -vlog01compat -work work +incdir+D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv {D:/otherProjects/Beamforming/Beamforming_HW_TMS320VC5509A/FW/CPLD/AD7864Drv/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclone_ver -L rtl_work -L work -voptargs="+acc"  mytestbench

add wave *
view structure
view signals
run -all
