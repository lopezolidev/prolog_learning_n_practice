
% making use of if-then-else statement

max(X, Y, Z) :-
    (
        X =< Y
        ->  Z = Y 
        ;   Z = X
    ).