digito(1).
digito(0).

numero(R) :- R = (A,B,C),digito(A),digito(B),digito(C).

