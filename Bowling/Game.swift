//
//  Game.swift
//  Bowling
//
//  Created by Daher Alfawares on 8/19/15.
//  Copyright (c) 2015 Daher Alfawares. All rights reserved.
//

import Foundation

class Game {
    
    var rolls = Array<Int>()
    
    func rollMany( pins : Int, count: Int){
        for( var i : Int = 0 ; i < count ; i++ ) {
            rolls.append(pins)
        }
    }
    
    func firstInFrame( i : Int) -> Bool {
        return 0 == (i % 2)
    }
    
    func isSpare( i : Int ) -> Bool {
        return rolls[i] + rolls[i+1] == 10
    }
    
    func score()->Int {
        var score = 0
        for (var i = 0 ; i < count(rolls); i++ )
        {
            if firstInFrame(i){ // first in frame
                if isSpare(i) {
                    // spare
                    score += rolls[i] + rolls[i+1] + rolls[i+2] // first in second frame.
                }
                else {
                    score += rolls[i]
                }
            }
        }
        return score
    }
}
