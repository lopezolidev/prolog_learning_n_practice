scalarMult(S, [], []).
% base case

scalarMult(S, [V | W], [X | Y]) :- X is S * V, scalarMult(S, W, Y).
% recursive case