//: Optionals
var firstname = "Jon"
var middleName: String? = "The bastard"
//var middleName: String?

var lastname = "Snow"

print(firstname)

//:METHODES POUR EXTRAIRE LE CONTENU D'UN OPTIONAL

//1 - Force unwrapping ou Explicit unwrapping
if middleName != nil {
    print(middleName!)
} else {
    print("No middle Name")
}

//2 - Optional binding
if let newMiddleName = middleName {
    print(newMiddleName)
} else {
    print("No middle Name")
}

print(lastname)



