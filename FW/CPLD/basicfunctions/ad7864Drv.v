//AD7864 CPLD Driver 
//CPLD code read the AD7864 all four channel adc data
//And convert the parallel data into serial data
//The driver in this version generate the necessary signals
//to communicate with AD7864 in internal clk mode.
// The driver is based on timing-diagram in ad7864 datasheet REV.D page 16


module ad7864Drv (

    //clock in
    input clkin, 
	 //input pin from dsp
    //convert signal from dsp, this signal start everything
    input dsp_conv_bar, //dsp-->
	 
    
    
    //convert signal to ad7865
	 output clkout, //clk to adc
    output ad_conv_bar, //-->ad
    output reg rd_bar, //read signal to ad
    output cs_bar, //chip select to ad
    input [11:0] db, //data[11:0]

    //serial port
    output reg sclk,
    input miso,
    output reg mosi

);

    reg db_rdy; //data ready signal
    reg [6:0] cnter; //counter for clkin
    reg [11:0] db_reg;
    reg [4:0] sel;
	 reg adcen;
	 reg clken;
	 
	 
	 //initialize the regs
	 initial begin
		cnter <= 6'b000000;
		adcen <= 1'b0;
		rd_bar <= 1'b1;
		clken <= 1'b0;
	 end
		
    assign ad_conv_bar = dsp_conv_bar;
	 
	 
	 //set adc enable signal
	 always @(clkin) begin
		if (clkin == 1'b1) begin
			if(dsp_conv_bar == 1'b0) 
				begin
					cnter <= 6'b00000;
					adcen <= 1'b1;
				end
			else
				begin
					cnter <= cnter + 1;
				end
				
			//begin the adc clock
			if(adcen == 1'b1) begin 
				if((cnter == 6'h03))
					begin
						clken <= 1'b1;
					end		
				
				//here should read the data
				if((cnter == 6'h11)|(cnter == 6'h1F)|(cnter == 6'h2D)|(cnter == 6'h3B))
					begin
						db_rdy <= 1'b1;
					end
					
					
				if(cnter == 6'h3f)
					begin
						adcen <= 1'b0;
					end
			 end
		 end
	 else begin
		if(adcen == 1'b1) begin
			if((cnter == 6'h10)|(cnter == 6'h1E)|(cnter == 6'h2C)|(cnter == 6'h3A))
				begin
					rd_bar <= 1'b0;
				end
			if((cnter == 6'h11)|(cnter == 6'h1F)|(cnter == 6'h2D)|(cnter == 6'h3B))
				begin
					rd_bar <= 1'b1;
				end
			end
	 end
	end
	 
	 
	 assign cs_bar  = rd_bar;
	 
	 
	 
	 assign clkout = clkin && adcen && clken;
	 
	 
    //convert paralle data into serial
    always @(posedge clkin) begin
        //read the data into register
        if(db_rdy == 1'b1) begin
            db_reg <= db;
            //read the data into register
            sclk = ~sclk;
            if(sclk == 1'b0) begin
                mosi = db_reg[sel];
            end
            else begin
                sel = sel + 1;
            end
        end
        else begin
            sclk <= 1'b0;
            mosi <= 1'b0;
            sel <= 4'b0000;
        end       
    end




endmodule
