import Cocoa

protocol Animal{
    
    var name: String {get set}
    var age: Int {get}
}

protocol Sound{
    func produceSound(sound: String)
}

struct Pet: Animal, Sound{
    
    var name: String
    var age: Int {return 4}
    
    func produceSound(sound: String) {
        print(sound)
    }
}

var animal = Pet(name: "Taffy")

print(animal.name)
print(animal.age)

struct Feral: Animal, Sound{
    var name: String
    let age: Int
    
    func produceSound(sound: String) {
        print(sound)
    }
}

var pest = Feral(name: "Big Fish", age: 5)
pest.produceSound(sound:"Guau Guau")


print(pest)
