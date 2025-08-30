`timescale 1ns / 10ps               // Timescale for simulation?

module enable_led_01_top            // Module declaration
    (
        output wire [5:0]    led    // 6 LED outputs
    );

    // LED's are active LOW
    //assign led = 6'b111111;       // Turn off all LEDs
    assign led = 6'b000000;         // Turn on all LEDs

endmodule                           // End of module