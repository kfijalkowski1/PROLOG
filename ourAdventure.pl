/* Space destroyer, by Kamil Kuba Krzyś */

:- dynamic i_am_at/1, at/2, holding/1, sword/1, chicken/1, portalOne/1, portalTwo/1, portalThree/1.
:- retractall(at(_, _)), retractall(i_am_at(_)), retractall(alive(_)).


at(portalOne, statek).
at(poratTwo, caveOne).
at(portalThree, caveTwo).
at(sword, mesa)


% starting point
i_am_at(laka).

path(laka, n, kanion).
path(laka, e, lasDebowy).
path(laka, s, wioska).
path(laka, w, jezioro).

path(kanion, n, oceanPusty).
path(kanion, e, lasBrzozowy).
path(kanion, s, laka).
path(kanion, w, rzeka).

path(lasBrzozowy, n, rafaKoralowa).
path(lasBrzozowy, e, jaskinia2).
path(lasBrzozowy, s, lasDebowy).
path(lasBrzozowy, w, kanion).

path(lasDebowy, n, lasBrzozowy).
path(lasDebowy, e, wysokieGory).
path(lasDebowy, s, dolina).
path(lasDebowy, w, laka).

path(dolina, n, lasDebowy).
path(dolina, e, zniszczonyPortal).
path(dolina, s, mesa).
path(dolina, w, wioska).

path(wioska, n, laka).
path(wioska, e, dolina).
path(wioska, s, pustynia).
path(wioska, w, tajga).

path(tajga, n, jezioro).
path(tajga, e, wioska).
path(tajga, s, stepy).
path(tajga, w, jaskinia1).

path(jezioro, n, rzeka).
path(jezioro, e, laka).
path(jezioro, s, tajga).
path(jezioro, w, gory).

path(rzeka, n, oceanStatek).
path(rzeka, e, kanion).
path(rzeka, s, jezioro).
path(rzeka, w, obozRozbojnikow).


path(rzeka, n, oceanStatek).
path(rzeka, e, kanion).
path(rzeka, s, jezioro).
path(rzeka, w, obozRozbojnikow).

path(rzeka, n, oceanStatek).
path(rzeka, e, kanion).
path(rzeka, s, jezioro).
path(rzeka, w, obozRozbojnikow).


path(oceanStatek, e, oceanPusty).
path(oceanStatek, s, rzeka).
path(oceanStatek, w, pustkowie2).

path(oceanPusty, e, rafaKoralowa).
path(oceanPusty, s, kanion).
path(oceanPusty, w, oceanStatek).

path(rafaKoralowa, e, jaskiniaPodwodna).
path(rafaKoralowa, s, lasBrzozowy).
path(rafaKoralowa, w, oceanPusty).

path(jaskinia2, n, jaskiniaPodwodna).
path(jaskinia2, s, wysokieGory).
path(jaskinia2, w, lasBrzozowy).

path(wysokieGory, n, jaskinia2).
path(wysokieGory, s, zniszczonyPortal).
path(wysokieGory, w, lasDebowy).

path(zniszczonyPortal, n, wysokieGory).
path(zniszczonyPortal, s, pustkowie1).
path(zniszczonyPortal, w, dolina).

path(mesa, n, dolina).
path(mesa, e, pustkowie1).
path(mesa, w, pustynia).

path(pustynia, n, wioska).
path(pustynia, e, mesa).
path(pustynia, w, stepy).

path(stepy, n, tajga).
path(stepy, e, pustynia).
path(stepy, w, tundra).

path(jaskinia1, n, gory).
path(jaskinia1, e, tajga).
path(jaskinia1, s, tundra).

path(gory, n, obozRozbojnikow).
path(gory, e, jezioro).
path(gory, s, jaskinia1).

path(obozRozbojnikow, n, pustkowie2).
path(obozRozbojnikow, e, rzeka).
path(obozRozbojnikow, s, gory).


path(pustkowie2, e, oceanStatek).
path(pustkowie2, s, obozRozbojnikow).

path(jaskiniaPodwodna, s, jaskinia2).
path(jaskiniaPodwodna, w, rafaKoralowa).

path(pustkowie1, n, zniszczonyPortal).
path(pustkowie1, w, mesa).

