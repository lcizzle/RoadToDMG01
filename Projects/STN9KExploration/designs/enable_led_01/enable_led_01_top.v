// Enable LED 01 TOP

`include "enable_led_01.v"

module enable_led_01_top
(
    output wire         led_n
);

enable_led_01 U_enable_led_01
(
    .led_n(led_n)
);

endmodule