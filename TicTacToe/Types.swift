//
//  Types.swift
//  TicTacToe
//
//  Created by Amy Roberson on 12/5/16.
//  Copyright © 2016 Amy Roberson. All rights reserved.
//

import Foundation

enum Marker{
    case X
    case O
    case Empty
}

struct Game {
    var lastPlayed: Marker = .Empty
    var board: [[Marker]] = [[.Empty, .Empty, .Empty],
                             [.Empty, .Empty, .Empty],
                             [.Empty, .Empty, .Empty]]
    
}


