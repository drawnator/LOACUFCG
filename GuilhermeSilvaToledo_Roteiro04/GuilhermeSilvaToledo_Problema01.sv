// Guilherme Silva Toledo - 121110792
// UFCG - LOAC
// 2023-05-12

parameter DATA_WIDTH = 4; // tamanho do dado
module Registrador_paralelo_serial( // registrador tanto paralelo quanto serial
  input logic clk, reset, // clock e reset
  input logic Din_serie, // entrada serial
  input logic SEL, // seletor dentre 1:paralela ou 0:serial
  input logic [DATA_WIDTH-1:0] Din, // entrada paralela
  output logic [DATA_WIDTH-1:0] Dout // saida
);
  
  always_ff@(posedge clk) begin // indicação de circuito sequencial
    if (SEL) // seleciona entre o tipo de entrada
      if(reset) Dout <= 0;
      else Dout <= Din; // todos os bits de Din são passados para Dout
    else
      if(reset) Dout <= 0;
      else Dout <= {Din_serie,Dout[DATA_WIDTH-1:1]}; // shift de 1 bit + nova entrada no bit vago
  end
endmodule