append([], L2, L2).
append([H | T1], L2, [H | L3]) :- append(T1, L2, L3).

preffix(P, L) :- append(P, _, L).

suffix(S, L) :- append(_, S, L).

subList(SubL, L) :- suffix(S, L), preffix(SubL, S).