module RippleCarryAdder #(parameter N = 4)
(
    input [N-1:0] A,
    input [N-1:0] B,
    input Cin,
    output [N-1:0] Sum,
    output Cout
);

wire [N:0] temp_sum;
wire [N-1:0] temp_carry;

assign temp_sum = {Cin, A} + B;
assign temp_carry = temp_sum[N-1];
assign Sum = temp_sum[N-2:0];
assign Cout = temp_carry;

endmodule
