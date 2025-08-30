`timescale 1ns / 10ps

module m_inverter_gate_01_tb();

reg A;
wire B;

m_inverter_gate_01 dut
(
    .A(A),
    .B(B)
);

initial begin
    A = 1'b0;
end

always begin
                            $display("A | B");
    #5  A = 1'b0;       #10 $display("%b | %b", A, B);
    #15 A = 1'b1;       #20 $display("%b | %b", A, B);
    #50 $finish;
end

endmodule