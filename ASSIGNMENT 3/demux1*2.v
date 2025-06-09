module demux1x2 (
    input din,
    input sel,
    output [1:0] out
);
    assign out[0] = (~sel) & din;
    assign out[1] = sel & din;
endmodule
