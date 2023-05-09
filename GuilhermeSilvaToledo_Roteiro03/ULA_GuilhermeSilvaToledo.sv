// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-04-15

// Operação 10: mapa de karnaugh para o bit de sinal de A,B, Saida(A+B)
// indicando overflow ou underflow
// |R\AB|00 |01	|11	|10	|
// |0	|0	|0	|1	|0	|
// |1	|1	|0	|0	|0	|
// ~(A+B)R + AB~R == ~(A^B)&(R^A)

// Operação 11: mapa de karnaugh para o bit de sinal de A,B, Saida(A-B)
// indicando overflow ou underflow
// |R\AB|00 |01	|11	|10	|
// |0	|0	|0	|0	|1	|
// |1	|0	|1	|0	|0	|
// RB~A + ~(R+B)A == (A^B)&~(R^B)

parameter BITS = 8; // modularização na quantidade de BITS
module ULA(
  input logic signed [BITS-1:0] A, B, // números para serem operados
  input logic [1:0] F, // índice de operação
  output logic [BITS-1:0] Saida, // resultado das operações
  output logic FLAG_O); // indicador de overflow ou underflow
  always_comb begin // always_comb encapsula o resto do código
    // já que 2 das operações não causam underflow nem overflow
    // por padrão FLAG_O tem valor 0
    FLAG_O <= 0;
    case (F)
      0 : Saida <= A&B; // primeira operação (00): bitwise and
      1 : Saida <= A|B; // segunda operação (01): bitwise or
      2 : begin // terceira operação (10):
        Saida <= A+B; // soma
        // resultado do mapa de karnaugh no começo desse código;
        FLAG_O <= (A[BITS-1]~^B[BITS-1])&(Saida[BITS-1]^A[BITS-1]);
      end
      3 : begin // quarta operação(11):
        Saida <= A-B; //subtração
        // resultado do mapa de karnaugh no começo desse código
        FLAG_O <= (Saida[BITS-1]~^B[BITS-1])&(A[BITS-1]^B[BITS-1]);
      end
    endcase
  end
endmodule