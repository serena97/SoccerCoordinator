//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let playerName : [Int: String] = [
    1: "Joe Smith",
    2: "Jill Tanner",
    3: "Bill Bon",
    4: "Eva Gordon",
    5: "Matt Gill",
    6: "Kimmy Stein",
    7: "Sammy Adams",
    8: "Karl Saygan",
    9: "Suzane Greenberg",
    10: "Sal Dali",
    11: "Joe Kavalier",
    12: "Ben Finkelstein",
    13: "Diego Soto",
    14: "Chloe Alaska",
    15: "Arnold Willis",
    16: "Phillip Helm",
    17: "Les Clay",
    18: "Herschel Krustofski"
]

let playerHeight : [Int: Int] = [
    1: 42,
    2: 36,
    3: 43,
    4: 45,
    5: 40,
    6: 41,
    7: 45,
    8: 42,
    9: 44,
    10: 41,
    11: 39,
    12: 44,
    13: 41,
    14: 47,
    15: 43,
    16: 44,
    17: 42,
    18: 45
]

//true for YES, false for NO

let playerSoccerExp : [Int: Bool] = [
    1: true,
    2: true,
    3: true,
    4: false,
    5: false,
    6: false,
    7: false,
    8: true,
    9: true,
    10:false,
    11:false,
    12: false,
    13: true,
    14: false,
    15: false,
    16: true,
    17: true,
    18: true
]


let playerGuardianName : [Int: String] = [
    1: "Jim and Jan Smith",
    2: "Clara Tanner",
    3: "Sara and Jenny Bon",
    4: "Wendy and Mike Gordon",
    5: "Charles and Sylvia Gill",
    6: "Bill and Hillary Stein",
    7: "Jeff Adams",
    8: "Heather Bledsoe",
    9: "Henrietta Dumas",
    10: "Gala Dali",
    11: "Sam and Elaine Kavalier",
    12: "Aaron and Jill Finkelstein",
    13: "Robin and Sarika Soto",
    14: "David and Jamie Alaska",
    15: "Claire Willis",
    16: "Thomas Helm and Eva Jones",
    17: "Wynonna Brown",
    18: "Hyman and Rachel Krustofski"
]

/* Part 2*/


//Each team is modeled by an array storing players' index
var teamDragons : [Int] = []
var teamSharks : [Int: Bool]
var teamRaptors : [Int: Bool]

//ensures players are distributed evenly; all teams will have same number of players
let totalPlayerInTeam = playerSoccerExp.count/3

//counter for the number of experienced players
var numExpPlayers = 0

for (index,experience) in playerSoccerExp {
    if(experience == true){
        ++numExpPlayers
    }
}

//number of experienced players per team, assuming there are 3 teams
var expPlayersPerTeam = numExpPlayers/3


//temp playerSoccerExp
var tempPlayerSoccerExp = playerSoccerExp

//ensures number of experienced players and number of players are the same for each team
for(index,experience) in tempPlayerSoccerExp{
    while(teamDragons.count < totalPlayerInTeam){
            teamDragons.append(index)
            var t
            //if teamDragon's number of true boolean >= expPlayerPerTeam, stop
        
        }
    }
    
}


