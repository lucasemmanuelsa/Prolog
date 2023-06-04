:- initialization(main).

main :-
    % Função para converter uma string delimitada em um array
    string_para_array(String, Delimitador, Array) :-
    atomic_list_concat(Lista, Delimitador, String),
    maplist(atom_string, Array, Lista).

