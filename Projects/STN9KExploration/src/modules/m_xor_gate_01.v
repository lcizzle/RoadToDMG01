`timescale 1ns / 10ps

module m_xor_gate_01
(
    input wire  A,
    input wire  B,
    output reg  X
);

assign X = A ^ B;

endmodule