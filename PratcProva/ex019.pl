nt(1, [H|_], H).
nt(I, [H|T], X) :- I2 is I - 1, nt(I2, T, X).