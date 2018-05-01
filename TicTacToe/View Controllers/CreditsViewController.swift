//
//  CreditsViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit
import AVFoundation

class CreditsViewController: UIViewController {

    var bgMusic: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Credits.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            bgMusic = try AVAudioPlayer(contentsOf: url)
            bgMusic?.play()
        } catch {
            print(error)
        }


        delayWithSeconds(24.40) {
            self.performSegue(withIdentifier: "backToBeginning", sender: Any?.self)
            self.bgMusic?.stop()
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
}
