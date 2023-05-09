// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-04-11
module irrigacao(
  input logic [1:0] U, // Variavel de 2 bits de entrada
  output logic  A,B,C,D,E,F,G, // partes do display de 7 segmentos
  output logic [1:0] Saida); // variavel de 2 bits de saida
  always_comb begin // Deixar todas as operacoes combinatorias
    A <= U[0]; // Linha direta do BIT 0 para A
  	B <= |U; // Or em todos os bits de U
  	C <= ^U; // Xor nos bits de U
    D <= U[0]; // Linha direta do BIT 0 para D
    E <= U[0]; // Linha direta do BIT 0 para E
    F <= U[0]&~U[1]; // Acente para o bit 0 sozinho
  	G <= &U; // And em todos os bits de U
    Saida <= U; // na questao a entrada e igual a saida
  end
endmodule
