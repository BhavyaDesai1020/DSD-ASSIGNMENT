`timescale 1ns/1ps

module tb_decoder_2x4;
    reg [1:0] in;
    reg en;
    wire [3:0] out;
    decoder_2x4 uut (.in(in),.en(en),.out(out));
	initial begin
        $dumpfile("decoder_2x4.vcd");
        $dumpvars(0, tb_decoder_2x4);
        en = 0; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;
        en = 1; in = 2'b00; #10;
        in = 2'b01; #10;
        in = 2'b10; #10;
        in = 2'b11; #10;

        $finish;
    end

endmodule
