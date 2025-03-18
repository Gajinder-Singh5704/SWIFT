//ENUMS

//ENUM DEFINITION
enum interns {
    case Gajinder
    case Divay
    case Vaani
    case Ajay
    case Rajat
}

print(interns.Gajinder)

enum interns1 {
    case Gajinder,
     Divay,
     Vaani,
     Ajay,
     Rajat
}
print(interns1.Divay)


//Enums with Associated Values
enum Result {
    case success(String)
    case failure(Int)
}
let output = Result.success("ok")
print(output)

//Enums with Raw Values
enum Resultt :String {
    case success = "SUCCESS"
    case failure = "Failure"
}
print(Resultt.success.rawValue)

//Enums with Methods Values
enum Greet {
    case hello,hola,namaste
    func greetUser(name : String) -> String {
        switch self{
            case .hello : 
                return "Hello \(name)"
            case .hola : 
                return "hola \(name)"
            case .namaste : 
                return "namaste \(name)"
        }
    }
}
let g = Greet.hello
print(g.greetUser(name : "Gajinder"))



//ENUM METHODS

// allCases
enum interns1 : CaseIterable {
    case Gajinder,
     Divay,
     Vaani,
     Ajay,
     Rajat
}

print(interns1.allCases.count)
for intern in interns1.allCases {
    print(intern)
}

//MUTATING
enum Light {
    case red, yellow, green

    mutating func next() {
        switch self {
        case .red:
            self = .yellow
        case .yellow:
            self = .green
        case .green:
            self = .red
        }
    }
}

var signal = Light.red
print(signal) 
signal.next() 
print(signal) 


//COMPUTED PROPERTIES
enum Shape {
    case rectangle (length : Double, breadth : Double)
    case square (side : Double)
    var area : Double {
        switch self{
            case .rectangle (let length, let breadth):
                return length*breadth
            case .square (let side):
                return side*side
        }
    }
}
let myShape = Shape.rectangle(length : 10,breadth : 10)
print(myShape.area)