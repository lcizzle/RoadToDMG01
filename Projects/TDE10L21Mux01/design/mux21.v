// Mux 2 to 1
module mux21(
    input wire  i_A,
    input wire  i_B,
    input wire  i_SEL,
    output wire o_OUT0,
    output wire o_OUT1
);

wire o0, o1;

assign o0 = i_A & ~i_SEL;
assign o1 = i_B & i_SEL;

assign o_OUT0 = o0;
assign o_OUT1 = o1;

endmodule