//AD7864 CPLD Driver 
//CPLD code read the AD7864 all four channel adc data
//The driver in this version generate the necessary signals
//to communicate with AD7864 in internal clk mode.
// The driver is based on timing-diagram in ad7864 datasheet REV.D page 16

module ad7864Drv 
//#( parameter ADC_CHIP_NO = 4 )
(

    //clock in
    input clkin,
	 //input pin from dsp
    //convert signal from dsp, this signal start everything
    input dsp_conv_bar, //dsp-->
   
    
    //convert signal to ad7865
	 output reg clkout, //clk to adc
    output ad_conv_bar, //-->ad
	 output reg db_rdy
);


	 reg [7:0] cnter;
	 reg [7:0] cnterprev;
	 
	 //initialize the regs
	 initial begin
		db_rdy <= 1'b0;
		clkout <= 1'b0;
		cnterprev <= 8'b11111110;
		cnter <= 8'b11111110;
	 end
		
    assign ad_conv_bar = dsp_conv_bar;
	 
	 always @(posedge clkin) begin
		if(dsp_conv_bar == 1'b0) cnter = 8'b00000;
		else	cnter = cnter + 6'b1;
		if(cnter > 8'b11111110) cnter = 8'b11111110;
	 end
	 
	 	 
	 //set adc enable signal
	 always @(posedge clkin) begin
			//begin the adc clock
			//if(adcen == 1'b1) begin 		
			if((cnterprev != cnter) && (cnter > 7'h4)) begin
				//here should read the data
				if(cnter < 8'b11111110) begin
					if(cnter == 8'h25) db_rdy = 1'b1;
					if(cnter == 8'h27) db_rdy = 1'b0;				
					if((cnter <= 8'h7b)&&(cnter >= 8'hc)) clkout = ~clkout;
					else clkout = 1'b0;
				end
			end
			cnterprev = cnter;
	end

endmodule



