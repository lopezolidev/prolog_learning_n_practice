revAcc([], A, A).
revAcc([H | T], A, R) :- revAcc(T, [H | A], R).

rev(L, R) :- revAcc(L, [], R).

palindrome(L) :- rev(L, L).