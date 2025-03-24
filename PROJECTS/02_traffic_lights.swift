/*Define a Traffic Light Enum

-> Create an enum TrafficLight with cases .red, .yellow, and .green.
-> Add a method that returns the next light in the sequence.

*/

enum TrafficLight {
    case red, yellow, green
    mutating func next(){
        switch self{
            case .red :
                self = .yellow
            case .yellow :
                self = .green
            case .green :
                self = .red
        }
    }
}
print(TrafficLight.red)
var light = TrafficLight.red
light.next()
print(light)
light.next()
print(light)