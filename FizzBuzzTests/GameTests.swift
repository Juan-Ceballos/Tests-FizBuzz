//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Juan Ceballos on 4/27/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented()   {
        _ = game.play(move: Move.number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight()    {
        game.score = 2
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong()    {
        game.score = 1
        let response = game.play(move: Move.fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzIsRight()    {
        game.score = 4
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzIsWrong()    {
        game.score = 5
        let response = game.play(move: Move.buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzIsCorrect()  {
        game.score = 14
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzIsWrong()    {
        game.score = 15
        let response = game.play(move: Move.fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfNumberIsCorrect()    {
        game.score = 22
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfNumberIsWrong()  {
        game.score = 24
        let response = game.play(move: Move.number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfWrongScoreIsNotIncremented() {
        game.score = 1
        _ = game.play(move: Move.fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight()    {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: Move.number)
        XCTAssertNotNil(response.score)
    }

}
