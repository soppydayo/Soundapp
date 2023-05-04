//
//  ViewController.swift
//  Soundapp
//
//  Created by 白川創大 on 2023/05/03.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    
    
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound" )!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchdownDrumButton() {
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for:  .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
    
    @IBAction func touchupDrumButton() {
            
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
            
    }
        
        
}




