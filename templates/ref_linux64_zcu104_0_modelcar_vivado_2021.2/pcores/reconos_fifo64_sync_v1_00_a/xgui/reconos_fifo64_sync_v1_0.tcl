# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_FIFO_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIFO_AEMPTY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIFO_AFULL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIFO_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_ALMOST" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_FILL_REMM" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_FIFO_ADDR_WIDTH { PARAM_VALUE.C_FIFO_ADDR_WIDTH } {
	# Procedure called to update C_FIFO_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_ADDR_WIDTH { PARAM_VALUE.C_FIFO_ADDR_WIDTH } {
	# Procedure called to validate C_FIFO_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FIFO_AEMPTY { PARAM_VALUE.C_FIFO_AEMPTY } {
	# Procedure called to update C_FIFO_AEMPTY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_AEMPTY { PARAM_VALUE.C_FIFO_AEMPTY } {
	# Procedure called to validate C_FIFO_AEMPTY
	return true
}

proc update_PARAM_VALUE.C_FIFO_AFULL { PARAM_VALUE.C_FIFO_AFULL } {
	# Procedure called to update C_FIFO_AFULL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_AFULL { PARAM_VALUE.C_FIFO_AFULL } {
	# Procedure called to validate C_FIFO_AFULL
	return true
}

proc update_PARAM_VALUE.C_FIFO_DATA_WIDTH { PARAM_VALUE.C_FIFO_DATA_WIDTH } {
	# Procedure called to update C_FIFO_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_DATA_WIDTH { PARAM_VALUE.C_FIFO_DATA_WIDTH } {
	# Procedure called to validate C_FIFO_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_USE_ALMOST { PARAM_VALUE.C_USE_ALMOST } {
	# Procedure called to update C_USE_ALMOST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_ALMOST { PARAM_VALUE.C_USE_ALMOST } {
	# Procedure called to validate C_USE_ALMOST
	return true
}

proc update_PARAM_VALUE.C_USE_FILL_REMM { PARAM_VALUE.C_USE_FILL_REMM } {
	# Procedure called to update C_USE_FILL_REMM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_FILL_REMM { PARAM_VALUE.C_USE_FILL_REMM } {
	# Procedure called to validate C_USE_FILL_REMM
	return true
}


proc update_MODELPARAM_VALUE.C_FIFO_DATA_WIDTH { MODELPARAM_VALUE.C_FIFO_DATA_WIDTH PARAM_VALUE.C_FIFO_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_DATA_WIDTH}] ${MODELPARAM_VALUE.C_FIFO_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_FIFO_ADDR_WIDTH { MODELPARAM_VALUE.C_FIFO_ADDR_WIDTH PARAM_VALUE.C_FIFO_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_FIFO_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_USE_ALMOST { MODELPARAM_VALUE.C_USE_ALMOST PARAM_VALUE.C_USE_ALMOST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_ALMOST}] ${MODELPARAM_VALUE.C_USE_ALMOST}
}

proc update_MODELPARAM_VALUE.C_USE_FILL_REMM { MODELPARAM_VALUE.C_USE_FILL_REMM PARAM_VALUE.C_USE_FILL_REMM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_FILL_REMM}] ${MODELPARAM_VALUE.C_USE_FILL_REMM}
}

proc update_MODELPARAM_VALUE.C_FIFO_AEMPTY { MODELPARAM_VALUE.C_FIFO_AEMPTY PARAM_VALUE.C_FIFO_AEMPTY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_AEMPTY}] ${MODELPARAM_VALUE.C_FIFO_AEMPTY}
}

proc update_MODELPARAM_VALUE.C_FIFO_AFULL { MODELPARAM_VALUE.C_FIFO_AFULL PARAM_VALUE.C_FIFO_AFULL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_AFULL}] ${MODELPARAM_VALUE.C_FIFO_AFULL}
}

