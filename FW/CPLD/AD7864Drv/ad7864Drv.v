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
	 input clkinhi,
	 //input pin from dsp
    //convert signal from dsp, this signal start everything
    input dsp_conv_bar, //dsp-->
   
    
    //convert signal to ad7865
	 output reg clkout, //clk to adc
    output ad_conv_bar, //-->ad
	 output reg db_rdy
);

    reg [5:0] cnterPos; //counter for clkin
	 reg [5:0] cnterNeg;
	 wire [6:0] cnter;
	 reg adcen;
	 reg clken;
	 wire clkinInv;
	 
	 //initialize the regs
	 initial begin
		adcen <= 1'b0;
		clken <= 1'b0;
		db_rdy <= 1'b0;
		clkout <= 1'b1;
		cnterNeg <= 6'b0;
		cnterPos <= 6'b0;
	 end
		
    assign ad_conv_bar = dsp_conv_bar;
	 assign clkinInv = ~clkin;
	 
	 always @(posedge clkin) begin
		if(dsp_conv_bar == 1'b0) cnterPos = 6'b00000;
		else	cnterPos = cnterPos + 1'b1;
		if(cnterPos > 6'b111110) cnterPos = 6'b111110;
	 end
	 
	 always @(posedge clkinInv) begin
		if(dsp_conv_bar == 1'b0) cnterNeg = 6'b000000;
		else cnterNeg = cnterNeg +1'b1;
		
		if(cnterNeg > 6'b111110) cnterNeg = 6'b111110;
	 end
	 
	 // adder
	 assign cnter = cnterPos + cnterNeg;
	 
	 //set adc enable signal
	 always @(cnter) begin
			//begin the adc clock
			if(adcen == 1'b1) begin 
				if((cnter == 7'h03)) clken <= 1'b1;				
				//here should read the data
				if(cnter == 7'h11) db_rdy <= 1'b1;
				if(cnter == 7'h12) db_rdy <= 1'b0;				
				if((cnter <= 7'h3b)&(cnter >= 7'h14)) clkout <= ~clkout;
			end
	end
	

endmodule
