:- discontiguous describe/1.
:- discontiguous search/1.

% description
describe(pustkowie2) :-
    write('Wędrujesz przez pustkowie, gdzie krajobraz jest surowy, a ziemia spękana od przesuszenia.'), nl,
    write('Nie ma tu żadnych oznak życia, a jedynym towarzyszem jest oszałamiające słońce na bezchmurnym niebie.'), nl,
    write('W oddali dostrzegasz samotne formacje skalne, które zdają się być ostatnimi świadkami dawnej obfitości tego terenu.'), nl,
    write('Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.'), nl.

% Opis odkrytego kamienia +1 atak
search(pustkowie2) :-
    write('Rozglądasz się uważnie i dostrzegasz kamień, który może posłużyć za broń.'), nl,
    write('Jest to solidny kamień o ostrym kształcie, nadający się do rzucania lub używania jako improwizowana broń.'), nl.

describe(oceanStatek) :-
    write('Unosisz nad dnem oceanu, gdzie rozciąga się zatopiony wrak statku, pozostawiający po sobie tylko fragmenty dawnej świetności.'), nl,
    write('Roślinność morska oplata kadłub statku, a promienie słońca przebijające się przez wodę tworzą migotliwe światło na dnie oceanu.'), nl,
    write('Wokół unoszą się ryby, a w szczelinach wraku odkrywasz tajemnice, które przetrwały upadek tego statku.'), nl,
    write('Czujesz nutę tajemnicy, gdy zbliżasz się do zatopionego wraku, a woda rozchodzi się wokół ciebie jak cicha opowieść o przeszłości.'), nl.

% Opis odkrytej części portalu 1/3, złotej bransoletki +2 punkty życia
search(oceanStatek) :-
    write('Rozglądasz się wokół wraku i odkrywasz część portalu, która zdaje się być fragmentem starożytnego artefaktu.'), nl,
    write('Część portalu jest wykonana z nieznanego metalu i emanuje słabym światłem, sugerując swoją magiczną naturę.'), nl,
    write('Podczas przeszukiwania wnętrza wraku znajdujesz piękną złotą bransoletkę zdobioną misternymi wzorami.'), nl,
    write('To wyjątkowy przedmiot, który zdaje się być starożytnym skarbem utraconym w czasie zatopienia statku.'), nl.

describe(oceanPusty) :-
    write('Nurkujesz w głąb oceanu, a wokół ciebie rozciąga się pusty, bezkresny obszar wód głębinowych.'), nl,
    write('Brak jakiejkolwiek roślinności czy form życia, jedynie monotonny krajobraz niekończących się wód oceanicznych.'), nl,
    write('Ciemność otacza cię ze wszystkich stron, a jedynym dźwiękiem jest łagodne szumienie wody przemieszczanej przez ruchy fal.'), nl,
    write('To miejsce emanuje spokojem, ale jednocześnie wzbudza uczucie nieskończoności i tajemnicy oceanicznej głębi.'), nl.

search(oceanPusty) :-
    write('Mimo starannej obserwacji, nie odkrywasz żadnych interesujących elementów tego obszaru oceanicznego.'), nl.

describe(rafaKoralowa) :-
    write('Zanurzasz się w barwnym świecie rafy koralowej, gdzie tysiące koralowców tworzy niezwykłe formacje podwodne.'), nl,
    write('Rafa pulsuje życiem, a kolorowe ryby przeplatają się między koralami, tworząc hipnotyzujący taniec pod wodą.'), nl,
    write('Na dnie rafy dostrzegasz ukryte jaskinie i groty, które stanowią schronienie dla różnorodnych morskich istot.'), nl,
    write('Dźwięki wody i śpiewu morskich istot wypełniają przestrzeń, nadając temu miejscu magii i niepowtarzalnego piękna.'), nl.

