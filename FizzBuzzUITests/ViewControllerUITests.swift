//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Juan Ceballos on 4/28/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTapNumberButtonIncrementScore()    {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testNumberButtonIncrementScoreTwice()  {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementScore()  {
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        fizzButton.tap()
        fizzButton.tap()
        let newScore = fizzButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testTapFizzBuzzButtonIncrementScore()  {
        let app = XCUIApplication()
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        fizzBuzzButton.tap()
        fizzBuzzButton.tap()
        let newScore = fizzBuzzButton.label
        XCTAssertEqual(newScore, "0")
    }
    
    func testBuzzButtonPressedIncrementScore()  {
        let app = XCUIApplication()
        let buzzButton = app.buttons["buzzButton"]
        buzzButton.tap()
        buzzButton.tap()
        let newScore = buzzButton.label
        XCTAssertEqual(newScore, "0")
    }
    
}
