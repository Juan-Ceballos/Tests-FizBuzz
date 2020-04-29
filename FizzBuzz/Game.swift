//
//  Game.swift
//  FizzBuzz
//
//  Created by Juan Ceballos on 4/27/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import Foundation

class Game  {
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move   {
            score += 1
            return (true, score)
        }
        else    {
            return (false, score)
        }
    }
    
}
