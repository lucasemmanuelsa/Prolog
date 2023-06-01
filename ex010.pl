acc(X,R) :- R = X+1.

main :-
read(X),
acc(X,R),
write(R),halt.