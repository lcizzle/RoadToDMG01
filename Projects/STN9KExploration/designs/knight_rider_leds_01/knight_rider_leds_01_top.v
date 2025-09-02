// Knight Rider LEDs 01

module knight_rider_leds_01_top
(
    input wire          clk,
    input wire          rst,
    output wire [5:0]   leds_n
);

localparam CLK_FREQ = 25'd27_000_000;
localparam CLK_DIV = 8;
localparam CLK_FREQ_DIV = CLK_FREQ / CLK_DIV;

reg [24:0]  counter;

always @(posedge clk, negedge rst) begin
    if (!rst)
        counter <= 25'd1;
    else if (counter < CLK_FREQ_DIV)
        counter <= counter + 1'b1;
    else
        counter <= 25'd0;
end

reg [5:0] leds;
integer dir = 1;

always @(posedge clk, negedge rst) begin
    if (!rst) begin
        leds <= 6'b000001;
        dir <= 1;
    end
    else if (counter == 25'd0) begin
        if (dir == 1) begin
            leds <= leds << 1;
        end
        else if (dir == 0) begin
            leds <= leds >> 1;
        end
    end
    else if (leds == 6'b000001) begin
        dir <= 1;
    end
    else if (leds == 6'b100000) begin
        dir <= 0;
    end
end

assign leds_n = ~leds;

endmodule