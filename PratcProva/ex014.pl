abs(X,R) :- X < 0, R is X * -1,!.
abs(X,X).

conv([],[]).
conv([H|T],[R|L]) :- abs(H,R), conv(T, L).