//
//  Card.swift
//  concenration
//
//  Created by DariaEla on 3/6/20.
//  Copyright © 2020 DariaEla. All rights reserved.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(identifier:Int) {
        self.identifier  = Card.getUniqueIdentifier()
}
}
