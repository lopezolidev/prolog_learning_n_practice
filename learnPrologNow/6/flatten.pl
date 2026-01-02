flatten([], []).
flatten(X, [X | R]) :- flatten(_ , R).
flatten([H | T], [H | F]) :-
    flatten(H, F) ,
    flatten(T, F) .