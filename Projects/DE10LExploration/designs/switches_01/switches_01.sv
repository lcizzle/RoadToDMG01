// Switches 01
module switches_01
(
    input logic [8:0]  SW,
    output logic [8:0]  LEDR
);

assign LEDR[0] = SW[0] ? 1'b1 : 1'b0;
assign LEDR[1] = SW[1] ? 1'b1 : 1'b0;
assign LEDR[2] = SW[2] ? 1'b1 : 1'b0;
assign LEDR[3] = SW[3] ? 1'b1 : 1'b0;
assign LEDR[4] = SW[4] ? 1'b1 : 1'b0;
assign LEDR[5] = SW[5] ? 1'b1 : 1'b0;
assign LEDR[6] = SW[6] ? 1'b1 : 1'b0;
assign LEDR[7] = SW[7] ? 1'b1 : 1'b0;

endmodule