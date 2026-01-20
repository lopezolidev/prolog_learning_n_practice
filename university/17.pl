member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

comunes([], _, []).
comunes([A | TA], LB, [A | L]) :- member(A, LB), !, comunes(TA, LB, L).
comunes([_ | TA], LB, L) :- comunes(TA, LB, L).