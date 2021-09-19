


INPUT DSP_EEPROM_CS;
INPUT DSP_EEPROM_SCK;
INPUT DSP_EEPROM_MOSI;
INPUT CPLD_EEPROM_MISO;
INPUT DSP_CONV_PIN;
INPUT ADC_DB_PIN[4];
INPUT ADC_DB_PIN[5];
INPUT ADC_DB_PIN[7];
INPUT ADC_DB_PIN[6];
INPUT ADC_DB_PIN[0];
INPUT ADC_DB_PIN[1];
INPUT ADC_DB_PIN[3];
INPUT ADC_DB_PIN[2];
INPUT ADC_DB_PIN[8];
INPUT ADC_DB_PIN[10];
INPUT ADC_DB_PIN[11];
INPUT ADC_DB_PIN[9];
OUTPUT DSPCLKOUT;
OUTPUT DSP_PWR_EN;
OUTPUT DSP_RST;
OUTPUT CPLD_EEPROM_CS;
OUTPUT CPLD_EEPROM_SCK;
OUTPUT CPLD_EEPROM_MOSI;
OUTPUT DSP_EEPROM_MISO;
OUTPUT ADC_CONV;
OUTPUT ADC_RD;
OUTPUT AD_CS;
OUTPUT CPLD_SPI_CLK;
OUTPUT CPLD_SPI_MO;
OUTPUT ADC_CLK;

/*Arc definitions start here*/
pos_ADC_DB_PIN[0]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[0] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[1]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[1] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[2]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[2] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[3]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[3] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[4]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[4] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[5]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[5] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[6]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[6] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[7]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[7] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[8]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[8] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[9]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[9] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[10]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[10] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[11]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) ADC_DB_PIN[11] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_DSP_CONV_PIN__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__setup:		SETUP (POSEDGE) DSP_CONV_PIN cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[0]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[0] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[1]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[1] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[2]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[2] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[3]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[3] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[4]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[4] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[5]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[5] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[6]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[6] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[7]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[7] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[8]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[8] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[9]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[9] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[10]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[10] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_ADC_DB_PIN[11]__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) ADC_DB_PIN[11] cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_DSP_CONV_PIN__cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__hold:		HOLD (POSEDGE) DSP_CONV_PIN cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ;
pos_DSP_CONV_PIN__ADC_CLK__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CLK ;
pos_DSP_CONV_PIN__ADC_CONV__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CONV ;
pos_DSP_CONV_PIN__ADC_CONV__delay:		DELAY (POSEDGE) DSP_CONV_PIN ADC_CONV ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__ADC_CLK__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ADC_CLK ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__ADC_CLK__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ADC_CLK ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__ADC_RD__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] ADC_RD ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__AD_CS__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] AD_CS ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__CPLD_SPI_CLK__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] CPLD_SPI_CLK ;
pos_cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2]__CPLD_SPI_MO__delay:		DELAY (POSEDGE) cnter8Bits:inst|lpm_counter:LPM_COUNTER_component|cntr_p4h:auto_generated|safe_q[2] CPLD_SPI_MO ;
pos_inst5|osc_altufm_osc_7v7_component|maxii_ufm_block1|osc__DSPCLKOUT__delay:		DELAY (POSEDGE) inst5|osc_altufm_osc_7v7_component|maxii_ufm_block1|osc DSPCLKOUT ;
pos_inst5|osc_altufm_osc_7v7_component|maxii_ufm_block1|osc__DSPCLKOUT__delay:		DELAY (POSEDGE) inst5|osc_altufm_osc_7v7_component|maxii_ufm_block1|osc DSPCLKOUT ;
___11.807__delay:		DELAY  11.807 ;
___12.330__delay:		DELAY  12.330 ;
___13.990__delay:		DELAY  13.990 ;
___12.363__delay:		DELAY  12.363 ;

ENDMODEL
