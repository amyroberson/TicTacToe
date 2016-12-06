//
//  IsWinning.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TheWinnerIsTests: XCTestCase {
    
    let board1: [[Marker]] = [[.X, .X, .X],
                              [.O, .O, .X],
                              [.Empty, .O, .Empty]]
    
    let board2: [[Marker]] = [[.O, .X, .X],
                              [.O, .O, .X],
                              [.Empty, .O, .X]]
    
    let board3: [[Marker]] = [[.O, .X, .X],
                              [.O, .O, .X],
                              [.Empty, .O, .O]]
    
    func testTheWinnerIs() {
        let result = theWinnerIs(board: board1)
        let expected = Marker.X
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs2() {
        let result = theWinnerIs(board: board2)
        let expected = Marker.X
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs3() {
        let result = theWinnerIs(board: board3)
        let expected = Marker.O
        XCTAssertEqual(result, expected)
    }
}
