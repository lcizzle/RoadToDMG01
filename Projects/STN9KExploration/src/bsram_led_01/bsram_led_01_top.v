`timescale 1ns / 10ps

module bsram_led_01_top
    (
        input wire          clk_in,
        input wire          rst_btn_n,
        input wire          usr_btn_n,
        output wire [5:0]   leds
    );

    // Buttons are active LOW
    wire                    rst_btn = ~rst_btn_n;
    wire                    usr_btn = ~usr_btn_n;

    // Synchronize & edge-detect the usr_btn
    reg btn_sync0;
    reg btn_sync1;

    always @(posedge clk_in, posedge rst_btn) begin
        if (rst_btn) begin
            btn_sync0 <= 1'b0;
            btn_sync1 <= 1'b0;
        end else begin
            btn_sync0 <= usr_btn;
            btn_sync1 <= btn_sync0;
        end
    end

    wire btn_edge = btn_sync0 & ~btn_sync1;

    // Infer an 18kb Block RAM: 576 x 32 bits
    (* ram_style = "block" *)
    reg [31:0]              bmem [0:575];

    // Initialize FSM: write addr + bmem[addr] on each clock
    reg [9:0]               addr_init;
    reg                     init_done;
    always @(posedge clk_in, posedge rst_btn) begin
        if (rst_btn) begin
            addr_init <= 10'd0;
            init_done <= 1'b0;
        end else if (!init_done) begin
            bmem[addr_init] <= addr_init;
            addr_init <= addr_init + 10'd1;

            if (addr_init == 10'd575) begin
                init_done <= 1'b1;
            end
        end
    end

    // Address Pointer for LED Display: increment on usr_btn press
    reg [9:0]               addr_disp;

    always @(posedge clk_in, posedge rst_btn) begin
        if (rst_btn) begin
            addr_disp <= 10'd0;
        end else if (init_done && btn_edge) begin
            addr_disp <= addr_disp + 10'd1;
        end
    end

    // Synchronous Read & LED Output
    reg [31:0]              read_data;

    always @(posedge clk_in) begin
        if (init_done) begin
            read_data <= bmem[addr_disp];
        end
    end

    // Map the lower 6 bits of the read_data to the LEDs
    assign leds = ~read_data[5:0];



endmodule