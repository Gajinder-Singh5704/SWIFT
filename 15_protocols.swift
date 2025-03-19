//PROTOCOLS
protocol calculate {
    var a : Float { get set }
    var b : Float { get set }
    func divide()
    func add()
    func multiply()
    func subtract()
}

//CONFORMING PROTOCOLS
class Calculator : calculate {
    
    //DATA
    var a : Float = 0.0
    var b : Float = 0.0

    init(a : Float, b : Float) {
        self.a = a
        self.b = b
    }
    
    //MEMBER METHODS
    func divide() {
        print("DIVISION OF \(a) AND \(b) =  \(a / b)")
    }
    func add() {
        print("ADDITION OF \(a) AND \(b) =  \(a + b)")
    }
    func multiply() {
        print("PRODUCT OF \(a) AND \(b) =  \(a * b)")
    }
    func subtract() {
        print("SUBTRACTION OF \(a) AND \(b) =  \(a - b)")
    }

}

print("ENTER NUMBER 1 : ", terminator : "")
let a = Float(readLine() ?? "") ?? 0
print("ENTER NUMBER 2 : ", terminator : "")
let b = Float(readLine() ?? "") ?? 0

print("ENTER OPERATION : ")
print("""
1. DIVIDE
2. ADD
3. MULTIPLY
4. SUBTRACT
""")
let choice = Int(readLine() ?? "") ?? 0

switch (choice) {
    case 1 : 
        Calculator(a : a, b : b).divide()
    case 2 : 
        Calculator(a : a, b : b).add()
    case 3 : 
        Calculator(a : a, b : b).multiply()
    case 4 : 
        Calculator(a : a, b : b).subtract()
    default : 
        print("INVALID CHOICE")
}




