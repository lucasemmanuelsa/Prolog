leng([], 0).
leng([H|T], R) :- leng(T, R2), R is 1 + R2. 