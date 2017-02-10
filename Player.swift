//
//  Board.swift
//  Checkers
//
//  Created by Benjamin Bernstein on 2/9/17.
//  Copyright © 2017 Burning Flowers. All rights reserved.
//

import Foundation

class Player {
    
    var pieces = [Piece]()
    var color : color
    
    
    init(color: color) {
        self.color = color
        self.pieces = create12Pieces()
    }
    
    func create12Pieces() -> [Piece]{
        var pieces = [Piece]()
        for i in 1...12 {
            pieces.append(Piece(identifier: i))
          
        }
        return pieces
    }
    
    enum color {
        case black
        case white
    }
    
    func descriptionFor(pieces: [Piece]) -> String {
        var returnString = ""
        
        for i in pieces {
            returnString.append("\(i.description)\(self.color) ")
        }
        return returnString
    }
    
}

