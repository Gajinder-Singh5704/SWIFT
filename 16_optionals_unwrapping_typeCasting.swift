//OPTIONALS 
//OPTIONALS ALLOWS A VARIABLE TO EITHER HOLD A VALUE OR BE nil

var name : String? = "GAJINDER"

//UNWRAPPING - USED FOR OPTIONALS : WHEN VALUE CAN BE NIL , TO AVOID RUNTIME CRASHES

//FORCED UNWRAPPING (!)
print(name!)

//OPTIONAL BINDING ( if let or guard let)
if let unwrapped_name = name {
    print(unwrapped_name)
}

let checkVar : () -> () = {
    guard let uwname = name else {
    print("empty name")
    return
    }
print(uwname)
}
checkVar()

//Nil-Coalescing (??)
print(name ?? "Unknown")
name = nil
print(name ?? "Unknown")

//TYPE CASTING
class A {}
class B : A {}

let cls : A = B() as A

if let b = cls as? B {
    print("IT IS B CLASS")
} else {
    print("NOT B CLASS")
}
