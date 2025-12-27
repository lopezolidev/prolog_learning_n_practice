n(0).
n(s(X)):- n(X).
m(0, s(Y)) :- n(Y).
m(s(X), s(Y)) :- m(X, Y).