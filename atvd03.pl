main :- 
    recebeEntradas([ValorPorCamisa|Valores]),
    precoCamisasTotal(ValorPorCamisa, Valores, PrecoCamisasTotal),
    contaCamisas(Valores, Contagem),
    descontoTotal(Contagem, Desconto),
    ValorFinal is PrecoCamisasTotal * (1 - Desconto),
    write(ValorFinal), 
    halt.
    
recebeEntradas(Valores) :-
    recebeCamisa(Valores).

recebeCamisa([Camisa | Resto]) :-
    read(Camisa),
    Camisa \= -1,
    recebeCamisa(Resto).
    recebeCamisa([]).

precoCamisasTotal(_, [], 0).
precoCamisasTotal(ValorPorCamisa, [_|Resto], PrecoCamisasTotal) :- 
    precoCamisasTotal(ValorPorCamisa, Resto, PrecoCamisasTotalResto),
    PrecoCamisasTotal is PrecoCamisasTotalResto + ValorPorCamisa.

contaCamisas(Valores, Contagem) :-
    contaCamisasAux(Valores, Contagem, 0, 0, 0).
    
contaCamisasAux([], Contagem, CountP, CountM, CountG) :- 
    Contagem = count(CountP, CountM, CountG).
contaCamisasAux([Tamanho|Resto], Contagem, CountP, CountM, CountG) :-
    atualizaContagem(Tamanho, CountP, CountM, CountG,NewCountP, NewCountM, NewCountG),
    contaCamisasAux(Resto, Contagem, NewCountP, NewCountM, NewCountG).

atualizaContagem(p, CountP, CountM, CountG, NewCountP, CountM, CountG) :-
    NewCountP is CountP + 1.
atualizaContagem(m, CountP, CountM, CountG, CountP, NewCountM, CountG) :-
    NewCountM is CountM + 1.
atualizaContagem(g, CountP, CountM, CountG, CountP, CountM, NewCountG) :-
    NewCountG is CountG + 1.
atualizaContagem(_, CountP, CountM, CountG, CountP, CountM, CountG).

descontoTotal(count(CountP, CountM, CountG), Desconto) :-
    descontoCamisa(p, CountP, DescontoP),
    descontoCamisa(m, CountM, DescontoM),
    descontoCamisa(g, CountG, DescontoG),
    Desconto is DescontoP + DescontoM + DescontoG.
    
descontoCamisa(_, 0, 0).
descontoCamisa(Tamanho, Contagem, Desconto) :-
    Contagem >= 4,
    descontoPorTamanho(Tamanho, Desconto).

descontoPorTamanho(p, 0.08).
descontoPorTamanho(m, 0.06).
descontoPorTamanho(g, 0.04).