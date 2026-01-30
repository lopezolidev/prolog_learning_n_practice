/*
Permitir la conversión de mayúsculas a minúsculas.
? may_min([“LenguaJes DE PRoGramación”],V)
V = [“lenguajes de programación”].
*/

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

%caso por defecto
alf(X, X) :- char_type(X, lower).

% Cuando la lista a convertir está vacía
may_min([], []) :- !.

% Cuando la lista a convertir tiene al menos 1 elemento
may_min([H | T], [W | R]) :-    alf(H, W) , ! ,
                                may_min(T, R).

convertir_frase(StringIn, Resultado) :-
    string_chars(StringIn, ListaChars), % Convierte "Hola" en ['H','o','l','a']
    may_min(ListaChars, ListaMin),
    atomics_to_string(ListaMin, Resultado).