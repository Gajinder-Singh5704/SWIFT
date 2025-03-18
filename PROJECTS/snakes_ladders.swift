//CLOSURE TO ROLL DICE 
let rollDice : (String,Int) -> Int = {
    (name,score) in
    let num  = Int.random(in : 1...6)
    if( score + num <= 100 ){
        print("\(name) got \(num)")
        return num
    }
    print("\(name) got \(num) But needs \(100-score) to win")
    return 0
}

//CLOSURE FOR LADDERS
let ladders : (String,Int) -> Int = {
    (name,score) in
    switch (score) {
        case 3:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 18
        case 8:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 22
        case 28:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 56
        case 58:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 19
        case 75:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 11
        case 80:
            print("🪜🪜🪜\(name) got ladders 🪜🪜🪜")
            return 16
        default:
            return 0   
    }
}

//CLOSURE FOR SNAKES
let snake : (String,Int) -> Int = {
    (name,score) in
    switch (score) {
        case 17:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 4
        case 52:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 23
        case 57:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 17
        case 62:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 40
        case 88:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 70
        case 95:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 44
        case 98:
            print("🐍🐍🐍\(name) got bitten 🐍🐍🐍")
            return 19
        default:
            return 0
    }
}

//GET PLAYER NAMES
print("Player 1 name : ", terminator:"")
let player_1 = readLine() ?? "player_1"
print("Player 2 name : ", terminator:"")
let player_2 = readLine() ?? "player_2"

//SCORES INITIALIZATION
var player1_score = 0
var player2_score = 0
var p1_has_started = false
var p2_has_started = false

//START GAME
while (player1_score < 100 && player2_score < 100) {
    print("\(player_1)'s turn : ", terminator:"")
    _ = readLine() ?? ""
    
    if p1_has_started == false {
        let first_turn = rollDice(player_1,player1_score)
        if first_turn == 1 || first_turn == 6 {
            p1_has_started = true
            player1_score += first_turn
        }
        else{print("\(player_1) needs either 1 or 6 to start...")}
    }
    else {
        player1_score += rollDice(player_1,player1_score) //FOR NORMAL DICE ROLL
        player1_score -= snake(player_1,player1_score)  //FOR SNAKES
        player1_score += ladders(player_1,player1_score)    //FOR LADDERS 
        print("\(player_1)'s Score : \(player1_score)")
    }

    
    print("\(player_2)'s turn : ", terminator:"")
    _ = readLine() ?? ""
    
    if p2_has_started == false {
        let first_turn = rollDice(player_2,player2_score)
        if first_turn == 1 || first_turn == 6 {
            p2_has_started = true
            player2_score += first_turn
        }
        else{print("\(player_2) needs either 1 or 6 to start...")}
    }
    else {
        player2_score += rollDice(player_2,player2_score) //FOR NORMAL DICE ROLL
        player2_score -= snake(player_2,player2_score)  //FOR SNAKES
        player2_score += ladders(player_2,player2_score)   //FOR LADDERS 
        print("\(player_2)'s Score : \(player2_score)")
    }

}

if(player1_score>player2_score){
    print("\(player_1) WON!! 🎉🎊")
    print("\(player_1) : \(player1_score)")
    print("\(player_2) : \(player2_score)")
}
else{
    print("\(player_2) WON!! 🎉🎊")
    print("\(player_1) : \(player1_score)")
    print("\(player_2) : \(player2_score)")
}