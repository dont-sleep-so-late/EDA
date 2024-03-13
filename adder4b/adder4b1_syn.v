// megafunction wizard: %LPM_ADD_SUB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_add_sub 

// ============================================================
// File Name: adder4b1.v
// Megafunction Name(s):
// 			lpm_add_sub
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 9.1 Build 222 10/21/2009 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2009 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


//lpm_add_sub DEVICE_FAMILY="Cyclone II" LPM_DIRECTION="ADD" LPM_REPRESENTATION="UNSIGNED" LPM_WIDTH=4 ONE_INPUT_IS_CONSTANT="NO" cin cout dataa datab result
//VERSION_BEGIN 9.1 cbx_cycloneii 2009:10:21:21:22:16:SJ cbx_lpm_add_sub 2009:10:21:21:22:16:SJ cbx_mgl 2009:10:21:21:37:49:SJ cbx_stratix 2009:10:21:21:22:16:SJ cbx_stratixii 2009:10:21:21:22:16:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463


//synthesis_resources = lut 4 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  adder4b1_add_sub
	( 
	cin,
	cout,
	dataa,
	datab,
	result) /* synthesis synthesis_clearbox=1 */;
	input   cin;
	output   cout;
	input   [3:0]  dataa;
	input   [3:0]  datab;
	output   [3:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri0   [3:0]  dataa;
	tri0   [3:0]  datab;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[5:0]	wire_result_int;

	assign
		wire_result_int = {dataa, cin} + {datab, cin};
	assign
		result = wire_result_int[4:1],
		cout = wire_result_int[5:5];
endmodule //adder4b1_add_sub
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module adder4b1 (
	cin,
	dataa,
	datab,
	cout,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  cin;
	input	[3:0]  dataa;
	input	[3:0]  datab;
	output	  cout;
	output	[3:0]  result;

	wire  sub_wire0;
	wire [3:0] sub_wire1;
	wire  cout = sub_wire0;
	wire [3:0] result = sub_wire1[3:0];

	adder4b1_add_sub	adder4b1_add_sub_component (
				.dataa (dataa),
				.datab (datab),
				.cin (cin),
				.cout (sub_wire0),
				.result (sub_wire1));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: CarryIn NUMERIC "1"
// Retrieval info: PRIVATE: CarryOut NUMERIC "1"
// Retrieval info: PRIVATE: ConstantA NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: Function NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: Latency NUMERIC "0"
// Retrieval info: PRIVATE: Overflow NUMERIC "0"
// Retrieval info: PRIVATE: RadixA NUMERIC "10"
// Retrieval info: PRIVATE: RadixB NUMERIC "10"
// Retrieval info: PRIVATE: Representation NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: ValidCtA NUMERIC "0"
// Retrieval info: PRIVATE: ValidCtB NUMERIC "0"
// Retrieval info: PRIVATE: WhichConstant NUMERIC "0"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: nBit NUMERIC "4"
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "ADD"
// Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=NO,CIN_USED=YES"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_ADD_SUB"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
// Retrieval info: USED_PORT: cin 0 0 0 0 INPUT NODEFVAL cin
// Retrieval info: USED_PORT: cout 0 0 0 0 OUTPUT NODEFVAL cout
// Retrieval info: USED_PORT: dataa 0 0 4 0 INPUT NODEFVAL dataa[3..0]
// Retrieval info: USED_PORT: datab 0 0 4 0 INPUT NODEFVAL datab[3..0]
// Retrieval info: USED_PORT: result 0 0 4 0 OUTPUT NODEFVAL result[3..0]
// Retrieval info: CONNECT: result 0 0 4 0 @result 0 0 4 0
// Retrieval info: CONNECT: @dataa 0 0 4 0 dataa 0 0 4 0
// Retrieval info: CONNECT: @datab 0 0 4 0 datab 0 0 4 0
// Retrieval info: CONNECT: @cin 0 0 0 0 cin 0 0 0 0
// Retrieval info: CONNECT: cout 0 0 0 0 @cout 0 0 0 0
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1.tdf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1.inc TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1_inst.tdf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1_waveforms.html TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1_wave*.jpg FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL adder4b1_syn.v TRUE
// Retrieval info: LIB_FILE: lpm
