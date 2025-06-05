module fatbs;
    reg a, b, cin;
    wire sum, cout;

    fa_structural uut(
        .a(a), .b(b), .cin(cin), .sum(sum), .cout(cout)
    );

    initial begin
        $dumpfile("fatbs.vcd"); 
        $dumpvars(0, fatbs);     
        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #1;
        end
        $finish;
    end
endmodule
