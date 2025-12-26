iguales(X, X).
verificar([]).
verificar([_]).
verificar([X, Y | T]) :- iguales(X, Y) , verificar([Y | T]).

% o una versión mas simple
verificar2([]).
verificar2([_]).
verificar2([H , H | T]) :- verificar2([H | T]).