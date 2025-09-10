// Enable LEDs 02 TB
module enable_leds_02_tb;

timeunit 1ns;
timeprecision 10ps;

logic [1:0] btns_n;
logic [3:0] leds_n;

enable_leds_02 dut(.*);

    // 
    initial begin 
        $printtimescale(enable_leds_02_tb);

        for(int i = 0; i < 4; i++) begin 
            $display("Setting buttons to %2b", i[1:0]); 
            btns_n = i[1:0]; 
            #100; 
        end 
        
        $display("PASS: Logic test passed."); 
        $stop; 
    end 
    
    //
    always @(btns_n) begin
        logic btn_0, btn_1;
        logic [3:0] expected_leds;
        logic [3:0] actual_leds;

        #5;

        btn_0 = ~btns_n[0];
        btn_1 = ~btns_n[1];

        expected_leds[0] = ~btn_0;
        expected_leds[1] = btn_1 && btn_0;
        expected_leds[2] = btn_1 || btn_0;
        expected_leds[3] = btn_1  ^ btn_0;

        actual_leds = ~leds_n;

        $display("Time:%0tns stim(btns_n):%b -> dut(leds_n):%b -> actual:%b, expected:%b", $time, btns_n, leds_n, actual_leds, expected_leds);

        if(actual_leds !== expected_leds) begin
            $error("FAIL: Mismatch");
            $display("Expected leds: %4b", expected_leds);
            $display("Actual   leds: %4b", actual_leds);
            $stop;
        end
    end

endmodule