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

//INHERITANCE
class Semester : Students {
    var sem : Int
    
    init(sem : Int, name : String, course : String, id : Int){
        self.sem = 6
        super.init( id : id, name : name, course : course)
    }
    
    //OVERRIDING PARENT FUNCTION
    override func getInfo(){
        super.getInfo()
        print("Semester : \(sem)")
    }
}
//INSTANTIATION OF CLASS
let student1 = Students(id : 2211587, name : "Gajinder" , course : "BCA")

//INHERITED CLASSS
let sem =  Semester(sem : 6, name : "Som", course : "BCA", id : 2211623)
sem.getInfo()
