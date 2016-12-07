//
//  GamePlay2Tests.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/6/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GamePlay2Tests: XCTestCase {
    
    var game = Game2()
    
    func testPlay1() {
        var result = play2(marker: .x, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .x)
        XCTAssert(result.1)
        result = play2(marker: .o, at: 0, at: 1, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.grid[4], .x)
        XCTAssertEqual(result.0.grid[1], .o)
        
        
        
    }
    
    func testPlay2() {
        var result = play2(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play2(marker: .x, at: 2, at: 2, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.grid[4], .o)
        XCTAssertEqual(result.0.grid[8], .x)
    }
    
    
    func testPlay3() {
        var result = play2(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play2(marker: .x, at: 2, at: 2, on: result.0)
        result = play2(marker: .o, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play2(marker: .x, at: 0, at: 0, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.grid[4], .o)
        XCTAssertEqual(result.0.grid[8], .x)
        XCTAssertEqual(result.0.grid[7], .o)
        XCTAssertEqual(result.0.grid[0], .x)
    }
    
    func testPlay4() {
        var result = play2(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play2(marker: .x, at: 2, at: 2, on: result.0)
        result = play2(marker: .o, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play2(marker: .x, at: 0, at: 0, on: result.0)
        result = play2(marker: .o, at: 1, at: 2, on: result.0)
        XCTAssert(result.1)
        print(result.0.grid)
        result = play2(marker: .x, at: 2, at: 0, on: result.0)
        result = play2(marker: .o, at: 0, at: 1, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.grid[4], .o)
        XCTAssertEqual(result.0.grid[8], .x)
        XCTAssertEqual(result.0.grid[7], .o)
        XCTAssertEqual(result.0.grid[0], .x)
        XCTAssertEqual(result.0.grid[5], .o)
        XCTAssertEqual(result.0.grid[6], .x)
        XCTAssertEqual(result.0.grid[1], .o)
        
    }
}
    

