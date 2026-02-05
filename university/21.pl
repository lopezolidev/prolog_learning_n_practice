/*
Dado el predicado palabras(Cad, Pals), donde Cad, es una cadena de
caracteres y Pals es una lista de estructuras de la forma: c(P,N), donde P es una
palabra que existe en Cad y N es el número de veces que se repite dicha palabra en la
cadena. Se deben ignorar las diferencias entre mayúsculas y minúsculas y los caracteres
de puntuación. Por ejemplo:

? palabras (“La ociosidad, es la madre de la filosofía.”, V)
V = [c(la,3), c(ociosidad,1), c(es,1), c(madre,1), c(de,1), c(filosofía,1)]

*/

agrupar_en_subcadena([], [[]]) .
agrupar_en_subcadena([H | T], [ [H | T2] | T3]) :-
    H \= ' ' ,
    agrupar_en_subcadena(T, [ T2 | T3]) .

agrupar_en_subcadena([' ' | T], [ [] | T3]) :- 
    agrupar_en_subcadena(T, T3) .

alf('A', 'a').
alf('B', 'b').
alf('C', 'c').
alf('D', 'd').
alf('E', 'e').
alf('F', 'f').
alf('G', 'g').
alf('H', 'h').
alf('I', 'i').
alf('J', 'j').
alf('K', 'k').
alf('L', 'l').
alf('M', 'm').
alf('N', 'n'). 
alf('Ñ', 'ñ').
alf('O', 'o').
alf('P', 'p'). 
alf('Q', 'q').
alf('R', 'r').
alf('S', 's').
alf('T', 't').
alf('U', 'u').
alf('V', 'v').
alf('W', 'w').
alf('X', 'x').
alf('Y', 'y').
alf('Z', 'z').
alf(' ', ' ').

alf('Ó', 'ó'). alf('á', 'á'). alf('é', 'é'). alf('í', 'í'). alf('ú', 'ú').
alf(X, X) . % catch all para minúsculas

may_min([], []) .
may_min( [May | RMay] , [Min | RMin]) :-
    alf(May, Min) , ! ,
    may_min(RMay, RMin) .

transformar_min([], []) .
transformar_min( [H | T], [W | T2]) :-
    may_min(H, W) ,
    transformar_min(T, T2) .

volver_strings([], []) .
volver_strings([H | T], [M | T2]) :-
    atomics_to_string(H, M) ,
    volver_strings(T, T2) .

contarNAux(_, [], Accum, Accum) .
contarNAux(X, [X | Xs] , Accum, N) :- 
    NewAccum is Accum + 1 , ! ,
    contarNAux(X, Xs, NewAccum, N) .
contarNAux(X, [_ | Xs], Accum, N) :-
    contarNAux(X, Xs, Accum, N) .   

hallar_reps([], []) .
hallar_reps([X | Xs], [c(X, N) | T]) :-
    contarNAux(X, Xs, 1, N) , ! ,
    hallar_reps(Xs, T).
 

palabras(Cadena, Pals) :-
    string_chars(Cadena, ListaC) ,
    agrupar_en_subcadena(ListaC, ListaS) ,
    transformar_min(ListaS, ListaMins) ,
    volver_strings(ListaMins, ListaStringMins) ,
    hallar_reps(ListaStringMins, ListaReps) .

% still has to fixed repeated predicates c(C, N)

