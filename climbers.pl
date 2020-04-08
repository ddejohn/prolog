mountain(everest, asia, 29029).
mountain(aconcagua, south_america, 22841).
mountain(mckinley, north_america, 20312).
mountain(kilimanjaro, africa, 19340).
mountain(elbrus, europe, 18510).
mountain(vinson, antarctica, 16050).
mountain(puncak_jaya, australia, 16023).

climber(john, certified).
climber(kelly, certified).
climber(maria, certified).
climber(derek, certified).
climber(thyago, _).

% can compare mountain > mountain with this, not just mountain > height
taller_than(M, X) :-
    mountain(X, _, H), taller_than(M, H);
    integer(X), mountain(M, _, H), H > X.

is_mountain(M) :- mountain(M, _, _).

located_in(M, X) :- mountain(M, C, _), C == X.

certified(P) :- climber(P, C), C == certified.

will_climb(P, M) :- climber(P, certified), (
    P == maria, mountain(M, _, _);
    P == john, mountain(M, C, _), C==north_america;
    P == kelly, mountain(M, _, H), H >= 20000;
    P == derek, mountain(M, C, H), H =< 19000, (
        C == europe;
        C == africa;
        C == australia
    )
).

