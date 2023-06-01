
abs(X,R) :- X < 0, R is X * -1.
abs(X,R) :- X >= 0, R is X.

ceil(X,R) :- X >= 0, R is (X // 1) + 1.
ceil(X,R) :- X < 0, R is X // 1.

main :-
read(X),
abs(X,R),
write(R).