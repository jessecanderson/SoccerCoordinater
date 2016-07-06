//: [Previous](@previous)

import Foundation

// Create custom player class to hold the player information

class player {
    
    let name: String
    let height: Double
    let experiance: Bool
    let guardian: String
    var teamName: String = "Unassigned"
    
    init (name: String, height: Double, experiance: Bool, guardian: String) {
    
        self.name = name
        self.height = height
        self.experiance = experiance
        self.guardian = guardian
    
    }
    
    
}


// Creating each team array to contain the player dictionary object
var teamDragons: [player] = []
var teamSharks: [player] = []
var teamRaptors: [player] = []
var experiancedPlayers: [player] = []
let listOfTeams = [teamDragons, teamSharks, teamRaptors]
let startDates = ["Dragons": "March 17, 1pm", "Sharks": "March 17, 3pm", "Raptors": "March 18, 1pm"]

// Hold the average hights to keep them even
var dragonsHeightAverage = 0.0
var sharksHeightAverage = 0.0
var raptorsHeightAverage = 0.0


let joeSmith = player(name: "Joe Smith", height: 42, experiance: true, guardian: "Jim and Jan Smith")
let jillTanner = player(name: "Jill Tanner", height: 36, experiance: true, guardian: "Clara Tanner")
let billBon = player(name: "Bill Bon", height: 43, experiance: true, guardian: "Sarah and Jenny Bon")
let evaGordon = player(name: "Eva Gordon", height: 45, experiance: false, guardian: "Wendy and Mike Gordon")
let mattGill = player(name: "Matt Gill", height: 40, experiance: false, guardian: "Charles and Sylvia Gill")
let kimmyStein = player(name: "Kimmy Stein", height: 41, experiance: false, guardian: "Bill and Hillary Stein")
let sammyAdams = player(name: "Sammy Adams", height: 45, experiance: false, guardian: "Jeff Adams")
let karlSaygan = player(name: "Karl Saygan", height: 42, experiance: true, guardian: "Heather Bledsoe")
let suzaneGreenberg = player(name: "Suzane Greenberg", height: 44, experiance: true, guardian: "Henrietta Dumas")
let salDali = player(name: "Sal Dali", height: 41, experiance: false, guardian: "Gala Dali")
let joeKavalier = player(name: "Joe Kavalier", height: 39, experiance: false, guardian: "Sam and Elaine Kavalier")
let benFinkelstein = player(name: "Ben Finkelstein", height: 44, experiance: false, guardian: "Arron and Jill Finkelstein")
let diegoSoto = player(name: "Diego Soto", height: 41, experiance: true, guardian: "Robin and Sarika Soto")
let chloeAlaska = player(name: "Chloe Alaska", height: 47, experiance: false, guardian: "David and Jamie Alaska")
let arnoldWillis = player(name: "Arnold Willis", height: 43, experiance: false, guardian: "Claire Willis")
let phillipHelm = player(name: "Phillip Helm", height: 44, experiance: true, guardian: "Thomas Helm and Eva Jones")
let lesClay = player(name: "Les Clay", height: 42, experiance: true, guardian: "Wynonna Brown")
let herschelKrustofski = player(name: "Herschel Krustofski", height: 45, experiance: true, guardian: "Hyman and Rachel Krustofski")

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




func seperateExperiancedPlayers(players: [player]) {
    
    for player in players {
        
        if player.experiance == true {
            experiancedPlayers.append(player)
        }
        
    }
}


func assignExpTeams(players: [player]) {
    
    var maxNumberExperiancePlayersPerTeam = 0
    
    for player in players {
        if player.experiance == true {
            maxNumberExperiancePlayersPerTeam += 1
        }
    }
    
    maxNumberExperiancePlayersPerTeam = maxNumberExperiancePlayersPerTeam / listOfTeams.count
    
    // let maxNumberExperiancePlayersPerTeam = experiancedPlayers.count / listOfTeams.count
    
    for player in players {
        
        if player.experiance == true {
        
            if teamDragons.count < maxNumberExperiancePlayersPerTeam {
                player.teamName = "Dragons"
                teamDragons.append(player)
            } else if teamSharks.count < maxNumberExperiancePlayersPerTeam {
                player.teamName = "Sharks"
                teamSharks.append(player)
            } else if teamRaptors.count < maxNumberExperiancePlayersPerTeam {
                player.teamName = "Raptors"
                teamRaptors.append(player)
            }
            
        }
    }
}

func assignNewTeams(players: [player]) {
    
    var maxNumberExpPlayers = 0
    var maxNumberNewPlayers = 0
    
    for player in players {
        if player.experiance == false {
            maxNumberNewPlayers += 1
        } else {
            maxNumberExpPlayers += 1
        }
    }
    
    maxNumberExpPlayers = maxNumberExpPlayers / listOfTeams.count
    maxNumberNewPlayers = maxNumberNewPlayers / listOfTeams.count + maxNumberExpPlayers
    
    for player in players {
        
        if player.experiance == false {
            
            if teamDragons.count < maxNumberNewPlayers {
                player.teamName = "Dragons"
                teamDragons.append(player)
            } else if teamSharks.count < maxNumberNewPlayers {
                player.teamName = "Sharks"
                teamSharks.append(player)
            } else if teamRaptors.count < maxNumberNewPlayers {
                player.teamName = "Raptors"
                teamRaptors.append(player)
            }
        }

    }
}

func letterToParents(teamMembers: [player]) {
    
    
    for teamMember in teamMembers {
        print("Dear \(teamMember.guardian), We want to welcome \(teamMember.name) to our team the \(teamMember.teamName). Our first practice is on \(startDates[teamMember.teamName]!) so please be ready to participate. Much appriciated, your coches")
    }
}


assignExpTeams(players)
assignNewTeams(players)
letterToParents(players)


