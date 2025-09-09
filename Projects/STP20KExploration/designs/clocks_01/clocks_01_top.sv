// Clocks 01 Top
module clocks_01_top
(
    input logic         rst,
    output logic        clk,
    output logic [5:0]  leds_n
);

clocks_01 u_clocks_01
(
    .rst(rst),
    .clk(clk)
);

logic [5:0]     leds;

always @(posedge u_clocks_01.clk, negedge rst) begin
    if(!rst)
        leds <= '0;
    else if (u_clocks_01.counter == 25'd25_000_000 - 1)
        leds <= ~leds;
end

assign leds_n = ~leds;

endmodule