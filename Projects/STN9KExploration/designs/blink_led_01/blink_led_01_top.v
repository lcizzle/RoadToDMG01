// Blink LED 01 TOP

`include "counter.v"
`include "blink_led_01.v"

module blink_led_01_top
(
    input wire          clk,
    input wire          rst,
    output wire [24:0]  counter,
    output wire         led_n
);

counter u_counter
(
    .clk(clk),
    .rst(rst),
    .counter(counter)
);

blink_led_01 u_blink_led_01
(
    .clk(clk),
    .rst(rst),
    .counter(counter),
    .led_n(led_n)
);

endmodule