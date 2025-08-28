`timescale 1ns / 10ps               // Timescale for simulation?

module knight_rider_led_01_top      // Module declaration
    (
        input wire          clk,    // Clock input
        output reg [5:0]    led     // 6 LED outputs
    );

    parameter CLOCK_DIV = 8;        // Clock divider parameter

    // The board has a 27Mhz oscillator chip on pin 52
    // Don't forget to set the timing constraints and assign a clock divider
    // Counter that counts to 27,000,000
    
    // *** This should be a 25-bit counter but for whatever reason GoWin EDA throwing a warning.
    // *** WARN  (EX3791) : Expression size 26 truncated to fit in target size 25
    // *** Need to revisit this.
    reg [31:0] count = 0;           // 32-bit counter
    reg dir = 0;                    // Direction flag
    reg [5:0] pattern = 6'b000001;  // LED pattern

    // Always block
    always @(posedge clk) begin
        if (count == 27_000_000 / CLOCK_DIV - 1) begin
            count <= 0;             // Reset counter
            
            // Reverse direction before shifting
            if(!dir) begin
                if(pattern == 6'b100000) begin
                    dir <= 1;
                end else begin
                    pattern <= pattern << 1;
                end 
            end else begin
                if(pattern == 6'b000001) begin 
                    dir <= 0;
                end else begin
                    pattern <= pattern >> 1;
                end
            end
        end else begin
            count <= count + 1;     // Increment counter
        end
    end

    always @(*) begin
        led = ~pattern;             // Active low LEDs
    end

endmodule                           // End of module
    