append([], L2, L2).
append([H | T1], L2, [H | L3]) :- append(T1, L2, L3).

naiveRev([], []).
naiveRev([H | T], R) :-     naiveRev(T, RevT), 
                            append(RevT, [H], R).

revAcc([], A, A).
revAcc([H | T], A, R) :- revAcc(T, [H | A], R).

rev(L, R) :- revAcc(L, [], R).

