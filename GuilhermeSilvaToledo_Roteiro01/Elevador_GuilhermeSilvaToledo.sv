// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-03-28
module elevador(
  input logic A1,A2,A3,M, // Variaveis de entrada de 1 bit
  output logic P); // Variaveis de saida de 1 bit
  always_comb P <= (A1|A2|A3) & ~M; // Formula logica
endmodule