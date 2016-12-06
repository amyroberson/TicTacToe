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
        var result = play(marker: .X, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .X)
        XCTAssert(result.1)
        result = play(marker: .O, at: 0, at: 1, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[0][1], .O)
        XCTAssertEqual(result.0.board[1][1], .X)
    }
    
    func testPlay2() {
        var result = play(marker: .O, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .O)
        XCTAssert(result.1)
        result = play(marker: .X, at: 2, at: 2, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .O)
        XCTAssertEqual(result.0.board[2][2], .X)
    }
    
    func testPlay3() {
        var result = play(marker: .O, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .O)
        XCTAssert(result.1)
        result = play(marker: .X, at: 2, at: 2, on: result.0)
        result = play(marker: .O, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play(marker: .X, at: 0, at: 0, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .O)
        XCTAssertEqual(result.0.board[2][2], .X)
        XCTAssertEqual(result.0.board[2][1], .O)
        XCTAssertEqual(result.0.board[0][0], .X)
    }
    
    func testPlay4() {
        var result = play(marker: .O, at: 1, at: 1, on: game)
        XCTAssertEqual(result.0.lastPlayed, .O)
        XCTAssert(result.1)
        result = play(marker: .X, at: 2, at: 2, on: result.0)
        result = play(marker: .O, at: 2, at: 1, on: result.0)
        XCTAssert(result.1)
        result = play(marker: .X, at: 0, at: 0, on: result.0)
        result = play(marker: .O, at: 1, at: 2, on: result.0)
        result = play(marker: .X, at: 2, at: 0, on: result.0)
        XCTAssert(result.1)
        XCTAssertEqual(result.0.board[1][1], .O)
        XCTAssertEqual(result.0.board[2][2], .X)
        XCTAssertEqual(result.0.board[2][1], .O)
        XCTAssertEqual(result.0.board[0][0], .X)
        XCTAssertEqual(result.0.board[1][2], .O)
        XCTAssertEqual(result.0.board[2][0], .X)
    }
}
