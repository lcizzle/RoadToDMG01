// Mux 4 to 1
module mux41(
    input wire          i_A,
    input wire          i_B,
    input wire          i_C,
    input wire          i_D,
    input wire          i_SEL0,
    input wire          i_SEL1,
    output wire         o_OUT
);


wire [3:0] i_vec = {i_A, i_B, i_C, i_D};
assign o_OUT = i_vec[{i_SEL1, i_SEL0}];

/* Second Pass
assign o_OUT =  (i_A & ~i_SEL0 & ~i_SEL1)   |
                (i_B & i_SEL0 & ~i_SEL1)    |
                (i_C & ~i_SEL0 & i_SEL1)    |
                (i_D & i_SEL0 & i_SEL1);
*/

/* Initial Implementation
reg out;

always @(i_SEL0, i_SEL1) begin
    if (!i_SEL0 && !i_SEL1)
        out = i_A;
    else if (i_SEL0 && !i_SEL1)
        out = i_B;
    else if (!i_SEL0 && i_SEL1)
        out = i_C;
    else if (i_SEL0 && i_SEL1)
        out = i_D;   
end

assign o_OUT = out;
*/

endmodule