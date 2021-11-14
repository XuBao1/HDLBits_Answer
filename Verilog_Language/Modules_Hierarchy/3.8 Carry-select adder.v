module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] rst1, rst2, rst3, rst4;
    wire cout1, cout2, cout3;

    add16 ins1 (a[15:0], b[15:0], 0, rst1, cout1);
    add16 ins2 (a[31:16], b[31:16], 0, rst2, cout2);
    add16 ins3 (a[31:16], b[31:16], 1, rst3, cout3);
    
    mux2to1 ins4 (cout1, rst3, rst2, rst4);
    
    assign sum = {rst4, rst1};

endmodule

module mux2to1(
    input sel, 
    input [15:0] A, 
    input [15:0] B, 
    output [15:0] out
);
	assign out = sel?A:B;
    
endmodule
