child(martha, charlotte).
child(charlotte, caroline).
child(caroline, laura).
child(laura, rose).

descend(X, Y) :-    child(X, Z),
                    descend(Z, Y). 
                 

descend(X, Y) :- child(X, Y).
% this is only queried at the end of the tree. In a Depth query 
