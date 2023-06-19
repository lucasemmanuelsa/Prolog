conc(M,M,[M]):- !. 
conc(N, M, L3) :- N2 is N + 1, conc(N2,M, L), append(L, [N], L3).
