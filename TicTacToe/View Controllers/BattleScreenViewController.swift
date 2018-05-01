//
//  BattleScreenViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class BattleScreenViewController: UIViewController {
    @IBOutlet weak var playerOneImageView: UIImageView!
    @IBOutlet weak var playerTwoImageView: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var playerOneImage = #imageLiteral(resourceName: "icons8-poo")
    var playerTwoImage = #imageLiteral(resourceName: "icons8-poo")

    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneImageView.image = playerOneImage
        playerTwoImageView.image = playerTwoImage
        
        delayWithSeconds(0.5) {
            self.progressBar.setProgress(0.33, animated: true)
        }
        
        delayWithSeconds(1.0) {
            self.progressBar.setProgress(0.66, animated: true)
        }
        
        delayWithSeconds(1.5) {
            self.progressBar.setProgress(1, animated: true)
        }
        
        delayWithSeconds(2.0) {
            self.performSegue(withIdentifier: "toGameView", sender: Any?.self)
        }
    }
    
    func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameView" {
            guard let destinationVC = segue.destination as? ViewController else {return}
            
            destinationVC.playerOneImage = playerOneImage
            destinationVC.playerTwoImage = playerTwoImage
        }
    }

}
