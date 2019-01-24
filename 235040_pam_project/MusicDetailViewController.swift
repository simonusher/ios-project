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
    var playedSongName: String!
    var homeButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeButton  = UIBarButtonItem(barButtonSystemItem: .reply, target: self, action: #selector(goHome))
        self.navigationItem.rightBarButtonItem = homeButton
    }
    
    @IBAction func goHome(){
        navigationController?.popToRootViewController(animated: true)
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
        else if segue.identifier == "musicToButtonSegue" {
            let destinationController = segue.destination as! PlayMusicViewController
            destinationController.songName = playedSongName
        }
    }

}
