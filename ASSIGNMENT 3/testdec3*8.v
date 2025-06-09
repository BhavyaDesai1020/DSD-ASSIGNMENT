module tb_decoder_3x8;
    reg [2:0] in;
    reg en;
    wire [7:0] out;

    decoder_3x8 uut (.in(in),.en(en),.out(out));
	integer i,j;
	initial begin
        $dumpfile("decoder_3x8.vcd");
        $dumpvars(0, tb_decoder_3x8);
      for (i=0; i<2 ; i=i+1) begin
 
        en = i;
        for (j=0; j<8 ;j=j+1) begin
            in = j;
            #10;
        end
      end
        $finish;
    end
endmodule
