combine1([], [], []).
% base case -> pattern when both lists are empty.

combine1([A | TA], [B | TB], [A, B | R]) :- combine1(TA, TB, R).
% recursive case -> pattern of non-empty list and concatenating head of first and second lists together.

