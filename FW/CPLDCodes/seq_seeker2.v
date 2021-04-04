//Sequence Seeker, find the sequence  0110 including the overlap case

module seekseq2 (
    input clk,
    input rst,
    input x,

    output z
);
    parameter S0 = 2'b0, S1 = 2'b1, S2 = 2'b10, S3 = 2'b11;
    reg [1:0] present_state; reg z; reg [1:0] next_state;
   
   // F/F
   always @(posedge clk or posedge rst) begin
       present_state <= next_state;
       if(rst == 1'b1) begin
            next_state = S0;
        end
   end

   //output logic z
    always @(x, present_state) begin
        z = (&present_state)&(~x);
    end
    

    //next stage stage
    always @(x or present_state ) begin
            case(present_state)
                S0: begin
                    next_state = x?S0:S1;
                end
                S1: begin
                    next_state = x?S2:S1;
                end
                S2: begin
                    next_state = x?S3:S1;
                end
                S3: begin
                    next_state = x?S0:S1;
                end
            endcase
    end
endmodule