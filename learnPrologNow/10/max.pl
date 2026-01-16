% efficiently defining max with cut

max(X, Y, Y) :- X =< Y, !.
max(X, Y, X) :- X > Y.
