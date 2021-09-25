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
	 output clkout, //clk to adc
    output ad_conv_bar, //-->ad
	 output reg db_rdy


);

    reg [6:0] cnter; //counter for clkin
	 reg adcen;
	 reg clken;

	 
	 
	 //initialize the regs
	 initial begin
		cnter <= 7'b000000;
		adcen <= 1'b0;
		clken <= 1'b0;
		db_rdy <= 1'b0;
	 end
		
    assign ad_conv_bar = dsp_conv_bar;
	 
	 
	 //set adc enable signal
	 always @(clkin) begin
		if (clkin == 1'b1) begin
			if(dsp_conv_bar == 1'b0) 
				begin
					cnter <= 7'b00000;
					adcen <= 1'b1;
				end
			else
				begin
					cnter <= cnter + 1'b1;
				end
				
			//begin the adc clock
			if(adcen == 1'b1) begin 
				if((cnter == 7'h03))
					begin
						clken <= 1'b1;
					end		
				
				//here should read the data
				if(cnter == 7'h11)
					begin
						db_rdy <= 1'b1;
					end
				if(cnter == 7'h12)
					begin
						db_rdy <= 1'b0;
					end				
				if(cnter == 7'h3b)
					begin
						adcen <= 1'b0;
					end
			 end
		 end
	end
	
	//clk out to adc
	assign clkout = clkin && adcen && clken;

endmodule
