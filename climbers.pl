continent(asia).
continent(south_america).
continent(north_america).
continent(africa).
continent(europe).
continent(antarctica).
continent(australia).

mountain(everest, asia, 29029).
mountain(aconcagua, south_america, 22841).
mountain(mckinley, north_america, 20312).
mountain(kilimanjaro, africa, 19340).
mountain(elbrus, europe, 18510).
mountain(vinson, antarctica, 16050).
mountain(puncak_jaya, australia, 16023).

climber(john, certified, north_america).
climber(kelly, certified, 20000).
climber(maria, certified).
climber(derek, certified, europe, africa, australia, 19000).
climber(thyago).

certified(john).
certified(kelly).
certified(maria).
certified(derek).

will_climb(C) :- 
