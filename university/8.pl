% entramos aquí. Primero siempre vamos a subir
subeYbaja([A, B | T]) :- A < B, subeYbajaASC([B | T]) , !.

% pueden pasar dos cosas: 
% 1.- O seguimos subiendo
% 2.- O empezamos a bajar

% Caso de seguir subiendo
subeYbajaASC([A, B | T]) :- A < B, subeYbajaASC([B | T]) , !.

% Caso donde empezamos a bajar.
subeYbajaASC([A, B | T]) :- A < B, subeYbajaDESC([B | T]) , !.

% Cuando bajamos no volvemos a subir. Así que siempre debemos cumplir que vamos a seguir bajando
subeYbajaDESC([A, B | T]) :- A > B, subeYbajaDESC([B | T]) , !.

% el último caso es cuando ya no nos quedan más elementos
subeYbajaDESC([A, B | []]) :- A > B.

