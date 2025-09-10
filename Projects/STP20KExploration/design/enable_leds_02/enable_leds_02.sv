// Enable LEDs 02
module enable_leds_02(
    input logic [1:0]       btns_n,
    output logic [3:0]      leds_n
);

logic [3:0]     leds;

    always_comb begin
        leds[0] = ~(!btns_n[0]);
        leds[1] = ~btns_n[1] && ~btns_n[0];
        leds[2] = ~btns_n[1] || ~btns_n[0];
        leds[3] = ~btns_n[1] ^  ~btns_n[0];

        leds_n = ~leds;
    end

endmodule