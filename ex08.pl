simpatico(flipper).
homem(chico).
mulher(maria).
golfinho(flipper).
vivo(chico).
humano(X) :- homem(X).
humano(X) :- mulher(X).
inteligente(X) :- vivo(X), humano(X).
inteligente(X) :- golfinho(X).
muito_inteligente(X) :- inteligente(X), simpatico(X).
