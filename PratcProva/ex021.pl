reverte([],[]).
reverte([H], [H]).
reverte([H|T], R) :- reverte(T, L3), append(L3,[H], R).