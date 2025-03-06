//DEFINING DICTIONARY

let interns = [
    "name": "Gajinder",
    "domain": "iOS",
    "company": "Cropsly"
]

print(interns)

print(interns["name"])      //shows output but gives warning
print(interns["name",default: "Unknown"])      //Give a default value if key not found

//EMPTY DICTIONARY
var heights = [String : Int]()
print(heights)

var dict = [String:Int]()
dict = [
    "Gajinder" : 20,
     "SOM" : 20
]
print(dict)