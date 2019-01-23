//
//  BookTableViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 23/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {
    var bookTitles = ["Ostatnie życzenie", "Miecz przeznaczenia", "Krew elfów", "Czas pogardy", "Chrzest ognia", "Sezon burz"]
    var bookAuthors = ["Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski", "Andrzej Sapkowski"]
    var bookImages = ["1", "2", "3", "4", "5", "6", "7", "8"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

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
            }
        }
    }
}
