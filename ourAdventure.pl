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
describe(pustkowie2) :-
    write('Wędrujesz przez pustkowie, gdzie krajobraz jest surowy, a ziemia spękana od przesuszenia.'), nl,
    write('Nie ma tu żadnych oznak życia, a jedynym towarzyszem jest oszałamiające słońce na bezchmurnym niebie.'), nl,
    write('W oddali dostrzegasz samotne formacje skalne, które zdają się być ostatnimi świadkami dawnej obfitości tego terenu.'), nl,
    write('Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.'), nl.

describe(oceanStatek) :-
    write('Stoisz na brzegu spokojnych wód oceanu, gdzie horyzont łączy się z niebem w jednym nieskończonym punkcie.'), nl,
    write('W oddali dostrzegasz zatopiony wrak statku, jego zardzewiałe fragmenty unoszą się na powierzchni wody.'), nl,
    write('Pęknięte burty i rozerwane żagle świadczą o dawnej chwale tego statku, który teraz spoczywa na dnie oceanu.'), nl,
    write('Słyszysz odgłos fal oblewających wrak, a powietrze unosi się zapachem morskiej soli i historii opowiedzianej przez zatopiony statek.'), nl.

describe(oceanPusty) :-
    write('Nurkujesz w głąb oceanu, a wokół ciebie rozciąga się pusty, bezkresny obszar wód głębinowych.'), nl,
    write('Brak jakiejkolwiek roślinności czy form życia, jedynie monotonny krajobraz niekończących się wód oceanicznych.'), nl,
    write('Ciemność otacza cię ze wszystkich stron, a jedynym dźwiękiem jest łagodne szumienie wody przemieszczanej przez ruchy fal.'), nl,
    write('To miejsce emanuje spokojem, ale jednocześnie wzbudza uczucie nieskończoności i tajemnicy oceanicznej głębi.'), nl.

describe(rafaKoralowa) :-
    write('Zanurzasz się w barwnym świecie rafy koralowej, gdzie tysiące koralowców tworzy niezwykłe formacje podwodne.'), nl,
    write('Rafa pulsuje życiem, a kolorowe ryby przeplatają się między koralami, tworząc hipnotyzujący taniec pod wodą.'), nl,
    write('Na dnie rafy dostrzegasz ukryte jaskinie i groty, które stanowią schronienie dla różnorodnych morskich istot.'), nl,
    write('Dźwięki wody i śpiewu morskich istot wypełniają przestrzeń, nadając temu miejscu magii i niepowtarzalnego piękna.'), nl.

describe(jaskiniaPodwodna) :-
    write('Nurkujesz głęboko w czeluście podwodnej jaskini, gdzie światło słoneczne ledwo przenika przez kryształową wodę.'), nl,
    write('Ściany jaskini są pokryte koralowymi formacjami, a kolorowe ryby migoczą wśród zakamarków, tworząc podwodne arcydzieło natury.'), nl,
    write('Woda jest przejrzysta, a na dnie jaskini dostrzegasz ukryte jaskinie i szczeliny, które prowadzą do nieznanych zakątków podwodnego świata.'), nl,
    write('Dźwięki wody i subtelne szmery morskich istot wypełniają przestrzeń, nadając temu miejscu magiczny i tajemniczy charakter.'), nl.

describe(obozRozbojnikow) :-
    write('Znajdujesz się przed obozem rozbójników, ukrytym głęboko w gęstym lesie, z dala od cywilizacji.'), nl,
    write('Na obrzeżach obozu widzisz prymitywne szałasy zrobione z gałęzi i skór, a dym z ognisk unosi się w powietrze.'), nl,
    write('Wokół obozu czujesz podejrzane spojrzenia, a z oddali dobiegają odgłosy dzikich zwierząt, które współistnieją z rozbójnikami.'), nl,
    write('Strzeż się, gdyż to miejsce pełne jest tajemnic i niebezpieczeństw, które czyhają na każdego, kto zbliży się zbyt blisko.'), nl.

describe(rzeka) :-
    write('Stoisz na brzegu urokliwego jeziora, gdzie spokojna rzeka płynąca z gór wpada w jego nurt, tworząc malownicze połączenie wód.'), nl,
    write('Miejsce to emanuje harmonią natury, gdzie szum rzeki miesza się z delikatnym falowaniem jeziora.'), nl,
    write('Ptaki wodne unoszą się na powierzchni jeziora, a nad brzegiem rosną kolorowe kwiaty, zdobiąc otoczenie tego magicznego zakątka.'), nl,
    write('Woda jeziora mieni się odcieniami niebieskiego, a promienie słońca odbijają się na powierzchni, jakby malowały błyszczący obraz natury.'), nl.

