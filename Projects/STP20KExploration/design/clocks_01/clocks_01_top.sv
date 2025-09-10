// Clocks 01 Top
module clocks_01_top(
    input logic         rst,
    output logic        clk,
    output logic [5:0]  leds_n
);

clocks_01 clocks_01_inst(
    .rst(rst),
    .clk(clk)
);

logic [5:0]     leds;

    always_ff @(posedge clk, negedge rst) begin
        if(!rst)
            leds <= '0;
        else if (clocks_01_inst.counter == 25'd25_000_000 - 1)
            leds <= ~leds;
    end

    always_comb begin
        leds_n = ~leds;
    end

endmodule