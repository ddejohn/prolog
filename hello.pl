faculty(xavier).
faculty(brandi).

student(harvey).
student(ariel).
student(charlie).
student(dan).

visitor(laverne).
visitor(ramon).

advisor(xavier, dan).
advisor(brandi, ariel).

advisor(X,Y) :- faculty(X), student(Y).

access(X, B) :- faculty(X); student(X).
access(X, W) :- faculty(X); advisor(Y, X).
