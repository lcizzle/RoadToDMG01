// Enable LED 01 TB
module enable_led_01_tb;

timeunit 1ns;
timeprecision 10ps;

logic led_n;

enable_led_01 dut(.*);

    initial begin
        #10;
        $display("PASS: LED enabled check passed. led_n=%b", led_n);
    end

    always @(led_n) begin
        if(led_n != 1'b0) begin
            $error("FAIL: LED not enabled. led_n=%1b", led_n);
            $stop;
        end
    end

endmodule