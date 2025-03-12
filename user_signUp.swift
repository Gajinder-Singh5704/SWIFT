//USER-SIGNUP PROGRAM
//ADDS A NEW USER
//CHECKS FOR EXISTING USER

var users : [User] = []

struct User{
    var id : Int
    var username : String
    var email : String
    var password : String
}

var username : String = ""
var email : String = ""
var password : String = ""

var user1 = User(id:1,username:"Gajinder",email:"thakur.somu1998@gmail.com",password:"abc123")
users.append(user1)

user1 = User(id:2,username:"Som",email:"thakur.somu5704@gmail.com",password:"abc123")
users.append(user1)

func userInput() -> Bool {
    
    print("Enter username : ",terminator : "")
    username = readLine() ?? ""
    print("Enter your email : ", terminator: "")
    email = readLine() ?? ""
    print("Enter passowrd : ", terminator: "")
    password = readLine() ?? ""
    return true
}

func userExists(email : String) -> Bool {
        for user in users {
            if (email == user.email) {return true}
        }
        return false
}

let addUser : (String ,String ,String) -> Bool = {
    (username,email,password) in 
    let user = User(id:1,username : username,email : email,password : password)
    users.append(user)
    // print(user)
    return true
}

func main() -> (){
    if(userInput())
    {
        if(!userExists(email : email)){
            if (addUser("ok","ok","ok")){
                print("User added Successfully")
            }
        }
        else{
            print("USER ALREADY EXISTS")
        }
    }
}
main()
