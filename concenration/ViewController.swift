//
//  ViewController.swift
//  concenration
//
//  Created by DariaEla on 2/6/20.
//  Copyright © 2020 DariaEla. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
   lazy var game  = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    var flipCount = 0{
        didSet{
          flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchcard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
       updateViewFromModel()
        } else {
            print("chosen card was not in cardButtons")
        }
       
    }
}
   
func updateViewFromModel(){
    for index in cardButtons.indices {
        let button = cardButtons[index]
        let card = game.cards[index]
        
}
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
    }
}

