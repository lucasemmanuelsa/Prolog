import pyautogui
import time

# Aguarde alguns segundos antes de começar a digitar
time.sleep(5)

# Digite uma mensagem
mensagem = """main :- 
read(Matriz),
concateMatriz(Matriz, ConcateMatriz),
maiorNumero(ConcateMatriz, Maior),
encontrarLinha(Matriz,Maior,1,Linha),
encontrarListaMaior(Matriz, Linha, 1, ListaMaior),
encontrarColuna(ListaMaior,Maior,1,Coluna),
write(Linha),
write(" "),
write(Coluna).

concateMatriz(Matriz, Output) :-
flatten(Matriz, Output).

maiorNumero(Lista, Maior) :-
max_list(Lista, Maior).

encontrarLinha([], _,Cont, Linha):- Linha is Cont, !.    
encontrarLinha([H|T], Maior, Cont , Linha) :-
(member(Maior, H) -> Linha is Cont, !; encontrarLinha(T,Maior,(Cont+1),Linha)).

encontrarColuna([], _, Cont, Coluna) :- Coluna is Cont, !.
encontrarColuna(Lista, Maior, Cont, Coluna) :- nth1(Cont,Lista, Elem),
(Elem =:= Maior -> Coluna is Cont, !; Value is Cont + 1, encontrarColuna(Lista, Maior, Value, Coluna)).

encontrarListaMaior([], _, _, []):-!.
encontrarListaMaior([H|T], Linha, Cont, ListaMaior) :- 
(Cont =:= Linha -> ListaMaior = H, !;encontrarListaMaior(T, Linha, (Cont + 1), ListaMaior))."""

pyautogui.typewrite(mensagem)

