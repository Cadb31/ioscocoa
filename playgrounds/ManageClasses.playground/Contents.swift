import UIKit

class Worker{
    
    var id: Int
    var name: String
    var salary: Double
    
    init(id: Int, name: String, salary: Double) {
        self.id = id
        self.name = name
        self.salary = salary
    }
}


var worker = Worker(id: 10, name: "Bob", salary: 102.0)
print("Worker:  \(worker.id) \(worker.name) \(worker.salary)")


class Shape{
    
    var height: Int = 5
    var weight: Int{
        return height * 2
    }
}

var rectangle = Shape()

print(rectangle.height)
print(rectangle.weight)

class Blob{

    var height: Int = 5
    var weight: Int = 10
    var area: Int {
        get{
            return weight * height
        }
        
        set(nvalue){
            height = nvalue + 10
            weight = nvalue - 5
        }
    }
}

var ceo = Blob()

print(ceo.area)
ceo.area = 247
print(ceo.height)
print(ceo.weight)

class Decrement{
    
    var counter: Int = 10
    
    func decrement(){
        counter = counter - 1
    }
    
    func decrementByNumber(stepDecrement: Int){
        counter = counter - stepDecrement
    }
}

var countDown = Decrement()

print(countDown.counter)
countDown.decrement()
print(countDown.counter)
countDown.decrementByNumber(stepDecrement: 3)
print(countDown.counter)

class MathBrain {
    var tempValue: Float = 0
    func average (first : Float, second : Float) -> Float {
        return (first + second) / 2
    }
}
var math = MathBrain()
var temp : Float = math.average(first: 4.0, second: 9.0)
print (temp)

