//: Playground - noun: a place where people can play

import UIKit

// Creating each team array to contain the player dictionary object
var teamDragons: [Dictionary<String, NSObject>] = []
var teamSharks: [Dictionary<String, NSObject>] = []
var teamRaptors: [Dictionary<String, NSObject>] = []

// Hold the average hights to keep them even
var dragonsHeightAverage = 0.0
var sharksHeightAverage = 0.0
var raptorsHeightAverage = 0.0


// This is the max number of experianced players per team and the max number of players per team
let experiancePlayerMaxCount = 3
let playerMaxCount = 6


// Create each player and add in the information to the dictionary
// A player class could be created to make sure all this information is standardized and added in approperiatly

let joeSmith = ["name": "Joe Smith", "height": 42, "experiance": true, "guardian": "Jim and Jan Smith"]
let jillTanner = ["name": "Jill Tanner", "height": 36, "experiance": true, "guardian": "Clara Tanner"]
let billBon = ["name": "Bill Bon", "height": 43, "experiance": true, "guardian": "Sarah and Jenny Bon"]
let evaGordon = ["name": "Eva Gordon", "height": 45, "experiance": false, "guardian": "Wendy and Mike Gordon"]
let mattGill = ["name": "Matt Gill", "height": 40, "experiance": false, "guardian": "Charles and Sylvia Gill"]
let kimmyStein = ["name": "Kimmy Stein", "height": 41, "experiance": false, "guardian": "Bill and Hillary Stein"]
let sammyAdams = ["name": "Sammy Adams", "height": 45, "experiance": false, "guardian": "Jeff Adams"]
let karlSaygan = ["name": "Karl Saygan", "height": 42, "experiance": true, "guardian": "Heather Bledsoe"]
let suzaneGreenberg = ["name": "Suzane Greenberg", "height": 44, "experiance": true, "guardian": "Henrietta Dumas"]
let salDali = ["name": "Sal Dali", "height": 41, "experiance": false, "guardian": "Gala Dali"]
let joeKavalier = ["name": "Joe Kavalier", "height": 39, "experiance": false, "guardian": "Sam and Elaine Kavalier"]
let benFinkelstein = ["name": "Ben Finkelstein", "height": 44, "experiance": false, "guardian": "Arron and Jill Finkelstein"]
let diegoSoto = ["name": "Diego Soto", "height": 41, "experiance": true, "guardian": "Robin and Sarika Soto"]
let chloeAlaska = ["name": "Chloe Alaska", "height": 47, "experiance": false, "guardian": "David and Jamie Alaska"]
let arnoldWillis = ["name": "Arnold Willis", "height": 43, "experiance": false, "guardian": "Claire Willis"]
let phillipHelm = ["name": "Phillip Helm", "height": 44, "experiance": true, "guardian": "Thomas Helm and Eva Jones"]
let lesClay = ["name": "Les Clay", "height": 42, "experiance": true, "guardian": "Wynonna Brown"]
let herschelKrustofski = ["name": "Herschel Krustofski", "height": 45, "experiance": true, "guardian": "Hyman and Rachel Krustofski"]


// Add all the players to the players array

let players = [joeSmith,
               jillTanner,
               billBon,
               evaGordon,
               mattGill,
               kimmyStein,
               sammyAdams,
               karlSaygan,
               suzaneGreenberg,
               salDali,
               joeKavalier,
               benFinkelstein,
               diegoSoto,
               chloeAlaska,
               arnoldWillis,
               phillipHelm,
               lesClay,
               herschelKrustofski]

// Create functions for processing players and writing the letters

func experiancedPlayers(list: NSArray) {
    
    for player in players {
        if player["experiance"] == true {
            if teamDragons.count < experiancePlayerMaxCount {
                teamDragons.append(player)
                
                            if let height = player["height"] {
                                dragonsHeightAverage += (height as? Double)!
                            }
            } else if teamSharks.count < experiancePlayerMaxCount {
                teamSharks.append(player)
                
                            if let height = player["height"] {
                                sharksHeightAverage += (height as? Double)!
                            }
                
            } else if teamRaptors.count < experiancePlayerMaxCount {
                teamRaptors.append(player)
                
                            if let height = player["height"] {
                                raptorsHeightAverage += (height as? Double)!
                            }
            }
            
            //        if let height = player["height"] {
            //            dragonsHeightAverage += (height as? Int)!
            //        }
        }
    }
}


func newPlayers(list: NSArray) {
    
    for player in players {
        if player["experiance"] == false {
            
            if teamDragons.count < playerMaxCount {
                
                teamDragons.append(player)
                player
                
                if let height = player["height"] {
                    dragonsHeightAverage += (height as? Double)!
                }
                
            } else if teamSharks.count < playerMaxCount {
                teamSharks.append(player)
                
                if let height = player["height"] {
                    sharksHeightAverage += (height as? Double)!
                }
                
            } else if teamRaptors.count < playerMaxCount {
                teamRaptors.append(player)
                
                if let height = player["height"] {
                    raptorsHeightAverage += (height as? Double)!
                }
                
            }
            
        }
    }
}



experiancedPlayers(players)
newPlayers(players)



// Verify the number of people per team
teamDragons.count
teamSharks.count
teamRaptors.count


for player in teamDragons {
    player["name"]
}

for player in teamSharks {
    player["name"]
}

for player in teamRaptors {
    player["name"]
}





dragonsHeightAverage = dragonsHeightAverage / Double(teamDragons.count)
sharksHeightAverage = sharksHeightAverage / Double(teamSharks.count)
raptorsHeightAverage = raptorsHeightAverage / Double(teamRaptors.count)

for player in teamDragons {
    if let name = player["name"] {
        print("Hello \(name) and welcome to the team")
    }
}


