//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Juan Ceballos on 4/27/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    
    var game: Game?
    
    var gameScore: Int? {
        didSet  {
            guard let unwrappedGameScore = gameScore
                else    {
                    print("nil score")
                    return
            }
            numberButton.setTitle("\(unwrappedGameScore)", for: .normal)
            
            fizzButton.setTitle("\(unwrappedGameScore)", for: .normal)
            
            fizzBuzzButton.setTitle("\(unwrappedGameScore)", for: .normal)
            
            buzzButton.setTitle("\(unwrappedGameScore)", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        
        guard let unwrappedGame = game
            else    {
                print("nil game")
                return
        }
        
        gameScore = unwrappedGame.score
    }


    func play(move: Move) {
        guard let unwrappedGame = game
            else    {
                print("Game is nil")
                return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func fizzBuzzButtonPressed(_ sender: UIButton) {
        play(move: Move.fizzBuzz)
    }
    
    @IBAction func fizzButtonPressed(_ sender: UIButton) {
        play(move: Move.fizz)
    }
    
    @IBAction func buzzButtonPressed(_ sender: UIButton) {
        play(move: Move.buzz)
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        play(move: Move.number)    }
}

