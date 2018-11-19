import UIKit

func sayHello(param: Int){
    print("Hello ", param)
}

var i = 0
while i <= 10{
    sayHello(param: i)
    i+=1
}

func salesTaxes(amount: Double) -> Double{
    let currentTax = 0.075
    return amount * currentTax
}

let price = 59.75
var total: Double = 0.0

total = price + salesTaxes(amount: price)
print("total: ", total)

//Func with multiple returns

var myTuple: (Double, Double, Double) = (0, 0, 0)

func currency(amount: Double) -> (Double, Double, Double){
    return(amount * 0.789, amount * 1.52, amount * 2.10)
}

myTuple = currency(amount: 20.45)
print("MyTuple: ", myTuple)
