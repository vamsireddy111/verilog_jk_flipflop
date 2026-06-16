module jk_flipflop_tb;

reg clk, reset, j, k;
wire q;

jk_flipflop uut (
    .clk(clk),
    .reset(reset),
    .j(j),
    .k(k),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("jk_flipflop.vcd");
    $dumpvars(0, jk_flipflop_tb);

    $monitor("Time=%0t | clk=%b reset=%b j=%b k=%b q=%b",
              $time, clk, reset, j, k, q);

    // Initialize
    clk = 0;
    reset = 1;
    j = 0;
    k = 0;

    #5 reset = 0;

    // Test all cases
    #10 j=0; k=0;   // Hold
    #10 j=0; k=1;   // Reset
    #10 j=1; k=0;   // Set
    #10 j=1; k=1;   // Toggle
    #20 j=1; k=1;   // Toggle again

    #40 $finish;
end

endmodule
