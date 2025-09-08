// Switches 01 Top
module switches_01_top
(
    input logic [9:0]		SW,
    output logic [8:0]      LEDR
);

switches_01 u_switches_01
(
    .SW(SW),
    .LEDR(LEDR)
);

endmodule