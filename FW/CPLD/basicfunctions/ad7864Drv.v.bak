//AD7864 CPLD Driver 
//CPLD code read the AD7864 all four channel adc data
//And convert the parallel data into serial data
//The driver in this version generate the necessary signals
//to communicate with AD7864 in internal clk mode.
// The driver is based on timing-diagram in ad7864 datasheet REV.D page 16


module ad7864Drv (

    //clock in
    input clkin, 
    //convert signal from dsp, this signal start everything
    input dsp_conv_bar, //dsp-->
    input busy,  //busy signal from AD7864
    input eoc_bar, //end of converter
    
    
    //convert signal to ad7865
    output ad_conv_bar, //-->ad
    output reg rd_bar, //read signal to ad
    output reg cs_bar, //chip select to ad
    
    input [11:0] db, //data[11:0]


    //serial port
    output reg sclk,
    output reg miso,
    output reg mosi

);

    reg db_rdy; //data ready signal
    reg [2:0] cnter;
    reg [11:0] db_reg;
    reg [4:0] sel;

    assign ad_conv_bar = dsp_conv_bar;

    //rd and cs signal, db_rdy signal
    always @(posedge clkin) begin
        if(eoc_bar == 1'b0) begin
            cs_bar <= 1'b0;
            rd_bar <= 1'b0;
            cnter <= cnter + 1'b1;
        end

        if(cnter == 3'b011) begin
            db_rdy <= 1'b1;
        end
        if(cnter == 3'b111) begin
            cs_bar <= 1'b1;
            rd_bar <= 1'b1;
        end
    end

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

    always @(negedge dsp_conv_bar) begin
        cnter <= 3'b000;
        
    end


endmodule
