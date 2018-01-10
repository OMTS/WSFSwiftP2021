//: Variables, constantes et Types de base


import UIKit

//Déclaration explicite
var maString: String = "toto"

//Type Inferrence
var maStringInferred = "toto inferred"

print(maString)
maString = "tata"
print(maString)

let monEntier = 3
print(monEntier)

let myDouble = 3.14159 // Double
let myBool = false //false
let myFloat: Float = 3.14159 // Float


//Types Array, Dictionary
var myArrayHomo = [1,4,6,-1] // Homogène
let myArrayHetero: [Any] = [1,4,6,-1, "toto", false] // Heterogène

print(myArrayHomo)
print(myArrayHetero)

//Creation d'un tableau
let myEmptyArray: [Int] = []
let otherEmptyArray = [Int]()
let complexeArrayInit = Array<Int>()

let value = myArrayHomo[3]
print(value)
myArrayHomo[3] = 10
print(value)
print(myArrayHomo[3])

myArrayHomo.append(42) //ajout d'un element
print(myArrayHomo)
//let myColorsArray = [UIColor.red, UIColor.white, UIColor.blue]


let arrayOfString = ["afficher1", "ne pas afficher", "afficher2", "ne pas afficher", "afficher3", "ne pas afficher"]

//pour i = 0; i< n ; i+1 {
    //arrayOfString[i]
//}
for (i,s) in arrayOfString.enumerated() {
    if i % 2 == 0 {
       print(s)
    }
}

//print(arrayOfString[11])
//print("will not be printed")

for j in 0..<arrayOfString.count {
    if j % 2 == 0 {
        print(arrayOfString[j])
    }
}
//Concatenation de tableaux
var firstArray = [0,1,66,3]
let secondArray = [4,5,6,7]
firstArray = firstArray + secondArray
print(firstArray)

//Suppression dans un tableau
firstArray.remove(at: 2)
print(firstArray)

//Dictionnaires
var myFirstDict: [String: Any] = ["key1": "value1", "key2" : "TOTO", "key3": 43]
print(myFirstDict["key3"] as Any)

myFirstDict["key2"] = 72
print(myFirstDict)

myFirstDict["key4"] = 101
print(myFirstDict)

myFirstDict.removeValue(forKey: "key1")
print(myFirstDict)


print(myFirstDict["doesntExist"] as Any)
print("something else")

//Tuple
let myTuple  = (3,"trois")
print(myTuple.0)
print(myTuple.1)

let (myInt, myString) = (3,"trois")
print(myInt)
print(myString)

let myNamedTuple = (first: 3, second: "trois")
print(myNamedTuple.first)
print(myNamedTuple.second)










