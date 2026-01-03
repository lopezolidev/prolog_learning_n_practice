%flatten with append

%base case
flatten([],[]).

% Head is a list (Double recursion w/ append)
flatten([H | T], R) :-
    is_list(H), % native predicate that checks if element is a list
    ! , % if true, we commit to this rule
    flatten(H , FlatH), % flatting the 2º list
    flatten(T, FlatT), % we flat the rest
    append(FlatH, FlatT, R). % append the results

% Head is a simple element (atom)
flatten([H | T], [H | FlatT]) :-
    flatten(T, FlatT). % only process the rest.


% flatten without append

% wrapper
flattenV2(List, Result) :-
    aplanar(List, [], Result).


% Rule 1: base case -> if first list goes empty, result is the same as accumulator
aplanar([], Acc, Acc). 

% Rule 2: processed element is a list. First the tail will be processed and passed onto ResCola
% then we will process head of the list and paste it with ResCola to become result
aplanar([H | T], Acc, Result) :-
    aplanar(T, Acc, ResCola), % processing the end first
    aplanar(H, ResCola, Result). % pasting that end result with the head

% Rule 3: processed element is an atom. An atom is not an empty list nor a list
% with a single element
aplanar(X, Acc, [X | Acc]) :-
    X \= [] ,
    X \= [_ | _]. % clause that validates X is not a list