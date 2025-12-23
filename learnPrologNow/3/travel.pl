byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).



travel(S, D) :- byCar(S, D). % base case
travel(S, D) :- byCar(S, Z), travel(Z, D). % recursive call

travel(S, D) :- byTrain(S, D). % base case
travel(S, D) :- byTrain(S, Z), travel(Z, D). % recursive call

travel(S, D) :- byPlane(S, D). % base case
travel(S, D) :- byPlane(S, Z), travel(Z, D). % recursive call

% returning "how" to travel from one place to another with some transport medium.

travel(S, D, byCar(S, D)) :- byCar(S, D).
travel(S, D, byCar(S, R)) :-     byCar(S, Z) ,
                                    travel(Z, D, R).

travel(S, D, byTrain(S, D)) :- byTrain(S, D).
travel(S, D, byTrain(S, R)) :-   byTrain(S, Z) ,
                                    travel(Z, D, R).

travel(S, D, byPlane(S, D)) :- byPlane(S, D).
travel(S, D, byPlane(S, R)) :-   byPlane(S, Z) ,
                                    travel(Z, D, R).