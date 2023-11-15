% paths

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


% layout of objects

at(portalOne, oceanStatek).
at(portalTwo, jaskinia2).
at(portalThree, jaskinia1).
at(miecz, gory).
at(patyk, tajga).
at(zlotaBransoleta, oceanStatek).
at(naramiennik, rafaKoralowa).
at(skorzaneButy, obozRozbojnikow).
at(miod, lasBrzozowy).
at(zbroja, jaskinia2).
at(skoraWilka, lasDebowy).
at(chleb, wioska).
at(kamien, pustkowie2).


% health changers
healthChanger(kanion, -3).
healthChanger(wysokieGory, -4).
healthChanger(tundra, -3).
healthChanger(tajga, -1).
healthChanger(pustynia, -1).
healthChanger(gory, -2).

% health changers lost fight
healthChangerLostFight(obozRozbojnikow, -8).
healthChangerLostFight(jaskiniaPodwodna, -5).
healthChangerLostFight(jaskinia2, -7).
healthChangerLostFight(jaskinia1, -6).
healthChangerLostFight(lasDebowy, -4).


% directions reverse
directionOpposite(n, s).
directionOpposite(s, n).
directionOpposite(w, e).
directionOpposite(e, w).


% attack values of objects (object, atackChange, healthChange)
statsChanger(patyk, 2, 0).
statsChanger(kamien, 1, 0).
statsChanger(miecz, 4, 0).
statsChanger(zlotaBransoleta, 2, 2).
statsChanger(naramiennik, 0, 3).
statsChanger(skorzaneButy, 0, 2).
statsChanger(miod, 0, 2).
statsChanger(zbroja, 0, 4).
statsChanger(skoraWilka, 2, 3).
statsChanger(chleb, 0, 2).


attackRequired(obozRozbojnikow, 12).
attackRequired(jaskiniaPodwodna, 5).
attackRequired(jaskinia2, 7).
attackRequired(jaskinia1, 6).
attackRequired(lasDebowy, 4).
