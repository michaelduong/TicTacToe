//
//  WinnerViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class WinnerViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    var winnerLabelText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.text = winnerLabelText
        delayWithSeconds(1) {
            self.performSegue(withIdentifier: "toCredits", sender: Any?.self)
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

}
