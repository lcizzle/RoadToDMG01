`timescale 1ns / 10ps

module m_inverter_gate_01
(
    input wire  A,
    output reg  B
);

assign B = ~A;

endmodule