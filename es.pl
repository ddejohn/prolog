% Nick Gagliardi
% CS 3210
% reference: https://gist.github.com/adrianomelo/207c4da2f50744f04c9d

begin :- write('Welcome to this ES about board games!'), nl,
       write('I am going to ask questions about what you want to play.'), nl,
       write('Please only answer yes. or no.'), nl,
	   write('Ready?'), nl,
       read(Answer), (   (   Answer == no ; Answer == n) -> write('bye'), nl);
       hypothesize(Game), 
       write('You should play: '), 
       write(Game), nl, undo, nl,
       write('Did you like your result?'),
       read(Sat), (   (   Sat == yes ; Sat == y ) -> write('Excellent!'), nl, write('To try again, just type begin.')); 
                     (   write('It is not my fault you cant make up your mind!'), nl),
       write('To try again, just type begin.').

 /* hypotheses to be tested */
hypothesize(sorry) :- sorry, !.
hypothesize(candy_land) :- candy_land, !.
hypothesize(life) :- life, !.
hypothesize(monopoly) :- monopoly, !.
hypothesize(mouse_trap) :- mouse_trap, !.
hypothesize(yahtzee) :- yahtzee, !.
hypothesize(operation) :- opertation, !.
hypothesize(small_world) :- small_world, !.
hypothesize(forbidden_island) :- forbidden_island, !.
hypothesize(game_of_thrones) :- game_of_thrones, !. 
hypothesize(risk) :- risk, !. 
hypothesize(scrabble) :- scrabble, !. 
hypothesize(seven_wonders) :- seven_wonders, !.
hypothesize(axis_and_allies) :- axis_and_allies, !.
hypothesize(le_havre) :- le_havre, !.
hypothesize(warhammer) :- warhammer, !.
hypothesize(magic) :- magic, !.
hypothesize(battlestar_galactica) :- battlestar_galactica, !.
hypothesize(cosmic_encounter) :- cosmic_encounter, !.
hypothesize(arkham_horror) :- arkham_horror, !.
hypothesize(shadows_over_camelot) :- shadows_over_camelot, !.
hypothesize(last_night_on_earth) :- last_night_on_earth, !.
hypothesize(pandemic) :- pandemic, !.
hypothesize(dungeon_run) :- dungeon_run, !.
hypothesize(twister) :- twister, !.
hypothesize(cranium) :- cranium, !.
hypothesize(beyond_balderdash) :- beyond_balderdash, !.
hypothesize(wits_and_wagers) :- wits_and_wagers, !.
hypothesize(cash_n_guns) :- cash_n_guns, !.
hypothesize(jenga) :- jenga, !.
hypothesize(taboo) :- taboo, !.
hypothesize(go) :- go, !.
hypothesize(chess) :- chess.
hypothesize(cribbage) :- cribbage, !.
hypothesize(backgammon) :- backgammon, !.
hypothesize(puerto_rico) :- puerto_rico, !.
hypothesize(domaine) :- domaine, !.
hypothesize(agricola) :- agricola, !.
hypothesize(cities_and_knights) :- cities_and_knights, !.
hypothesize(steam) :- steam, !.
hypothesize(ticket_to_ride) :- ticket_to_ride, !.
hypothesize(pillars_of_earth) :- pillars_of_earth, !.
hypothesize(carcassonne) :- carcassonne, !.
hypothesize(qwirkle) :- qwirkle, !.
hypothesize(scattergories) :- scattergories, !.
hypothesize(dominion) :- dominion, !.
hypothesize(rummoli) :- rummoli, !.
hypothesize(trivial_persuit) :- trivial_persuit, !.
hypothesize(settlers_of_catan) :- settlers_of_catan, !.
hypothesize(unknown) :- unknown, !. /* no diagnosis */ 

