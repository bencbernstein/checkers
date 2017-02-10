//
//  Piece.swift
//  Checkers
//
//  Created by Benjamin Bernstein on 2/9/17.
//  Copyright © 2017 Burning Flowers. All rights reserved.
//

import Foundation


class Piece {
    var identifier : String {
        return "\(color)\(number)"
    }
    let number : Int
    var color : color
    var isKing = false
    
    init(color: color, number: Int) {
        self.color = color
        self.number = number
    }
    
}

enum color {
    case black
    case red
}

func descriptionForPieces(pieces: [Piece]) -> String {
    var returnString = ""
    for piece in pieces {
        returnString.append("\(piece.identifier) ")
    }
    return returnString
    
}


