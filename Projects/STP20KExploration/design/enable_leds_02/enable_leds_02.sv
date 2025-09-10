// Enable LEDs 02
module enable_leds_02(
    input logic [1:0]       btns_n,
    output logic [3:0]      leds_n
);

timeunit 1ns;
timeprecision 10ps;

    always_comb begin
        logic a;
        logic b;
        logic [3:0] leds;

        a = ~btns_n[0];
        b = ~btns_n[1];

        leds[0] = !a;
		leds[1] =  b && a;
		leds[2] =  b || a;
		leds[3] =  b ^  a;

		leds_n = ~leds;
    end

endmodule