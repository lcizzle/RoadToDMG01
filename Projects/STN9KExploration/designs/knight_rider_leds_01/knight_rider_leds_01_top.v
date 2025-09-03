// Knight Rider LEDs 01 Top

`include "../modules/counter.v"
`include "knight_rider_leds_01.v"

module knight_rider_leds_01_top
(
    input wire          clk,
    input wire          rst,
    output wire [24:0]  counter,
    output wire [5:0]   leds_n
);

localparam CLK_FREQ = 27_000_000;
localparam CLK_DIV = 16;
localparam CLK_FREQ_DIV = CLK_FREQ / CLK_DIV;

counter
#
(
    .CLK_FREQ(CLK_FREQ_DIV)
)
u_counter
(
    .clk(clk),
    .rst(rst),
    .counter(counter)
);

knight_rider_leds_01 u_knight_rider_leds_01
(
    .clk(clk),
    .rst(rst),
    .counter(counter),
    .leds_n(leds_n)
);

endmodule