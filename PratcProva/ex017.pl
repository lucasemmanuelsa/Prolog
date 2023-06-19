concat([],L2,L2).
concat(L1, [], L1).
concat([H|T], L2, [H|L3]) :- concat(T, L2, L3).

