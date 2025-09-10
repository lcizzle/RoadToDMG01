// Enable LED 01
module enable_led_01(
    output logic     led_n
);

timeunit 1ns;
timeprecision 10ps;

    always_comb begin
        led_n = 1'b0;
    end

endmodule