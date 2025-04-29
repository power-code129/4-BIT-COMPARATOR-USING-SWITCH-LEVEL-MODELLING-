`timescale 1ns/1ps
module testbench;
    reg [3:0] a, b;
    wire eq, gt, lt;

    comp4 uut(eq, gt, lt, a, b);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        a = 4'b0000; b = 4'b0000; #10;
        a = 4'b1111; b = 4'b1111; #10;
        a = 4'b1010; b = 4'b0101; #10;
        a = 4'b0111; b = 4'b1111; #10;
        a = 4'b1100; b = 4'b1010; #10;

        $finish;
    end
endmodule
