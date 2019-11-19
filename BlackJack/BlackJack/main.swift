//
//  main.swift
//  BlackJack
//
//  Created by Antonio Flores on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// good understanding of string interpolation, but might be unnecessary when the deck always has 52 cards. - Jeffrey

print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")

let game = Game(player: Player(score: 0, playerName: "Player"))

game.newGame()

var gameOver = true

repeat {
    // this print statement could be worded better.  It says prompts to hit for the FIRST CARD after every hit. - Jeffrey
    print("Type hit to get your first card or pass when done")
    let hitOrPass = readLine()?.lowercased() ?? ""
    if hitOrPass == "hit" {
        let _ = game.hitMe()
    } else if hitOrPass == "pass" {
        
        // why do you think .stopHits is unused? - Jeffrey
        game.stopHits(hitPlayers: false)
        let winStatus = game.computerVsPlayer(randomScore: 0)
        // game.gameStatus()
        print(winStatus)
    }
    
    
   // commented out code should be deleted if not being worked on. -Jeffrey

//    print("Would you like to play again?")
//    let answer = readLine()?.lowercased() ?? ""
//    if answer == "yes" {
//        game.newGame()
//    } else {
//        gameOver = true
//    }
} while gameOver   // will gameOver ever be false? - Jeffrey




// control flow is working on intial run.
// when player loses correct play again messege shows.

// player doesn't bust if score goes over 21 and can still win if the computer hits lower than 21.

// game does not reset

// looks like you're appending the player's cards correctly but not clearing the player's card once the game is over.

// seems like you're keeping track of winning or loseing in multiple functions that don't work together.

/* Overall great start and use of Enums.
 A more solid understanding of the repeat while loops would helps with some of the bugs.
 Pay attention to Warnings, just becuase they might not crash the app, doesn't crash doesn't mean it will run correcty.
 I would suggest using breakpoints to see how the control flow is being handled.
 */
