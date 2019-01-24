//
//  MusicDetailViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 23/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class MusicDetailViewController: UIViewController {
    var imageName: String!
    var songs: Array<String>!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "musicToImageSegue" {
            let destinationController = segue.destination as! MusicImageViewController
            destinationController.imageName = imageName
        }
        else if segue.identifier == "musicToListSegue" {
            let destinationController = segue.destination as! SongTableViewController
            destinationController.songs = songs
        }
    }

}
