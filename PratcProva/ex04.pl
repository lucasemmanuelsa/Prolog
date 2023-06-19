cor(azul).
cor(amarelo).
cor(verde).
cor(vermelho).

coloracao(A,B,C,D,E) :- cor(A),cor(B),cor(C), cor(D), cor(E), A \= B, A \= C, A \= D, B \= C, B \= E, C \= E, C \= D, D \= E.
