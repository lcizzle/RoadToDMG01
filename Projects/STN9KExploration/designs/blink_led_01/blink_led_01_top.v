// Blink LED 01

module blink_led_01
(
    input wire          clk,
    input wire          rst,
    output wire         led_n
);

reg [24:0]  counter;

always @(posedge clk, negedge rst) begin
    if (!rst)
        counter <= 25'd0;
    else if (counter < 25'd27_000_000)
        counter <= counter + 1'b1;
    else
        counter <= 25'd0;
end

reg led;

always @(posedge clk, negedge rst) begin
    if (!rst)
        led <= 1'b0;
    else if (counter == 25'd27_000_000)
        led <= ~led;
end

assign led_n = ~led;

endmodule