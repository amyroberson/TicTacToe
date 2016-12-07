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
    
    let board1: [[Marker]] = [[.x, .x, .x],
                              [.o, .o, .x],
                              [.empty, .o, .empty]]
    
    let board2: [[Marker]] = [[.o, .x, .x],
                              [.o, .o, .x],
                              [.empty, .o, .x]]
    
    let board3: [[Marker]] = [[.o, .x, .x],
                              [.o, .o, .x],
                              [.empty, .o, .o]]
    
    let board4: [[Marker]] = [[.o, .x, .empty],
                              [.o, .empty, .x],
                              [.empty, .o, .o]]
    
    
    func testTheWinnerIs() {
        let result = theWinnerIs(board: board1)
        let expected = Marker.x
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs2() {
        let result = theWinnerIs(board: board2)
        let expected = Marker.x
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs3() {
        let result = theWinnerIs(board: board3)
        let expected = Marker.o
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs4() {
        let result = theWinnerIs(board: board4)
        let expected = Marker.empty
        XCTAssertEqual(result, expected)
    }

}
