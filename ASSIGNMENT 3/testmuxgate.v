`timescale 1ns/1ps
module tbmuxgate;
    reg s, en;
    reg [1:0] i1, i2, i3, i4, i5, i6;
    wire y1, y2, y3, y4, y5, y6;
    reg a, b;
    mux2x1 and_mux (.a(i1[0]), .b(i1[1]), .sel(s), .y(y1));
    mux2x1 or_mux  (.a(i2[0]), .b(i2[1]), .sel(s), .y(y2));
    mux2x1 nor_mux (.a(i3[0]), .b(i3[1]), .sel(s), .y(y3));
    mux2x1 nand_mux(.a(i4[0]), .b(i4[1]), .sel(s), .y(y4));
    mux2x1 xor_mux (.a(i5[0]), .b(i5[1]), .sel(s), .y(y5));
    mux2x1 xnor_mux(.a(i6[0]), .b(i6[1]), .sel(s), .y(y6));

    integer j;

    initial begin
        $dumpfile("tbmuxgatev.vcd");
        $dumpvars(0, tbmuxgate);

        en = 1;
        for (j = 0; j < 4; j = j + 1) begin
            {a, b} = j;
            s = b;

            // AND gate: a & b using mux
            i1[0] = 0;
            i1[1] = a;

            // OR gate: a | b using mux
            i2[0] = a;
            i2[1] = 1;

            // NOR gate: ~(a | b)
            i3[0] = ~a;
            i3[1] = 0;

            // NAND gate: ~(a & b)
            i4[0] = 1;
            i4[1] = ~a;

            // XOR gate: a ^ b
            i5[0] = a;
            i5[1] = ~a;

            // XNOR gate: ~(a ^ b)
            i6[0] = ~a;
            i6[1] = a;

            #1;
            
        end
        $finish;
    end
endmodule
