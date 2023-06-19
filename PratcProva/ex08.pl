printnumbers(X) :- X < 10, printa(X).

printa(1) :- write("Number: "), write(1),!.
printa(X) :- X > 1, write("Number: "), write(X), nl, X2 is X - 1, printa(X2), !.