/* game identification rules */ 
sorry :- children, bebe, verify(play_with_real_rules), verify(actually_fun_for_adults).
candy_land :- children, bebe, verify(girly_girls).
life :- children, bebe, verify(play_with_real_rules).
monopoly :- children, verify(let_them_experience_crushing_defeat).
mouse_trap :- children, bebe, verify(rube_goldberg).
yahtzee :- children, verify(need_portable).
opertation :- children, bebe.
small_world :- children, verify(win_alone).
forbidden_island :- children, verify(win_as_a_team).
game_of_thrones :- hours, verify(strategy). 
risk :- hours, verify(dice_battles).
seven_wonders :- cards, verify(super_complex).
axis_and_allies :- hours, verify(hardest_rules_ever).
warhammer :- nerd, verify(do_you_want_dozens_of_hours_preparing_to_play).
magic :- nerd, verify(do_you_really_like_spending_money).
battlestar_galactica :- nerd, verify(does_the_name_Boomer_give_you_wet_dreams).
arkham_horror :- peace, verify(do_you_secretly_wish_you_were_a_Private_Investigator).
shadows_over_camelot :- peace, verify(do_you_have_a_monty_python_fetish).
last_night_on_earth :- peace, verify(zombies).
pandemic :- peace, verify(would_you_like_to_fight_a_virus).
dungeon_run :- peace, verify(would_you_like_to_fight_monsters).
cranium :- party, embarrass, verify(do_you_want_to_be_an_artist).    		
beyond_balderdash :- party, verify(are_you_a_creative_liar), verify(word_based).
wits_and_wagers :- party, verify(are_you_a_creative_liar), verify(trivia_based).
cash_n_guns :- party, embarrass, verify(do_you_want_to_be_a_thug).
jenga :- party, verify(are_you_good_with_your_hands).
twister :- party, verify(looking_to_get_laid).
go :- elderly, verify(are_you_in_mensa_international), verify(is_chess_too_cliche).
chess :- elderly, verify(are_you_in_mensa_international).
cribbage :- elderly, verify(more_than_two_of_you).
domaine :- decider, rich.
puerto_rico :- decider, rich, verify(are_all_players_serious_board_game_nerds).
agricola :- decider, verify(do_you_have_a_farming_fetish).
steam :- verify(do_you_have_a_train_fetish), verify(do_you_enjoy_economics).
qwirkle :- verify(simple_rules), verify(do_you_want_to_play_with_tiles).
scattergories :- verify(simple_rules), verify(do_you_want_to_play_with_words).
le_havre :- verify(all_players_in_until_the_end).
taboo :- party.
backgammon :- elderly.
cities_and_knights :- decider.
rummoli :- verify(do_you_like_to_gamble).
ticket_to_ride :- verify(do_you_have_a_train_fetish).
pillars_of_earth :- verify(do_you_hate_defined_turns).
carcassonne :- verify(do_you_love_defined_turns).
trivial_persuit :- verify(are_you_a_know_it_all).
settlers_of_catan :- verify(do_you_like_to_plan_strat_before_your_turn).
dominion :- cards.
cosmic_encounter :- nerd.
scrabble :- verify(get_good_grades).
unknown :- unknown(hmm).

/* classification rules */ 
children :- verify(playing_with_kids), !. 
hours :- verify(playing_for_more_than_two_hours), !.
nerd :- verify(are_you_a_huge_nerd), !.
peace :- verify(do_you_think_everyone_should_just_get_along), !.
party :- verify(party_game), !.
elderly :- verify(are_you_over_the_age_of_fifty), !.
decider :- verify(do_you_like_constant_hard_choices), !.
bebe :- verify(younger_than_seven), !.
cards :- verify(card_or_deck_based_game), !.
embarrass :- verify(want_to_embarass_your_friends), !.    
rich :- verify(do_you_mind_having_to_buy_two_games), !.

/* how to ask questions */ 
ask(Question) :- 
        write('Describe your situation: '), 
        write(Question), write('? '), 
         read(Response), nl, 
         ( (Response == yes ; Response == y) 
         -> assert(yes(Question)) ; 
         assert(no(Question)), fail).
:- dynamic yes/1,no/1. 
/* How to verify something */ 
verify(S) :- (yes(S) -> true ; (no(S) -> fail ; ask(S))).
unknown(hmm) :- write('Hmm, I could not figure this one out, my bad...'), nl.
/* undo all yes/no assertions */ 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail. 
undo. 
