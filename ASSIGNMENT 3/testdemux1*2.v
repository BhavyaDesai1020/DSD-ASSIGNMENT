module tb_demux1x2;
    reg din,sel;
    wire [1:0] out;
    demux1x2 uut (.din(din),.sel(sel),.out(out));
    initial begin
        $dumpfile("demux1x2.vcd");
        $dumpvars(0, tb_demux1x2);
        din = 1;
        sel = 0; #10;
        sel = 1; #10;
        din = 0;
        sel = 0; #10;
        sel = 1; #10;
        $finish;
    end
endmodule
