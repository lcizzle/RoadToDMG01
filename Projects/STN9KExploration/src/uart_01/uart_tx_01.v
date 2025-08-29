`timescale 1ns / 10ps

module uart_tx_01
    #
    (
        parameter CLOCK_FREQ = 27_000_000,  // 27 MHz
        parameter BAUD_RATE = 115200        // Bits per second
    )
    (
        input wire clk,
        input wire rst,
        input wire [7:0] data,
        input wire       send,
        output reg       tx,
        output reg       busy
    );

    localparam integer TICKS = CLOCK_FREQ / BAUD_RATE;
    reg [31:0] counter;
    reg [3:0] bit_idx;
    reg [9:0] shift_reg;

    always @(posedge clk or negedge rst)
    begin
        if(!rst)
        begin
            tx              <= 1;
            busy            <= 0;
            counter         <= 0;
            bit_idx         <= 0;
            shift_reg       <= 10'b1111111111;
        end
        else if (send && !busy)
        begin
            // Frame: Start bit(0) + data[7:0] + stop bit(1) - loaded for LSB first transmission
            shift_reg       <= {1'b1, data, 1'b0};
            busy            <= 1;
            counter         <= 0;
            bit_idx         <= 0;
        end
        else if (busy)
        begin
            if(counter == TICKS - 1)
            begin
                counter <= 0;
                tx <= shift_reg[0]; // Output current bit
                shift_reg <= {1'b1, shift_reg[9:1]}; // Shift right, fill with 1s
                bit_idx <= bit_idx + 1'd1;
                
                if(bit_idx == 4'd9)
                begin
                    busy <= 0; // Transmission complete
                end
            end
            else
            begin
                counter <= counter + 1;
            end
        end
    end

endmodule