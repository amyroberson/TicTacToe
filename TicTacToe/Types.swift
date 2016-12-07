//
//  Types.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

enum Marker{
    case x
    case o
    case empty
}

struct Game {
    var lastPlayed: Marker = .empty
    var board: [[Marker]] = [[.empty, .empty, .empty],
                             [.empty, .empty, .empty],
                             [.empty, .empty, .empty]]
    
}

struct Game2 { //Board
    var lastPlayed: Marker = .empty
    let rows = 3, columns = 3
    var grid: [Marker]
    init() {
        self.grid = Array(repeating: .empty, count: rows * columns)
    }
    subscript(row: Int, column: Int) -> Marker {
        get {
            if (row < rows && row > -1) && (column < columns && column > -1) {
                return grid[(row * columns) + column] // for 0,0 = true,
            } else {
                fatalError("Invalid InPut")
            }
        }
        
        set {
            grid[(row * columns) + column] = newValue
        }
    }
    
}

