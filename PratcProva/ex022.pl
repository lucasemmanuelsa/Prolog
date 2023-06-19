divide(_, [], [], []).
divide(N, [H|T], [H|T1], L3) :- H =< N, divide(N, T, T1, L3).
divide(N, [H|T], L2, [H|T1]) :- H > N, divide(N, T, L2, T1).
