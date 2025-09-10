// Enable LEDs 02 Top
module enable_leds_02_top(
    input [1:0]     btns_n,
    output [3:0]    leds_n
);

enable_leds_02 enable_leds_02_inst (
    .btns_n(btns_n),
    .leds_n(leds_n)
);

endmodule