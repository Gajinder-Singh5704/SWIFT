/*
Days of the Week Enum

-> Create an enum Weekday with cases for all 7 days.
-> Add a computed property that returns whether the day is a weekday or weekend.
*/

enum Days{
    case monday,tuesday,wednesday,thursday,friday,saturday,sunday
    var description : String{
        switch self{
            case .monday :
                return "weekday"
            case .tuesday :
                return "weekday"
            case .wednesday :
                return "weekday"
            case .thursday :
                return "weekday"
            case .friday :
                return "weekday"
            case .saturday :
                return "weekend"
            case .sunday :
                return "weekend"
        }
    }
}

let day = Days.sunday
print(day.description)