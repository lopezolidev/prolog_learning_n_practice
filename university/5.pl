suma([], 0).
suma([H | T], S) :- suma(T, Sum),
                    S is H + Sum.
% helper function that calculates a sum for an entire list of integers

sumarCtte([], _, []).
sumarCtte([H | T], Ctte, [X | Y]) :-    X is H + Ctte,
                                        sumarCtte(T, Ctte, Y).
% helper function that sums a constant to each element of a list 

sumaAnt([], []).
sumaAnt(Xs, Ys) :-  suma(Xs, Total), 
                    sumarCtte(Xs, Total, Ys).
% 2 list of integers, where second list is each element of the first one + the sum of all the list

