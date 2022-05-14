//--------------------------------------------------------------------------//
// Title:       c5e_dev_golden_top.v                                        //
// Rev:         Rev 0.1                                                     //
//--------------------------------------------------------------------------//
// Description: Golden Top file contains Cyclone V E Dev Kit                //
//              Board pins and I/O Standards.                               //
//--------------------------------------------------------------------------//

//----------------------------------------------------------------------------
// Copyright 2012 Altera Corporation. All rights reserved.  Altera products
// are protected under numerous U.S. and foreign patents, maskwork rights,
// copyrights and other intellectual property laws.
//
// This reference design file, and your use thereof, is subject to and
// governed by the terms and conditions of the applicable Altera Reference
// Design License Agreement.  By using this reference design file, you
// indicate your acceptance of such terms and conditions between you and
// Altera Corporation.  In the event that you do not agree with such terms and
// conditions, you may not use the reference design file. Please promptly
// destroy any copies you have made.
//
// This reference design file being provided on an "as-is" basis and as an
// accommodation and therefore all warranties, representations or guarantees
// of any kind (whether express, implied or statutory) including, without
// limitation, warranties of merchantability, non-infringement, or fitness for
// a particular purpose, are specifically disclaimed.  By making this
// reference design file available, Altera expressly does not recommend,
// suggest or require that this reference design file be used in combination 
// with any other product not provided by Altera
//----------------------------------------------------------------------------

