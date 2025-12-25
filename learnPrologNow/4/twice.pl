twice([], []).
twice([H|T], [H, H | W]):- twice(T, W).