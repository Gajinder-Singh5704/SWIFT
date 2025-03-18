// PARENT CLASS VEHICLE FOR CARS AND BIKES
class Vehicle {
    let brand : String 
    let model : String 
    let rent_price : Double 
    var is_available : Bool 
    
    init(brand : String, model : String, rent_price : Double, is_available : Bool) {
        self.brand = brand
        self.model = model
        self.rent_price = rent_price
        self.is_available = is_available
    }
    
    //FUNCTION TO DISPLAY VEHICLE INFO
    func displayInfo(){
        print("BRAND : \(brand)")
        print("MODEL : \(model)")
        print("RENT PRICE : \(rent_price)")
    }
}

//CAR CLASS FOR CARS INFO
class Car : Vehicle{
    let seats : Int 
    let id : Int
    init(brand : String, model : String, rent_price : Double, is_available : Bool, seats : Int, id : Int) {
        self.id = id
        self.seats = seats
        super.init(brand : brand, model : model, rent_price : rent_price, is_available : is_available)
    }
    
    //OVERRIDE PARENT FUNCTION
    override func displayInfo(){
        print()
        print("ID : \(id)")
        super.displayInfo()
        print("SEATS : \(seats)")
        print()
        print("***************************************************")
    }
}

//ARRAY OF CLASSES FOR CARS
var cars = [
    Car(brand: "Toyota", model: "Corolla", rent_price: 50.0, is_available: true, seats: 5, id : 1),
    Car(brand: "Honda", model: "Civic", rent_price: 55.0, is_available: false, seats: 5, id : 2),
    Car(brand: "Ford", model: "Mustang", rent_price: 80.0, is_available: true, seats: 4, id : 3)
]

//DISPLAY ALL THE CARS
func displayCars(){
    for car in cars {
        if(car.is_available){
            car.displayInfo()
        }
    }    
}

//RENT A CAR
func rentCar() {
    print("(Enter 0 to Exit)")
    print("Enter Choice : ", terminator : "")
    let id = Int(readLine() ?? "") ?? 0
    
    if id == 0 {
        print("SUCCESSFULLY EXITED")
        return
    }
    
    for car in cars {
        if car.id == id {
            if(car.is_available == true){
                addCustomer(rented_vehicle : "car", vehicle_id : car.id) 
                car.is_available = false
                print("CAR RENTED SUCCESSFULLY")
                print("BRAND : \(car.brand)")
                print("MODEL : \(car.model)")
                print("RENT PRICE : \(car.rent_price)")
                rent.showOptions()
                return
            }
        }
    }
    print("Vehicle not found")
    rentCar()
}

 

//CLASS FOR BIKE INFO
class Bike : Vehicle{
    let gears : Int 
    let id : Int
    
    init(brand : String, model : String, rent_price : Double, is_available : Bool, gears : Int, id : Int) {
        self.id = id
        self.gears = gears
        super.init(brand : brand, model : model, rent_price : rent_price, is_available : is_available)
    }
    
    //PARENT METHOD OVERRIDE
    override func displayInfo(){
        print()
        print("ID : \(id)")
        super.displayInfo()
        print("GEARS : \(gears)")
        print()
        print("***************************************************")
    }
}

//ARRAY OF CLASSES FOR BIKES
var bikes = [
    Bike(brand: "Yamaha", model: "R15", rent_price: 30.0, is_available: true, gears: 6, id : 1),
    Bike(brand: "Honda", model: "CBR500R", rent_price: 40.0, is_available: false, gears: 6, id : 2),
    Bike(brand: "Kawasaki", model: "Ninja 400", rent_price: 50.0, is_available: true, gears: 6, id : 3),
    Bike(brand: "Ducati", model: "Panigale V2", rent_price: 90.0, is_available: true, gears: 6, id : 4),
    Bike(brand: "BMW", model: "S1000RR", rent_price: 120.0, is_available: false, gears: 6, id : 5)
]

