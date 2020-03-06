//
//  Concentration.swift
//  concenration
//
//  Created by DariaEla on 3/6/20.
//  Copyright © 2020 DariaEla. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        
    }
    
    init (numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
        let card = Card()
            cards += [card, card]
        
        }
    }
}
