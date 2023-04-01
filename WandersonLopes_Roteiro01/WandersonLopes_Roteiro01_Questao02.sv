// Wanderson Lopes de Souto. Mat.: 120211139
parameter NBITS = 8;
module adder(
  
  input logic signed [NBITS -1:0] A, B,
  output logic signed [NBITS -1: 0] S,
  output logic N, Z, P
);
	always_comb begin
      
      S <= A + B;
      
      if (S == 0)  //Condiçãorelacionada a soma ser igual ou não a zero
        Z <= 1;
	  else Z <= 0;
      
      if (S[NBITS -1] == 0) /*Condição relacionada a soma ser negativa ou não através da análise do 		bit mais significativo */
        N <= 0;
      else N<= 1;
      
      if (S[0] == 0) /*Condição relacionada a soma ser par ou não através da análise do 		bit menos significativo */
        P<= 1;
	  else P<= 0;
      
    end
  
endmodule
