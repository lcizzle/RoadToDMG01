`timescale 1ns / 10ps

module m_inverter_gate_01
(
    input   A,
    output  B
);

assign B = ~A;

endmodule