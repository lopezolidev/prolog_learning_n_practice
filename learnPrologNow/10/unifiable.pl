unifiable([], _, []).
unifiable([H | T], Term, L2) :- \+(Term = H) , unifiable(T, Term, L2), !.
unifiable([H | T], Term, [H | L2]) :- \+(\+(Term = H)), unifiable(T, Term, L2), !.