module cla(
    input [7:0] a, b,
    input cin,
    output [7:0] sum,
    output cout
    );
    wire [7:0] c;
    wire [7:0] p, g;

    assign p = a ^ b;
    assign g = a & b;
    assign c[0] = cin;
    assign c[1] = g[0] | (p[0] & cin);
    assign c[2] = g[1] | (p[1] & c[1]);
    assign c[3] = g[2] | (p[2] & c[2]);
    assign c[4] = g[3] | (p[3] & c[3]);
    assign c[5] = g[4] | (p[4] & c[4]);
    assign c[6] = g[5] | (p[5] & c[5]);
    assign c[7] = g[6] | (p[6] & c[6]);
    assign cout = g[7] | (p[7] & c[7]);
    assign sum = p ^ c;

endmodule
