% Implemente predicados en lenguaje Prolog que permita definir operaciones básicas de  listas: head, tail, init, last, reverse y append.

head(X, [H | _]) :- X = H.

tail(X, [_ | T]) :- X = T.

init([_], []).
init([H | T], [H | L]) :- init(T, L). 

last([X], X).
last([_ | T], X) :- last(T, X).

revAcc([], A, A).
revAcc([H | T], Acc, R) :- revAcc(T, [H | Acc], R).

reverse(L, R) :- revAcc(L, [], R).

append([], L2, L2).
append([H | T], L2, [H | L3]) :- append(T, L2, L3).

