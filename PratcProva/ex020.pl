maior([H],H).
maior([H|T], X) :- maior(T, Y), Y >= H, X is Y.
maior([H|T], X) :- maior(T, Y), Y < H, X is H.