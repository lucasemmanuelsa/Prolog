pai(francisco, paulo).
pai(joao, paulo).

mae(francisco, roberta).
mae(joao, roberta).

irmao(X,Y) :- pai(X,A), pai(Y,A), mae(X, B), mae(Y,B).
