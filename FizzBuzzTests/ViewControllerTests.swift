//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by Juan Ceballos on 4/28/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {

    var viewController: ViewController!
    
    
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = (storyboard.instantiateViewController(identifier: "ViewController") as! ViewController)
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }

    func test()  {
        XCTAssertTrue(true)
    }
    
    func testMove1IncrementsScore()  {
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore()  {
        viewController.play(move: Move.number)
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasGame()  {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore()   {
        viewController.game?.score = 2
        viewController.play(move: Move.fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testFizzWrongMove()    {
        viewController.game?.score = 3
        viewController.play(move: Move.fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
        
    }
    
    func testBuzzIncrementScore()   {
        viewController.game?.score = 4
        viewController.play(move: Move.buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testBuzzWrongMove()    {
        viewController.game?.score = 5
        viewController.play(move: Move.buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore()   {
        viewController.game?.score = 14
        viewController.play(move: Move.fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testFizzBuzzWrongMove()    {
        viewController.game?.score = 15
        viewController.play(move: Move.fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testNumberIncrementScore() {
        viewController.game?.score = 1
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testNumberWrongMove()  {
        viewController.game?.score = 2
        viewController.play(move: Move.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }

}
