% dada una lista , eliminar de ésta todas las repeticiones

elimRepetidos([], []).

elimRepetidos([H | T], [H | Acc]) :- \+ member(H, T), !, elimRepetidos(T, Acc).

elimRepetidos([_ | T], Acc) :- elimRepetidos(T, Acc).