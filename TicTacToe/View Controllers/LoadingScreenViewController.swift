//
//  LoadingScreenViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

var audioPlayer: AVAudioPlayer?
import UIKit
import AVFoundation

class LoadingScreenViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    static let shared = LoadingScreenViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Credits.mp3", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print(error)
        }
        
        delayWithSeconds(1.0) {
            self.progressBar.setProgress(0.33, animated: true)
        }
        
        delayWithSeconds(2.0) {
            self.progressBar.setProgress(0.66, animated: true)
        }
        
        delayWithSeconds(2.5) {
            self.progressBar.setProgress(1, animated: true)
        }
        
        delayWithSeconds(3.0) {
            self.performSegue(withIdentifier: "toPlayerSelect", sender: self)
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
