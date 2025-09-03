// Counter

module counter
(
    input wire          clk,
    input wire          rst,
    output reg [24:0]   counter
);

always @(posedge clk, negedge rst) begin
    if (!rst)
        counter <= 25'd0;
    else if (counter < 25'd27_000_000)
        counter <= counter + 1'b1;
    else
        counter <= 25'd0;
end

endmodule