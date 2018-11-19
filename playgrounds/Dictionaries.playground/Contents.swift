import UIKit

var myDictionary = [12: "Joel", 7: "Walter"]

myDictionary.removeValue(forKey: 7)
print(myDictionary)

myDictionary.removeAll()
print(myDictionary)

myDictionary = [25: "Jose", 30: "Matias"]
print(myDictionary)

myDictionary.count

let myKeys = Array(myDictionary.keys)
let myValues = Array(myDictionary.values)

print(myKeys)
print(myValues)
