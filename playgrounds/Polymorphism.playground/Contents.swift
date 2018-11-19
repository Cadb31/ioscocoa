import UIKit

class GameObject {
    var speed : Int = 0
    var locationX : Int = 3
    var locationY : Int = 3
    func move (X: Int, Y: Int) {
        locationX += X + speed
        locationY += Y + speed
    }
}

class FlyingObject : GameObject {
    var height : Int = 0
    override func move (X: Int, Y: Int) {
        locationX += X + speed
        locationY += Y + speed
        height += (X + Y) / 2
    }
}
var dog = GameObject()
var bird = FlyingObject()
dog.speed = 1
dog.move (X: 4, Y: 7)
bird.speed = 3
bird.move (X: 4, Y: 7)
print(dog.locationX)
print(dog.locationY)
print(dog.speed)
print(bird.locationX)
print(bird.locationY)
print(bird.height)
print(bird.speed)

// Extension

class EmptyClass {
}
extension EmptyClass {
    var age : Int {
        get {
            return 50
        }
    }
    func retire (testAge : Int) -> String {
        if testAge < 62 {
            return "Keep working"
        } else {
            return "Time to retire"
        }
    }
}

var aWorker = EmptyClass ()
aWorker.retire(testAge: 65)
aWorker.age
