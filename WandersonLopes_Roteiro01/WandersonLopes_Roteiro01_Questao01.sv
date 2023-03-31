// Wanderson Lopes de Souto mAT.: 120211139
module lift(
	input logic M, A1, A2, A3,
  output logic S);

       
  always_comb S <= (!M & (A1 | A2 | A3) );
endmodule