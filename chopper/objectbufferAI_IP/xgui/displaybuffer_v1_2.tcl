# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "OBJECT_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OBJE_SAYISI" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIXEL_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UPSIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to update OBJECT_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OBJECT_SIZE { PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to validate OBJECT_SIZE
	return true
}

proc update_PARAM_VALUE.OBJE_SAYISI { PARAM_VALUE.OBJE_SAYISI } {
	# Procedure called to update OBJE_SAYISI when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OBJE_SAYISI { PARAM_VALUE.OBJE_SAYISI } {
	# Procedure called to validate OBJE_SAYISI
	return true
}

proc update_PARAM_VALUE.PIXEL_SIZE { PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to update PIXEL_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIXEL_SIZE { PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to validate PIXEL_SIZE
	return true
}

proc update_PARAM_VALUE.UPSIZE { PARAM_VALUE.UPSIZE } {
	# Procedure called to update UPSIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UPSIZE { PARAM_VALUE.UPSIZE } {
	# Procedure called to validate UPSIZE
	return true
}


proc update_MODELPARAM_VALUE.OBJECT_SIZE { MODELPARAM_VALUE.OBJECT_SIZE PARAM_VALUE.OBJECT_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OBJECT_SIZE}] ${MODELPARAM_VALUE.OBJECT_SIZE}
}

proc update_MODELPARAM_VALUE.OBJE_SAYISI { MODELPARAM_VALUE.OBJE_SAYISI PARAM_VALUE.OBJE_SAYISI } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OBJE_SAYISI}] ${MODELPARAM_VALUE.OBJE_SAYISI}
}

proc update_MODELPARAM_VALUE.PIXEL_SIZE { MODELPARAM_VALUE.PIXEL_SIZE PARAM_VALUE.PIXEL_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIXEL_SIZE}] ${MODELPARAM_VALUE.PIXEL_SIZE}
}

proc update_MODELPARAM_VALUE.UPSIZE { MODELPARAM_VALUE.UPSIZE PARAM_VALUE.UPSIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UPSIZE}] ${MODELPARAM_VALUE.UPSIZE}
}

