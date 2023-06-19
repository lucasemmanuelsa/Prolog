concm([],[]).
concm([H|T], L3) :- concm(T, L), append(H,L, L3). 