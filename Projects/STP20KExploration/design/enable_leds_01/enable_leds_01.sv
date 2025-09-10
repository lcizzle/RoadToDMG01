// Enable LEDs 01
module enable_leds_01(
    output logic [5:0]   leds_n
);

timeunit 1ns;
timeprecision 10ps;

    always_comb begin
        leds_n = 6'b000000;
    end

endmodule