//
//  BookDetailViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 22/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    @IBOutlet var bookTitleLabel: UILabel!
    @IBOutlet var bookAuthorLabel: UILabel!
    @IBOutlet var bookDescriptionLabel: UILabel!
    @IBOutlet var bookImageView: UIImageView!
    var bookImageName = ""
    var bookTitle = ""
    var bookAuthor = ""
    var bookDescription = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        bookTitleLabel?.text = bookTitle
        bookAuthorLabel?.text = bookAuthor
        bookDescriptionLabel?.text = bookDescription
        bookImageView?.image = UIImage(named: bookImageName)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
