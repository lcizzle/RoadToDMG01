`timescale 1ns / 10ps

module m_or_gate_01_tb();

reg A;
reg B;
wire X;

m_or_gate_01 dut
(
    .A(A),
    .B(B),
    .X(X)
);

initial begin
    A = 1'b1;
    B = 1'b1;
end

always begin
                                        #10 $display("A B | X");
    #15 A = 1'b0;   B = 1'b0;           #20 $display("%b %b | %b", A, B, X);
    #25 A = 1'b0;   B = 1'b1;           #30 $display("%b %b | %b", A, B, X);
    #35 A = 1'b1;   B = 1'b0;           #40 $display("%b %b | %b", A, B, X);
    #45 A = 1'b1;   B = 1'b1;           #50 $display("%b %b | %b", A, B, X);

    #100 $finish;
end

endmodule