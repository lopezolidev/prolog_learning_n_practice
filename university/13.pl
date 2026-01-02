append([], L2, L2).
append([H | T], L2, [H | L3]) :- append(T, L2, L3).

sufijo(S, L) :- append(_, S, L).

prefijo(P, L) :- append(P, _, L).

subLista(SubL, L) :- sufijo(S, L), prefijo(SubL, S).