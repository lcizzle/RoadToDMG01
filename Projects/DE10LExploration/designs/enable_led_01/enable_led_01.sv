// Enable LED 01
module enable_led_01
(
    output logic [8:0]  LEDR
);

assign LEDR[0] = 1'b1;

endmodule