`timescale 1ns / 10ps

module seven_seg_decoder_01
    (
        input wire [3:0] hex_n,
        output reg [6:0] seg_n
    );

    // The seven-segment led is common anode
    // Active Low

    always @(*) begin
        case (hex_n)
            4'h0: seg_n = 7'b1000000;   // "0"
            4'h1: seg_n = 7'b1111001;   // "1"
            4'h2: seg_n = 7'b0100100;   // "2"
            4'h3: seg_n = 7'b0110000;   // "3"
            4'h4: seg_n = 7'b0011001;   // "4"
            4'h5: seg_n = 7'b0010010;   // "5"
            4'h6: seg_n = 7'b0000010;   // "6"
            4'h7: seg_n = 7'b1111000;   // "7"
            4'h8: seg_n = 7'b0000000;   // "8"
            4'h9: seg_n = 7'b0010000;   // "9"
            4'hA: seg_n = 7'b0001000;   // "A"
            4'hB: seg_n = 7'b0000011;   // "B"
            4'hC: seg_n = 7'b1000110;   // "C"
            4'hD: seg_n = 7'b0100001;   // "D"
            4'hE: seg_n = 7'b0000110;   // "E"
            4'hF: seg_n = 7'b0001110;   // "F"
            default: seg_n = 7'b1111111; // Blank
        endcase
    end

endmodule