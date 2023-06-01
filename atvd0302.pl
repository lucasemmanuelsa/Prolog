tamCamisa(P,M,G,X,TOTAL) :- descontos(P,p,DFP),  descontos(M,m,DFM),  descontos(G,g,DFG),
DF is (DFP + DFM + DFG),
Y is X * (P+M+G),
J is (Y * DF), 
TOTAL is Y - J,!.

descontos(P,p,DF) :- P >= 4, DF is 0.08.
descontos(P,p,DF) :- P < 4, DF is 0.0.
descontos(M,m,DF) :- M >= 4, DF is 0.06.
descontos(M,m,DF) :- M < 4, DF is 0.0.
descontos(G,g,DF) :- G >= 4, DF is 0.04.
descontos(G,g,DF) :- G < 4, DF is 0.0.

loop(-1,N1,N2,N3,X,TOTAL) :- tamCamisa(N1,N2,N3,X,Y), TOTAL is Y,!.
loop(p,N1,N2,N3,X,TOTAL) :- R is N1 + 1, read(Z), loop(Z,R,N2,N3,X,TOTAL).
loop(m,N1,N2,N3,X,TOTAL) :- R is N2 + 1, read(Z), loop(Z,N1,R,N3,X,TOTAL).
loop(g,N1,N2,N3,X,TOTAL) :- R is N3 + 1, read(Z), loop(Z,N1,N2,R,X,TOTAL).

main :-
read(X),
read(T),
loop(T,0,0,0,X,TOTAL),
write(TOTAL),halt.