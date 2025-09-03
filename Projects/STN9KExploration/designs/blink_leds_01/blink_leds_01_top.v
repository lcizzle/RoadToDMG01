// Blink LEDs 01 Top

`include "../modules/counter.v"
`include "blink_leds_01.v"

module blink_leds_01_top
(
    input wire          clk,
    input wire          rst,
    output wire [24:0]  counter,
    output wire [5:0]   leds_n
);

counter u_counter
(
    .clk(clk),
    .rst(rst),
    .counter(counter)
);

blink_leds_01 u_blink_leds_01
(
    .clk(clk),
    .rst(rst),
    .counter(counter),
    .leds_n(leds_n)
);

endmodule