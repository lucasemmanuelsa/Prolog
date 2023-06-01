maior(M,X,Y) :- maiorMa(M, _, X, Y, 1).

maiorMa([A], R, X, Y, X) :- maiorLista(A, R, Y, 1),!.
maiorMa([A|AS], R, X, Y, C) :- maiorLista(A, R1, Y1, 1), C2 is C + 1, maiorMa(AS, R2, _, _, C2), R1 >= R2, R is R1, X is C , Y is Y1.
maiorMa([A|AS], R, X, Y, C) :- maiorLista(A, R1, _, 1), C2 is C + 1, maiorMa(AS, R2, X2, Y2, C2), R1 < R2, R is R2, X is X2, Y is Y2.

maiorLista([X], X, C, C) :- !.
maiorLista([A|AS], R, L, C) :- C2 is C + 1, maiorLista(AS, R2, L2, C2), R2 >= A, R is R2, L is L2.
maiorLista([A|AS], R, L, C) :- C2 is C + 1, maiorLista(AS, R2, _, C2), R2 < A, R is A, L is C.

main :-
read(M),
maior(M,X,Y),
write(X), write(" "), write(Y).