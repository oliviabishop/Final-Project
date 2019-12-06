//
//  MusicPlayerViewController.swift
//  FinalProject
//
//  Created by Olivia Bishop on 12/6/19.
//  Copyright © 2019 Olivia Bishop. All rights reserved.
//
//
// https://youtu.be/jiGZ6s9CHks//

import UIKit
import AVFoundation

class MusicPlayerViewController: UIViewController {
    
    var musicPlayer:AVAudioPlayer = AVAudioPlayer()
    
    
    @IBAction func play(_ sender: Any) {
        
        musicPlayer.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        
        musicPlayer.pause()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try musicPlayer = AVAudioPlayer(contentsOf: NSURL (fileURLWithPath: audioPath!) as URL)
         }
        catch {
            
            
            
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
}
