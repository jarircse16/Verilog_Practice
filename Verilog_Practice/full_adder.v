module FullAdder(input A, input B, input Cin, output Sum, output Cout);
    wire S1, S2, C1, C2;

    HalfAdder HA1 (.A(A), .B(B), .Sum(S1), .Carry(C1));
    HalfAdder HA2 (.A(S1), .B(Cin), .Sum(S2), .Carry(C2));
    assign Sum = S2;
    assign Cout = C1 | C2;
endmodule
