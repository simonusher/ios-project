//
//  MusicTableViewController.swift
//  235040_pam_project
//
//  Created by Szymon on 23/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import UIKit

class MusicTableViewController: UITableViewController {
    var albumNames = ["Kill'em All", "Ride the Lightning", "Master of Puppets", "...And Justice for All", "Metallica", "Load", "Reload", "Garage Inc", "S&M", "St. Anger", "Death Magnetic", "Hardwired...To Self-Destruct"]
    var authors = ["Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica", "Metallica"]
    
    var imageNames = ["killemall", "ridetl", "master", "justice", "metallica", "load", "reload", "garage", "sm", "stanger", "death", "hardwired"]
    
    var albumSongs = [
        [
            "Hit the Lights", "The Four Horsemen", "Motorbreath", "Jump in the Fire", "(Anesthesia) Pulling Teeth", "Whiplash", "Phantom Lord", "No Remorse", "Seek & Destroy", "Metal Militia", "Am I Evil?", "Blitzkrieg"
        ],
        [
            "Fight Fire with Fire", "Ride the Lightning", "For Whom the Bell Tolls", "Fade to Black", "Trapped Under Ice", "Escape", "Creeping Death", "The Call of Ktulu"
        ],
        [
            "Battery", "Master of Puppets", "The Thing That Should Not Be", "Welcome Home (Sanitarium)", "Disposable Heroes", "Leper Messiah", "Orion", "Damage, Inc."
        ],
        [
            "Blackened", "...And Justice for All", "Eye of the Beholder", "One", "The Shortest Straw", "Harvester of Sorrow", "The Frayed Ends of Sanity", "To Live Is to Die", "Dyers Eve"
        ],
        [
            "Enter Sandman", "Sad But True", "Holier Than Thou", "The Unforgiven", "Wherever I May Roam", "Don't Tread on Me", "Through the Never", "Nothing Else Matters", "Of Wolf and Man", "The God That Failed", "My Friend of Misery", "The Struggle Within"
        ],
        [
            "Ain't My Bitch", "2 x 4", "The House Jack Built", "Until It Sleeps", "King Nothing", "Hero of the Day", "Bleeding Me", "Cure", "Poor Twisted Me", "Wasting My Hate", "Mama Said", "Thorn Within", "Ronnie", "The Outlaw Torn"
        ],
        [
            "Fuel", "The Memory Remains", "Devil's Dance", "The Unforgiven II", "Better Than You", "Slither", "Carpe Diem Baby", "Bad Seed", "Where the Wild Things Are", "Prince Charming", "Low Man's Lyric", "Attitude", "Fixxxer"
        ],
        [
            "Free Speech for the Dumb", "It's Electric", "Sabbra Cadabra", "Turn the Page", "Die, Die My Darling", "Loverman", "Mercyful Fate", "Astronomy", "Whiskey in the Jar", "Tuesday's Gone", "The More I See", "Helpless", "The Small Hours", "The Wait", "Crash Course in Brain Surgery", "Last Caress/Green Hell", "Am I Evil?", "Blitzkrieg", "Breadfan", "The Prince", "Stone Cold Crazy", "So What", "Killing Time", "Overkill", "Damage Case", "Stone Dead Forever", "Too Late Too Late"
        ],
        [
            "The Ecstasy of Gold", "The Call of Ktulu", "Master of Puppets", "Of Wolf and Man", "The Thing That Should Not Be", "Fuel", "The Memory Remains", "No Leaf Clover", "Hero of the Day", "Devil's Dance", "Bleeding Me", "Nothing Else Matters", "Until It Sleeps", "For Whom The Bell Tolls", "Human", "Wherever I May Roam", "The Outlaw Torn", "Sad But True", "One", "Enter Sandman", "Battery"
        ],
        [
            "Frantic", "St. Anger", "Some Kind of Monster", "Dirty Window", "Invisible Kid", "My World", "Shoot Me Again", "Sweet Amber", "The Unnamed Feeling", "Purify", "All Within My Hands"
        ],
        [
            "That Was Just Your Life", "The End of the Line", "Broken, Beat & Scarred", "The Day That Never Comes", "All Nightmare Long", "Cyanide", "The Unforgiven III", "The Judas Kiss", "Suicide & Redemption", "My Apocalypse"
        ],
        [
            "Hardwired", "Atlas, Rise", "Now That We're Dead", "Moth Into Flame", "Dream No More", "Halo On Fire", "Confusion", "ManUNkind", "Here Comes Revenge", "Am I Savage?", "Murder One", "Spit Out The Bone"
        ]
    ]
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
        return albumNames.count
    }
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "musicDataCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MusicTableViewCell
        cell.title?.text = albumNames[indexPath.row]
        cell.author?.text = authors[indexPath.row]
        cell.imageView?.image = UIImage(named: imageNames[indexPath.row])
        return cell
    }

    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
