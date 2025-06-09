module tb_dem1xn;
    parameter N = 4;
	reg en,i;
    reg [$clog2(N)-1:0] s;
    wire [N-1:0] y;
    dem1xn #(N) uut (.en(en),.i(i),.s(s),.y(y));
    integer sel,j;
    initial begin
        $dumpfile("dem1xn.vcd");
        $dumpvars(0, tb_dem1xn);
      for(j=0;j<2;j=j+1) begin
        en = j;
        i = 1;
        for (sel = 0; sel < N; sel = sel + 1) begin
            s = sel;
            #10;
        end
      end
        en = 1;
        i = 0;
        for (sel = 0; sel < N; sel = sel + 1) begin
            s = sel;
            #10;
        end

        $finish;
    end
endmodule
