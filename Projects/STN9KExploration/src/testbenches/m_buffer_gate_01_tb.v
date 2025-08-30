`timescale 1ns / 10ps

module m_buffer_gate_01_tb();

reg A;
wire B;

m_buffer_gate_01 dut
(
    .A(A),
    .B(B)
);

initial begin
    A = 1'b0;

end

always begin
                        $display("A | B");
    #20 A = 1'b0;   #25 $display("%b   %b", A, B);
    #30 A = 1'b1;   #35 $display("%b   %b", A, B);
    #40 $finish;
end

endmodule