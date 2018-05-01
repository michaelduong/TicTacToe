//
//  CharacterSelectionViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class CharacterSelectionViewController: UIViewController {
    @IBOutlet weak var smileyOne: UIButton!
    @IBOutlet weak var smileyTwo: UIButton!
    @IBOutlet weak var smileyThree: UIButton!
    @IBOutlet weak var smileyFour: UIButton!
    @IBOutlet weak var smileyFive: UIButton!
    @IBOutlet weak var poop: UIButton!
    
    var playerTurn = 1
    var playerOneImage: UIImage = #imageLiteral(resourceName: "icons8-poo")
    var playerTwoImage: UIImage = #imageLiteral(resourceName: "icons8-poo")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func smileyOneTapped(_ sender: Any) {
        if playerTurn == 1 {
            smileyOne.setImage(#imageLiteral(resourceName: "Character 1"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-crazy")
            playerTurn = 2
            smileyOne.isEnabled = false
        } else if playerTurn == 2 {
            smileyOne.setImage(#imageLiteral(resourceName: "Character 1 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-crazy")
            smileyOne.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    
    @IBAction func smileyTwoTapped(_ sender: Any) {
        if playerTurn == 1 {
            smileyTwo.setImage(#imageLiteral(resourceName: "Character 2"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-lol")
            playerTurn = 2
            smileyTwo.isEnabled = false
        } else if playerTurn == 2 {
            smileyTwo.setImage(#imageLiteral(resourceName: "Character 2 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-lol")
            smileyTwo.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    
    @IBAction func smileyThreeTapped(_ sender: Any) {
        if playerTurn == 1 {
            smileyThree.setImage(#imageLiteral(resourceName: "Character 3"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-angry")
            playerTurn = 2
            smileyThree.isEnabled = false
        } else if playerTurn == 2 {
            smileyThree.setImage(#imageLiteral(resourceName: "Character 3 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-angry")
            smileyThree.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    
    @IBAction func smileyFourTapped(_ sender: Any) {
        if playerTurn == 1 {
            smileyFour.setImage(#imageLiteral(resourceName: "Character 4"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-happy")
            playerTurn = 2
            smileyFour.isEnabled = false
        } else if playerTurn == 2 {
            smileyFour.setImage(#imageLiteral(resourceName: "Character 4 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-happy")
            smileyFour.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    
    @IBAction func smileyFiveTapped(_ sender: Any) {
        if playerTurn == 1 {
            smileyFive.setImage(#imageLiteral(resourceName: "Character 5"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-surprised")
            playerTurn = 2
            smileyFive.isEnabled = false
        } else if playerTurn == 2 {
            smileyFive.setImage(#imageLiteral(resourceName: "Character 5 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-surprised")
            smileyFive.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    
    @IBAction func poopTapped(_ sender: Any) {
        if playerTurn == 1 {
            poop.setImage(#imageLiteral(resourceName: "Character 6"), for: .normal)
            playerOneImage = #imageLiteral(resourceName: "icons8-poo")
            playerTurn = 2
            poop.isEnabled = false
        } else if playerTurn == 2 {
            poop.setImage(#imageLiteral(resourceName: "Character 6 P2"), for: .normal)
            playerTwoImage = #imageLiteral(resourceName: "icons8-poo")
            poop.isEnabled = false
            performSegue(withIdentifier: "battleScreen", sender: Any?.self)
        }
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "battleScreen" {
            
            guard let destinationVC = segue.destination as? BattleScreenViewController else {return}
            
            destinationVC.playerOneImage = playerOneImage
            destinationVC.playerTwoImage = playerTwoImage
        }
    }
}