//SHOW ALL THE AVAILABLE BIKES
func displayBikes(){
    for bike in bikes {
        if(bike.is_available){
            bike.displayInfo()
        }
    }    
}


//RENT A BIKE
func rentBike() {
    print("(Enter 0 to Exit)")
    print("Enter Choice : ", terminator : "")
    let id = Int(readLine() ?? "") ?? 0
    

    if id == 0 {
        print("SUCCESSFULLY EXITED")
        return
    }
    
    for bike in bikes {
        if bike.id == id {
            if(bike.is_available == true){
                addCustomer(rented_vehicle : "bike", vehicle_id : bike.id) 
                bike.is_available = false
                print("BIKE RENTED SUCCESSFULLY")
                print("BRAND : \(bike.brand)")
                print("MODEL : \(bike.model)")
                print("RENT PRICE : \(bike.rent_price)")
                rent.showOptions()
                return
                
            }
        }
    }
    print("Vehicle not found")
    rentBike()
}


//CLASS FOR CUSTOMER INFO
class Customer {
    var id : Int
    let name : String
    var rented_vehicle : String
    var vehicle_id : Int
    
    init(name : String, rented_vehicle : String, vehicle_id : Int){
        self.id = 0
        self.name = name
        self.rented_vehicle = rented_vehicle
        self.vehicle_id = vehicle_id
    }
}

//ARRAY OF CUSTOMER CLASS
var customers : [Customer] = []

//APPEND CUSTOMER TO CUSTOMERS ARRAY
func addCustomer(rented_vehicle : String, vehicle_id : Int) {
    print("Enter name : ", terminator : "")
    let name = readLine() ?? ""
    let customer = Customer(name : name, rented_vehicle : rented_vehicle, vehicle_id : vehicle_id)
    customers.append(customer)
    customer.id = customers.count
    // print(customer.id)
}


//MAIN CLASS
class RentalService {

    //HOME PAGE
    func showOptions(){
        print("""
            1. RENT A CAR
            2. RENT A BIKE
            3. RETURN A VEHICLE
            4. EXIT
        """)
        
        let choice = Int(readLine() ?? "") ?? 0
        
        if(choice == 1) {
            displayCars()
            rentCar()
        }
        else if(choice == 2){
            displayBikes()
            rentBike()
            
        }
        else if(choice == 3){
            returnVehicle()
        }
        else if(choice == 4){
            print("SUCCESSFULLY EXITED")
        }
        else{
            print("INVALID CHOICE")
            showOptions()
        }
    }

    //FUNCTION TO RETURN A VEHICLE
    func returnVehicle(){
        print("Enter name : ", terminator : "")
        let name = readLine() ?? ""
        for customer in customers{
            if(customer.name == name){   
                if(customer.rented_vehicle == "car"){
                    for car in cars{
                        if(car.id == customer.vehicle_id){
                            print("RENTED VEHICLE INFO")
                            car.displayInfo()
                            print("RETURN VEHICLE ? (Y/N)")
                            let choice = readLine() ?? "N"
                            if(choice == "Y"){
                                car.is_available = true
                                print("VEHICLE RETURNED SUCCESSFULLY !!")
                                rent.showOptions()
                            }
                            else{
                                print("RETURN VEHICLE CANCELED")
                                rent.showOptions()
                            }
                        }
                    }
                }
                else{
                    for bike in bikes{
                        if(bike.id == customer.vehicle_id){
                            print("RENTED VEHICLE INFO")
                            bike.displayInfo()
                            print("RETURN VEHICLE ? (Y/N)")
                            let choice = readLine() ?? "N"
                            if(choice == "Y"){
                                bike.is_available = true
                                print("VEHICLE RETURNED SUCCESSFULLY !!")
                                rent.showOptions()
                            }
                            else{
                                print("RETURN VEHICLE CANCELED")
                                rent.showOptions()
                            }
                        }
                    }
                }
                return 
            }

            print("Customer NOT Found")
        }
    }
}

let rent = RentalService()
rent.showOptions()