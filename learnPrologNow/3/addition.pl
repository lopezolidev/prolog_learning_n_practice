add(0, Y, Y).
% basic rule. If first argument is 0, the result is whatever is the second argument.

add(succ(X), Y, succ(Z)) :- add(X, Y, Z).
% when first argument /= from 0, its any succesor from another number and the result is the succesor of another number
