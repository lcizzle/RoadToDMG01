// 3 to 8 Decoder
module decoder38(
    input wire          i_A,
    input wire          i_B,
    input wire          i_C,
    output wire [7:0]   i_OUT
);

assign i_OUT[0] = ~i_A & ~i_B & ~i_C;
assign i_OUT[1] = ~i_A & ~i_B & i_C;
assign i_OUT[2] = ~i_A & i_B & ~i_C;
assign i_OUT[3] = ~i_A & i_B & i_C;
assign i_OUT[4] = i_A & ~i_B & ~i_C;
assign i_OUT[5] = i_A & ~i_B & i_C;
assign i_OUT[6] = i_A & i_B & ~i_C;
assign i_OUT[7] = i_A & i_B & i_C;

endmodule