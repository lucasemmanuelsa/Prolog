ehperfeito(X) :- somad(1,X,R), R =:= X,!.

somad(Y,Y,0):- !.
somad(X,Y,R) :- Y mod X =:= 0, X2 is X + 1, somad(X2, Y, R2), R is X + R2.
somad(X,Y,R) :- Y mod X \= 0, X2 is X + 1, somad(X2, Y, R).