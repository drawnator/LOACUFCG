// Guilherme Silva Toledo 121110792
// UFCG - LOAC
// 2023-05-14

parameter ADDR_WIDTH = 2; // numero de bits de seleção de memoria
parameter DATA_WIDTH = 4; // tamanho do dado
module RAM_RW( //ram RW 4x4
  input logic clk, SEL, reset, // clock, seleção entre R e W, reset
  input logic [ADDR_WIDTH-1:0] Addr, // endereço atualmente acessado
  input logic [DATA_WIDTH-1:0] Din, // n bits de entrada
  output logic [DATA_WIDTH-1:0] Dout // n bits de saida
);
  
  logic [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1]; // memoria
  
  always_ff@(posedge clk) begin // indicação de circuito sequencial
    if (reset) mem[Addr] <= 0; // verificação de reset
    else if(SEL) mem[Addr] <= Din; // escrita na memoria
    else Dout <= mem[Addr]; // leitura da memoria
  end
  
endmodule