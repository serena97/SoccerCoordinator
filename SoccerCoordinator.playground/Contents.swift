
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

var experiencedPlayers: [Int] = []
var nonExperiencedPlayers: [Int] = []


/* Part 2*/


//Each team is modeled by a dictionary storing players' index and experience status
var teamDragons : [Int: String] = [:]
var teamSharks : [Int: String] = [:]
var teamRaptors : [Int: String] = [:]

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
let expPlayersPerTeam = numExpPlayers/3


/*//temp playerSoccerExp
var tempPlayerSoccerExp = playerSoccerExp*/

//updates array of experienced players and non experienced
for(index,experience) in playerSoccerExp{
    if experience == true {
        //experiencedPlayers[index] = playerName[index]
        experiencedPlayers.append(index)
    } else{
        //nonExperiencedPlayers[index] = playerName[index]
        nonExperiencedPlayers.append(index)
    }
    
}



//add the experiencedPlayers, according to the number of expPlayersPerTeam into teamDragons
for i in 1...expPlayersPerTeam { //1 to 3 in this case. 1,2,3 so loops 3 times
    teamDragons[i] = experiencedPlayers[i] //teamDragons[1] = "Joe Smith"
    teamRaptors[i] = experiencedPlayers[i] //teamRaptors[8]= "Karl Zargyan"
    teamSharks[i] = experiencedPlayers[i]
}

//add the remaining nonExperiencedPlayers into the teams
for i1 in expPlayersPerTeam...totalPlayerInTeam{ //3 to 6 in this case
    teamDragons[i1] = nonExperiencedPlayers[i1] //teamDragons[1] = "Joe Smith"
    teamRaptors[i1] = nonExperiencedPlayers[i1]
    teamSharks[i1] = nonExperiencedPlayers[i1]
}


/*Part 3
Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team their child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardians’ names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows: Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm
*/


for (index,name) in teamDragons{
    print("To: \(playerGuardianName[index]), Your child \(playerName[index]) from Team Dragon will attend their first team practice on March 17, 1pm")
}


for (index,name) in teamSharks{
    print("To: \(playerGuardianName[index]), Your child \(playerName[index]) from Team Sharks will attend their first team practice on March 17, 3pm")
}

for (index,name) in teamRaptors{
    print("To: \(playerGuardianName[index]), Your child \(playerName[index]) from Team Raptors will attend their first team practice on March 18, 1pm")
}








