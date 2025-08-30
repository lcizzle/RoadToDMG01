`timescale 1ns / 10ps

module subleq_cpu_01_top
    (
        input wire              clk_in,
        input wire              rst_n,
        input wire              usr_btn_n,
        output wire [5:0]       led_n
    );

    // Invert & synchronize
    wire rst = ~rst_n;
    reg d0, d1;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            {d1, d0} <= 2'b00;
        end else begin
            {d1, d0} <= {d0, ~usr_btn_n};
        end
    end

    wire btn_edge = d0 & ~d1; // Detect rising edge

    // Memory: 64*32-bit block RAM
    (* ram_style = "block" *)
    reg signed [31:0] mem [0:63];
    initial $readmemh("subleq_prog.hex", mem);

    // Program counter and fetch values
    reg [5:0] pc;
    reg [5:0] addrA, addrB, addrC;
    reg signed [31:0] result;
    reg [1:0] state;
    reg [5:0] disp;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            state <= 2'd0;
            pc <= 6'd0;
            disp <= 6'd0;
        end else if (btn_edge) begin
            case (state)
                // Phase O: Fetch A
                2'd0: begin
                    addrA <= mem[pc][5:0];
                    pc <= pc + 6'd1;
                    state <= 2'd1;
                end

                // Phase 1: Fetch B
                2'd1: begin
                    addrB <= mem[pc][5:0];
                    pc <= pc + 6'd1;
                    state <= 2'd2;
                end

                // Phase 2: Fetch C
                2'd2: begin
                    addrC <= mem[pc][5:0];
                    pc <= pc + 6'd1;
                    state <= 2'd3;
                end

                // Phase 3: Execute subtract & write-back
                2'd3: begin
                    result = mem[addrB] - mem[addrA];   // Blocking 
                    mem[addrA] <= result;               // Write-back

                    // Branch if result <= 0
                    if (result <= 0) begin
                        pc <= addrC;
                    end

                    disp <= ~result[5:0];                // Capture low 6 bits for LED
                    state <= 2'd0;                      // Wrap around to next instruction
                end
            endcase
        end
    end

    // LEDs drive the disp register (active-low)
    assign led_n = ~disp;

endmodule