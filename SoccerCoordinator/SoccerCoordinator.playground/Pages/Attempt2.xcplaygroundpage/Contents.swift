//: [Previous](@previous)

import Foundation


// Creating each team array to contain the player dictionary object
var teamDragons: [Dictionary<String, NSObject>] = []
var teamSharks: [Dictionary<String, NSObject>] = []
var teamRaptors: [Dictionary<String, NSObject>] = []
var experiancedPlayers: [Dictionary<String, NSObject>] = []
var listOfTeams = [teamDragons, teamSharks, teamRaptors]

// Hold the average hights to keep them even
var dragonsHeightAverage = 0.0
var sharksHeightAverage = 0.0
var raptorsHeightAverage = 0.0


// This is the max number of experianced players per team and the max number of players per team
// let experiancePlayerMaxCount = 3
// let playerMaxCount = 6


// Create each player and add in the information to the dictionary
// A player class could be created to make sure all this information is standardized and added in approperiatly

var joeSmith = ["name": "Joe Smith", "height": 42, "experiance": true, "guardian": "Jim and Jan Smith", "teamName": ""]
var jillTanner = ["name": "Jill Tanner", "height": 36, "experiance": true, "guardian": "Clara Tanner", "teamName": ""]
var billBon = ["name": "Bill Bon", "height": 43, "experiance": true, "guardian": "Sarah and Jenny Bon", "teamName": ""]
var evaGordon = ["name": "Eva Gordon", "height": 45, "experiance": false, "guardian": "Wendy and Mike Gordon", "teamName": ""]
var mattGill = ["name": "Matt Gill", "height": 40, "experiance": false, "guardian": "Charles and Sylvia Gill", "teamName": ""]
var kimmyStein = ["name": "Kimmy Stein", "height": 41, "experiance": false, "guardian": "Bill and Hillary Stein", "teamName": ""]
var sammyAdams = ["name": "Sammy Adams", "height": 45, "experiance": false, "guardian": "Jeff Adams", "teamName": ""]
var karlSaygan = ["name": "Karl Saygan", "height": 42, "experiance": true, "guardian": "Heather Bledsoe", "teamName": ""]
var suzaneGreenberg = ["name": "Suzane Greenberg", "height": 44, "experiance": true, "guardian": "Henrietta Dumas", "teamName": ""]
var salDali = ["name": "Sal Dali", "height": 41, "experiance": false, "guardian": "Gala Dali", "teamName": ""]
var joeKavalier = ["name": "Joe Kavalier", "height": 39, "experiance": false, "guardian": "Sam and Elaine Kavalier", "teamName": ""]
var benFinkelstein = ["name": "Ben Finkelstein", "height": 44, "experiance": false, "guardian": "Arron and Jill Finkelstein", "teamName": ""]
var diegoSoto = ["name": "Diego Soto", "height": 41, "experiance": true, "guardian": "Robin and Sarika Soto", "teamName": ""]
var chloeAlaska = ["name": "Chloe Alaska", "height": 47, "experiance": false, "guardian": "David and Jamie Alaska", "teamName": ""]
var arnoldWillis = ["name": "Arnold Willis", "height": 43, "experiance": false, "guardian": "Claire Willis", "teamName": ""]
var phillipHelm = ["name": "Phillip Helm", "height": 44, "experiance": true, "guardian": "Thomas Helm and Eva Jones", "teamName": ""]
var lesClay = ["name": "Les Clay", "height": 42, "experiance": true, "guardian": "Wynonna Brown", "teamName": ""]
var herschelKrustofski = ["name": "Herschel Krustofski", "height": 45, "experiance": true, "guardian": "Hyman and Rachel Krustofski", "teamName": ""]


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


func splitExperiancePlayers(players: [Dictionary<String, NSObject>]) {
    
    for player in players {
        
        if player["experiance"] == true {
            experiancedPlayers.append(player)
        }
        
    }
    
}

func assignExpPlayers(inout experiancedPlayers: [Dictionary<String, NSObject>]) {
    
    let maxNumberExperiancePlayersPerTeam = experiancedPlayers.count / listOfTeams.count
    
    
    for expPlayer in experiancedPlayers {
        
        if teamDragons.count < maxNumberExperiancePlayersPerTeam {
            teamDragons.append(expPlayer)
            
            
            if let height = expPlayer["height"] {
                dragonsHeightAverage += (height as? Double)!
            }
        } else if teamSharks.count < maxNumberExperiancePlayersPerTeam {
            teamSharks.append(expPlayer)
            
            if let height = expPlayer["height"] {
                sharksHeightAverage += (height as? Double)!
            }
            
        } else if teamRaptors.count < maxNumberExperiancePlayersPerTeam {
            teamRaptors.append(expPlayer)
            
            if let height = expPlayer["height"] {
                raptorsHeightAverage += (height as? Double)!
            }
        }
        
        
    }
    
    
    for index in 0..<teamDragons.count {
        teamDragons[index]["teamName"] = "Dragons"
    }
    
}



func addTeamName(inout player: Dictionary<String, NSObject>, updateTeamName: String) {
    
    for playerKey in player.keys {
        if playerKey == "teamName" {
            print("Your team is: \(updateTeamName)")
            player[playerKey] = updateTeamName
        }
    }
    
}

splitExperiancePlayers(players)
assignExpPlayers(&experiancedPlayers)

for player in teamRaptors {
    print("\(player["teamName"]!)")
}

for player in teamRaptors {
    print("Welcome \(player["name"]!) to Team \(player["teamName"]!)!")
}
