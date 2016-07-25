//
//  Player.swift
//  Ratings_2
//
//  Created by William Dalton on 6/24/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
