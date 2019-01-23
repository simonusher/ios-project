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
    @IBOutlet var bookImage: UIImageView!
    var bookImageName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        bookImage = UIImage(named: bookImageName)
        // Do any additional setup after loading the view.
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
