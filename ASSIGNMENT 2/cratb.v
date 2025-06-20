`timescale 1ns/1ps
module cratb;
    reg [7:0] a, b;
    reg cin;
    wire [7:0] sum;
    wire cout;
    wire [6:0] c ;
    cra cra0(
        .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c[0])
    );
    cra cra1(
        .a(a[1]), .b(b[1]), .cin(c[0]), .sum(sum[1]), .cout(c[1])
    );
    cra cra2(
        .a(a[2]), .b(b[2]), .cin(c[1]), .sum(sum[2]), .cout(c[2])
    );
    cra cra3(
        .a(a[3]), .b(b[3]), .cin(c[2]), .sum(sum[3]), .cout(c[3])
    );
    cra cra4(
        .a(a[4]), .b(b[4]), .cin(c[3]), .sum(sum[4]), .cout(c[4])
    );
    cra cra5(
        .a(a[5]), .b(b[5]), .cin(c[4]), .sum(sum[5]), .cout(c[5])
    );
    cra cra6(
        .a(a[6]), .b(b[6]), .cin(c[5]), .sum(sum[6]), .cout(c[6])
    );  
    cra cra7(
        .a(a[7]), .b(b[7]), .cin(c[6]), .sum(sum[7]), .cout(cout)
    ); 
    integer i;
    initial begin 
        $dumpfile("cratb.vcd");
        $dumpvars(0, cratb);
        for (i =0; i<1026; i = i +1 ) 
        begin
            {a ,b , cin} = i;
            #1;
            end
            $finish;
    end

endmodule
