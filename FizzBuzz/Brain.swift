//
//  Brain.swift
//  FizzBuzz
//
//  Created by Juan Ceballos on 4/27/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import Foundation
class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool    {
        numberIsDivisibleBy(divisior: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool    {
        numberIsDivisibleBy(divisior: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool  {
        numberIsDivisibleBy(divisior: 15, number: number)
    }
    
    func numberIsDivisibleBy(divisior: Int, number: Int) -> Bool   {
        if number%divisior == 0 {
            return true
        }
        else    {
            return false
        }
    }
    
    //=======================
    
    func check(number: Int)  -> Move  {
        if isDivisibleByFifteen(number: number) {
            return Move.fizzBuzz
        }
        
        else if isDivisibleByThree(number: number)    {
            return Move.fizz
        }
            
        else if isDivisibleByFive(number: number)    {
            return Move.buzz
        }
        
        else    {
            return Move.number
        }
    }
    
}
