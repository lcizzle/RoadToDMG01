`timescale 1ns / 10ps

module basic_gates_led_01_top
    (
        input wire btn_a_n,
        input wire btn_b_n,

        output wire [5:0] led_out_n
    );

    // Convert to postive logic (active HIGH)
    wire btn_a = ~btn_a_n;
    wire btn_b = ~btn_b_n;
    wire [5:0] led;

    // Basic Gates
    assign led[0] = (btn_a & btn_b);    // AND
    assign led[1] = (btn_a | btn_b);    // OR
    assign led[2] = (btn_a ^ btn_b);    // XOR
    assign led[3] = ~btn_a;              // NOT A
    assign led[4] = (btn_a ~^ btn_b);   // XNOR
    assign led[5] = (btn_a & ~btn_b);   // A AND NOT B

    // Invert logic for active LOW LEDs
    assign led_out_n = ~led;

endmodule