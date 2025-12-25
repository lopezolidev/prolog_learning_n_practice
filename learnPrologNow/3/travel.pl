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

travel(O, D) :- byCar(O, D); byTrain(O, D) ; byPlane(O, D).
travel(O, D) :- (byCar(O, Z); byTrain(O, Z) ; byPlane(O, Z)) , travel(Z, D).

% now we want to know which specific cities we must travel to reach destiny

% go(O, D) :- byCar(O, D) ;            byTrain(O, D) ;byPlane(O, D) .

% travel(O, D, go(O, D)) :- go(O, D).

% travel(O, D, go(O, Z, R)) :-    go(O, Z), travel(Z, D, R).

% no we want to know which transportation medium we used to get to the destination

% byCar base case
travel(O, D, byCar(O, D)) :- byCar(O, D).
% byCar recursive case
travel(O, D, byCar(O, R)) :- byCar(O, Z), travel(Z, D, R).

% byTrain base case
travel(O, D, byTrain(O, D)) :- byTrain(O, D).
% byTrain recursive case
travel(O, D, byTrain(O, R)) :- byTrain(O, Z) , travel(Z, D, R).

% byPlane base case
travel(O, D, byPlane(O, D)) :- byPlane(O, D).
% byPlane recursive case
travel(O, D, byPlane(O, R)) :- byPlane(O, Z) , travel(Z, D, R).