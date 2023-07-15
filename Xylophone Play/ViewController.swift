//
//  ViewController.swift
//  Xylophone Play
//
//  Created by Akash Arafat on 2023/07/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        //reduce the sender's opacity to half
        sender.alpha = 0.5
        // This block of code will be execute after 2 seconds delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            //Bring back the main opacity
            sender.alpha = 1.0
        }
    }
    @IBAction func keyPressedGuiter(_ sender: UIButton) {
        playSoundGuiter(soundName: sender.currentTitle!)
        
        //reduce the sender's opacity to half
        sender.alpha = 0.5
        // This block of code will be execute after 2 seconds delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            //Bring back the main opacity
            sender.alpha = 1.0
        }
    }
    
    @IBAction func keyPressFlute(_ sender: UIButton) {
        playSoundFlute(soundName: sender.currentTitle!)
        
        //reduce the sender's opacity to half
        sender.alpha = 0.5
        // This block of code will be execute after 2 seconds delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            //Bring back the main opacity
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func playSoundGuiter(soundName: String) {
        let url = Bundle.main.url(forResource: "guiterSounds/\(soundName)", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func playSoundFlute(soundName: String) {
        let url = Bundle.main.url(forResource: "fluteSounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}

