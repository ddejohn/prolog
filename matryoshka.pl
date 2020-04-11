nested_in(irina, natasha).
nested_in(natasha, olga).
nested_in(olga, katarina).

directly_in(X, Y) :- nested_in(X, Y).

in(X, Y) :- directly_in(X, Y).
in(X, Y) :- directly_in(X, Z), in(Z, Y).
