mountain(everest, asia, 29029).
mountain(aconcagua, south_america, 22841).
mountain(mckinley, north_america, 20312).
mountain(kilimanjaro, africa, 19340).
mountain(elbrus, europe, 18510).
mountain(vinson, antarctica, 16050).
mountain(puncak_jaya, australia, 16023).

climber(john).
climber(kelly).
climber(maria).
climber(derek).
climber(thyago).

certified(john).
certified(kelly).
certified(maria).
certified(derek).
not(certified(thyago)).


member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).

will_climb(P, M) :- certified(P), climber(P), (
    P == maria;
    P == john, mountain(M, C, _), C==north_america;
    P == kelly, mountain(M, _, H), H >= 20000;
    P == derek, mountain(M, C, H), H =< 19000, (
        C == europe;
        C == africa;
        C == australia
    )
).

is_mountain(M) :- mountain(M, _, _).
taller_than(M, X) :- mountain(M, _, H), H > X.
located_in(M, X) :- mountain(M, C, _), C == X.

% map(F, X) :- F(X)




% Is Mt. Everest one of the highest peaks in the world? true
% Is the Kilimanjaro located in Africa? true
%  Is Mt. Elbrus more than 18K feet? true
% Is Thyago a certified climber? false
% Is John a certified climber? true
% All certified climbers? John, Kelly, Maria, and Derek
% All peaks that John would climb?  Mt. McKinley
% All peaks that Kelly would climb? Mt. Everest, the Aconcagua, and Mt. McKinley
% All peaks that Maria would climb? all of the 7 peaks!
% All peaks that Derek would climb? Mt. Elbrus and the Puncak Jaya
% All peaks that Thyago would climb? none (or false)