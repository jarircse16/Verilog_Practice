module ShiftRegister(input si, input clk, input reset, output [7:0] parallel_out);
    reg [7:0] shift_reg;
    always @(posedge clk or posedge reset)
    begin
        if (reset)
            shift_reg <= 8'b00000000;
        else
            shift_reg <= {shift_reg[6:0], si};
    end
    assign parallel_out = shift_reg;
endmodule
