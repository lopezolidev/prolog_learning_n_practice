append([], L2, L2).
append([H | T], L2, [H | L3]) :- append(T, L2, L3).

elimRep([], []).
elimRep([H | T], Rest) :-   member(H, T) ,
                            elimRep(T, Rest).
elimRep([H | T], [H | Rest]) :- \+ member(H, T) ,
                                elimRep(T, Rest).

union(A, B, C) :-   append(A, B, U),
                    elimRep(U, C).

interseccion(_, [], []) :- !.
% el único elemento común es el vacío

interseccion([], _, []) :- !.
% cuando A es [], ese es el único elemento común

interseccion([HA | TA], B, [HA | D]):-
        member(HA, B),
        interseccion(TA, B, D).
% se inserta un elemento de A si es miembro de B

interseccion([HA | TA], B, D) :-
    \+ member(HA, B),
    interseccion(TA, B, D).
% cuando el elemento de A No es de B, se ignora

diferencia([], _ , []) :- !.
%el único elemento que se puede compartir

diferencia(C, [], C) :- !.
% diferencia entre un conjunto con elementos y el vacío es el conjunto con elementos

diferencia([HC | TC], D, [HC | DifS]) :-
    \+ member(HC, D),
    diferencia(TC, D, DifS).
% Se agrega el elemento si no se comparte

diferencia([HC | TC], D, DifS) :-
    member(HC, D),
    diferencia(TC, D, DifS).
% Si el elemento se comparte, se ignora.


% se define ahora la diferencia simétrica
difSim(A, B, DifS) :- 
    union(A, B, C),
    interseccion(A, B, D),
    diferencia(C, D, DifS).