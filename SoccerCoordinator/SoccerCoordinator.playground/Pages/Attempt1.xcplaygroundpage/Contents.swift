//: Playground - noun: a place where people can play

import UIKit

// Creating each team array to contain the player dictionary object
var teamDragons: [Dictionary<String, NSObject>] = []
var teamSharks: [Dictionary<String, NSObject>] = []
var teamRaptors: [Dictionary<String, NSObject>] = []
let totalTeams = [teamDragons, teamSharks, teamRaptors]
let startDates = ["Dragons": "March 17, 1pm", "Sharks": "March 17, 3pm", "Raptors": "March 18, 1pm"]

// Hold the average hights to keep them even
// TODO: Add in feature to keep the teams average height close. ~1.5' from the other teams.
var dragonsHeightAverage = 0.0
var sharksHeightAverage = 0.0
var raptorsHeightAverage = 0.0


// Create each player and add in the information to the dictionary
// A player class could be created to make sure all this information is standardized and added in approperiatly
// Accessing class properties would be a much easier solution then trying to access the different parts of the dictionary
// Just saying

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

func addPlayersToTeams(list: NSArray, experianced: Bool) {
    
    var dragonPlayers = 1
    var sharkPlayers = 1
    var raptorPlayers = 1
    
    
    for player in players {
    
        if experianced == true && player["experiance"] == true {
            if teamDragons.count < sharkPlayers && teamDragons.count < raptorPlayers {
                teamDragons.append(player)
                dragonPlayers += 1
            } else if teamSharks.count < dragonPlayers && teamSharks.count < raptorPlayers {
                teamSharks.append(player)
                sharkPlayers += 1
            } else if teamRaptors.count < dragonPlayers && teamRaptors.count < sharkPlayers {
                teamRaptors.append(player)
                raptorPlayers += 1
            }
        } else if experianced == false && player["experiance"] == false {
            if teamDragons.count < (players.count / totalTeams.count) {
                teamDragons.append(player)
            } else if teamSharks.count < (players.count / totalTeams.count) {
                teamSharks.append(player)
            } else if teamRaptors.count < (players.count / totalTeams.count) {
                teamRaptors.append(player)
            }
        }
    }
}


func welcomeLetter(teamPlayers: [Dictionary<String, NSObject>], teamName: String) {
    
    /* This block of code should allow for the optionals to be unwrapped with either an if let or guard statement. 
    I force unwrapped these to remove the optional() dialog in the strings. This could be done safer with proper unwrapping */
    
    for player in teamPlayers {
        print("Hello \(player["guardian"]!), we would like to welcome \(player["name"]!) to our team the \(teamName). Our first practice will be on \(startDates[teamName]!) so please be ready. We are excited for a great season! Thank you.")
    }
}


// Add in the experianced players to each team
addPlayersToTeams(players, experianced: true)

// Add in the new players to each team
addPlayersToTeams(players, experianced: false)



// Verify the number of people per team
teamDragons.count
teamSharks.count
teamRaptors.count

// Send out the welcome letters
welcomeLetter(teamDragons, teamName: "Dragons")
welcomeLetter(teamSharks, teamName: "Sharks")
welcomeLetter(teamRaptors, teamName: "Raptors")




// Working on adding in the average height options. Work in progress
dragonsHeightAverage = dragonsHeightAverage / Double(teamDragons.count)
sharksHeightAverage = sharksHeightAverage / Double(teamSharks.count)
raptorsHeightAverage = raptorsHeightAverage / Double(teamRaptors.count)