% Opis odkrytej skrzynki, po podniesieniu znajdujesz w naramiennik +3 punkty życia
search(rafaKoralowa) :-
    write('Podczas nurkowania w rafie koralowej dostrzegasz starą skrzynkę, która leży między koralami.'), nl,
    write('Skrzynka zdaje się być starożytna i pokryta kolorowymi morskimi roślinami, co czyni ją trudno dostrzegalną.'), nl.


describe(jaskiniaPodwodna) :-
    write('Nurkujesz głęboko w czeluście podwodnej jaskini, gdzie światło słoneczne ledwo przenika przez kryształową wodę.'), nl,
    write('Ściany jaskini są pokryte koralowymi formacjami, a kolorowe ryby migoczą wśród zakamarków, tworząc podwodne arcydzieło natury.'), nl,
    write('Woda jest przejrzysta, a na dnie jaskini dostrzegasz ukryte jaskinie i szczeliny, które prowadzą do nieznanych zakątków podwodnego świata.'), nl,
    write('W ciemnościach jaskini dostrzegasz podejrzany ruch, sugerujący obecność tajemniczych postaci ukrytych w cieniach.'), nl,
    write('Dźwięki wody i subtelne szmery morskich istot wypełniają przestrzeń, nadając temu miejscu magiczny i tajemniczy charakter.'), nl.

search(jaskiniaPodwodna) :-
    write('W jaskini podwodnej dostrzegasz jedynie pozostałości po dawnych ucztach utopców.'), nl.

describe(obozRozbojnikow) :-
    write('Znajdujesz się przed obozem rozbójników, ukrytym obok pustkowia w gęstym lesie, z dala od cywilizacji.'), nl,
    write('Na obrzeżach obozu widzisz prymitywne szałasy zrobione z gałęzi i skór, a dym z ognisk unosi się w powietrze.'), nl,
    write('Wokół obozu czujesz podejrzane spojrzenia, a z oddali dobiegają odgłosy dzikich zwierząt, które współistnieją z rozbójnikami.'), nl,
    write('Gdy wkroczysz na teren obozu, nagle zostajesz zaatakowany przez grupę rozbójników! Musisz bronić się przed ich atakiem.'), nl.

% Opis odkrytych skórzanych butów +2 punkty życia
search(obozRozbojnikow) :-
    write('Po pokonaniu rozbójników, przeszukujesz obozowe zaułki i znajdujesz skórzane buty, które mogą się okazać użyteczne w dalszych przygodach.'), nl,
    write('Dodatkowo, natrafiasz na kilka pozostałości po wcześniejszych ofiarach rozbójników, ale większość wartościowych przedmiotów została rozgrabiona.'), nl.

describe(rzeka) :-
    write('Stoisz na brzegu urokliwego jeziora, gdzie spokojna rzeka płynąca z gór wpada w jego nurt, tworząc malownicze połączenie wód.'), nl,
    write('Miejsce to emanuje harmonią natury, gdzie szum rzeki miesza się z delikatnym falowaniem jeziora.'), nl,
    write('Ptaki wodne unoszą się na powierzchni jeziora, a nad brzegiem rosną kolorowe kwiaty, zdobiąc otoczenie tego magicznego zakątka.'), nl,
    write('Woda jeziora mieni się odcieniami niebieskiego, a promienie słońca odbijają się na powierzchni, jakby malowały błyszczący obraz natury.'), nl.

search(rzeka) :-
    write('Przeszukujesz brzegi rzeki, starannie zwracając uwagę na otoczenie.'), nl,
    write('Niestety, nie dostrzegasz niczego szczególnie interesującego.'), nl,
    write('Jedynym ruchem na horyzoncie są kilka ptaków wodnych, unoszących się na leniwym nurcie rzeki.'), nl,
    write('Pomimo starannych poszukiwań, wydaje się, że rzeka nie kryje żadnych tajemniczych przedmiotów czy innych odkryć.'), nl.

