//FUNCTION
//FUNCTION TO ADD TWO NUMBERS
func sum (num1:Int,num2:Int) -> Int {
     return num1+num2
}
print("Sum is : \(sum(num1:1,num2:2))")
let s = sum
print("Sum is : \(s(1,4))")


//CLOSURE
//CLOSURE TO MULTIPLY TWO NUMBERS
let product : (Int,Int) -> Int = {
    (num1,num2) in
    return num1*num2
} 

print("Product is : \(product(2,2))")

//CLOSURE FOR POWER
let pow : (Int,Int) -> Int = {
    (num1, range) in
    var temp = 1
        for _ in 1...range{
            let n = num1
            temp *= n
        }
    return temp
}
print("Power is : \(pow(9,2))")

//CLOSURE SHORT-HAND
let add : (Int,Int) -> Int = {
    return $0 + $1
}
print(add(2,2))


//TYPEALIAS
let arr = [1,4,23,1,5,3,12,12,43,12,9]

typealias op = (Int) -> Bool 

let getEven : op = { return $0%2 == 0 }
let arr1 = arr.filter(getEven)
print("Evens : \(arr1)")

let getOdd : op = { return $0%3 == 0 }
let arr2 = arr.filter(getOdd)
print("Odds : \(arr2)")

