:- use_module(library(csv)).

ler_csv(Linhas) :-
    open('users.csv', read, Arquivo),
    csv_read_file('users.csv', Linhas, []),
    close(Arquivo).


getUsers(X) :- ler_csv(X).

getUser(Nome, user) :- 
getUsers(X),