describe(kanion) :-
    write('Nagle zapada się pod tobą ziemia, cudem przeżywasz upadek jednak teraz znajdujesz sięna dnie wielkiego kanionu.'), nl,
    write('Ściany skalne wznoszą się ku niebu, tworząc imponujący labirynt głębokich wąwozów.'), nl,
    write('W dnie kanionu płynie mały strumyk, którego błyszczące wody stanowią błękitną nitkę wśród skalistego krajobrazu.'), nl.

search(kanion) :-
    write('Podczas przeszukiwania kanionu znajdujesz tylko kilka porozrzucanych kości,'), nl,
    write('które wydają się być pozostałością po podróżnych, którzy nie mieli tyle szczęścia co ty.'), nl.


describe(lasBrzozowy) :-
    write('Przechadzasz się przez uroczy las brzozowy, gdzie delikatne liście brzóz szumią w letnim wietrze.'), nl,
    write('Pod stopami czujesz miękki dywan z opadłych liści, a promienie słońca przebijające się przez korony drzew malują złote plamy na ziemi.'), nl,
    write('Ptaki śpiewają miłe melodie, tworząc harmonijną symfonię natury, a ścieżki wiodą cię między korzeniami i pniami brzóz.'), nl,
    write('W oddali słychać szmer strumienia, który dodaje uroku temu malowniczemu zakątkowi lasu.'), nl.

% Opis akcji przeszukania lasu brzozowego, miód +2 punkty życia
search(lasBrzozowy) :-
    write('Przeszukując las brzozowy, twoje uszy wychwytują delikatny dźwięk brzęczenia.'), nl,
    write('Podążasz za dźwiękiem i nagle trafiasz na ukryty ul pszczół, zbudowany w gęstym konarach drzew brzozowych.'), nl,
    write('Pszczoły pracują gorliwie, zbierając nektar i wytwarzając pyszny miód, który przepełnia powietrze słodkim aromatem.'), nl,
    write('To magiczne znalezisko w lesie brzozowym ukazuje nie tylko pracowitość pszczół, ale także możliwość zebrania smacznego miodu.'), nl.

describe(jaskinia2) :-
    write('Wkraczasz do jaskini, a wnętrze mieni się blaskiem tysięcy kryształów o różnych kształtach i kolorach.'), nl,
    write('Ściany jaskini są dosłownie pokryte błyszczącymi klejnotami, które odbijają światło w fantastyczny sposób.'), nl,
    write('W powietrzu unoszą się iskry, tworząc magiczną aurę wokół ciebie, gdy kroczysz po posypanym kryształami podłożu.'), nl,
    write('Delikatne dźwięki echo odbijają się od kryształów, tworząc hipnotyzującą symfonię, której nigdy wcześniej nie słyszałeś.'), nl,
    write('Nagle, z cienia jaskini wyłaniają się wrogie szkielety! Atakują cię zobacząc, ich oczy świecą złowrogo w mroku.'), nl,
    write('Musisz bronić się przed tymi nieumarłymi przeciwnikami, by kontynuować swoją podróż przez tę magiczną, lecz niebezpieczną jaskinię.'), nl.

% Żelazna zbroja +4 punkty życia i część portalu 2/3
search(jaskinia2) :-
    write('Po zakończonym starciu ze szkieletami przystępujesz do przeszukania jaskini w poszukiwaniu cennych przedmiotów.'), nl,
    write('Okazuje się, że szkielety nie były tu bez powodu albowiem pilnowały one części portalu.'), nl,
    write('Część portalu jest wykonana z nieznanego metalu i emanuje słabym światłem, sugerując swoją magiczną naturę.'), nl,
    write('Twoje badania zostają nagrodzone, gdy natrafiasz na żelazną zbroję ukrytą w jednym z zakamarków.'), nl,
    write('Zbroja jest solidna i wydaje się być w dobrym stanie, gotowa do założenia i ochrony przed kolejnymi niebezpieczeństwami.'), nl.

