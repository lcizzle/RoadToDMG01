// Enable LED 01 Top
module enable_led_01_top(
    output logic    led_n
);

enable_led_01 enable_led_01_inst(
    .led_n(led_n)
);

endmodule