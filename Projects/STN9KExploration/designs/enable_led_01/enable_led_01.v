// Enable LED 01

module enable_led_01
(
    output wire     led_n
);

// Active LOW LED
assign led_n = 1'b0;

endmodule