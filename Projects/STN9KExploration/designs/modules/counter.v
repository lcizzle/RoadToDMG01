// Counter

module counter
#
(
    parameter CLK_FREQ = 27_000_000
)
(
    input wire          clk,
    input wire          rst,
    output reg [24:0]   counter
);

always @(posedge clk, negedge rst) begin
    if (!rst)
        counter <= 25'd0;
    else if (counter < CLK_FREQ)
        counter <= counter + 1'b1;
    else
        counter <= 25'd0;
end

endmodule