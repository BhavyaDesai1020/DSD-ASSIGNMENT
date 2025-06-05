module fatbd;
    reg a, b, cin;
    wire sum, cout;

    fa_dataflow uut(
        .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout)
    );

    initial begin
        $dumpfile("fatbd.vcd");
        $dumpvars(0, fatbd);     
        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #1;
        end
        $finish;
    end
endmodule
