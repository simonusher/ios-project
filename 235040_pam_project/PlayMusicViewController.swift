//
//  PlayMusicViewController.swift
//  235040_pam_project
//
//  Created by stud on 24/01/2019.
//  Copyright © 2019 pwr. All rights reserved.
//

import AVFoundation
import UIKit
class PlayMusicViewController: UIViewController {
    var player: AVAudioPlayer!
    var songName: String!
    @IBOutlet var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: songName!, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.prepareToPlay()
        } catch {
            debugPrint("Nie znaleziono utworu")
        }
    }

    @IBAction func togglePlayPause(_ sender: Any) {
        if(player!.isPlaying){
            player?.pause()
            player?.currentTime = 0
            playButton?.setImage(UIImage(named: "play"), for: .normal)
        } else {
            debugPrint("playing")
            player?.play()
            playButton?.setImage(UIImage(named: "pause"), for: .normal)
        }
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
