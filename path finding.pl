edge(a,c).
edge(a,b).
edge(b,d).
edge(c,d).
edge(d,e).
edge(b,e).
edge(b,m).


connected(X,Y):- edge(X,Y),edge(Y,X).

path(X, Y, Visited):-
    connected(X, Y),
    \+ member(Y, Visited). % Ensure Y has not been visited in the current path.


path(X, Y, Visited):-
    connected(X, Z),
    \+ member(Z, Visited), % Ensure Z has not been visited in the current path.
    path(Z, Y, [X|Visited]).


has_path(X,Y):- path(X,Y,[]).
