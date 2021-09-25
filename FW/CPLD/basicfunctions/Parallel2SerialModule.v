
module Parallel2SerialModule(
	assign spi_cs = ((~rd_bar)&en)|(~en);
    //convert parallel data into serial
	 //dbrdy negedge work as a enable signal to spi 
	 always @(posedge clkin) begin
	  
			if(enspi == 1'b1) begin
				sclk = ~sclk;
				//read the data into register
            if(sclk == 1'b0) begin
                mosi = dbreg[sel];
            end
            else begin
                sel = sel + 1;
            end
			end
			
			//check the sel value
			if(sel == 4'b1100) begin
				sel = 4'b0000;
			end
	  end
	  
endmodule 