% reference: https://gist.github.com/adrianomelo/207c4da2f50744f04c9d

begin :- write('Welcome to this ES about minerals!'), nl,
    write('I am going to ask questions about the specimen\'s traits.'), nl,
	write('Please only answer yes or no.'), nl,
    write('Ready?'), nl,
    read(R), (R == no -> write('bye'), nl);
    identify(Mineral) ->
    	(write('Sounds like you\'re describing '),
        write(Mineral), nl,
        write('Is this correct?'),
        read(R), (R == yes -> write('Excellent!'), nl);
        identify(unknown),
    	undo),
    write('To try again, type \'begin.\'').


% hypotheses to be tested
identify(magnetite)     :- magnetite,       !.
identify(graphite)      :- graphite,        !.
identify(galena)        :- galena,          !.
identify(hematite)      :- hematite,        !.
identify(pyrite)        :- pyrite,          !.
identify(chalcopyrite)  :- chalcopyrite,    !.
identify(hornblende)    :- hornblende,      !.
identify(augite)        :- augite,          !.
identify(garnet)        :- garnet,          !.
identify(olivine)       :- olivine,         !.
identify(biotite)       :- biotite,         !.
identify(bauxite)       :- bauxite,         !.
identify(plagioclase)   :- plagioclase,     !.
identify(orthoclase)    :- orthoclase,      !.
identify(quartz)        :- quartz,          !.
identify(halite)        :- halite,          !.
identify(calcite)       :- calcite,         !.
identify(limonite)      :- limonite,        !.
identify(sulfur)        :- sulfur,          !.
identify(malachite)     :- malachite,       !.
identify(muscovite)     :- muscovite,       !.
identify(selenite)      :- selenite,        !.
identify(kaolinite)     :- kaolinite,       !.
identify(talc)          :- talc,            !.
identify(alabaster)     :- alabaster,       !.
identify(unknown)       :- unknown,         !.


% mineral identification rules
magnetite :- verify(metallic_luster),
    verify(magnetic).

graphite :- verify(metallic_luster),
    verify(silver_color),
    verify(softer_than_fingernail).

galena :- verify(metallic_luster),
    verify(silver_color),
    verify(black_streaks).

hematite :- verify(metallic_luster),
    verify(silver_color),
    verify(red_brown_streaks).

pyrite :- verify(metallic_luster),
    verify(gold_color),
    verify(bright_brassy).

chalcopyrite :- verify(metallic_luster),
    verify(gold_color),
    verify(tarnished).

hornblende :- verify(dark_in_color),
    verify(harder_than_steel_nail),
    verify(good_cleavage),
    verify(cleavage_at_56_124_angles).

augite :- verify(dark_in_color),
    verify(harder_than_steel_nail),
    verify(good_cleavage),
    verify(cleavage_at_87_93_angles).

garnet :- verify(dark_in_color),
    verify(harder_than_steel_nail),
    verify(red_brown).

olivine :- verify(dark_in_color),
    verify(harder_than_steel_nail),
    verify(dark_to_light_green).

biotite :- verify(dark_in_color),
    verify(good_cleavage).

limonite :- verify(dark_in_color),
    verify(yellow_brown_streaks).

malachite :- verify(dark_in_color),
    verify(green_streaks).

bauxite :- verify(dark_in_color),
    verify(white_streaks).

plagioclase :- verify(harder_than_steel_nail),
    verify(cleavage),
    verify(striations).

orthoclase :- verify(harder_than_steel_nail),
    verify(cleavage).

quartz :- verify(harder_than_steel_nail).

halite :- verify(harder_than_fingernail),
    verify(cubic_cleavage).

calcite :- verify(harder_than_fingernail),
    verify(non_cubic_cleavage),
    verify(reacts_with_hydrochloric_acid).

sulfur :- verify(harder_than_fingernail),
    verify(bright_yellow).

muscovite :- verify(good_cleavage),
    verify(thin_sheets).

selenite :- verify(good_cleavage),
    verify(thick_sheets).

kaolinite :- verify(slippery),
    verify(pure_white).

talc :- verify(slippery),
    verify(light_coloring).

alabaster :- verify(white).

unknown :- write('I don\'t have enough information to identify this specimen.'),
    nl, write('Try again?'),
    read(Again), (Again == no -> write('bye')), undo, fail.


% ask questions
ask(Q) :-
    write('Does the mineral have this attribute: '), write(Q), write('? '),
    read(R), nl, (R == yes -> assert(yes(Q)); assert(no(Q)), fail).
:- dynamic yes/1, no/1.
verify(Q) :- (yes(Q) -> true ; (no(Q) -> fail ; ask(Q))).


/* undo all yes/no assertions */
undo :- retract(yes(_)), retract(no(_)), fail.
