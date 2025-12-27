addone([], []).
addone([H | T], [H2 | T2]) :- H2 is H + 1, addone(T, T2).
