module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] rst1, rst2, cout1, cout2;

    add16 ins1 (a[15:0], b[15:0], 0, rst1, cout1);
    add16 ins2 (a[31:16], b[31:16], cout1, rst2, cout2);
    
    assign sum = {rst2, rst1};

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    assign {cout, sum} = a+b+cin;

endmodule