describe(gory) :-
    write('Wspinasz się po majestatycznych szczytach gór, gdzie powietrze staje się rzadkie, a panorama roztacza się na wszystkie strony.'), nl,
    write('Skały odbijają odcienie wschodzącego słońca, malując krajobraz w ciepłych kolorach pomarańczy i różu.'), nl,
    write('Na szczytach gór błyszczą śnieżnobiałe czapki, a stoki porośnięte są kolorowymi kwiatami i mchami.'), nl,
    write('W trakcie wspinaczki niestety potykasz się o nierówność terenu, uszkadzając sobie nogę.'), nl,
    write('Choć kontuzja nie jest poważna, sprawia, że dalsza wspinaczka staje się trudniejsza i bolesna.'), nl,
    write('Pomimo tego incydentu, nadal masz okazję podziwiać piękno górskiego krajobrazu, choć teraz również musisz dbać o swoje zdrowie.'), nl.


% Miecz +4 ataku
search(gory) :-
    write('Podczas eksploracji gór odkrywasz ukryte zakamarki, gdzie światło słońca ledwo przedostaje się.'), nl,
    write('Twoje spojrzenie przyciąga tajemniczy miecz, leżący na kamiennej półce. Wydaje się być magiczny i niezwykle potężny.'), nl,
    write('W dotyku miecz emanuje energią, a jego ostrze migocze delikatnym światłem.'), nl.

describe(jezioro) :-
    write('Stoisz na brzegu spokojnego jeziora, którego powierzchnia migocze w blasku promieni słonecznych.'), nl,
    write('Woda jest krystalicznie czysta, a na jej powierzchni unoszą się kolorowe liście i płyną delikatne fale.'), nl.

search(jezioro) :-
    write('Przeszukując obszar wokół jeziora, nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Otacza cię jedynie cisza i spokój, a jedynym dźwiękiem jest szum delikatnych fal i śpiew ptaków w oddali.'), nl,
    write('Mimo braku znalezisk, atmosfera jeziora wydaje się być relaksująca i pełna uroku.'), nl.

describe(laka) :-
    write('Jesteś na malowniczej łące, gdzie zielenią traw rozbłyskują kolorowe kwiaty.'), nl,
    write('Ptaki śpiewają w gałęziach drzew, a w oddali słychać szmer strumyka.'), nl.

search(laka) :-
    write('Podczas przeszukiwania łąki, nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Jedynym znaleziskiem są kolorowe kwiaty, które rozsiane są w każdą stronę, dodając uroku temu pięknemu miejscu.'), nl,
    write('Wokół panuje spokój, a delikatny zapach kwiatów unosi się w powietrzu, tworząc idylliczną atmosferę.'), nl.

describe(lasDebowy) :-
    write('Wchodzisz do gęstego lasu dębowego, gdzie potężne drzewa sięgają w niebo, tworząc gęstą i cienistą szatę.'), nl,
    write('Światło słoneczne ledwo przedostaje się przez gęstwiny liści, rzucając plamy światła na korzenie i mchy pokrywające ziemię.'), nl,
    write('Jednak w miarę jak zagłębiasz się głębiej, nagły odgłos skowytu wstrzymuje ci oddech. Wilki, drapieżniki lasu, zaczynają cię śledzić.'), nl,
    write('Nagle, z ciemności wyskakują wilki, atakując cię z zaskoczenia! Musisz bronić się przed tymi dzikimi stworzeniami, by przeżyć w tym niebezpiecznym lesie.'), nl.

%skóra wilka
search(lasDebowy) :-
    write('Po pokonaniu wilków, decydujesz się przeszukać otoczenie w poszukiwaniu użytecznych przedmiotów.'), nl,
    write('Twoje starania zostają nagrodzone, gdy natrafiasz na skóry wilków, które mogą posłużyć do produkcji trwałego pancerza.'), nl.


