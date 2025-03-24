//ARRAYS

//ARRAY DEFINITION
var names = ["GAJINDER","DIVAY","SHIVAM","RAHUL"]   //STRING ARRAY
print(names)
print()

var salaries = [10000,11000,12000,13000]    //INTEGER ARRAY
print(salaries)
print()

//ARRAY INDEXING
print("FIRST NAME IS \(names[0])")
print()

//EMPTY ARRAY
var arr1 = Array<String>()
print("EMPTY ARRAY 1 : \(arr1)")
print()

var arr2 = [String]()
print("EMPTY ARRAY 2 : \(arr2)")
print()


var arr3 : [Int] = []
print("EMPTY ARRAY 3 : \(arr3)")
print()

//ARRAY METHODS
names.append("SOM")     //.append
print("Updated Names array : \(names)")
print()

print("Count of Names array : \(names.count)")   //.count
print()

names.remove(at:1)      //remove(at)
print("Updated Names array with remove(at) : \(names)")
print()

names.removeAll()       //removeAll
print("Updated Names array with removeAll(): \(names)")
print()

names = ["GAJINDER","DIVAY","SHIVAM","RAHUL"]   //contains
print("CONTAINS : \(names.contains("GAJINDER"))")
print("CONTAINS : \(names.contains("ANKIT"))")
print()

print("SORTED NAMES : \(names.sorted())")   //SORTED
print()

var revarr = Array(names.reversed())
print("REVERSED NAMES : \(revarr)")   //REVERSED 