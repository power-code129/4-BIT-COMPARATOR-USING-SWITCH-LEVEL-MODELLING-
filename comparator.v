// XNOR gate
module xnor_gate(output out, input a, b);
    assign out = ~(a ^ b);
endmodule

// AND gate
module and_gate(output out, input a, b);
    assign out = a & b;
endmodule

// NOT gate
module not_gate(output out, input a);
    assign out = ~a;
endmodule

// OR gate
module or_gate(output out, input a, b);
    assign out = a | b;
endmodule

// 4-bit comparator: eq, gt, lt outputs
module comp4(output eq, gt, lt, input [3:0] a, b);
    wire [3:0] eq_bits;
    wire eq01, eq23;

    // Equality
    xnor_gate x0(eq_bits[0], a[0], b[0]);
    xnor_gate x1(eq_bits[1], a[1], b[1]);
    xnor_gate x2(eq_bits[2], a[2], b[2]);
    xnor_gate x3(eq_bits[3], a[3], b[3]);

    and_gate and1(eq01, eq_bits[0], eq_bits[1]);
    and_gate and2(eq23, eq_bits[2], eq_bits[3]);
    and_gate and3(eq, eq01, eq23);

    // Greater than logic
    assign gt = (a > b);

    // Less than logic
    assign lt = (a < b);
endmodule
