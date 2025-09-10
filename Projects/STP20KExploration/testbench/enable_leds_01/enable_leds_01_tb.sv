// Enable LEDs 01 TB
module enable_leds_01_tb;

timeunit 1ns;
timeprecision 10ps;

logic [5:0] leds_n;

enable_leds_01 dut(.*);

    initial begin
        #10
        $display("PASS: LEDs enabled check passed. leds_n=%6b", leds_n);
    end

    always @(leds_n) begin
        if(leds_n != 1'b0) begin
            $error("FAIL: LEDs not enabled. leds_n=%6b", leds_n);
        end
    end

endmodule