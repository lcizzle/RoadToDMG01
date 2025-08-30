`timescale 1ns / 10ps

module m_xor_gate_01
(
    input   A,
    input   B,
    output  X
);

assign X = A ^ B;

endmodule