member(X, [X|_]).
member(X, [_ | T]) :- member(X, T).

mysubset([A], B) :- member(A, B).
mysubset([A | TA], B) :- member(A, B), mysubset(TA, B).