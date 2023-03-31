// Wanderson Lopes de Souto. Mat.: 120211139
parameter NBITS = 8;
module adder(
  
  input logic signed [NBITS -1:0] A, B,
  output logic signed [NBITS -1: 0] S,
  output logic N, Z, P
);
	always_comb begin
      
      S <= A + B;
      
      if (S == 0)
        Z <= 1;
	  else Z <= 0;
      
      if (S[NBITS -1] == 0)
        N <= 0;
      else N<= 1;
      
      if (S[0] == 0)
        P<= 1;
	  else P<= 0;
      
    end
  
endmodule