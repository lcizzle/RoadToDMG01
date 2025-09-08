// Enable LEDs 01 Top
module enable_leds_01_top
(
    output logic [5:0]  leds_n
);

enable_leds_01 u_enable_leds_01
(
    .leds_n(leds_n)
);

endmodule