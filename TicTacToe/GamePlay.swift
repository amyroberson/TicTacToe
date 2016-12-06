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
    
    if row < 3 {
        if column < 3 {
            if game.board[row][column] == .Empty {
                newBoard[row][column] = marker
                newGame.board = newBoard
                if (theWinnerIs(board: newGame.board) == .X) {
                    print("X Wins!")
                } else if (theWinnerIs(board: newGame.board) == .O) {
                    print("O Wins!")
                }
                return (newGame, true)
            }
        }
    }
    return (game, false)
}

func theWinnerIs(board: [[Marker]]) -> Marker {
    if (board[0][0] == .X) && (board[0][1] == .X) && (board[0][2] == .X) {
        return .X
    } else if (board[1][0] == .X) && (board[1][1] == .X) && (board[1][2] == .X) {
        return .X
    } else if (board[2][0] == .X) && (board[2][1] == .X) && (board[2][2] == .X) {
        return .X
    } else if (board[0][0] == .O) && (board[0][1] == .O) && (board[0][2] == .O) {
        return .O
    } else if (board[1][0] == .O) && (board[1][1] == .O) && (board[1][2] == .O) {
        return .O
    } else if (board[2][0] == .O) && (board[2][1] == .O) && (board[2][2] == .O) {
        return .O
    } else if (board[0][0] == .X) && (board[1][0] == .X) && (board[2][0] == .X) {
        return .X
    } else if (board[0][1] == .X) && (board[1][1] == .X) && (board[2][1] == .X) {
        return .X
    } else if (board[0][2] == .X) && (board[1][2] == .X) && (board[2][2] == .X) {
        return .X
    } else if (board[0][0] == .O) && (board[1][0] == .O) && (board[2][0] == .O) {
        return .O
    } else if (board[0][1] == .O) && (board[1][1] == .O) && (board[2][1] == .O) {
        return .O
    } else if (board[0][2] == .O) && (board[1][2] == .O) && (board[2][2] == .O) {
        return .O
    } else if (board[0][0] == .X) && (board[1][1] == .X) && (board[2][2] == .X) {
        return .X
    } else if (board[0][2] == .X) && (board[1][1] == .X) && (board[2][0] == .X) {
        return .X
    } else if (board[0][0] == .O) && (board[1][1] == .O) && (board[2][2] == .O) {
        return .O
    } else if (board[0][2] == .O) && (board[1][1] == .O) && (board[2][0] == .O) {
        return .O
    } else {
        return .Empty
    }
}
