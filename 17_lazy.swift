//LAZY IN SWIFT
struct Employee{
    var name : String
    var role : String
    var age : Int
    
    // var intro = "\(name) is \(age) years old and the role is \(role) "   /* this will throw error cannot use instance member '' within property initializer */
    lazy var intro = "\(name) is \(age) years old and the role is \(role) "
}

var emp = Employee(name : "Gajinder", role : "IOS", age : 21)
print(emp.intro)