module gray_encoder #(parameter N = 4) (
    input [N-1:0] bin,
    output [N-1:0] gray
);
    assign gray[N-1] = bin[N-1];
    genvar i;
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : gray_loop
            assign gray[i] = bin[i+1] ^ bin[i];
        end
    endgenerate
endmodule
