word(abalone, a,b,a,l,o,n,e).
word(abandon, a,b,a,n,d,o,n).
word(enhance, e,n,h,a,n,c,e).
word(anagram, a,n,a,g,r,a,m).
word(connect, c,o,n,n,e,c,t).
word(elegant, e,l,e,g,a,n,t).

% write a predicate crosswd/6 that tells us how to fill the grid, i.e. the first three arguments should be the vertical words
% from left to right and the following three arguments the horizontal words from top to bottom.

crosswd(V1,V2,V3,H1,H2,H3):-
    word(V1, _, X, _, W, _, A, _),
    word(H1, _, X, _, Y, _, Z, _),
    word(V2, _, Y, _, V, _, B, _),
    word(H2, _, W, _, V, _, U, _),
    word(V3, _, Z, _, U, _, C, _),
    word(H3, _, A, _, B, _, C, _).