//
//  Board.swift
//  Checkers
//
//  Created by Benjamin Bernstein on 2/9/17.
//  Copyright © 2017 Burning Flowers. All rights reserved.
//

import Foundation

class Board {
    var positions = [Int: Piece?]()
    var pieces = [Piece]()
    
    init() {
        // set all positions to nil piece for each integer position
        var tempArray = [Int: Piece?]()
        for i in 1...64 {
            tempArray[i] = nil
            self.positions = tempArray
        }
        pieces.append(contentsOf: create12Pieces(ofColor: .black))
        pieces.append(contentsOf: create12Pieces(ofColor: .red))
        self.assignStartingPositions(pieces: pieces)
    }
    
    func assignStartingPositions(pieces: [Piece]) {
        // for each piece in the 24 pieces that are now there
        print("starting assignstarting, there are \(pieces.count) pieces.")
        var b = 1
        var r = 41
        for piece in pieces {
            if piece.color == .black {
                self.positions[b] = piece
                b += 2
            } else if piece.color == .red {
                self.positions[r] = piece
                r += 2
            } else {
                return
            }
        }
    }
    
    func Positions () -> String {
        var allPositions = "Positions are now:"
        print("starting printpositions, there are \(positions.count) positions.")
        
        for (key,value) in positions {
            allPositions.append("\(key): \(value!.identifier) \n")
          
        }
    
        return allPositions
    }

    
}

func create12Pieces(ofColor: color) -> [Piece]{
    var pieces = [Piece]()
    for i in 1...12 {
        pieces.append(Piece(color: ofColor, number: i))
    }
    return pieces
}


    
