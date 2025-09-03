// Enable LEDs 01 TOP

`include "enable_leds_01.v"

module enable_leds_01_top
(
    output wire [5:0]       leds_n
);

enable_leds_01 u_enable_leds_01
(
    .leds_n(leds_n)
);

endmodule