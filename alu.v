module alu_2bit (
    input [1:0] A, B,        // 2-bit inputs
    input [2:0] sel,         // control signal
    output reg [2:0] result  // 3-bit result (for carry)
);

always @(*) begin
    case (sel)
        3'b000: result = A + B;        // Addition
        3'b001: result = A - B;        // Subtraction
        3'b010: result = A & B;        // AND
        3'b011: result = A | B;        // OR
        3'b100: result = A ^ B;        // XOR
        default: result = 3'b000;
    endcase
end

endmodule