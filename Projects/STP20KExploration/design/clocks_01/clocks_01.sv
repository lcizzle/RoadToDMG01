// Clocks 01
module clocks_01(
    input logic     rst,
    output logic    clk
);

timeunit 1ns;
timeprecision 10ps;

OSC osc_inst(
    .OSCOUT(clk)
);

defparam osc_inst.FREQ_DIV = 10;

logic [24:0]        counter;

    always @(posedge clk, negedge rst) begin
        if(!rst)
            counter <= '0;
        else if (counter == 25'd25_000_000 - 1)
            counter <= '0;
        else
            counter++;
    end

endmodule