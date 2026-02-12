/*
    Una palabra es anagrama de otra si es una permutación de sus caracteres.
    'amor' es anagrama de 'roma'

    En prolog se puede representar secuencias de texto como cadenas de caracteres: ['a', 'm', 'o', 'r']

    Haga un predicado anagrama(LP, P, LA), donde LP es una lista arbitraria de palabras, P es una palabra en específico y LA
    es una lista de palabras de LP, que son anagramas de P.
*/

size([], Acc , Acc).
% cuando ya sabemos el tamaño de la palabra

size([A | L], Acc, N) :- NewAcc is Acc + 1 , size(L, NewAcc, N).
% cuando todavía tenemos letras por contar

encaja([], _).
% efectivamente la primera palabra es un anagrama de la segunda

member(X, [X | _]).
% el elemento es el primero de la lista

member(X, [_ | Ys]) :- member(X, Ys).
% el primer elemento no es es elemento buscado.

encaja([H | T], A) :-
    member(H, A),
    encaja(T, A).
% Si cada letra de la primera palabra pertenece a la segunda, entonces es un anagrama.

match(Z, A) :- size(Z, 0, N), size(A, 0, N), encaja(Z, A).
% si ambas palabras tienen el mismon numero de letras y ambas encajan entonces una es una permutacion de la otra

anagrama([], _, []).
% si ya no hay más palabras por procesar, se devuelve una lista vacía

anagrama([X | Xs], P, [X | LA]) :-
    match(X, P) , ! ,
    anagrama(Xs, P, LA).
% si la 1º palabra de la lista es anagrama de P.

anagrama([_ | Xs], P, LA) :-
    anagrama(Xs, P, LA) .
% si la 1º palabra de la lista NO es anagrama de P.


% [ ['g','a','t','o'], ['r','o','m','a'], ['m','o','r','a'], ['p','e','r','r','o'] ]