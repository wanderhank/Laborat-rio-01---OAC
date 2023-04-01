// Wanderson Lopes de Souto MAT.: 120211139
module lift(
	input logic M, A1, A2, A3,
  output logic S
  );

       
  always_comb S <= (!M & (A1 | A2 | A3) ); // verdadeiro se o bit mais significativo dos quatro é 1 ou se todos os outros 3 são 1 simultaneamente
endmodule
