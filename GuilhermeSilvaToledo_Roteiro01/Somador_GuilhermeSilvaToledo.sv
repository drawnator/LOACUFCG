// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-03-28
parameter L = 8; // Numero de bits
module somador_8_bit(
  input logic signed [L-1:0] A,B, // Variaveis de entrada de L bits com sinal
  output logic signed [L-1:0] S, // Variaveis de saida de L bits com sinal
  output logic Z,N,P); // Variaveis de saida de 1 bit: (Z)ero, (N)egativo, (P)ositivo
  always_comb S <= A+B; // Atribui a soma A+B para S
  always_comb Z <= ~|S; // Nega um 'and' de L bits, true apenas se S==0
  always_comb N <= S[L-1]; // Ultimo bit: indica o sinal
  always_comb P <= ~S[0]; // Inverso do Primeiro bit: indica paridade
endmodule