module mux2to1_gate (
    input A,
    input B,
    input S,
    output Y
);

    wire nS;
    wire W0;
    wire W1;

    not (nS, S);
    and (W0, A, nS);
    and (W1, B, S);
    or (Y, W0, W1);

endmodule