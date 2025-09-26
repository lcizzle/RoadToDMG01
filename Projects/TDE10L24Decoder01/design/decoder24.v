// 2 to 4 Decoder
module decoder24(
    input wire          i_A,
    input wire          i_B,
    output wire [3:0]   i_OUT
);

assign i_OUT[0] = ~i_A & ~i_B;
assign i_OUT[1] = ~i_A & i_B;
assign i_OUT[2] = i_A & ~i_B;
assign i_OUT[3] = i_A & i_B;

endmodule