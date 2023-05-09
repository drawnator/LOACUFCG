// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-04-18

parameter BITS = 8; // modularização na quantidade de BITS
module EXTRA_ULA(
  input logic signed [BITS-1:0] A, B, // números para serem operados
  output logic S); // resultado das operações
  always_comb S <= &(A~^B); // and nos xnor dos bits
endmodule