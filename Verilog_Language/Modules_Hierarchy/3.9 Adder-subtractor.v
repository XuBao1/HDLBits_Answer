//加减器
module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire [15:0] rst1, rst2, cout1, cout2;
    wire [31:0] c;
    
    assign c = b ^ {32{sub}};

    add16 ins1 (a[15:0], c[15:0], sub, rst1, cout1);
    add16 ins2 (a[31:16], c[31:16], cout1, rst2, cout2);
    
    assign sum = {rst2, rst1};
    
endmodule
