`timescale 1ns / 10ps

module and_gate_led_01_top
    (
        input wire btn_a_n,
        input wire btn_b_n,

        output reg led_out_n
    );

    // Buttons and LEDs are active LOW.
    // Use inversion to make them active HIGH.
    wire btn_a = ~btn_a_n;              // 1 when pressed
    wire btn_b = ~btn_b_n;              // 1 when pressed

    // Positive Logic
    wire led = btn_a & btn_b;           // 1 when both buttons are pressed

    // Convert back to active LOW for the LED
    assign led_out_n = ~led;                   // 0 to turn on the LED
endmodule