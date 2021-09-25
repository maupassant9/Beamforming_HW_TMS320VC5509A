/*
 Copyright (C) 2019  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and any partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details, at
 https://fpgasoftware.intel.com/eula.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part 5M160ZE64C5
 with speed grade 5, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "basicfunctions";
DATE "09/25/2021 12:43:35";
PROGRAM "Quartus Prime";



INPUT CLOCKPIN;
INPUT DSP_EEPROM_CS;
INPUT DSP_EEPROM_SCK;
INPUT DSP_EEPROM_MOSI;
INPUT CPLD_EEPROM_MISO;
INPUT DSP_CONV_PIN;
INPUT ADC_DB_PIN[4];
INPUT ADC_DB_PIN[6];
INPUT ADC_DB_PIN[7];
INPUT ADC_DB_PIN[5];
INPUT ADC_DB_PIN[8];
INPUT ADC_DB_PIN[9];
INPUT ADC_DB_PIN[11];
INPUT ADC_DB_PIN[10];
INPUT ADC_DB_PIN[0];
INPUT ADC_DB_PIN[1];
INPUT ADC_DB_PIN[3];
INPUT ADC_DB_PIN[2];
OUTPUT DSPCLKOUT;
OUTPUT DSP_PWR_EN;
OUTPUT DSP_RST;
OUTPUT CPLD_EEPROM_CS;
OUTPUT CPLD_EEPROM_SCK;
OUTPUT CPLD_EEPROM_MOSI;
OUTPUT DSP_EEPROM_MISO;
OUTPUT ADC_CONV;
OUTPUT ADC_RD;
OUTPUT CPLD_SPI_CLK;
OUTPUT CPLD_SPI_MO;
OUTPUT ADC_CLK;
OUTPUT GPIO0;
OUTPUT GPIO1;
OUTPUT GPIO2;
OUTPUT GPIO3;
OUTPUT CPLD_SPI_CS;
OUTPUT AD_CS[3];
OUTPUT AD_CS[2];
OUTPUT AD_CS[1];
OUTPUT AD_CS[0];

/*Arc definitions start here*/
pos_ADC_DB_PIN[0]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[0] CLOCKPIN ;
pos_ADC_DB_PIN[1]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[1] CLOCKPIN ;
pos_ADC_DB_PIN[2]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[2] CLOCKPIN ;
pos_ADC_DB_PIN[3]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[3] CLOCKPIN ;
pos_ADC_DB_PIN[4]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[4] CLOCKPIN ;
pos_ADC_DB_PIN[5]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[5] CLOCKPIN ;
pos_ADC_DB_PIN[6]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[6] CLOCKPIN ;
pos_ADC_DB_PIN[7]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[7] CLOCKPIN ;
pos_ADC_DB_PIN[8]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[8] CLOCKPIN ;
pos_ADC_DB_PIN[9]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[9] CLOCKPIN ;
pos_ADC_DB_PIN[10]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[10] CLOCKPIN ;
pos_ADC_DB_PIN[11]__CLOCKPIN__setup:		SETUP (POSEDGE) ADC_DB_PIN[11] CLOCKPIN ;
pos_CLOCKPIN__CLOCKPIN__setup:		SETUP (POSEDGE) CLOCKPIN CLOCKPIN ;
pos_DSP_CONV_PIN__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) DSP_CONV_PIN cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[0]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[0] CLOCKPIN ;
pos_ADC_DB_PIN[1]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[1] CLOCKPIN ;
pos_ADC_DB_PIN[2]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[2] CLOCKPIN ;
pos_ADC_DB_PIN[3]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[3] CLOCKPIN ;
pos_ADC_DB_PIN[4]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[4] CLOCKPIN ;
pos_ADC_DB_PIN[5]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[5] CLOCKPIN ;
pos_ADC_DB_PIN[6]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[6] CLOCKPIN ;
pos_ADC_DB_PIN[7]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[7] CLOCKPIN ;
pos_ADC_DB_PIN[8]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[8] CLOCKPIN ;
pos_ADC_DB_PIN[9]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[9] CLOCKPIN ;
pos_ADC_DB_PIN[10]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[10] CLOCKPIN ;
pos_ADC_DB_PIN[11]__CLOCKPIN__hold:		HOLD (POSEDGE) ADC_DB_PIN[11] CLOCKPIN ;
pos_CLOCKPIN__CLOCKPIN__hold:		HOLD (POSEDGE) CLOCKPIN CLOCKPIN ;
pos_DSP_CONV_PIN__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) DSP_CONV_PIN cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_CLOCKPIN__ADC_RD__delay:		DELAY (POSEDGE) CLOCKPIN ADC_RD ;
pos_CLOCKPIN__AD_CS[0]__delay:		DELAY (POSEDGE) CLOCKPIN AD_CS[0] ;
pos_CLOCKPIN__CPLD_SPI_CLK__delay:		DELAY (POSEDGE) CLOCKPIN CPLD_SPI_CLK ;
pos_CLOCKPIN__CPLD_SPI_CS__delay:		DELAY (POSEDGE) CLOCKPIN CPLD_SPI_CS ;
pos_CLOCKPIN__CPLD_SPI_MO__delay:		DELAY (POSEDGE) CLOCKPIN CPLD_SPI_MO ;
pos_CLOCKPIN__DSPCLKOUT__delay:		DELAY (POSEDGE) CLOCKPIN DSPCLKOUT ;
pos_CLOCKPIN__DSPCLKOUT__delay:		DELAY (POSEDGE) CLOCKPIN DSPCLKOUT ;
pos_DSP_CONV_PIN__ADC_CLK__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CLK ;
pos_DSP_CONV_PIN__ADC_CONV__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CONV ;
pos_DSP_CONV_PIN__ADC_CONV__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CONV ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__ADC_CLK__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ADC_CLK ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__ADC_CLK__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ADC_CLK ;
___12.215__delay:		DELAY  12.215 ;
___12.330__delay:		DELAY  12.330 ;
___14.010__delay:		DELAY  14.010 ;
___12.363__delay:		DELAY  12.363 ;

ENDMODEL
