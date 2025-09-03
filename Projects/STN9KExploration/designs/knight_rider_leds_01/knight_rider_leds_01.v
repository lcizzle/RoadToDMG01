// Knight Rider LEDs 01

module knight_rider_leds_01
(
    input wire          clk,
    input wire          rst,
    input wire [24:0]   counter,
    output wire [5:0]   leds_n
);

reg [5:0]   leds;
integer     dir     = 1;

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