path(tundra, n, jaskinia1).
path(tundra, e, stepy).

% description
describe(pustkowie2) :- write(''), nl.
describe(oceanStatek) :- write(''), nl.
describe(oceanPusty) :- write(''), nl.
describe(rafaKoralowa) :- write(''), nl.
describe(jaskiniaPodwodna) :- write(''), nl.

describe(obozRozbojnikow) :- write(''), nl.
describe(rzeka) :- write(''), nl.
describe(kanion) :- write(''), nl.
describe(lasBrzozowy) :- write(''), nl.
describe(jaskinia2) :- write(''), nl.

describe(gory) :- write(''), nl.
describe(jezioro) :- write(''), nl.
describe(laka) :- write('jestes na pieknej lace'), nl.
describe(lasDebowy) :- write(''), nl.
describe(wysokieGory) :- write(''), nl.

describe(jaskinia1) :- write(''), nl.
describe(tajga) :- write(''), nl.
describe(wioska) :- write(''), nl.
describe(dolina) :- write(''), nl.
describe(zniszczonyPortal) :- write(''), nl.

describe(tundra) :- write(''), nl.
describe(stepy) :- write(''), nl.
describe(pustynia) :- write(''), nl.
describe(mesa) :- write(''), nl.
describe(pustkowie1) :- write(''), nl.

% zasady przemiszczania sie
map :-
        i_am_at(Place),
        write("Aktualnie jestes w: "), write(Place), write(" możesz iść do:"), nl,
        (path(Place, Y, X)), write(X), write(" w kierunku: "), write(Y), nl , fail.
map.



/* These rules describe how to pick up an object. */

take(X) :-
        holding(X),
        write('You''re already holding it!'),
        !, nl.

take(X) :-
        i_am_at(Place),
        at(X, Place),
        retract(at(X, Place)),
        assert(holding(X)),
        write('OK.'),
        !, nl.

take(_) :-
        write('I don''t see it here.'),
        nl.


/* These rules describe how to put down an object. */

drop(X) :-
        holding(X),
        i_am_at(Place),
        retract(holding(X)),
        assert(at(X, Place)),
        write('OK.'),
        !, nl.

drop(_) :-
        write('You aren''t holding it!'),
        nl.


/* These rules define the direction letters as calls to go/1. */

n :- go(n).

e :- go(e).

s :- go(s).

w :- go(w).


/* This rule tells how to move in a given direction. */

go(Direction) :-
        i_am_at(Here),
        path(Here, Direction, There),
        retract(i_am_at(Here)),
        assert(i_am_at(There)),
        !, look.

go(_) :-
        write('You can''t go that way.').


/* This rule tells how to look about you. */

look :-
        i_am_at(Place),
        describe(Place),
        nl,
        notice_objects_at(Place),
        nl.


/* These rules set up a loop to mention all the objects
   in your vicinity. */

notice_objects_at(Place) :-
        at(X, Place),
        write('There is a '), write(X), write(' here.'), nl,
        fail.

notice_objects_at(_).


/* This rule tells how to die. */

die :-
        finish.


/* Under UNIX, the "halt." command quits Prolog but does not
   remove the output window. On a PC, however, the window
   disappears before the final output can be seen. Hence this
   routine requests the user to perform the final "halt." */

finish :-
        nl,
        write('The game is over. Please enter the "halt." command.'),
        nl.


/* This rule just writes out game instructions. */

instructions :-
        nl,
        write('Enter commands using standard Prolog syntax.'), nl,
        write('Available commands are:'), nl,
        write('start.             -- to start the game.'), nl,
        write('n.  s.  e.  w.     -- to go in that direction.'), nl,
        write('take(Object).      -- to pick up an object.'), nl,
        write('drop(Object).      -- to put down an object.'), nl,
        write('look.              -- to look around you again.'), nl,
        write('instructions.      -- to see this message again.'), nl,
        write('halt.              -- to end the game and quit.'), nl,
        nl.


/* This rule prints out instructions and tells where you are. */

start :-
        instructions,
        look.


/* These rules describe the various rooms.  Depending on
   circumstances, a room may have more than one description. */

describe(someplace) :- write('You are someplace.'), nl.

