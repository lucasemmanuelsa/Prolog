situacao(_, N1, N2, N3, R) :- Media is (N1 + N2 + N3) / 3, situacaoaluno(Media, R).

situacaoaluno(Media,R) :- Media >= 7, R = "Aprovado". 
situacaoaluno(Media,R) :- Media > 4, R = "Final".
situacaoaluno(Media,R) :- Media =< 4, R = "Reprovado".