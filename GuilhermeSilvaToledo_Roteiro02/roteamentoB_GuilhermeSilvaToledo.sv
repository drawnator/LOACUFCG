// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-04-09
parameter BITS = 4;
parameter SEL_BITS = 2;
module roteamentoB(
  input logic [BITS-1:0] A,B,C,D, // 4 bits entrada
  input logic [SEL_BITS-1:0] SEL, // variavel de selecao
  output logic [BITS-1:0] Saida); //variavel saida
  always_comb //always_comb para resto do codigo
    case (SEL)
      0 : begin Saida <= A; end// seleciona A
      1 : begin Saida <= B; end// seleciona B
      2 : begin Saida <= C; end// seleciona C
      3 : begin Saida <= D; end// seleciona D
    endcase
endmodule