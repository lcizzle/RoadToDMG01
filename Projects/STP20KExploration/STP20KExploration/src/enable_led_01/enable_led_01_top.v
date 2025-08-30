`timescale 1ns / 10ps

module enable_led_01_top
    (
        output wire [5:0]    led
    );

    // LEDs are active LOW
    assign led = 6'b000000;       // LEDs ON
    //assign led = 6'b111111;     // LEDs OFF

endmodule