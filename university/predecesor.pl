predecesor(luisa, veronica).
predecesor(guillermo, veronica).
predecesor(guillermo, lucia).
predecesor(veronica, maria).
predecesor(veronica, ruben).
predecesor(ruben, rafael).
predecesor(ruben, carolina).
anterior(X,Y):- predecesor(X,Y).
anterior(X,Y):- predecesor(X,Z), anterior(Y,Z).
hermanos(X,Y):-predecesor(Z,X), predecesor(Z,Y).

