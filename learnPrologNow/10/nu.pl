nu(X, Y) :- \+(X = Y).
% version 1

nu2(X, Y) :- X = Y, fail.
% version 2

nu3(X, X) :- !, fail.
nu3(_, _).
% version 3