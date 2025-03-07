//Unary operators
var a = -1
var b = 1
print(a+b)
print()
 
var c = !true
print (c)
print()
 
//ASSIGNMENT OPERATOR
var d = 2       //ASSIGN
d += b          //UPDATE AND ASSIGN
print (d)
print()
 
//ARITHMETIC OPERATORS
var addition =  a+b                         //ADDITION
print("Sum is : \(addition)")

var subtraction =  a-b                      //SUBTRACTION
print("Difference is : \(subtraction)")     

var multiplication =  a*b                   //MULTIPLICATION
print("Product is : \(multiplication)")

var division =  10/5                        //DIVISION
print("Quotient is : \(division)")

var modulus = 10%5                          //MODULUS
print("Remainder is : \(modulus)")

print()

//COMPARISON OPERATORS
var num1 = 5
var num2 = 19

print(num1<num2)        //Less than
print(num1>num2)        //Greater than
print(num1 == num2)     //EQUALS TO
print(num1 != num2)     //NOT EQUALS
print(num1<=num2)       //LESS THAN OR EQUAL TO
print(num1>=num2)       //GREATER THAN OR EQUAL TO

//TERNARY OPERATOR
num1 > num2 ? print("Num 1 is Greater") : print("Num 2 is Greater")     //AKA IF-ELSE SHORTHAND


// LOGICAL OPERATORS
let aa = false     
var res = !aa ? "ACCESS GRANTED" : "ACCESS DENIED"       //LOGICAL NOT(!)
print(res)

let temp = 2
res = temp > 0 && temp%2 == 0 ? "POSITIVE EVEN NUMBER" : "EITHER NEGATIVE OR ODD"        //LOGICAL AND(&&)
print(res)

res = temp > 0 || temp%2 == 0 ? "EITHER POSITIVE OR EVEN" : "EITHER NEGATIVE OR ODD"      //LOGICAL OR(||)
print(res)

 