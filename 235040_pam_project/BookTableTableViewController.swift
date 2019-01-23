//
//  BookTableTableViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 22/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class BookTableTableViewController: UITableViewController {
    var bookTitles = ["Ostatnie życzenie", "Miecz przeznaczenia", "Krew elfów", "Czas pogardy", "Chrzest ognia", "Wieża jaskółki", "Pani jeziora", "Sezon burz"]
    var bookAuthors = ["Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski"]
    var bookImages = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    var bookDescriptions = ["Świat na ostrzu miecza. Oszałamiająca akcja, mistrzowskie dialogi, sytuacje nie do zapomnienia. Sapkowski nie umie nudzić! Wiedźmin to mistrz miecza i fachowiec czarostwa strzegący moralnej i biologicznej równowagi w cudownym świecie fantasy. Z woli Sapkowskiego w ów świat pełen potworów i bujnych charakterów, skomplikowanych intryg i eksplodujących namiętności wnosi Geralt nasze problemy, mitologie i nowoczesny punkt widzenia. Staje się więc widzem i bohaterem, oskarżonym i sędzią, kochankiem i błaznem, ofiarą i katem. Przewrotna literacka robota.",
                            "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Wiedźmiński kodeks stawia tę sprawę w sposób jednoznaczny: wiedźminowi smoka zabijać się nie godzi. To gatunek zagrożony wymarciem. Aczkolwiek w powszechnej opinii to gad najbardziej wredny. Na oszluzgi, widłogony i latawce kodeks polować przyzwala. Ale na smoki – nie. Wiedźmin Geralt przyłącza się jednak do zorganizowanej przez króla Niedamira wyprawy na smoka, który skrył się w jaskiniach Gór Pustulskich. Na swej drodze spotyka trubadura Jaskra oraz – jakżeby inaczej – czarodziejkę Yennefer. Wśród zaproszonych przez króla co sławniejszych smokobójców jest Eyck z Denesle, rycerz bez skazy i zmazy, Rębacze z Cinfrid i szóstka krasnoludów pod komendą Yarpena Zigrina. Motywacje są różne, ale cel jeden. Smok nie ma szans.",
                            "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Tako rzecze Ithlinne, elfia wieszczka i uzdrowicielka: Drżyjcie, albowiem nadchodzi Niszczyciel Narodów. Stratują waszą ziemię i sznurem ją podzielą. Miasta wasze zostaną zburzone i pozbawione mieszkańców. Nietoperz i kruk w domach waszych zamieszkają, drzewo straci liść, zgnije owoc i zgorzknieje ziarno. Zaprawdę powiadam wam, oto nadchodzi czas miecza i topora, wiek wilczej zamieci. Miasto płonie, wąskie uliczki zieją ogniem i żarem. Narasta wrzask, odgłosy zajadłej walki, murem wstrząsają głuche uderzenia taranu. Krzyk, strach. Obezwładniający, paraliżujący, duszący strach.",
                            "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Świat Ciri i wiedźmina ogarniają płomienie. Nastał zapowiadany przez Ithlinne czas miecza i topora. Czas pogardy. A w czasach pogardy na powierzchnię wypełzają Szczury. Szczury atakujące po szczurzemu, cicho, zdradziecko i okrutnie. Szczury uwielbiające dobrą zabawę i zabijanie. Maruderzy z rozbitych armii, zabłąkane dzieciaki, wyrzutki, dziwna zbieranina stworzona przez wojnę i na wojennym nieszczęściu żerująca. Ludzie, którzy wszystko przeżyli, wszystko utracili, którym śmierć już niestraszna. Solidarni w biedzie i nieszczęściu, dla obcych mający zaś tylko to, czego sami od pogrążającego się w chaosie świata zaznali. Pogardę.",
                            "Oto Geraltowa kompania:Jaskier, trubadur w kapelusiku z piórkiem egreta. Studiował siedem sztuk wyzwolonych, słynny po wszystkich dworach i zamtuzach. „Kłamliwa łajza” i „zachrypnięty bażant” to najłagodniejsze z określeń, jakim obdarzają go porzucone kochanki. Cahir, czarny rycerz z koszmarów Ciri. Poszukiwany przez najlepszych szpiegów Cesarstwa Nilfgaardczyk, który dowodzi, że Nilfgaardczykiem wcale nie jest. Milva, trafiająca z dwustu kroków łuczniczka. Pyskata i do słów nieparlamentarnych skora. Regis, cyrulik intelektualista. Nosi się staroświecko i pachnie ziołowo-korzennie. Osobnik jakby nie z tej bajki. Piątka krasnoludów oraz sprytny gnom zwiadowca.",
                            "Jesienne Ekwinokcjum tegoż dziwnego roku przyniosło rozmaite znaki na niebie i na ziemi, które jakoweś klęski niechybnie zwiastowały. Tuż przed północą zerwała się straszliwa zawierucha, zadął potępieńczy wicher, a pędzone po niebie chmury przybrały fantastyczne kształty, wśród których najczęściej powtarzały się sylwetki galopujących koni i jednorożców. Lelki dzikimi głosami wyśpiewywały konajączkę, zaskowyczała beann''shie, zwiastunka rychłej i gwałtownej śmierci. A gdy przecwałował Dziki Gon i rozwiały się chmury, ludzie zobaczyli księżyc – malejący, jak zwykle w czas Zrównania. Ale tej nocy księżyc miał barwę krwi. W świątyni bogini Melitele trzy osoby śnią ten sam sen. „Krew na jej twarzy... Tyle krwi...”",
                            "Ciri wpatruje się w wypukły relief przedstawiający ogromnego łuskowatego węża. Gad, zwinąwszy się w kształt ósemki, wgryzł się zębiskami we własny ogon. To pradawny wąż Uroboros. Symbolizuje nieskończoność i sam jest nieskończonością. Jest wiecznym odchodzeniem i wiecznym powracaniem. Jest czymś, co nie ma ani początku, ani końca. A to, że Uroboros gryzie swój ogon, oznacza, że koło jest zamknięte.Ciri, córko Pavetty! Wjedź w portal, podążaj drogą wiodącą na spotkanie przeznaczenia! Koło się zamknęło – myśli Ciri, zamykając oczy. „Jadę, Geralt! Nie zostawię cię samego!” Coś się kończy, coś się zaczyna. W każdym momencie czasu kryje się wieczność.",
                            "Oto nowy Sapkowski i nowy wiedźmin. Mistrz polskiej fantastyki znowu zaskakuje. „Sezon burz” nie opowiada bowiem o młodzieńczych latach białowłosego zabójcy potworów ani o jego losach po śmierci/nieśmierci kończącej ostatni tom sagi. „Nigdy nie mów nigdy!” W powieści pojawiają się osoby doskonale czytelnikom znane, jak wierny druh Geralta – bard i poeta Jaskier – oraz jego ukochana, zwodnicza czarodziejka Yennefer, ale na scenę wkraczają też dosłownie i w przenośni postaci z zupełnie innych bajek. Ludzie, nieludzie i magiczną sztuką wyhodowane bestie. Opowieść zaczyna się wedle reguł gatunku: od trzęsienia ziemi, a potem napięcie rośnie. Wiedźmin stacza morderczą walkę z drapieżnikiem, który żyje tylko po to, żeby zabijać, wdaje się w bójkę z rosłymi, niezbyt sympatycznymi strażniczkami miejskimi, staje przed sądem, traci swe słynne miecze i przeżywa burzliwy romans z rudowłosą pięknością, zwaną Koral. A w tle toczą się królewskie i czarodziejskie intrygi. Pobrzmiewają pioruny i szaleją burze. I tak przez 404 strony porywającej lektury. Wiedźmin. Sezon Burz to w wiedźmińskiej historii rzecz osobna, nie prapoczątek i nie kontynuacja. Jak pisze autor: Opowieść trwa. Historia nie kończy się nigdy…"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookTitles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "booksDataCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BookTableViewCell
        cell.titleLabel?.text = bookTitles[indexPath.row]
        cell.authorLabel?.text = bookAuthors[indexPath.row]
        cell.imageView?.image = UIImage(named: bookImages[indexPath.row])
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
