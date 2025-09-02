// Enable LEDs 01 TOP

module enable_leds_01_top
(
    output wire [5:0]       leds
);

// Enable LEDs - Active LOW
assign leds = 6'b0;

endmodule