% -4 hp bo tak
describe(wysokieGory) :-
    write('Stoisz w cieniu potężnych szczytów wysokich gór, gdzie powietrze jest rzadkie, a krajobraz zapiera dech w piersiach.'), nl,
    write('Na ich szczytach błyszczą wieczne lodowce, a w dolinach unosi się lekka mgła.'), nl,
    write('Słyszysz szum wiatru między skałami, a widok sięga daleko poza horyzont.'), nl,
    write('Jednakże, pomimo piękna tego miejsca, bardzo zimno przeszywa twoje kości, a długa wspinaczka sprawia, że twoje ręce i nogi krwawią z powodu ciężkich warunków terenowych.'), nl.

search(wysokieGory) :-
    write('Przeszukując obszar wysokich gór, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Mimo olśniewających widoków i majestatycznych szczytów, to miejsce zdaje się być pozbawione ukrytych skarbów czy przydatnych artefaktów.'), nl,
    write('Możliwe, że to wyjątkowe środowisko górskie nie kryje żadnych tajemniczych znalezisk, ale sam krajobraz jest już nagrodą.'), nl.

describe(jaskinia1) :-
    write('Wchodzisz do ciemnej jaskini, gdzie ciemność otacza cię ze wszystkich stron.'), nl,
    write('Mroczne tunele wydają się prowadzić głęboko pod ziemię.'), nl,
    write('W miarę jak przemieszczasz się po jaskini, słyszysz dziwne, nieokreślone dźwięki, a zacienione kształty migocą na granicy twojej percepcji.'), nl,
    write('Czujesz, że jesteś obserwowany, ale nie możesz zlokalizować źródła tej obecności.'), nl.

% Portal 3/3
search(jaskinia1) :-
    write('Po zaciętej walce z endermanem, decydujesz się dokładniej zbadać okolicę, by sprawdzić, czy nie ma żadnych wartościowych przedmiotów.'), nl,
    write('Twoje starania zostają nagrodzone, gdy znajdujesz fragment portalu ukryty wśród szczątków pokonanego wroga.'), nl,
    write('Ten tajemniczy fragment emanuje magiczną energią, sugerując, że może być kluczowym elementem w dalszej części twojej przygody.'), nl.

% -1hp zimno
describe(tajga) :-
    write('Przechadzasz się przez tajgę, gdzie drzewa sosnowe gęsto porastają obszar wokół ciebie.'), nl,
    write('Pod stopami chrupie suchy mech, a powietrze nasycone jest zapachem żywicy.'), nl,
    write('W oddali słychać szmer strumienia, a w górze przelatują kolorowe ptaki.'), nl,
    write('Jednak w miarę jak penetrujesz gęstwiny drzew, zaczynasz odczuwać mroźny chłód, który przeszywa powietrze.'), nl.


search(tajga) :-
    write('Przeszukując tajgę, natrafiasz na twardy kij, który może stanowić przydatną broń'), nl,
    write('Mimo gęstego drzewostanu i zapachu żywicy, to miejsce zdaje się być pozbawione ukrytych skarbów czy przydatnych artefaktów.'), nl,
    write('Możliwe, że tajga jest pięknym, ale surowym środowiskiem, które nie oferuje żadnych znaczących znalezisk.'), nl.

describe(wioska) :-
    write('Przechadzasz się przez malowniczą wioskę, gdzie drewniane domy układają się wzdłuż brukowanych uliczek.'), nl,
    write('Ludzie rozmawiają ze sobą na ulicach, a dzieci biegają wesoło wokół zabawek.'), nl,
    write('Na rynku widzisz kolorowe stragany, na których sprzedawane są świeże owoce i rękodzieła.'), nl.

%chleb +2hp
search(wioska) :-
    write('Przeszukując obszar wokół ciebie, natrafiasz na uprzejmego i hojnego sprzedawcę.'), nl,
    write('Z uśmiechem na twarzy, dobry sprzedawca decyduje się podarować ci świeży bochenek chleba.'), nl,
    write('To niespodziewany prezent z pewnością umili ci podróż i dostarczy niezbędnej energii w trudnych chwilach.'), nl.

