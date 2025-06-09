module tb_mux2x1;
    reg a, b, sel;
    wire y;
    mux2x1 uut (.a(a),.b(b),.sel(sel),.y(y));
    initial begin
        $dumpfile("mux2x1.vcd");
        $dumpvars(0, tb_mux2x1);
        a = 0; b = 1;
        sel = 0; #10;
        sel = 1; #10;
        a = 1; b = 0;
        sel = 0; #10;
        sel = 1; #10;
        $finish;
    end
endmodule
