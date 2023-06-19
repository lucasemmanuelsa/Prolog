invt(1,R) :-read(X), R is X.
invt(N,R):- N2 is N - 1, read(X), invt(N2, R2), R is R2 - X.


main :-
read(N),
invt(N, R),
writeln(R).