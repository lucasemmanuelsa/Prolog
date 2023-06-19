:- use_module(library(readutil)).
:- use_module(library(ansi_term)).

exemplo_comparacao_email :-
writeln('Digite um email:'),
read_line_to_string(user_input, Email),
checa(Email).

checa(Email) :- 
atom_string(EmailAtom, Email),
EmailAtom == 'lucas@gmail.com',
writeln('valido').
checa(_) :- writeln('invalido').

teste :-
writeln('Digite um número'),
read_line_to_codes(user_input, Numero),
validar(Numero).

validar(Numero) :- 
valid_codes(Numero),
number_codes(Number, Numero), 
writeln('valido'),
writeln(Number),
C2 is Number + 1,
writeln(C2).

validar(Numero) :- \+ valid_codes(Numero), writeln('invalido').

valid_codes(Codes) :-
    foreach(member(Code, Codes), valid_code(Code)).

valid_code(Code) :-
    Code >= 48, % Código ASCII para "0"
    Code =< 57. % Código ASCII para "9"



ler_numeros(ListaNumeros) :-
    write('Digite os números separados por espaços: '),
    read_line_to_codes(user_input, Entrada),
    (Entrada = [] ->
        ListaNumeros = []
    ;   split_string(Entrada, " ", "", Palavras),
        (validar_numeros(Palavras, ListaNumeros) ->
            validar_letras(ListaNumeros)
        ;   write('Entrada inválida. Digite apenas números entre 1 e 7, separados por espaços.'), nl,
            ler_numeros(ListaNumeros)
        )
    ).

validar_numeros([], []).
validar_numeros([Palavra|Palavras], [Numero|Numeros]) :-
    atom_number(Palavra, Numero),
    Numero >= 1,
    Numero =< 7,
    validar_numeros(Palavras, Numeros).

validar_letras(ListaNumeros) :-
    (contains_letters(ListaNumeros) ->
        write('A entrada não pode conter letras.'), nl,
        ler_numeros(ListaNumeros)
    ;   verificar_tamanho(ListaNumeros)
    ).

contains_letters(ListaNumeros) :-
    member(Elemento, ListaNumeros),
    atom(Elemento),
    not(number(Elemento)).

verificar_tamanho(ListaNumeros) :-
    length(ListaNumeros, Len),
    (Len > 5 ->
        write('A lista não pode conter mais de 5 números.'), nl,
        ler_numeros(ListaNumeros)
    ;   true
    ).



main :- 
Teste = 'Tiboca',
format('\e[31m~w\e[0m\n',[Teste]),
format('\e[32m~w\e[0m\n',[Teste]),
format('\e[34mTexto em azul\e[0m\n'),
halt.
















