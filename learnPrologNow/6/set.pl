set([],[]) :- !.
set([H | T] , [H | B]) :-   \+ member(H, T),
                            set(T, B).
set([H | T] , B) :- member(H, T) ,
                    set(T, B) , !.