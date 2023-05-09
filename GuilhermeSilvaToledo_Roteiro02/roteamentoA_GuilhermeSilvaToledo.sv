// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-04-07
parameter BITS = 4;
module roteamentoA(
  input logic [BITS-1:0] A,B, // 4 bits entrada
  input logic SEL, // variavel de selecao
  output logic [BITS-1:0] Saida); //variavel saida
  always_comb //always_comb para resto do codigo
    if (SEL) Saida <= A; // seleciona A
  	else Saida <= B; // seleciona B
endmodule