//ARRAY OF USER STRUCTURES
var users : [User] = []

//STRUCTURE FOR USER INFO
struct User{
    var id : Int
    var username : String
    var email : String
    var password : String
}

//ADDING SOME EXISTING USERS

//USER 1
var user1 = User(id:1,username:"Gajinder",email:"thakur.somu1998@gmail.com",password:"abc123")
users.append(user1)

//USER 2
user1 = User(id:2,username:"Som",email:"thakur.somu5704@gmail.com",password:"abc123")
users.append(user1)

//FUNCTION TO TAKE USER INPUT FOR SIGNUP
func userInput() -> (String, String, String) {
    
    print("Enter username : ",terminator : "")
    let username = readLine() ?? ""
    print("Enter your email : ", terminator: "")
    let email = readLine() ?? ""
    print("Enter passowrd : ", terminator: "")
    let password = readLine() ?? ""
    
    return (username,email,password)
}

//FUNCTION CHECK IF EMAIL EXISTS OR NOT 
func userExists(email : String) -> Bool {
        for user in users {
            if (email == user.email) {return true}
        }
        return false
}

//CLOSURE TO ADD USER IF NEW USER
let addUser : (String ,String ,String) -> Bool = {
    (username,email,password) in 
    let user = User(id: users.count + 1, username: username, email: email, password: password)
    users.append(user)
    return true
}


// FUNCTION TO TAKE USER INPUT FOR LOGIN
func loginInput() -> (String,String) {
    print("Enter your email : ", terminator: "")
    let email = readLine() ?? ""
    print("Enter passowrd : ", terminator: "")
    let password = readLine() ?? ""
    
    return (email,password)
}

// CLOSURE FOR SUCCESSFULL LOGIN
let loginUser : (String,String) -> Bool = {
    (email,password) in
    for user in users {
            if (email == user.email) {
                if(password == user.password)
                    {
                        print("Welcome Back! \(user.username)")
                        return true
                    }
            }
        }
        return false
}

//LOGIN FUNCTION
func login() {
     let (em,pass) = loginInput()
                if loginUser(em,pass) {                   
                }
                else{
                    let message = """
                        INCORRECT EMAIL OR PASSWORD!
                        1. SIGNUP WITH NEW EMAIL
                        2. LOGIN WITH EXISTING EMAIL
                        """
                    print(message)
                    let choice = Int(readLine() ?? "")
                    if choice == 1{
                        signUp()
                    }
                    else{
                        login()
                    }
                }
}

//SIGNUP FUNCTION
func signUp() {
    let (username,email,password) = userInput()

        if(!userExists(email : email)){
            if addUser(username,email,password){
                print("User added Successfully")
                print("UPDATED USERS LIST : \(users)")
            }
        }
        else{
            let message = """
                USER ALREADY EXISTS
                1. SIGNUP WITH NEW EMAIL
                2. LOGIN WITH EXISTING EMAIL
                """
            print(message)
            let choice = Int(readLine() ?? "")
            if choice == 1{
                signUp()
            }
            else{
                login()
            }
    
        }
    }
signUp()
