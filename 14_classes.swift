//CLASSES 
//CLASS DECLARRATION
class Students {
    //CLASS DATA
    var id : Int
    var name : String
    var course : String
    
    //INITITALIZER
    init(id : Int, name : String, course : String){
        self.id = id
        self.name = name
        self.course = course
    }
    
    //MEMBER METHOD
    func getInfo() {
        print("ID : \(id)")
        print("Student Name : \(name)")
        print("Course : \(course)")
    }
}

//INSTANTIATION OF CLASS
let student1 = Students(id : 2211587, name : "Gajinder" , course : "BCA")
//CALLING CLASS FUNCTION
student1.getInfo()
