module tb_bcd_encoder;
    reg [9:0] in;
    wire [3:0] out;
    bcd_encoder uut (.in(in),.out(out));
    integer i;
    initial begin
        $dumpfile("bcd_encoder.vcd");
        $dumpvars(0, tb_bcd_encoder);
        for (i = 0; i < 10; i = i + 1) begin
            in = 10'b0000000001 << i;
            #10;
        end
        in = 10'b0000000110; #10;
        $finish;
    end
endmodule