describe(dolina) :-
    write('Przechadzasz się po spokojnej dolinie, gdzie z obu stron wznoszą się zielone wzgórza.'), nl,
    write('W dolinie kwitną kolorowe kwiaty, a delikatny wiatr niesie ze sobą świeży zapach traw i roślin.'), nl,
    write('W oddali widzisz cichą rzekę, która biegnie przez środek doliny, dodając jej uroku.'), nl.

search(dolina) :-
    write('Przeszukując dolinę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Jedynym znaleziskiem są spokojnie pasące się stado krów, które dodaje uroku temu malowniczemu miejscu.'), nl,
    write('Widok sielskiej doliny i spokojnych zwierząt stanowi jednak sam w sobie przyjemny obraz.'), nl.

describe(zniszczonyPortal) :-
    write('Stoisz przed zniszczonym portalem, którego kształt przypomina pozostałości po dawnych potęgach magicznych.'), nl,
    write('Jego kamienne bloki są popękane, a magiczne symbole na powierzchni zatraciły swój dawny blask.'), nl,
    write('Wokół portalu panuje dziwna atmosfera, jakby pozostałości magii wciąż unosiły się w powietrzu.'), nl,
    write('Głębokie rysy zdobią struktury portalu, świadcząc o jego wielowiekowej historii i potężnych wydarzeniach.'), nl,
    write('Z dala słyszysz szepty przeszłości, które niosą opowieści o dawnych podróżach między światami.'), nl.

search(zniszczonyPortal) :-
    write('Przeszukując zniszczony portal, przyglądasz się dokładnie jego szczątkom.'), nl,
    write('Zauważasz, że brakuje trzech ważnych części, które zapewne były kluczowe dla jego funkcjonowania.'), nl,
    write('Możliwe, że odnalezienie tych zagubionych elementów może być kluczowym zadaniem w twojej podróży.'), nl.

%-3hp zimno
describe(tundra) :-
    write('Przechadzasz się po rozległej tundrze, gdzie ziemia jest pokryta warstwą mchu i niskich krzewów, a drzewa są rzadkością.'), nl,
    write('Pod stopami czujesz chłód wilgotnej gleby, a w powietrzu unosi się delikatny zapach mchu i roślinności tundry.'), nl,
    write('Na horyzoncie widzisz majestatyczne góry pokryte śniegiem, które kontrastują z płaskim krajobrazem tundry.'), nl,
    write('W oddali słychać odgłosy ptaków, które przemierzają niebo, a podczas wiatru trawy tundry poruszają się jak ocean fal.'), nl,
    write('Jednakże, pomimo malowniczego krajobrazu, dotkliwy mróz przeszywa powietrze, sprawiając, że temperatura stundy jest wyjątkowo niska.'), nl.

search(tundra) :-
    write('Przeszukując tundrę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Jedynymi elementami wokół są wieczna zamrźlina i niskie krzewy, które zdają się być jedynymi formami życia przystosowanymi do surowych warunków tego obszaru.'), nl,
    write('Tundra prezentuje surowy krajobraz, pozbawiony jakichkolwiek znaczących znalezisk czy ukrytych skarbów.'), nl.

describe(stepy) :-
    write('Przechadzasz się po rozległych stepach, gdzie trawa faluje na wietrze, tworząc ocean zielonej roślinności.'), nl,
    write('Pod stopami czujesz miękki dywan trawy, a w oddali widzisz grupy dzikich koni swobodnie biegających po stepach.'), nl,
    write('Niebo jest bezchmurne, a słońce rzuca złote promienie na obszar stepów, dodając im blasku.'), nl,
    write('Stepy są ciche, ale wiatr niesie ze sobą dźwięki natury, takie jak świergot ptaków i szelest trawy.'), nl.

