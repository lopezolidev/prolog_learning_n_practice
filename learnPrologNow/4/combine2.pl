combine2([], [], []).


combine2([A | TA], [B | TB], [[A, B] | R]) :- combine2(TA, TB, R).