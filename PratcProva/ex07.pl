ehprimo(X) :- nextDiv(2,X,R), R =:= X.

nextDiv(X, X, X) :- !.
nextDiv(I, X, R) :- (X mod I) =:= 0, R is I, !.
nextDiv(I, X, R) :- (X mod I) \= 0, I2 is I + 1, nextDiv(I2, X, R), !.