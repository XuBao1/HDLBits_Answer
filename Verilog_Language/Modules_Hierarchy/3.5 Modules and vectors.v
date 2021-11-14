module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] lin1, lin2, lin3;
    my_dff8 dff1 (clk, d, lin1);
    my_dff8 dff2 (clk, lin1, lin2);
    my_dff8 dff3 (clk, lin2, lin3);
    
    mux4to1 mux (sel, lin3, lin2, lin1, d, q);
endmodule

module mux4to1(
    input [1:0] sel,
    input [7:0] A, B, C, D,
    output [7:0] out
);
    
    always@(sel)
        case (sel)
            2'b00: out<=D;
            2'b01: out<=C;
            2'b10: out<=B;
            2'b11: out<=A;
        endcase
endmodule
