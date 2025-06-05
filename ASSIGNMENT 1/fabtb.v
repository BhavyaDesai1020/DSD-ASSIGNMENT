module fatbb;
    reg a, b, cin;
    wire sum, cout;

    fa_behavioral uut(
        .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout)
    );

    initial begin
        $dumpfile("fatbb.vcd");
        $dumpvars(0, fatbb);     
        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #1;
        end
        $finish;
    end
endmodule
