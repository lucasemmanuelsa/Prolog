removeAll(X,[],[]).
removeAll(X,[H|T], T2) :- H = X, removeAll(X,T,T2).
removeAll(X,[H|T], [H|T2] ):- H \= X, removeAll(X,T,T2). 