// Enable LEDs 01

module enable_leds_01
(
    output wire [5:0]       leds_n
);

// Enable LEDs - Active LOW
assign leds_n = 6'b0;

endmodule