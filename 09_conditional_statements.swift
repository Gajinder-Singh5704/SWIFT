// IF CONDITION
var age = 17
if age >= 18 {
    print("YOU'RE ELIGIBLE TO VOTE")  
}

//COMPARE ENUMS
enum temp : Comparable {
    case low
    case mid
    case high
}

let temp_2 = temp.low
let temp_1 = temp.high 

print(temp_1 > temp_2)  //The output will be true because low comes before high in the enum list.

//IF-ELSE CONDITIONS
if age >= 18 {
    print("YOU'RE ELIGIBLE TO VOTE")  
}
else{
    print("YOU'RE NOT ELIGIBLE TO VOTE")
} 

//SWITCH CASE
var tmp = "high"

switch (tmp) {
case "high":
    print("TEMPERAURE IS HIGH");
case "mid":
    print("TEMPERAURE IS MID");  
case "low":
    print("TEMPERAURE IS LOW");  
    
default:
     print("NONE"); 
}
