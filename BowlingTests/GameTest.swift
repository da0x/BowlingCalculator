//
//  GameTest.swift
//  Bowling
//
//  Created by Daher Alfawares on 8/19/15.
//  Copyright (c) 2015 Daher Alfawares. All rights reserved.
//

import Foundation
import XCTest

class GameTest : XCTestCase {
    
    var game : Game!
    
    override func setUp() {
        game = Game()
    }
    
    func testInitialScore(){
        XCTAssertEqual(game.score(), 0, "initial score is zero")
    }
    
    func testRollZero(){
        game.rollMany(0, count: 20)
        
        XCTAssertEqual(game.score(), 0, "0")
    }
    
    func testRollSpare(){
        game.rollMany(5, count: 1)
        game.rollMany(5, count: 1)
        game.rollMany(0, count: 18)
        
        XCTAssertEqual(game.score(), 10, "kasdfkajsdf")
    }
    
    func testRollSpareSecondFrame(){
        game.rollMany(0, count: 2)
        game.rollMany(5, count: 2)
        game.rollMany(1, count: 1)
        game.rollMany(0, count: 15)
        
        XCTAssertEqual(game.score(), 12, "not eleven!!")
    }
    
    func testRollStrike(){
        game.rollMany(10, count: 1)
        game.rollMany(0, count: 1)
        
        game.rollMany(2, count: 1)
        
        game.rollMany(0, count: 17)
        
        XCTAssertEqual(game.score(), 14, "complicated!!!")
    }
}
