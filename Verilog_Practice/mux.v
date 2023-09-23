module MUX_4to1(input [3:0] data, input [1:0] select, output Y);
    assign Y = (select == 2'b00) ? data[0] :
              (select == 2'b01) ? data[1] :
              (select == 2'b10) ? data[2] :
                                 data[3];
endmodule