describe(kanion) :-
    write('Stoisz na krawędzi wielkiego kanionu, gdzie ściany skalne wznoszą się ku niebu, tworząc imponujący labirynt głębokich wąwozów.'), nl,
    write('W dnie kanionu płynie rwąca rzeka, której wody błyszczą w świetle słońca, tworząc błękitną nitkę wśród skalistego krajobrazu.'), nl,
    write('Na ścianach skalnych dostrzegasz warstwy skał, które zdają się opowiadać historię wielowiekowych procesów geologicznych.'), nl,
    write('W powietrzu unosi się świeży zapach wilgotnej ziemi, a echo odgłosów natury tworzy magię tego niezwykłego miejsca.'), nl.

describe(lasBrzozowy) :-
    write('Przechadzasz się przez uroczy las brzozowy, gdzie delikatne liście brzóz szumią w letnim wietrze.'), nl,
    write('Pod stopami czujesz miękki dywan z opadłych liści, a promienie słońca przebijające się przez korony drzew malują złote plamy na ziemi.'), nl,
    write('Ptaki śpiewają miłe melodie, tworząc harmonijną symfonię natury, a ścieżki wiodą cię między korzeniami i pniami brzóz.'), nl,
    write('W oddali słychać szmer strumienia, który dodaje uroku temu malowniczemu zakątkowi lasu.'), nl.

describe(jaskinia2) :-
    write('Wkraczasz do jaskini, a wnętrze mieni się blaskiem tysięcy kryształów o różnych kształtach i kolorach.'), nl,
    write('Ściany jaskini są dosłownie pokryte błyszczącymi klejnotami, które odbijają światło w fantastyczny sposób.'), nl,
    write('W powietrzu unoszą się iskry, tworząc magiczną aurę wokół ciebie, gdy kroczysz po posypanym kryształami podłożu.'), nl,
    write('Delikatne dźwięki echo odbijają się od kryształów, tworząc hipnotyzującą symfonię, której nigdy wcześniej nie słyszałeś.'), nl.

describe(gory) :-
    write('Wspinasz się po majestatycznych szczytach gór, gdzie powietrze staje się rzadkie, a panorama roztacza się na wszystkie strony.'), nl,
    write('Skały odbijają odcienie wschodzącego słońca, malując krajobraz w ciepłych kolorach pomarańczy i różu.'), nl,
    write('Na szczytach gór błyszczą śnieżnobiałe czapki, a stoki porośnięte są kolorowymi kwiatami i mchami.'), nl,
    write('W dolinach górskich widać kręte rzeki, które biegną w dół, dodając życia temu surowemu, ale pięknemu otoczeniu.'), nl.

describe(jezioro) :-
    write('Stoisz na brzegu spokojnego jeziora, którego powierzchnia migocze w blasku promieni słonecznych.'), nl,
    write('Woda jest krystalicznie czysta, a na jej powierzchni unoszą się kolorowe liście i płyną delikatne fale.'), nl.

describe(laka) :-
    write('Jesteś na malowniczej łące, gdzie zielenią traw rozbłyskują kolorowe kwiaty.'), nl,
    write('Ptaki śpiewają w gałęziach drzew, a w oddali słychać szmer strumyka.'), nl.

describe(wysokieGory) :-
    write('Stoisz w cieniu potężnych szczytów wysokich gór, gdzie powietrze jest rzadkie, a krajobraz zapiera dech w piersiach.'), nl,
    write('Na ich szczytach błyszczą wieczne lodowce, a w dolinach unosi się lekka mgła.'), nl,
    write('Słyszysz szum wiatru między skałami, a widok sięga daleko poza horyzont.'), nl.

describe(jaskinia1) :-
    write('Wchodzisz do ciemnej jaskini, gdzie ciemność otacza cię ze wszystkich stron.'), nl,
    write('Mroczne tunele wydają się prowadzić głęboko pod ziemię.'), nl,
    write('Słyszysz odgłosy kapryśnych kropli wody, a ściany jaskini są pokryte tajemniczymi rysunkami.'), nl.

describe(tajga) :-
    write('Przechadzasz się przez tajgę, gdzie drzewa sosnowe gęsto porastają obszar wokół ciebie.'), nl,
    write('Pod stopami chrupie suchy mech, a powietrze nasycone jest zapachem żywicy.'), nl,
    write('W oddali słychać szmer strumienia, a w górze przelatują kolorowe ptaki.'), nl.

