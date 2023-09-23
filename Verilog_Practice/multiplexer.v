module MUX_2to1(input sel, input d0, input d1, output Y);
    assign Y = (sel == 1'b0) ? d0 : d1;
endmodule
