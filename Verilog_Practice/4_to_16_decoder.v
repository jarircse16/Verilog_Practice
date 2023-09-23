module Decoder_4to16(input [3:0] A, output [15:0] Y);
    integer i;
    reg [15:0] dec_outputs;

    always @*
    begin
        dec_outputs = 16'b0;
        for (i = 0; i < 16; i = i + 1)
        begin
            if (A == i)
                dec_outputs[i] = 1;
        end
    end

    assign Y = dec_outputs;
endmodule
