
`timescale 1ns/1ps

module alu_2bit_tb;

reg [1:0] A, B;
reg [2:0] sel;
wire [2:0] result;

// Instantiate ALU
alu_2bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .result(result)
);

initial begin
    // Monitor values
    $monitor("Time=%0t A=%b B=%b sel=%b result=%b", $time, A, B, sel, result);

    // Test cases

    A = 2'b01; B = 2'b10;

    sel = 3'b000; #10; // Addition
    sel = 3'b001; #10; // Subtraction
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR

    A = 2'b11; B = 2'b01;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;

    $stop;
end

endmodule