// Enable LEDs 01 top
module enable_leds_01_top
(
    output logic [8:0]  LEDR
);

enable_leds_01 u_enable_leds_01
(
    .LEDR(LEDR)
);

endmodule