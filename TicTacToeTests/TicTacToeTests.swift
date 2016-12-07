//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Amy Roberson on 12/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    
    var game = Game()
    
    func testPlay1() {
        var result = play(marker: .x, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .x)
        XCTAssert(result.1)
        result = play(marker: .o, at: 0, at: 1, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[0][1], .o)
        XCTAssertEqual(result.0.board[1][1], .x)
    }
    
    func testPlay2() {
        var result = play(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play(marker: .x, at: 2, at: 2, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .o)
        XCTAssertEqual(result.0.board[2][2], .x)
    }
    
    func testPlay3() {
        var result = play(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play(marker: .x, at: 2, at: 2, on: result.0)
        result = play(marker: .o, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play(marker: .x, at: 0, at: 0, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .o)
        XCTAssertEqual(result.0.board[2][2], .x)
        XCTAssertEqual(result.0.board[2][1], .o)
        XCTAssertEqual(result.0.board[0][0], .x)
    }
    
    func testPlay4() {
        var result = play(marker: .o, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .o)
        XCTAssert(result.1)
        result = play(marker: .x, at: 2, at: 2, on: result.0)
        result = play(marker: .o, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play(marker: .x, at: 0, at: 0, on: result.0)
        result = play(marker: .o, at: 1, at: 2, on: result.0)
        result = play(marker: .x, at: 2, at: 0, on: result.0)
        result = play(marker: .o, at: 0, at: 1, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .o)
        XCTAssertEqual(result.0.board[2][2], .x)
        XCTAssertEqual(result.0.board[2][1], .o)
        XCTAssertEqual(result.0.board[0][0], .x)
        XCTAssertEqual(result.0.board[1][2], .o)
        XCTAssertEqual(result.0.board[2][0], .x)
        XCTAssertEqual(result.0.board[0][1], .o)
    }
}
