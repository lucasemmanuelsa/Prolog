somatorio(N, R) :- N =< 0, R is 0, !.
somatorio(N, R) :- N > 0, N2 is N - 1, somatorio(N2, R2), R is R2 + N.

