//
//  PlayerSelectViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class PlayerSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try VideoBackground.shared.play(view: self.view, name: "bg", type: "mp4")
        } catch {
            print(error.localizedDescription)
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
