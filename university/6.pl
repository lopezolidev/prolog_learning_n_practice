rep(Xs, V) :- repAcc(Xs, A, V).
% original function calls repAcc to carry an accumulator

repAcc([], A, A).
repAcc([H | T], A, V) :-    NA is (A * 10) + H,
                            repAcc(T, NA, V).
% repAcc uses an accumulator to multiply by 10 and sum the head of the present list. Each time shifting one position left


rep2(Xs, V) :- repAcc2(Xs, A, V).
% other case when we have something like Xs = [1, 22, 4] and we must return V = 1224

digitCounter(V, 1) :-   V < 10.
digitCounter(V, Count) :-   V >= 10,
                            M is V // 10,
                            digitCounter(M, NewC),
                            Count is NewC + 1.
% digit counter predicate, will tell us the number of digits for a defined number

repAcc2([], A, A).
repAcc2([H | T], A, V) :-   digitCounter(H, Digits),
                            NA is (A * 10^Digits) + H,
                            repAcc2(T, NA, V).


