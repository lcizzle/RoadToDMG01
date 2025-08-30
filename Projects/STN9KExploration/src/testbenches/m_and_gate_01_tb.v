`timescale 1ns / 10ps

module m_and_gate_01_tb();

reg A;
reg B;
wire X;

m_and_gate_01 dut
(
    .A(A),
    .B(B),
    .X(X)
);

initial begin
    A = 1'b0;
    B = 1'b0;
end

always begin
                                    $display("A B | X");
    #10 A = 1'b0; B = 1'b0;     #15 $display("%b %b | %b", A, B, X);
    #20 A = 1'b0; B = 1'b1;     #25 $display("%b %b | %b", A, B, X);
    #30 A = 1'b1; B = 1'b0;     #35 $display("%b %b | %b", A, B, X);
    #40 A = 1'b1; B = 1'b1;     #40 $display("%b %b | %b", A, B, X);
    #50 $finish;
end

endmodule