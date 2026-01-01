append([], L2, L2).
append([H | T1], L2, [H | L3]) :- append(T1, L2, L3).

prefix(P, L) :- append(P, _, L).

suffix(S, L) :- append(_, S, L).

final(El, List) :-  X = [El | []] ,
                    suffix(X, List).