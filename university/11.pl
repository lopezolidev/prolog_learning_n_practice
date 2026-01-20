member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

subconjunto([], _).
subconjunto([A | T], C2) :- member(A, C2), !, subconjunto(T, C2).