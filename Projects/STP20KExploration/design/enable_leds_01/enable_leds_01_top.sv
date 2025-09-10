// Enable LEDs 01 Top
module enable_leds_01_top(
    output logic [5:0]  leds_n
);

enable_leds_01 enable_leds_01_inst(
    .leds_n(leds_n)
);

endmodule