//
//  GamePlay2.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/6/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

func play2(marker: Marker, at row: Int, at column: Int, on game: Game2) -> (Game2, Bool) {
    var newGame = game
    var newBoard = game.grid
    var gridIndex: Int
    
    switch (row, column){
    case (0,0):
        gridIndex = 0
    case (0,1):
        gridIndex = 1
    case (0,2):
        gridIndex = 2
    case (1,0):
        gridIndex = 3
    case (1,1):
        gridIndex = 4
    case (1,2):
        gridIndex = 5
    case (2,0):
        gridIndex = 6
    case (2,1):
        gridIndex = 7
    case (2,2):
        gridIndex = 8
    default:
        fatalError("Invalid Space")
    }
    
    
    if game.lastPlayed == marker {
        return (game, false)
    }
    
    newGame.lastPlayed = marker
    
    if game.grid[gridIndex] == .empty {
        newBoard[gridIndex] = marker
        newGame.grid = newBoard
        newGame.grid[gridIndex] = marker
        if (theWinnerIs2(board:newGame.grid) == .x){
            print("X wins")
        } else if (theWinnerIs2(board:newGame.grid) == .o){
            print("O wins")
        } else{
            print("Next turn!")
        }
        return (newGame, true)
    }
    return (game, false)
}


func theWinnerIs2(board: [Marker]) -> Marker {
    
    if (board[0] == .x) && (board[1] == .x) && (board[2] == .x){
        return .x
    } else if (board[3] == .x) && (board[4] == .x) && (board[5] == .x){
        return .x
    } else if (board[6] == .x) && (board[7] == .x) && (board[8] == .x){
        return .x
    } else if (board[0] == .o) && (board[1] == .o) && (board[2] == .o){
        return .o
    } else if (board[3] == .o) && (board[4] == .o) && (board[5] == .o){
        return .o
    } else if (board[6] == .o) && (board[7] == .o) && (board[8] == .o){
        return .o
    } else if (board[0] == .x) && (board[3] == .x) && (board[6] == .x){
        return .x
    } else if (board[1] == .x) && (board[4] == .x) && (board[7] == .x){
        return .x
    } else if (board[2] == .x) && (board[5] == .x) && (board[8] == .x){
        return .x
    } else if (board[0] == .x) && (board[4] == .x) && (board[8] == .x){
        return .x
    } else if (board[6] == .x) && (board[4] == .x) && (board[2] == .x){
        return .x
    } else if (board[0] == .o) && (board[3] == .o) && (board[6] == .o){
        return .o
    } else if (board[1] == .o) && (board[4] == .o) && (board[7] == .o){
        return .o
    } else if (board[2] == .o) && (board[5] == .o) && (board[8] == .o){
        return .o
    } else if (board[0] == .x) && (board[4] == .x) && (board[8] == .x){
        return .o
    } else if (board[6] == .x) && (board[4] == .x) && (board[2] == .x){
        return .o
    } else {
        return .empty
    }
}


