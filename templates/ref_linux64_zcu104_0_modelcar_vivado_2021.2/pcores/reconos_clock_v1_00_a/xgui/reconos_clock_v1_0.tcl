# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK0_CLKFBOUT_MULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK0_CLKOUT_DIVIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK0_DIVCLK_DIVIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK1_CLKFBOUT_MULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK1_CLKOUT_DIVIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK1_DIVCLK_DIVIDE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLKIN_PERIOD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_CLOCKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_BASEADDR { PARAM_VALUE.C_BASEADDR } {
	# Procedure called to update C_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_BASEADDR { PARAM_VALUE.C_BASEADDR } {
	# Procedure called to validate C_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_CLK0_CLKFBOUT_MULT { PARAM_VALUE.C_CLK0_CLKFBOUT_MULT } {
	# Procedure called to update C_CLK0_CLKFBOUT_MULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK0_CLKFBOUT_MULT { PARAM_VALUE.C_CLK0_CLKFBOUT_MULT } {
	# Procedure called to validate C_CLK0_CLKFBOUT_MULT
	return true
}

proc update_PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE { PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE } {
	# Procedure called to update C_CLK0_CLKOUT_DIVIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE { PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE } {
	# Procedure called to validate C_CLK0_CLKOUT_DIVIDE
	return true
}

proc update_PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE { PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE } {
	# Procedure called to update C_CLK0_DIVCLK_DIVIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE { PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE } {
	# Procedure called to validate C_CLK0_DIVCLK_DIVIDE
	return true
}

proc update_PARAM_VALUE.C_CLK1_CLKFBOUT_MULT { PARAM_VALUE.C_CLK1_CLKFBOUT_MULT } {
	# Procedure called to update C_CLK1_CLKFBOUT_MULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK1_CLKFBOUT_MULT { PARAM_VALUE.C_CLK1_CLKFBOUT_MULT } {
	# Procedure called to validate C_CLK1_CLKFBOUT_MULT
	return true
}

proc update_PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE { PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE } {
	# Procedure called to update C_CLK1_CLKOUT_DIVIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE { PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE } {
	# Procedure called to validate C_CLK1_CLKOUT_DIVIDE
	return true
}

proc update_PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE { PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE } {
	# Procedure called to update C_CLK1_DIVCLK_DIVIDE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE { PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE } {
	# Procedure called to validate C_CLK1_DIVCLK_DIVIDE
	return true
}

proc update_PARAM_VALUE.C_CLKIN_PERIOD { PARAM_VALUE.C_CLKIN_PERIOD } {
	# Procedure called to update C_CLKIN_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLKIN_PERIOD { PARAM_VALUE.C_CLKIN_PERIOD } {
	# Procedure called to validate C_CLKIN_PERIOD
	return true
}

proc update_PARAM_VALUE.C_HIGHADDR { PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to update C_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_HIGHADDR { PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to validate C_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_NUM_CLOCKS { PARAM_VALUE.C_NUM_CLOCKS } {
	# Procedure called to update C_NUM_CLOCKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_CLOCKS { PARAM_VALUE.C_NUM_CLOCKS } {
	# Procedure called to validate C_NUM_CLOCKS
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_BASEADDR { MODELPARAM_VALUE.C_BASEADDR PARAM_VALUE.C_BASEADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_BASEADDR}] ${MODELPARAM_VALUE.C_BASEADDR}
}

proc update_MODELPARAM_VALUE.C_HIGHADDR { MODELPARAM_VALUE.C_HIGHADDR PARAM_VALUE.C_HIGHADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_HIGHADDR}] ${MODELPARAM_VALUE.C_HIGHADDR}
}

proc update_MODELPARAM_VALUE.C_NUM_CLOCKS { MODELPARAM_VALUE.C_NUM_CLOCKS PARAM_VALUE.C_NUM_CLOCKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_CLOCKS}] ${MODELPARAM_VALUE.C_NUM_CLOCKS}
}

proc update_MODELPARAM_VALUE.C_CLKIN_PERIOD { MODELPARAM_VALUE.C_CLKIN_PERIOD PARAM_VALUE.C_CLKIN_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLKIN_PERIOD}] ${MODELPARAM_VALUE.C_CLKIN_PERIOD}
}

proc update_MODELPARAM_VALUE.C_CLK0_CLKFBOUT_MULT { MODELPARAM_VALUE.C_CLK0_CLKFBOUT_MULT PARAM_VALUE.C_CLK0_CLKFBOUT_MULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK0_CLKFBOUT_MULT}] ${MODELPARAM_VALUE.C_CLK0_CLKFBOUT_MULT}
}

proc update_MODELPARAM_VALUE.C_CLK0_DIVCLK_DIVIDE { MODELPARAM_VALUE.C_CLK0_DIVCLK_DIVIDE PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK0_DIVCLK_DIVIDE}] ${MODELPARAM_VALUE.C_CLK0_DIVCLK_DIVIDE}
}

proc update_MODELPARAM_VALUE.C_CLK0_CLKOUT_DIVIDE { MODELPARAM_VALUE.C_CLK0_CLKOUT_DIVIDE PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK0_CLKOUT_DIVIDE}] ${MODELPARAM_VALUE.C_CLK0_CLKOUT_DIVIDE}
}

proc update_MODELPARAM_VALUE.C_CLK1_CLKFBOUT_MULT { MODELPARAM_VALUE.C_CLK1_CLKFBOUT_MULT PARAM_VALUE.C_CLK1_CLKFBOUT_MULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK1_CLKFBOUT_MULT}] ${MODELPARAM_VALUE.C_CLK1_CLKFBOUT_MULT}
}

proc update_MODELPARAM_VALUE.C_CLK1_DIVCLK_DIVIDE { MODELPARAM_VALUE.C_CLK1_DIVCLK_DIVIDE PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK1_DIVCLK_DIVIDE}] ${MODELPARAM_VALUE.C_CLK1_DIVCLK_DIVIDE}
}

proc update_MODELPARAM_VALUE.C_CLK1_CLKOUT_DIVIDE { MODELPARAM_VALUE.C_CLK1_CLKOUT_DIVIDE PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK1_CLKOUT_DIVIDE}] ${MODELPARAM_VALUE.C_CLK1_CLKOUT_DIVIDE}
}

