//STRUCTURE DECLARATION
struct Interns {
    var name : String?
    var age : Int?
    var department : String?
}

//STRUCTURE DEFINITION
var intern1 = Interns(name: "GAJINDER", age: 21, department: "IOS")
print("ORIGINAL INTERN = \(intern1)") //OUTPUT : ORIGINAL INTERN = Interns(name: Optional("GAJINDER"), age: Optional(21), department: Optional("IOS"))

//STRUCTURE USES PASS BY VALUE METHOD
var intern_1 = intern1
intern_1.name = "GAJINDER SINGH"
print("COPIED INTERN = \(intern_1)") //OUTPUT : COPIED INTERN = Interns(name: Optional("GAJINDER SINGH"), age: Optional(21), department: Optional("IOS"))

print("ORIGINAL INTERN = \(intern1)") //ORIGINAL INTERN = Interns(name: Optional("GAJINDER"), age: Optional(21), department: Optional("IOS"))

//THE ORIGINAL STRUCTURE REMAINS UNCHANGED SINCE THE VALUE IS PASSED INTO COPIED STRUCTURE , NOT THE REFERENCE

