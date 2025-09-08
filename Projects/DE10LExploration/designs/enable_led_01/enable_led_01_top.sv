// Enable LED 01 top
module enable_led_01_top
(
    output logic [8:0]  LEDR
);

enable_led_01 u_enable_led_01
(
    .LEDR(LEDR)
);

endmodule