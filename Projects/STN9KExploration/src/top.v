`timescale 1ns / 10ps

module top
    (
        input wire clk,
        input wire rst_n,
        output wire [6:0] seg_n
    );

    reg [24:0] counter = 0; // 25-bit counter
    reg [3:0] hex_value = 4'h0; // 4-bit hex value for 7-seg display

    // Setup Seven Segment Decoder
    seven_seg_decoder_01 u_sev_seg_decoder_01
        (
            .hex_n(hex_value),
            .seg_n(seg_n)
        );

    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            counter <= 0;
            hex_value <= 4'h0;
        end else if (counter == 27_000_000 - 1) begin
            counter <= 0;
            hex_value <= hex_value + 1;
        end else begin
            counter <= counter + 1;
        end
    end

endmodule