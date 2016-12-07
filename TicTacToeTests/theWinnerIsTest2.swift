//
//  theWinnerIsTest2.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/6/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import XCTest
@testable import TicTacToe


class theWinnerIsTest2: XCTestCase {
    
    var game = Game2()
    
    

    
    func testTheWinnerIs() {
        game.grid = [.x, .o, .empty, .x, .o, .empty, .x , .empty, .o]
        let result = theWinnerIs2(board: game.grid)
        let expected = Marker.x
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs2() {
        game.grid = [.empty, .o, .empty, .x, .o, .empty, .x , .o, .o]
        let result = theWinnerIs2(board: game.grid)
        let expected = Marker.o
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs3() {
        game.grid = [.o, .o, .empty, .x, .o, .empty, .x , .o, .o]
        let result = theWinnerIs2(board: game.grid)
        let expected = Marker.o
        XCTAssertEqual(result, expected)
    }
    
    func testTheWinnerIs4() {
        game.grid = [.empty, .o, .empty, .x, .o, .empty, .x , .empty, .o]
        let result = theWinnerIs2(board: game.grid)
        let expected = Marker.empty
        XCTAssertEqual(result, expected)
    }

    
}
