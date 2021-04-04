//Sequence Seeker, find the sequence  0110 including the overlap case

module seekseq (
    input clk,
    input rst,
    input x,

    output z
);
    parameter S0 = 2'b0, S1 = 2'b1, S2 = 2'b10, S3 = 2'b11;
    reg [1:0] state; reg z;
   

    always @(posedge clk or posedge rst) begin
        if(rst == 1'b1) begin
            state <= S0;
        end
        else begin
            z = (&state)&(~x);
            case(state)
                S0: begin
                    state = x?S0:S1;
                end
                S1: begin
                    state = x?S2:S1;
                end
                S2: begin
                    state = x?S3:S1;
                end
                S3: begin
                    state = x?S0:S1;
                end
            endcase
        end
    end
endmodule