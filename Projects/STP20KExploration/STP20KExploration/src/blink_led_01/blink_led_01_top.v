`timescale 1ns / 10ps

module blink_led_01_top
    (
        input wire          clk_in,     // 27 Mhz Oscillator
        output reg [5:0]    led         // Active LOW LEDs
    );

    // The board has a 27 Mhz oscillator chip on pin H11
    // Don't forget to set the timing constraints and assing a clock
    // Counter that counts to 27,000,000
    reg [24:0] counter = 0;

    // Always block
    always @(posedge clk_in) begin
        if (counter == 27_000_000 - 1) begin
            counter <= 0;
            led <= ~led;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule