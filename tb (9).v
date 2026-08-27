module tb_mux2to1_gate;

    reg A, B, S;
    wire Y;

    mux2to1_gate san (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_mux2to1_gate);

        $monitor("Time=%0t | A=%b B=%b S=%b | Y=%b",
                 $time, A, B, S, Y);

        {A, B, S} = 3'b000; #10;
        {A, B, S} = 3'b001; #10;
        {A, B, S} = 3'b010; #10;
        {A, B, S} = 3'b011; #10;
        {A, B, S} = 3'b100; #10;
        {A, B, S} = 3'b101; #10;
        {A, B, S} = 3'b110; #10;
        {A, B, S} = 3'b111; #10;

        $finish;
    end

endmodule