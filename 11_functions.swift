//FUNCTIONS

//WITHOUT PARAMETERS & WITHOUT RETURN TYPE

func func1(){
    print("Hello World")
}
func1()


//WITH PARAMETERS & WITHOUT RETURN TYPE
func greet(name:String){
    print("Hello \(name)!")
}
greet(name:"Gajinder")

//WITHOUT PARAMETERS & WITH RETURN TYPE
func func3 () -> String {
    return "Hello World"
}
print(func3())

//WITH PARAMETERS & WITH RETURN TYPE
func func4 (name:String) -> String {
    return("Hello \(name)!")
}

print(func4(name:"SOM"))


