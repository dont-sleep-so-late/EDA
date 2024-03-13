//altpll bandwidth_type="AUTO" CBX_DECLARE_ALL_CONNECTED_PORTS="OFF" clk0_divide_by=2 clk0_duty_cycle=50 clk0_multiply_by=1 clk0_phase_shift="0" clk1_divide_by=5 clk1_duty_cycle=50 clk1_multiply_by=1 clk1_phase_shift="0" clk2_divide_by=50 clk2_duty_cycle=50 clk2_multiply_by=1 clk2_phase_shift="0" compensate_clock="CLK0" device_family="Cyclone II" inclk0_input_frequency=20000 intended_device_family="Cyclone IV GX" operation_mode="normal" pll_type="AUTO" port_clk0="PORT_USED" port_clk1="PORT_USED" port_clk2="PORT_USED" port_clk3="PORT_UNUSED" port_clk4="PORT_UNUSED" port_clk5="PORT_UNUSED" port_extclk0="PORT_UNUSED" port_extclk1="PORT_UNUSED" port_extclk2="PORT_UNUSED" port_extclk3="PORT_UNUSED" port_inclk1="PORT_UNUSED" port_phasecounterselect="PORT_UNUSED" port_phasedone="PORT_UNUSED" port_scandata="PORT_UNUSED" port_scandataout="PORT_UNUSED" self_reset_on_loss_lock="OFF" width_clock=5 areset clk inclk locked
//VERSION_BEGIN 9.1 cbx_altpll 2009:10:21:21:22:16:SJ cbx_cycloneii 2009:10:21:21:22:16:SJ cbx_mgl 2009:10:21:21:37:49:SJ cbx_stratixii 2009:10:21:21:22:16:SJ cbx_util_mgl 2009:10:21:21:22:16:SJ  VERSION_END
//CBXI_INSTANCE_NAME="timeCounter_pll_cotroller_inst3_altpll_altpll_component"
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 1991-2009 Altera Corporation
//  Your use of Altera Corporation's design tools, logic functions 
//  and other software and tools, and its AMPP partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Altera Program License 
//  Subscription Agreement, Altera MegaCore Function License 
//  Agreement, or other applicable license agreement, including, 
//  without limitation, that your use is for the sole purpose of 
//  programming logic devices manufactured by Altera and sold by 
//  Altera or its authorized distributors.  Please refer to the 
//  applicable agreement for further details.



//synthesis_resources = cycloneii_pll 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  pll_cotroller_altpll
	( 
	areset,
	clk,
	inclk,
	locked) /* synthesis synthesis_clearbox=1 */;
	input   areset;
	output   [4:0]  clk;
	input   [1:0]  inclk;
	output   locked;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   areset;
	tri0   [1:0]  inclk;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire  [2:0]   wire_pll1_clk;
	wire  wire_pll1_locked;

	cycloneii_pll   pll1
	( 
	.areset(areset),
	.clk(wire_pll1_clk),
	.inclk(inclk),
	.locked(wire_pll1_locked),
	.testdownout(),
	.testupout()
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_off
	`endif
	,
	.clkswitch(1'b0),
	.ena(1'b1),
	.pfdena(1'b1)
	`ifndef FORMAL_VERIFICATION
	// synopsys translate_on
	`endif
	// synopsys translate_off
	,
	.sbdin(1'b0),
	.sbdout(),
	.testclearlock(1'b0)
	// synopsys translate_on
	);
	defparam
		pll1.bandwidth_type = "auto",
		pll1.clk0_divide_by = 2,
		pll1.clk0_duty_cycle = 50,
		pll1.clk0_multiply_by = 1,
		pll1.clk0_phase_shift = "0",
		pll1.clk1_divide_by = 5,
		pll1.clk1_duty_cycle = 50,
		pll1.clk1_multiply_by = 1,
		pll1.clk1_phase_shift = "0",
		pll1.clk2_divide_by = 50,
		pll1.clk2_duty_cycle = 50,
		pll1.clk2_multiply_by = 1,
		pll1.clk2_phase_shift = "0",
		pll1.compensate_clock = "clk0",
		pll1.inclk0_input_frequency = 20000,
		pll1.operation_mode = "normal",
		pll1.pll_type = "auto",
		pll1.lpm_type = "cycloneii_pll";
	assign
		clk = {1{wire_pll1_clk}},
		locked = wire_pll1_locked;
	initial/*synthesis enable_verilog_initial_construct*/
 	begin
		$display("Error: MGL_INTERNAL_ERROR: Port object altpll|clk of width  5 is being assigned the port altpll|stratixii_pll inst pll1|clk of width 3 which is illegal, as port widths dont match nor are multiples. CAUSE : The port widths are mismatched in the mentioned assignment. The port widths of the connected ports should match or the LHS port width should be a multiple of the RHS port width. ACTION : Check the port widths of the connected ports. Logical operation results in a port width equal to the larger of the two ports and concatenation results in a port width equal to the sum of the individual port widths. Double check for such cases.");
	end
endmodule //pll_cotroller_altpll
//ERROR FILE
