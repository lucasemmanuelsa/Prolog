remov(X,[X|T],T).
remov(X,[H|T], [H|T2]) :- remov(X, T, T2).