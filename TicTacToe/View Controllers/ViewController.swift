//
//  ViewController.swift
//  TicTacToe
//
//  Created by Michael Kampouris on 2/22/18.
//  Copyright © 2018 broCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var a1button: UIButton!
    @IBOutlet weak var a2Button: UIButton!
    @IBOutlet weak var a3Button: UIButton!
    
    @IBOutlet weak var b1Button: UIButton!
    @IBOutlet weak var b2Button: UIButton!
    @IBOutlet weak var b3Button: UIButton!
    
    @IBOutlet weak var c1Button: UIButton!
    @IBOutlet weak var c2Button: UIButton!
    @IBOutlet weak var c3Button: UIButton!

    var toggle: Bool = true
    var winningText = "Player 1 Wins!"
    
    var playerOneImage = #imageLiteral(resourceName: "icons8-surprised")
    var playerTwoImage = #imageLiteral(resourceName: "icons8-surprised")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggle = true
        
        audioPlayer?.stop()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func a1Pressed(_ sender: Any) {
        if toggle {
            a1button.setImage(playerOneImage, for: .normal)
            a1button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            a1button.setImage(playerTwoImage, for: .normal)
            a1button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        a1button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func a2Pressed(_ sender: Any) {
        if toggle {
            a2Button.setImage(playerOneImage, for: .normal)
            a2Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            a2Button.setImage(playerTwoImage, for: .normal)
            a2Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        a2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func a3Pressed(_ sender: Any) {
        if toggle {
            a3Button.setImage(playerOneImage, for: .normal)
            a3Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            a3Button.setImage(playerTwoImage, for: .normal)
            a3Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        a3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b1Pressed(_ sender: Any) {
        if toggle {
            b1Button.setImage(playerOneImage, for: .normal)
            b1Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            b1Button.setImage(playerTwoImage, for: .normal)
            b1Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        b1Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b2Pressed(_ sender: Any) {
        if toggle {
            b2Button.setImage(playerOneImage, for: .normal)
            b2Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            b2Button.setImage(playerTwoImage, for: .normal)
            b2Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        b2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func b3Pressed(_ sender: Any) {
        if toggle {
            b3Button.setImage(playerOneImage, for: .normal)
            b3Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            b3Button.setImage(playerTwoImage, for: .normal)
            b3Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        b3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c1Pressed(_ sender: Any) {
        if toggle {
            c1Button.setImage(playerOneImage, for: .normal)
            c1Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            c1Button.setImage(playerTwoImage, for: .normal)
            c1Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        c1Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c2Pressed(_ sender: Any) {
        if toggle {
            c2Button.setImage(playerOneImage, for: .normal)
            c2Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            c2Button.setImage(playerTwoImage, for: .normal)
            c2Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        c2Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func c3Pressed(_ sender: Any) {
        if toggle {
            c3Button.setImage(playerOneImage, for: .normal)
            c3Button.tag = 1
            if checkForP1WinningCombinations() {
                winningText = "Player 1 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }else{
            c3Button.setImage(playerTwoImage, for: .normal)
            c3Button.tag = 2
            if checkforP2WinningCombinations() {
                winningText = "Player 2 Wins"
                performSegue(withIdentifier: "winningView", sender: Any?.self)
            }
        }
        c3Button.isEnabled = false
        toggle = !toggle
    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        let buttons = [a1button, a2Button, a3Button, b1Button, b2Button, b3Button, c1Button, c2Button, c3Button]
        
        for button in buttons {
            button?.setImage(nil, for: .normal)
            button?.isEnabled = true
            button?.tag = 0
        }
        toggle = true
    }
    
    func checkForP1WinningCombinations() -> Bool{
        if a1button.tag == 1 && a2Button.tag == 1 && a3Button.tag == 1 {return true}
        else if b1Button.tag == 1 && b2Button.tag == 1 && b3Button.tag == 1 {return true}
        else if c1Button.tag == 1 && c2Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a1button.tag == 1 && b1Button.tag == 1 && c1Button.tag == 1 {return true}
        else if a2Button.tag == 1 && b2Button.tag == 1 && c2Button.tag == 1 {return true}
        else if a3Button.tag == 1 && b3Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a1button.tag == 1 && b2Button.tag == 1 && c3Button.tag == 1 {return true}
        else if a3Button.tag == 1 && b2Button.tag == 1 && c1Button.tag == 1 {return true}
        else {return false}
    }
    
    func checkforP2WinningCombinations() -> Bool {
        if a1button.tag == 2 && a2Button.tag == 2 && a3Button.tag == 2 {return true}
        else if b1Button.tag == 2 && b2Button.tag == 2 && b3Button.tag == 2 {return true}
        else if c1Button.tag == 2 && c2Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a1button.tag == 2 && b1Button.tag == 2 && c1Button.tag == 2 {return true}
        else if a2Button.tag == 2 && b2Button.tag == 2 && c2Button.tag == 2 {return true}
        else if a3Button.tag == 2 && b3Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a1button.tag == 2 && b2Button.tag == 2 && c3Button.tag == 2 {return true}
        else if a3Button.tag == 2 && b2Button.tag == 2 && c1Button.tag == 2 {return true}
        else {return false}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "winningView" {
            guard let destinationVC = segue.destination as? WinnerViewController else {return}
        
            destinationVC.winnerLabelText = winningText
        }
    }
}

