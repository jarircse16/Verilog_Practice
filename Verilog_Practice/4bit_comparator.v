module Comparator(input [3:0] A, input [3:0] B, output equal, output A_greater);
    assign equal = (A == B);
    assign A_greater = (A > B);
endmodule
