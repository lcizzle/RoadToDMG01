// Blink LEDs 01

module blink_leds_01_top
(
    input wire          clk,
    input wire          rst,
    output wire [5:0]   leds_n
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

reg [5:0]   leds;

always @(posedge clk, negedge rst) begin
    if (!rst)
        leds  <=  {3'b111, 3'b000};
    else if (counter == 25'd27_000_000)
        leds <= ~leds;
end

assign leds_n = ~leds;

endmodule