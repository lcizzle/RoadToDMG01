`timescale 1ns / 10ps

module uart_tx_01_top
    (
        input wire clk_in,      // PIN 52 27Mhz External Clock
        input wire rst_n,       // PIN 4

        // UART
        output wire uart_txd,
        output wire uart_rxd
    );

    // UART
    reg [7:0]   tx_data;
    reg         tx_send;
    wire        tx_busy;
    reg [24:0] delay_counter;   // Delay counter for sending data

    uart_tx_01
        #
        (
            .CLOCK_FREQ(27_000_000),
            .BAUD_RATE(115200)
        )
        u_uart_tx_01
        (
            .clk(clk_in),
            .rst(rst_n),
            .data(tx_data),
            .send(tx_send),
            .tx(uart_txd),
            .busy(tx_busy)
        );

        always @(posedge clk_in or negedge rst_n)
        begin
            if(!rst_n)
            begin
                tx_send <= 0;
                tx_data <= 0;
                delay_counter <= 0;
            end
            else if(!tx_busy && !tx_send)
            begin
                if(delay_counter == 13_500_000 - 1) // 0.5 second delay at 27MHz
                begin
                    tx_data <= "1";
                    tx_send <= 1;
                    delay_counter <= 0;
                end
                else
                begin
                    delay_counter <= delay_counter + 1;
                end
            end
            else if (tx_send)
            begin
                tx_send <= 0;
            end
        end

endmodule