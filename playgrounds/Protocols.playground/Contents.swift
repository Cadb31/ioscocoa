import UIKit

protocol TestMe {
    var cash : Int { get }
    var creditCheck : Int { get set }
    func purchase (price : Int) -> String
}

class WindowShopper : TestMe{
    var tempValue : Int = 0
    var cash : Int = 0
    var creditCheck : Int {
        get {
            return tempValue
        }
        set (newValue) {
            tempValue = newValue
            cash -= 10
        }
    }
    func purchase (price : Int) -> String {
        cash -= price
        return "Bought something!"
    }
}

var shopper = WindowShopper ()
shopper.cash = 450
shopper.purchase (price: 129)
shopper.cash


protocol First {
    var name : String { get }
}
protocol Second {
    var ID : Int { get }
}
protocol Third: First, Second {
    var email : String { get }
}
class InheritProtocols : Third {
    var name : String = ""
    var ID : Int = 0
    var email : String = ""
}
var friend = InheritProtocols()
friend.name = "Cindy Smith"
friend.ID = 12
friend.email = "cindysmith@isp.com"
print (friend.name)
print (friend.ID)
print (friend.email)
