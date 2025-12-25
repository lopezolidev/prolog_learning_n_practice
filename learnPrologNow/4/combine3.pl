combine3([], [], []).

combine3([A | TA], [B | TB], [join(A, B) | R]) :- combine3(TA, TB, R).