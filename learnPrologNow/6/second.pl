% checks whether X is the second element of the list
append([], L2, L2).
append([H | T1], L2, [H | L3]) :- append(T1, L2, L3).


suffix(S, L) :- append(_, S, L).

second(X, List) :- suffix(X, List).