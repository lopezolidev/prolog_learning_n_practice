padre(juan, maria).
padre(pedro, juan).

abuelo(X, Y) :- padre(X,Z), padre(Z,Y).
