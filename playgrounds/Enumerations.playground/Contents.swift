import UIKit

enum Pets {
    
    case dog
    case cat
    case fish
    case bird
    
}

var allowed : Pets = .cat

allowed = .dog

print("A \(allowed) is an allowed pet.")


struct Person {
    
    var name: String
    var email: String
    var phone: String
    
    init(name: String, email: String, phone: String) {
        self.name = name
        self.email = email
        self.phone = phone
    }
}


var worker = Person(name: "Juan Perez", email: "j.perez@email.com", phone: "695719219")

print(worker)

