module top_module ( input clk, input d, output q );
    wire lin1, lin2;
    
    my_dff dff1(clk, d, lin1);
    my_dff dff2(clk, lin1, lin2);
    my_dff dff3(clk, lin2, q);

endmodule
