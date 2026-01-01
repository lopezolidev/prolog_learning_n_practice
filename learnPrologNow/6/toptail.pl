revAcc([], A, A).
revAcc([H | T], A, R) :- revAcc(T, [H | A], R).

rev(L, R) :- revAcc(L, [], R).

toptail( [_, _], []).
toptail([_, Y | Z], T) :-   rev([Y | Z], W),
                            [_ | B] = W ,
                            rev(B, T).