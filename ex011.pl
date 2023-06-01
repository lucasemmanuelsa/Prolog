main :-
    write('Digite seu nome: '),
    read(N),
    write('Digite suas notas: '),
    read(X1),
    read(X2),
    read(X3),
    situacao(X1,X2,X3,R),
    write(R).

situacao(X1,X2,X3,R) :- M is (X1+X2+X3)/3, classifica(M,R).

classifica(M,'Aprovado') :- M >= 7,!.
classifica(M,'REPROVADO') :- M =< 4,!.
classifica(M,'FINAL').