append([], L2, L2).
append([H | T], L2, [H | L3]) :- append(T, L2, L3).

member(X, L) :- append(_, [X | _], L).
