//SET
var interns = Set(["GAJINDER", "DIVAY", "SOM", "VAANI","ABHI","AJAY","AJAY","SOM","VAANI"])

print(interns)
print()

//EMPTY SET 
let empty_set = Set<String>()
print(empty_set)
print()

//SET METHODS
print(interns.sorted())     //.sorted()
print()

interns.insert("KARTIK") //.insert()
print(interns)
print()

print(interns.contains("SOM"))      //.contains()
print(interns.contains("OM"))
print()

print(interns.count)        //.count
print()

//ANYHASHABLE
var internss: Set<AnyHashable> = ["GAJINDER", "DIVAY", "SOM", "VAANI","ABHI","AJAY","AJAY","SOM","VAANI",1,2,3,4,4,4,5,5]

print(internss)
print()