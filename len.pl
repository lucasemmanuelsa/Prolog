len([],0).
len([_|T],R) :- len(T,R2), R is R2 + 1.