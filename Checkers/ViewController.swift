//
//  ViewController.swift
//  Checkers
//
//  Created by Benjamin Bernstein on 2/9/17.
//  Copyright © 2017 Burning Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGame()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newGame() {
        let game = Board()
        print(game.Positions())
                
    }
    
}


