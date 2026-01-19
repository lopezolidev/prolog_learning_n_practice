:- discontiguous burger/1.

enjoys(vincent, X) :- big_kahuna_burger(X), !, fail.
enjoys(vincent, X) :- burger(X).

burger(X) :- big_mac(X).
big_mac(a).
big_mac(c).

burger(X) :- big_kahuna_burger(X).
big_kahuna_burger(b).

burger(X) :- whopper(X).
whopper(d).
