var users : [User] = []

struct User{
    var id : Int
    var username : String
    var email : String
    var password : String
}

var user1 = User(id:1,username:"Gajinder",email:"thakur.somu1998@gmail.com",password:"abc123")
users.append(user1)

user1 = User(id:2,username:"Som",email:"thakur.somu5704@gmail.com",password:"abc123")
users.append(user1)

func userInput() -> (String, String, String) {
    
    print("Enter username : ",terminator : "")
    let username = readLine() ?? ""
    print("Enter your email : ", terminator: "")
    let email = readLine() ?? ""
    print("Enter passowrd : ", terminator: "")
    let password = readLine() ?? ""
    
    return (username,email,password)
}

func userExists(email : String) -> Bool {
        for user in users {
            if (email == user.email) {return true}
        }
        return false
}

let addUser : (String ,String ,String) -> Bool = {
    (username,email,password) in 
    let user = User(id: users.count + 1, username: username, email: email, password: password)
    users.append(user)
    // print(user)
    return true
}

func main() {
    let (username,email,password) = userInput()

        if(!userExists(email : email)){
            if addUser(username,email,password){
                print("User added Successfully")
                print("UPDATED USERS LIST : \(users)")
            }
        }
        else{
            print("USER ALREADY EXISTS")
        }
    }
main()