`timescale 1ps/1ns

module c5e_dev_golden_top(
	diff_clkin_top_125_p,
	diff_clkin_bot_125_p,
	clkin_50_fpga_right,
	clkin_50_fpga_top,
	clkout_sma,
	ddr3_ck_p,
	ddr3_ck_n,
	ddr3_dq,
	ddr3_dqs_p,
	ddr3_dqs_n,
	ddr3_dm,
	ddr3_a,
	ddr3_ba,
	ddr3_casn,
	ddr3_rasn,
	ddr3_cke,
	ddr3_csn,
	ddr3_odt,
	ddr3_wen,
	ddr3_rstn,
	ddr3_oct_rzq,
	lpddr2_ck_p,
	lpddr2_ck_n,
	lpddr2_dq,
	lpddr2_dqs_p,
	lpddr2_dqs_n,
	lpddr2_dm,
	lpddr2_a,
	lpddr2_cke,
	lpddr2_csn,
	lpddr2_oct_rzq,
	hsmc_sda,
	hsmc_scl,
	hsmc_prsntn,
	hsmc_clk_out0,
	hsmc_clk_in0,
	hsmc_clk_out_p,
//	hsmc_clk_out_n,
	hsmc_clk_in_p,
//	hsmc_clk_in_n,
	hsmc_d,
	hsmc_tx_d_p,
//	hsmc_tx_d_n,
	hsmc_rx_d_p,
//	hsmc_rx_d_n,
	hsmc_rx_led,
	hsmc_tx_led,
	eneta_intn,
	eneta_resetn,
	eneta_mdio,
	eneta_mdc,
	eneta_rx_er,
	eneta_tx_er,
	eneta_rx_col,
	eneta_rx_crs,
	eneta_tx_clk,
	eneta_tx_d,
	eneta_rx_d,
	eneta_gtx_clk,
	eneta_tx_en,
	eneta_rx_clk,
	eneta_rx_dv,
	enetb_intn,
	enetb_resetn,
	enetb_mdio,
	enetb_mdc,
	enetb_rx_er,
	enetb_tx_er,
	enetb_rx_col,
	enetb_rx_crs,
	enetb_tx_clk,
	enetb_tx_d,
	enetb_rx_d,
	enetb_gtx_clk,
	enetb_tx_en,
	enetb_rx_clk,
	enetb_rx_dv,
	fm_a,
	fm_d,
	flash_wen,
	flash_oen,
	flash_cen,
	flash_advn,
	flash_clk,
	flash_resetn,
	flash_rdybsyn,
	ssram_clk,
	ssram_oen,
	sram_cen,
	ssram_bwen,
	ssram_bwan,
	ssram_bwbn,
	ssram_adscn,
	ssram_adspn,
	ssram_zzn,
	ssram_advn,
//	ssram_dqpn,
	max5_csn,
	max5_wen,
	max5_oen, 
	max5_ben,
	max5_clk,
	usb_clk,
	usb_data,
	usb_addr,
	usb_scl,
	usb_sda,
	usb_resetn,
	usb_oen,
	usb_rdn,
	usb_wrn,
	usb_full,
	usb_empty,
	fx2_resetn,
	lcd_data,
	lcd_wen,
	lcd_csn,
	lcd_d_cn, 
	user_led,
	user_dipsw,
	dip_3p3V,
	user_pb,
	overtemp_fpga,
	header_p,
	header_n,
	header_d,
	eeprom_scl,
	eeprom_sda,
	uart_rxd,
	uart_rts,
	uart_txd,
	uart_cts,
	usb_uart_rstn,
	usb_uart_ri,
	usb_uart_dcd,
	usb_uart_dtr,
	usb_uart_dsr,
	usb_uart_txd,
	usb_uart_rxd,
	usb_uart_rts,
	usb_uart_cts,
	usb_uart_gpio2,
	usb_uart_suspend,
	usb_uart_suspendn
);

	/* --- Clock --- */
	/* IO: 7 */
	input diff_clkin_top_125_p;			// LVDS
	input diff_clkin_bot_125_p;			// LVDS
	input clkin_50_fpga_right;			// 2.5V
	input clkin_50_fpga_top;			// 2.5V
	output clkout_sma;					// 2.5V


	/* --- DDR3 x32 Devices Interface --- */
	/* IO: 71 */
	output ddr3_ck_p;					// DIFFERENTIAL 1.5-V SSTL CLASS I
	output ddr3_ck_n;					// DIFFERENTIAL 1.5-V SSTL CLASS I
	inout [31:0] ddr3_dq;				// SSTL-15 CLASS I
	inout [3:0] ddr3_dqs_p;				// DIFFERENTIAL 1.5-V SSTL CLASS I
	inout [3:0] ddr3_dqs_n;				// DIFFERENTIAL 1.5-V SSTL CLASS I
	output [3:0] ddr3_dm;				// SSTL-15 CLASS I
	output [13:0] ddr3_a;				// SSTL-15 CLASS I
	output [2:0] ddr3_ba;				// SSTL-15 CLASS I
	output ddr3_casn;					// SSTL-15 CLASS I
	output ddr3_rasn;					// SSTL-15 CLASS I
	output ddr3_cke;					// SSTL-15 CLASS I
	output ddr3_csn;					// SSTL-15 CLASS I
	output ddr3_odt;					// SSTL-15 CLASS I
	output ddr3_wen;					// SSTL-15 CLASS I
	output ddr3_rstn;					// 1.5V
	input ddr3_oct_rzq;					// 1.5V

	/* --- LPDDR2 x16 Devices Interface --- */
	/* IO: 37 */
	output lpddr2_ck_p;					// DIFFERENTIAL 1.2-V HSUL
	output lpddr2_ck_n;					// DIFFERENTIAL 1.2-V HSUL
	inout [15:0] lpddr2_dq;				// 1.2-V HSUL
	inout [1:0] lpddr2_dqs_p;			// DIFFERENTIAL 1.2-V HSUL
	inout [1:0] lpddr2_dqs_n;			// DIFFERENTIAL 1.2-V HSUL
	output [1:0] lpddr2_dm;				// 1.2-V HSUL
	output [9:0] lpddr2_a;				// 1.2-V HSUL
	output lpddr2_cke;					// 1.2-V HSUL
	output lpddr2_csn;					// 1.2-V HSUL
	input lpddr2_oct_rzq;				// 1.2V

	/* --- HIGH-SPEED-MEZZANINE-CARD Interface --- */
	/* IO: 85 */
	inout hsmc_sda;						// 2.5V
	output hsmc_scl;					// 2.5V
	input hsmc_prsntn;					// 2.5V
	output hsmc_clk_out0;				// 2.5V
	input hsmc_clk_in0;					// 2.5V
	output [2:1] hsmc_clk_out_p;		// LVDS
//	output [2:1] hsmc_clk_out_n;		// LVDS
	input [2:1] hsmc_clk_in_p;			// LVDS
//	input [2:1] hsmc_clk_in_n;			// LVDS
	inout [3:0] hsmc_d;					// 2.5V
	output [16:0] hsmc_tx_d_p;			// LVDS
//	inout [16:0] hsmc_tx_d_n;			// LVDS
	input [16:0] hsmc_rx_d_p;			// LVDS
//	inout [16:0] hsmc_rx_d_n;			// LVDS
	output hsmc_rx_led;					// 2.5V
	output hsmc_tx_led;					// 2.5V

	/* --- Ethernet A PHY interface --- */
	/* IO: 22 */
	input eneta_intn;					//2.5V
	output eneta_resetn;				//2.5V
	output eneta_mdio;					//2.5V
	output eneta_mdc;					//2.5V
	// MII */
	input eneta_rx_er;					//2.5V
	output eneta_tx_er;					//2.5V
	input eneta_rx_col;					//2.5V
	input eneta_rx_crs;					//2.5V
	output eneta_tx_clk;				//2.5V
	// RGMII */
	output [3:0] eneta_tx_d;			//2.5V
	input [3:0] eneta_rx_d;				//2.5V
	output eneta_gtx_clk;				//2.5V
	output eneta_tx_en;					//2.5V
	input eneta_rx_clk;					//2.5V
	input eneta_rx_dv;					//2.5V

	/* --- Ethernet B PHY interface --- */
	/* IO: 22 */
	input enetb_intn;					//2.5V
	output enetb_resetn;				//2.5V
	output enetb_mdio;					//2.5V
	output enetb_mdc;					//2.5V
	// MII */
	input enetb_rx_er;					//2.5V
	output enetb_tx_er;					//2.5V
	input enetb_rx_col;					//2.5V
	input enetb_rx_crs;					//2.5V
	output enetb_tx_clk;				//2.5V
	// RGMII */
	output [3:0] enetb_tx_d;			//2.5V
	input [3:0] enetb_rx_d;				//2.5V
	output enetb_gtx_clk;				//2.5V
	output enetb_tx_en;					//2.5V
	input enetb_rx_clk;					//2.5V
	input enetb_rx_dv;					//2.5V

	/* --- FLASH & SSRAM INTERFACE --- */
	/* IO: 56 */
	output [26:1] fm_a;					// MSB addresses upper device U11, else lower U10
	inout [15:0] fm_d;					// Psuedo double-wide x16 || x16 = x32 data width
										// 32 bit 512Mbit device needs 25 address [25:1]
										// 32 bit 1Gbit device needs 26 address [26:1]
										// drop A0 (32 bit interface)
	output flash_wen;
	output flash_oen;
	output flash_cen;					// cen[1] upper device U11 & cen[0] lower U10 will be common
	output flash_advn;
	output flash_clk;
	output flash_resetn;
	output flash_rdybsyn;

	output ssram_clk;
	output ssram_oen;
	output sram_cen;
	output ssram_bwen;
	output ssram_bwan;
	output ssram_bwbn;
	output ssram_adscn;
	output ssram_adspn;
	output ssram_zzn;
	output ssram_advn;
//	output [1:0] ssram_dqpn;

	/* --- MAX V INTERFACE --- */
	/* IO: 8 */
	output max5_csn;
	output max5_wen;
	output max5_oen; 
	output [3:0] max5_ben;
	output max5_clk;					// same as sys_clk (100MHz) net = MAX2_CLK MaxII  pin_ (fm_clk)

	/* --- USB Blaster II --- */
	/* IO: 20 */
	input usb_clk;						// 2.5V
	output [7:0] usb_data;				// 2.5V
	output [1:0] usb_addr;				// 2.5V
	inout usb_scl;						// 2.5V
	output usb_sda;						// 2.5V
	output usb_resetn;					// 2.5V
	output usb_oen;						// 2.5V
	output usb_rdn;						// 2.5V
	output usb_wrn;						// 2.5V
	output usb_full;					// 2.5V
	output usb_empty;					// 2.5V
	output fx2_resetn;					// 2.5V

	/* --- CHARACTER LCD --- */
	/* IO: 11 */
	inout [7:0] lcd_data;				// 2.5V
	output lcd_wen;						// 2.5V
	output lcd_csn;						// 2.5V
	output lcd_d_cn;					// 2.5V

	/* --- USER LED --- */
	/* IO: 4 */
	output [3:0] user_led;				// 2.5V

	/* --- USER DIP --- */
	/* IO: 5 */
	input [3:0] user_dipsw;				// 2.5V
	input dip_3p3V;						// 3.3V

	/* --- USER PUSH BUTTON --- */
	/* IO: 4 */
	input [3:0] user_pb;				// 2.5V

	/* --- Fan Control --- */
	/* IO: 1 */
	output overtemp_fpga;				// 2.5V

	/* --- GPIO Header --- */
	/* IO: 20 */
	inout [5:0] header_p;				// 2.5V
	inout [5:0] header_n;				// 2.5V
	inout [7:0] header_d;				// 1.5V

	/* --- EEPROM Interface --- */
	/* IO: 2 */
	output eeprom_scl;					// 3.3V
	inout eeprom_sda;					// 3.3V

	/* --- UART Interface --- */
	/* IO: 4 */
	input uart_rxd;						// 3.3V
	input uart_rts;						// 3.3V
	output uart_txd;					// 3.3V
	output uart_cts;					// 3.3V

	/* --- USB UART Interface --- */
	/* IO: 12 */
	inout usb_uart_rstn;				// 2.5V
	input usb_uart_ri;					// 2.5V
	input usb_uart_dcd;					// 2.5V
	output usb_uart_dtr;				// 2.5V
	input usb_uart_dsr;					// 2.5V
	output usb_uart_txd;				// 2.5V
	input usb_uart_rxd;					// 2.5V
	input usb_uart_rts;					// 2.5V
	output usb_uart_cts;				// 2.5V
	input usb_uart_gpio2;				// 2.5V
	input usb_uart_suspend;				// 2.5V
	input usb_uart_suspendn;			// 2.5V


endmodule
