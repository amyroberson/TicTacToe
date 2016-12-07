//
//  GamePlay.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation


func play(marker: Marker, at row: Int, at column: Int, on game: Game) -> (Game, Bool) {
    var newGame = game
    var newBoard = game.board
    
    if game.lastPlayed == marker {
        return (game, false)
    }
    
    newGame.lastPlayed = marker
    
    if row < 3 && row > -1 {
        if column < 3 && column > -1 {
            if game.board[row][column] == .empty { //if matric.grid[x] == .empty
                newBoard[row][column] = marker       //matrix.grid[x] = marker
                newGame.board = newBoard
                if (theWinnerIs(board: newGame.board) == .x) {
                    print("X Wins!")
                } else if (theWinnerIs(board: newGame.board) == .o) {
                    print("O Wins!")
                }
                print("Invalid Board Space")
                return (newGame, true)
            }
        }
    }
    return (game, false)
}


var round1 = Game(lastPlayed: .x, board: [[.empty, .empty, .empty],
                                           [.empty, .o, .empty],
                                           [.empty, .empty, .empty]])




func theWinnerIs(board: [[Marker]]) -> Marker {
    if (board[0][0] == .x) && (board[0][1] == .x) && (board[0][2] == .x) {
        return .x
    } else if (board[1][0] == .x) && (board[1][1] == .x) && (board[1][2] == .x) {
        return .x
    } else if (board[2][0] == .x) && (board[2][1] == .x) && (board[2][2] == .x) {
        return .x
    } else if (board[0][0] == .o) && (board[0][1] == .o) && (board[0][2] == .o) {
        return .o
    } else if (board[1][0] == .o) && (board[1][1] == .o) && (board[1][2] == .o) {
        return .o
    } else if (board[2][0] == .o) && (board[2][1] == .o) && (board[2][2] == .o) {
        return .o
    } else if (board[0][0] == .x) && (board[1][0] == .x) && (board[2][0] == .x) {
        return .x
    } else if (board[0][1] == .x) && (board[1][1] == .x) && (board[2][1] == .x) {
        return .x
    } else if (board[0][2] == .x) && (board[1][2] == .x) && (board[2][2] == .x) {
        return .x
    } else if (board[0][0] == .o) && (board[1][0] == .o) && (board[2][0] == .o) {
        return .o
    } else if (board[0][1] == .o) && (board[1][1] == .o) && (board[2][1] == .o) {
        return .o
    } else if (board[0][2] == .o) && (board[1][2] == .o) && (board[2][2] == .o) {
        return .o
    } else if (board[0][0] == .x) && (board[1][1] == .x) && (board[2][2] == .x) {
        return .x
    } else if (board[0][2] == .x) && (board[1][1] == .x) && (board[2][0] == .x) {
        return .x
    } else if (board[0][0] == .o) && (board[1][1] == .o) && (board[2][2] == .o) {
        return .o
    } else if (board[0][2] == .o) && (board[1][1] == .o) && (board[2][0] == .o) {
        return .o
    } else {
        return .empty
    }
}
