`timescale 1ns / 10ps

module seven_seg_decoder_01_top
    (
        input wire clk_in,
        input wire rst_n,

        // Seven Segment LED
        output wire [6:0] seg_n
    );

    // Seven Segment Display
    reg [24:0] counter = 0; // 25-bit counter
    reg [3:0] hex_value = 4'h0; // 4-bit hex value for 7-seg display
    reg [9:0] decimal_value; // 10-bit decimal value for display

    // Setup Seven Segment Decoder
    seven_seg_decoder_01 u_sev_seg_decoder_01
        (
            .hex_n(hex_value),
            .seg_n(seg_n)
        );

    always @(posedge clk_in or negedge rst_n) begin
        if(!rst_n) begin
            counter <= 0;
            hex_value <= 4'h0;
            decimal_value <= 10'd0;
        end else if (counter == 27_000_000 - 1) begin
            counter <= 0;
            //hex_value <= hex_value + 1

            // Count in decimal and convert to hex for display
            hex_value <= decimal_value[3:0]; // Display lower 4 bits of decimal value
            if (decimal_value == 10'd9) begin
                decimal_value <= 10'd0;
            end else begin
                decimal_value <= decimal_value + 1'd1;
            end
        end else begin
            counter <= counter + 1'd1;
        end
    end

endmodule