search(stepy) :-
    write('Przeszukując stepy, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Równiny stepowe są otwarte i puste, a jedynym towarzyszem twojej podróży jest szum traw poruszanych wiatrem.'), nl,
    write('Mimo prostoty krajobrazu, piękno otwartej przestrzeni może być samym w sobie nagrodą.'), nl.

describe(pustynia) :-
    write('Wkraczasz na bezkresną pustynię, gdzie ziemia pokryta jest złotym piaskiem, a horyzont zdaje się nigdy nie kończyć.'), nl,
    write('Słońce praży niebłaganie, tworząc fale gorącego powietrza, a cienie są niemal niemożliwe do znalezienia.'), nl,
    write('W oddali widzisz majestatyczne wydmy, które zdają się tańczyć w migotliwym świetle pustynnego pejzażu.'), nl,
    write('Pustynia jest jak krajobraz z innej planety, gdzie cisza jest tylko przerywana szumem wiatru i odgłosami kroków po piasku.'), nl.

search(pustynia) :-
    write('Przeszukując pustynię, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Horyzont rozciąga się bez końca, a jedynym elementem krajobrazu są rozległe pustynne piaski, gdzie oko nie dostrzega końca.'), nl,
    write('Pustynia prezentuje surowy i bezkresny krajobraz, pozbawiony jakichkolwiek znaczących znalezisk czy ukrytych skarbów.'), nl.

describe(mesa) :-
    write('Stoisz na szczycie majestatycznej mesy, gdzie kamienne formacje tworzą surrealistyczny krajobraz.'), nl,
    write('Słońce rzuca długie cienie na czerwoną ziemię, podkreślając kontury unikalnych kształtów skał.'), nl,
    write('Mesa przypomina naturalne świątynie, a ich wysokie klify oferują zapierające dech w piersiach widoki na otaczający krajobraz.'), nl,
    write('W powietrzu unosi się ciepły wiatr, przenoszący zapach suchej ziemi i roślinności adaptującej się do trudnych warunków.'), nl.

