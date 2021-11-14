//Given five 1-bit signals (a, b, c, d, and e), compute all 25 pairwise one-bit comparisons in the 25-bit output vector. 
//The output should be 1 if the two bits being compared are equal.
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    wire [24:0]tmp1, tmp2;
    assign tmp1 = {{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign tmp2 = {5{a,b,c,d,e}};
    assign out = ~ (tmp1 ^ tmp2);

endmodule
