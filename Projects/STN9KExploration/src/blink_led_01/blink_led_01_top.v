`timescale 1ns / 10ps               // Timescale for simulation?

module blink_led_01_top             // Module declaration
    (
        input wire          clk_in, // Clock input
        output reg [5:0]    led     // 6 LED outputs
    );

    // The board has a 27Mhz oscillator chip on pin 52
    // Don't forget to set the timing constraints and assign a clock
    // Counter that counts to 27,000,000
    reg [24:0] counter = 0;

    // Always block
    always @(posedge clk_in) begin
        if (counter == 27_000_000 - 1) begin
            counter <= 0;           // Reset counter
            led <= ~led;            // Toggle LEDs
        end else begin
            counter <= counter + 1'd1; // Increment counter
        end
    end

endmodule