module tb_mux4x1;
    reg [3:0] in;
    reg [1:0] sel;
    wire y;
	mux4x1 uut (.in(in),.sel(sel),.y(y));
    integer i;
    initial begin
        $dumpfile("mux4x1.vcd");
        $dumpvars(0, tb_mux4x1);
        in = 4'b1010;  
        for (i = 0; i < 4; i = i + 1) begin
            sel = i;
            #10;
        end
        $finish;
    end
endmodule
