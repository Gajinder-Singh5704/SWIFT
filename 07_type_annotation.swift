//We can define the datatype of the variable by type_annotation
var name : String = "Som"
print(name)
// name = 12   //cannot assign value of type 'Int' to type 'String'

//Type declaration for array
var arr = [String]()
arr = ["GAJINDER"]
arr.append("SOM")
// arr.append(1)   //cannot convert value of type 'Int' to expected argument type 'String'
print(arr)

//Type declaration for Set
var st = Set<String>()
st = ["Som","Som"]
// st = [1]    //cannot convert value of type 'Int' to expected element type 'String'
print(st)


//Type declaration for dictionary
var dict = [String:Int]()
dict = ["Gajinder" : 1]
// dict = [1 : "Gajinder"]     //cannot convert value of type 'String' to expected dictionary value type 'Int'
print(dict)