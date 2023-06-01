pais(paulo,roberta,joao).
pais(roberta, paulo,joao).
pais(paulo,roberta,francisco).
pais(roberta,paulo,francisco).


irmao(X,Y) :- pais(A,B,X), pais(A,B,Y).