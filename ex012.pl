cor(azul).
cor(vermelho).
cor(verde).
cor(amarelo).

coloracao(X1,X2,X3,X4,X5) :- cor(X1), cor(X2), cor(X3), cor(X4), cor(X5),
X1 \= X2, X1 \= X3, X1 \= X4, X2 \= X3, X2 \= X5, X3 \= X5, X3 \= X4, X4 \= X5.