describe(wioska) :-
    write('Przechadzasz się przez malowniczą wioskę, gdzie drewniane domy układają się wzdłuż brukowanych uliczek.'), nl,
    write('Ludzie rozmawiają ze sobą na ulicach, a dzieci biegają wesoło wokół zabawek.'), nl,
    write('Na rynku widzisz kolorowe stragany, na których sprzedawane są świeże owoce i rękodzieła.'), nl.

describe(dolina) :-
    write('Przechadzasz się po spokojnej dolinie, gdzie z obu stron wznoszą się zielone wzgórza.'), nl,
    write('W dolinie kwitną kolorowe kwiaty, a delikatny wiatr niesie ze sobą świeży zapach traw i roślin.'), nl,
    write('W oddali widzisz cichą rzekę, która biegnie przez środek doliny, dodając jej uroku.'), nl.

describe(zniszczonyPortal) :-
    write('Stoisz przed zniszczonym portalem, którego kształt przypomina pozostałości po dawnych potęgach magicznych.'), nl,
    write('Jego kamienne bloki są popękane, a magiczne symbole na powierzchni zatraciły swój dawny blask.'), nl,
    write('Wokół portalu panuje dziwna atmosfera, jakby pozostałości magii wciąż unosiły się w powietrzu.'), nl,
    write('Głębokie rysy zdobią struktury portalu, świadcząc o jego wielowiekowej historii i potężnych wydarzeniach.'), nl,
    write('Z dala słyszysz szepty przeszłości, które niosą opowieści o dawnych podróżach między światami.'), nl.

describe(tundra) :-
    write('Przechadzasz się po rozległej tundrze, gdzie ziemia jest pokryta warstwą mchu i niskich krzewów, a drzewa są rzadkością.'), nl,
    write('Pod stopami czujesz chłód wilgotnej gleby, a w powietrzu unosi się delikatny zapach mchu i roślinności tundry.'), nl,
    write('Na horyzoncie widzisz majestatyczne góry pokryte śniegiem, które kontrastują z płaskim krajobrazem tundry.'), nl,
    write('W oddali słychać odgłosy ptaków, które przemierzają niebo, a podczas wiatru trawy tundry poruszają się jak ocean fal.'), nl.

describe(stepy) :-
    write('Przechadzasz się po rozległych stepach, gdzie trawa faluje na wietrze, tworząc ocean zielonej roślinności.'), nl,
    write('Pod stopami czujesz miękki dywan trawy, a w oddali widzisz grupy dzikich koni swobodnie biegających po stepach.'), nl,
    write('Niebo jest bezchmurne, a słońce rzuca złote promienie na obszar stepów, dodając im blasku.'), nl,
    write('Stepy są ciche, ale wiatr niesie ze sobą dźwięki natury, takie jak świergot ptaków i szelest trawy.'), nl.

describe(pustynia) :-
    write('Wkraczasz na bezkresną pustynię, gdzie ziemia pokryta jest złotym piaskiem, a horyzont zdaje się nigdy nie kończyć.'), nl,
    write('Słońce praży niebłaganie, tworząc fale gorącego powietrza, a cienie są niemal niemożliwe do znalezienia.'), nl,
    write('W oddali widzisz majestatyczne wydmy, które zdają się tańczyć w migotliwym świetle pustynnego pejzażu.'), nl,
    write('Pustynia jest jak krajobraz z innej planety, gdzie cisza jest tylko przerywana szumem wiatru i odgłosami kroków po piasku.'), nl.

describe(mesa) :-
    write('Stoisz na szczycie majestatycznej mesy, gdzie kamienne formacje tworzą surrealistyczny krajobraz.'), nl,
    write('Słońce rzuca długie cienie na czerwoną ziemię, podkreślając kontury unikalnych kształtów skał.'), nl,
    write('Mesa przypomina naturalne świątynie, a ich wysokie klify oferują zapierające dech w piersiach widoki na otaczający krajobraz.'), nl,
    write('W powietrzu unosi się ciepły wiatr, przenoszący zapach suchej ziemi i roślinności adaptującej się do trudnych warunków.'), nl.

describe(pustkowie1) :-
    write('Wchodzisz na obszar pustkowia, gdzie ziemia jest spękana i sucha, a niebo zdaje się nie mieć końca.'), nl,
    write('Nie ma tu żadnej roślinności, a jedynym towarzyszem jest skwarny wiatr unoszący kłęby kurzu w powietrzu.'), nl,
    write('Na horyzoncie widzisz jedynie opustoszałe ruiny, pozostałość po dawnych cywilizacjach, które przepadły w zapomnieniu.'), nl,
    write('Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.'), nl.

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