search(mesa) :-
    write('Przeszukując mesę, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('Mesa prezentuje swoisty krajobraz, charakteryzujący się płaskim blatem skalnym i unikalnymi formacjami geologicznymi.'), nl,
    write('Jednakże, mimo interesującej struktury, nie znajdujesz tutaj żadnych istotnych znalezisk czy ukrytych skarbów.'), nl.

describe(pustkowie1) :-
    write('Wchodzisz na obszar pustkowia, gdzie ziemia jest spękana i sucha, a niebo zdaje się nie mieć końca.'), nl,
    write('Nie ma tu żadnej roślinności, a jedynym towarzyszem jest skwarny wiatr unoszący kłęby kurzu w powietrzu.'), nl,
    write('Na horyzoncie widzisz jedynie opustoszałe ruiny, pozostałość po dawnych cywilizacjach, które przepadły w zapomnieniu.'), nl,
    write('Pustkowie emanuje atmosferą opuszczenia, a cisza jest jedynym dźwiękiem, jaki się tu rozchodzi.'), nl.

search(pustkowie1) :-
    write('Przeszukując pustkowie, niestety nie natrafiasz na żadne wyraźne znaki czy ciekawe przedmioty.'), nl,
    write('To opuszczone i surowe pustkowie prezentuje krajobraz pozbawiony życia i istotnych elementów.'), nl,
    write('Pustkowia zdają się być opuszczone, nie pozostawiając śladu po obecności czy ukrytych skarbach.'), nl.


describe(moon) :-
    write('Księżyc.'), nl.


% instructions

instructions :-
        nl,
        write('Używaj komend zgodnie ze składnią prolog-a.'), nl,
        write('dostępne komendy:'), nl,
        write('start.             -- aby rozpocząć grę.'), nl,
        write('n.  s.  e.  w.     -- aby iść w danym kierunku.'), nl,
        write('take(Object).      -- aby podnieść obiekt.'), nl,
        write('look.              -- aby się rozejrzeć.'), nl,
        write('search.            -- aby przeszukać lokacje.'), nl,
        write('instructions.      -- aby zobaczyć tą wiadomość.'), nl,
        write('halt.              -- aby zatrzymać grę i wyjść.'), nl,
        write('map.               -- aby dowiedzieć się gdzie można iść.'), nl,
        write('goToMoon.          -- aby spróbować polecieć na księżyc.'), nl,
        write('stats.             -- wyświetla aktualne statystyki gracza.'), nl,
        nl.


% describe health change

describeHealthChange(kanion, 'Z powodu upadku odniosłeś ciężkie obrażenia, tracisz 3 punkty życia.').
describeHealthChange(wysokieGory, 'Podczas wspinaczki po niedostępnych górach tracisz 4 punkty życia.').
describeHealthChange(gory, 'Podczas wspinaczki po  górach tracisz 2 punkty życia z powodu potknięcia.').
describeHealthChange(tundra, 'W każdą stronę rozciąga się wieczna zmarźlina, brak drewna na opał, tracisz 3 punkty życia.').
describeHealthChange(tajga, 'Choć ten wielki las sosnowy wydaje się być przyjazny, to zdradliwy mróz sprawia, że tracisz 1 punkt życia.').
describeHealthChange(pustynia, 'Wielkie wydmy piasku aż po horyzont, brak cienia i nieznośny skwar, tracisz 1 punkt życia z powodu przegrzania.').

describeStatsChange(zlotaBransoleta, 'Dostajesz +2 punkty życia i +2 do ataku, po założeniu złotej brosolety.').
describeStatsChange(naramiennik, 'Dostajesz +3 punkty życia po założeniu naramiennika znalezionego w skrzyni.').
describeStatsChange(skorzaneButy, 'Dostajesz +2 punkty życia po założeniu skórzanych butów z obozu rozbójników.').
describeStatsChange(miod, 'Dostajesz +2 punkty życia po zjedzeniu miodu.').
describeStatsChange(zbroja, 'Dostajesz +4 punkty życia po założeniu zbroji.').
describeStatsChange(skoraWilka, 'Dostajesz +2 punkty życia i +3 do ataku, po założeniu skóry wilka.').
describeStatsChange(chleb, 'Nie ma nic lepszego dla zdrowia niż dobre jedzenie, +2 punkty życia za zjedzenie świeżego chleba.').


% describe attack change
describeStatsChange(miecz, 'Dostajesz +4 do ataku za podniesienie miecza.').
describeStatsChange(patyk, 'Dostajesz +2 do ataku za podniesienie drewnianego patyka.').
describeStatsChange(kamien, 'Dostajesz +1 do ataku za podniesienie kamienia.').

loseAttackMsg(obozRozbojnikow, 'Niestety pomimo zaciętej walki ponosisz porażkę.').
loseAttackMsg(jaskiniaPodwodna, 'Niestety pomimo zaciętej walki ponosisz porażkę.').
loseAttackMsg(jaskinia2, 'Niestety pomimo zaciętej walki ponosisz porażkę.').
loseAttackMsg(jaskinia1, 'Niestety pomimo zaciętej walki ponosisz porażkę.').
loseAttackMsg(lasDebowy, 'Niestety pomimo zaciętej walki ponosisz porażkę.').

winAttackMessage(obozRozbojnikow, 'Po zaciętej walce z rozbójnikami, w końcu odnosisz zwycięstwo!').
winAttackMessage(jaskiniaPodwodna, 'Po zaciętej walce z utopcami, w końcu odnosisz zwycięstwo!').
winAttackMessage(jaskinia2, 'Po zaciętej walce ze szkieletami, w końcu odnosisz zwycięstwo!').
winAttackMessage(jaskinia1, 'Po zaciętej walce z endermanem, w końcu odnosisz zwycięstwo!').
winAttackMessage(lasDebowy, 'Po zaciętej walce z wilkami, w końcu odnosisz zwycięstwo!').
