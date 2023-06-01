// Guilherme Silva Toledo 121110792
// UFCG - LOAC
// 2023-05-28

parameter ADDR_WIDTH = 2; // numero de bits para selecionar na memoria
parameter DATA_WIDTH = 4; // tamanho do retorno da memoria
module RAM_ROM( // ram de apenas leitura
  input logic [ADDR_WIDTH-1:0] Addr, // endereço para leitura
  output logic [DATA_WIDTH-1:0] Dout ); // resultado naquele endereço
  
  always_comb // não possui clock
    case(Addr) // seleção da memoria
      2'b00: Dout = 4'b0100; 
      2'b01: Dout = 4'b1100;
      2'b10: Dout = 4'b0110;
      2'b11: Dout = 4'b0111;
    endcase
  
endmodule
