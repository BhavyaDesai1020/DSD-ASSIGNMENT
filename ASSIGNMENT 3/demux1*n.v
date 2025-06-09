module dem1xn #(parameter N = 4) (
    input en,                          // Enable
    input i,                           // Input signal
    input [$clog2(N)-1:0] s,           // Select lines
    output reg [N-1:0] y               // Output lines
);
    always @(*) begin
        y = 0;                        
        if (en)                        
            y[s] = i;                 
    end

endmodule
