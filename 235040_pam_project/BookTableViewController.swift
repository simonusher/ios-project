//
//  BookTableViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 23/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
    var bookTitles = ["Ostatnie życzenie", "Miecz przeznaczenia", "Krew elfów", "Czas pogardy", "Chrzest ognia", "Wieża jaskółki", "Pani jeziora",  "Sezon burz"]
    var bookAuthors = ["Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski"]
    var bookImages = ["1", "2", "3", "4", "5", "6", "7", "8"]
    var bookDescriptions = ["Zbiór opowiadań fantasy napisanych przez Andrzeja Spakowskiego i stanowiących wstęp do cyklu o wiedźminie Geralcie. Został wydany przez wydawnictwo superNowa w 1993 roku, a wydanie drugie w roku 2003.",
                            "Zbiór opowiadań z gatunku fantasy napisanych przez Andrzeja Sapkowskiego. Opowiadania z tego tomu stanowią wprowadzenie do sagi o Geralcie z Rivii i razem z Ostatnim życzeniem wyjaśniają najważniejsze wydarzenia w życiu głównych bohaterów cyklu.",
                            "Powieść fantasy autorstwa Andrzeja Sapkowskiego, pierwszy raz wydana w 1994 roku. jest pierwszą z pięciu części sagi o wiedźminie tego autora. W 2009 zdobyłaa David Gemmell Awards for Fantasy.",
                            "Powieść z gatunku fantasy, napisana przez Andrzeja Sapkowskiego, wydana w 1995 roku. Jest drugą z pieciu części sagi o wiedźminie tego autora.",
                            "Powieść z gatunku fantasy, napisana przez Andrzeja Sapkowskiego, wydana w 1996 roku. Jest trzecią z pięciu części sagi o wiedźminie tego autora.",
                            "Powieść z gatunku fantasy, napisana przez Andrzeja Sapkowskiego, wydana w 1997 roku. Jest czwartą z pięciu części sagi o wiedźminie tego autora.",
                            "Powieść z gatunku fantasy, napisana przez Andrzeja Sapkowskiego, wydana w 1999 roku. Jest ostatnią z pięciu części sagi o wiedźminie."
                            ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "booksToDetailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! BookDetailViewController
                destinationController.bookAuthor = bookAuthors[indexPath.row]
                destinationController.bookTitle = bookTitles[indexPath.row]
                destinationController.bookImageName = bookImages[indexPath.row]
                destinationController.bookDescription = bookDescriptions[indexPath.row]
            }
        }
    }
}
