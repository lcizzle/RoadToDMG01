// Mux 2 to 1
module mux21(
    input wire  i_A,
    input wire  i_B,
    input wire  i_SEL,
    output wire o_OUT
);

assign o_OUT = i_SEL ? i_B : i_A;

endmodule