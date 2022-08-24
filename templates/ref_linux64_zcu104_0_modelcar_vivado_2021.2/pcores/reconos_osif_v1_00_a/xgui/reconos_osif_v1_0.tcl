# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_NUM_HWTS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OSIF_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OSIF_LENGTH_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_OSIF_OP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_NUM_HWTS { PARAM_VALUE.C_NUM_HWTS } {
	# Procedure called to update C_NUM_HWTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_HWTS { PARAM_VALUE.C_NUM_HWTS } {
	# Procedure called to validate C_NUM_HWTS
	return true
}

proc update_PARAM_VALUE.C_OSIF_DATA_WIDTH { PARAM_VALUE.C_OSIF_DATA_WIDTH } {
	# Procedure called to update C_OSIF_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OSIF_DATA_WIDTH { PARAM_VALUE.C_OSIF_DATA_WIDTH } {
	# Procedure called to validate C_OSIF_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_OSIF_LENGTH_WIDTH { PARAM_VALUE.C_OSIF_LENGTH_WIDTH } {
	# Procedure called to update C_OSIF_LENGTH_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OSIF_LENGTH_WIDTH { PARAM_VALUE.C_OSIF_LENGTH_WIDTH } {
	# Procedure called to validate C_OSIF_LENGTH_WIDTH
	return true
}

proc update_PARAM_VALUE.C_OSIF_OP_WIDTH { PARAM_VALUE.C_OSIF_OP_WIDTH } {
	# Procedure called to update C_OSIF_OP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_OSIF_OP_WIDTH { PARAM_VALUE.C_OSIF_OP_WIDTH } {
	# Procedure called to validate C_OSIF_OP_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_NUM_HWTS { MODELPARAM_VALUE.C_NUM_HWTS PARAM_VALUE.C_NUM_HWTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_HWTS}] ${MODELPARAM_VALUE.C_NUM_HWTS}
}

proc update_MODELPARAM_VALUE.C_OSIF_DATA_WIDTH { MODELPARAM_VALUE.C_OSIF_DATA_WIDTH PARAM_VALUE.C_OSIF_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OSIF_DATA_WIDTH}] ${MODELPARAM_VALUE.C_OSIF_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_OSIF_LENGTH_WIDTH { MODELPARAM_VALUE.C_OSIF_LENGTH_WIDTH PARAM_VALUE.C_OSIF_LENGTH_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OSIF_LENGTH_WIDTH}] ${MODELPARAM_VALUE.C_OSIF_LENGTH_WIDTH}
}

proc update_MODELPARAM_VALUE.C_OSIF_OP_WIDTH { MODELPARAM_VALUE.C_OSIF_OP_WIDTH PARAM_VALUE.C_OSIF_OP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_OSIF_OP_WIDTH}] ${MODELPARAM_VALUE.C_OSIF_OP_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

