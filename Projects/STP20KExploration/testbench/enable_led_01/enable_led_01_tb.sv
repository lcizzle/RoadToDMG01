// Enable LED 01 TB
module enable_led_01_tb;

bit led_n;

enable_led_01 enable_led_01_inst (.*);

    // Stimulus
    initial begin
        #100
        $display("PASS: LED enabled.");
        $stop;
    end

    //
    always @(led_n) begin
        if(led_n !== 1'b0)
            $display("FAIL: LED is not enabled.");
            $stop;
    end


endmodule