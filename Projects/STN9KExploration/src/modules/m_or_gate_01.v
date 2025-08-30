`timescale 1ns / 10ps

module m_or_gate_01
(
    input wire  A,
    input wire  B,
    output reg  X
);

assign X = A | B;

endmodule