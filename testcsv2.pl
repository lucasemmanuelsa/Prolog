:- use_module(library(csv)).

ler_arquivo_csv(NomeArquivo) :-
    open(NomeArquivo, read, Arquivo),
    processar_linhas(Arquivo),
    close(Arquivo).

processar_linhas(Stream) :-
    repeat,
    read_line_to_string(Stream, Linha),
    (Linha = end_of_file -> true ; processar_linha(Linha), fail).

processar_linha(Linha) :-
    atomic_list_concat(Colunas, ';', Linha),
    processar_colunas(Colunas).

processar_colunas(Colunas) :-
    % Faça algo com os valores das colunas
    pegar_elemento_por_indice(Colunas, 0, Elemento),
    write(Elemento),
    write(Colunas).

pegar_elemento_por_indice([Elemento|_], 0, Elemento).
pegar_elemento_por_indice([_|Resto], Indice, Elemento) :-
    Indice > 0,
    NovoIndice is Indice - 1,
    pegar_elemento_por_indice(Resto, NovoIndice, Elemento).
