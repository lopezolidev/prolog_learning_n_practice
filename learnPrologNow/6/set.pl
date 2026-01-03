set([],[]) :- !.
set([H | T] , [H | B]) :-   \+ member(H, T),
                            set(T, B).
set([H | T] , B) :- member(H, T) ,
                    set(T, B) , !.

% set v2 -> without using \+ or !

%base case
setV2([], []).

% itsNot: auxiliar predicate to determine an element is not present in a list
itsNot(_, []) :- !. % if different to every element of the list
itsNot(X, [Y | T]) :- 
    X \= Y ,
    itsNot(X, T). % recursive case

% when H is not repeated in T
setV2([H | T], [H | Rest]) :-
    itsNot(H, T),
    setV2(T, Rest).

% when H is present in T
setV2([_ | T], Rest) :-
    set(T, Rest).