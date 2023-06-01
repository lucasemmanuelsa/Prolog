calculo(X,Y,R) :- calcula(X,Y,a,R),!.

calcula([],Y,_,Y):- !.
calcula([A|AS], Y, a, R) :- Y2 is Y + A, calcula(AS, Y2, s, R).
calcula([A|AS], Y, s, R) :- Y2 is Y - A, calcula(AS, Y2, m, R).
calcula([A|AS], Y, m, R) :- Y2 is Y * A, calcula(AS, Y2, d, R).
calcula([A|AS], Y, d, R) :- A \= 0, Y2 is Y / A, calcula(AS, Y2, a, R).
calcula([0|AS], Y, d, R) :- calcula(AS, Y, a, R).

main :-
read(X),
read(Y),
calculo(X,Y,R),
write(R).