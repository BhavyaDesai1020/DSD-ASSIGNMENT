module tb_gray_encoder;
    parameter N = 4;
    reg [N-1:0] bin;
    wire [N-1:0] gray;
    gray_encoder #(N) uut (.bin(bin),.gray(gray));
    integer i;
    initial begin
        $dumpfile("gray_encoder.vcd");
        $dumpvars(0, tb_gray_encoder);
        for (i = 0; i < 16; i = i + 1) begin
            bin = i;
            #10;
        end
        $finish;
    end
endmodule
