module tb_priority_encoder;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    priority_encoder_8to3 uut (.in(in),.out(out),.valid(valid));
    integer i;
    initial begin
        $dumpfile("priority_encoder.vcd");
        $dumpvars(0, tb_priority_encoder);
        for (i = 0; i < 8; i = i + 1) begin
            in = 8'b00000001 << i;
            #10;
        end
        in = 8'b10010001; #10;
        $finish;
    end
endmodule
