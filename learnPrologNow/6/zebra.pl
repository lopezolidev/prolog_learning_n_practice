append([], L2, L2).
append([H | T1], L2, [H | L3]) :- append(T1, L2, L3).

member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

zebra(Nationality) :-
    Street = [house(_, _, _), house(_, _, _), house(_, _, _)] ,

    member(house(red, english, _), Street) ,
    member(house(_, spanish, jaguar), Street) ,

    append(_ , [house(_, _, snail), house(_, japanese, _) | _] , Street) ,
    append(_ , [house(_, _, snail), house(blue, _, _) | _], Street) ,

    member(house(_, Nationality, zebra), Street).