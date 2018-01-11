//: Classes
class Mammifere {
    var firstName: String
    var age: Int
    var isWalking = false
    
    init(firstName: String, age: Int) {
        self.firstName = firstName
        self.age = age
    }
    
    func talk() {
        print("Bla bla bla")
    }
    
    func walk() {
        isWalking = true
        if age < 50 {
            print("Pas à Pas, " + firstName + " marche vite!")
        } else {
            print("Pas à Pas, " + firstName + " marche un peu moins vite!")
        }
    }
    
    func stopWalking() {
        isWalking = false
        print("ok je m'arrête")
    }
}

class Chat: Mammifere {
    override func talk() {
        print("les chats ne parlent pas")
    }
}

class Person: Mammifere {
    var lastName: String
    
    init(firstName: String,
         lastName: String,
         age: Int) {
        
        self.lastName = lastName
        super.init(firstName: firstName, age: age)
    }
}



//Utilisation de la classe en créant une instance de Person
let jon = Person(firstName: "Jon", lastName: "Snow", age: 34)
//constructeur de person

if !jon.isWalking {
    jon.walk()
}

jon.age = jon.age + 40

jon.walk()
jon.talk()
if jon.isWalking {
    jon.stopWalking()
}

let felix = Chat(firstName: "Félix", age: 10)
felix.walk()
felix.talk()


//: Struct
struct Author {
    var name: String
    var books: [Book]
}

struct Editor {
    var name: String
    var editedBooks: [Book]
}

struct Book {
    var nbPages: Int
    var title: String
    var author: Author
    var editor: Editor?
    
    func whatIsTheNameOfEditor() -> String? {
        /*if let ed = editor {
            return ed.name
        }
        return "No editor"*/
        return editor?.name //Optional chaining
    }
}
let homere = Author(name: "Homère", books: [])
let hachette = Editor(name: "Hachette", editedBooks: [])

let illiade = Book(nbPages: 800, title: "Illiade", author: homere, editor: hachette)

if let editorName = illiade.whatIsTheNameOfEditor() {
    print(editorName)
} else {
    print("No editor")
}

class Personne {
    var name: String = "Khal"
}

var khal = Personne()
var otherPerson = khal

print(khal.name)
print(otherPerson.name)

khal.name = "Suns and Stars"

print(khal.name)
print(otherPerson.name)

struct Cat {
    var name = "Félix"
}

var f = Cat()
var cp = f

print(f.name)
print(cp.name)

f.name = "Médor"
print(f.name)
print(cp.name)


//:Enum WITH RAW VALUE
enum BankAccount: Int {
    case positive = 1
    case negative = 0
    
    func displayBankerMessage() {
        switch self {
        case .positive:
            print("Super vous avez de l'argent")
        case .negative:
            print("Je vous bloque vos CB")
        }
    }
}

let myBanAccount = BankAccount(rawValue: 1)
myBanAccount!.displayBankerMessage()


//:Enum WITH ASSOCIATED VALUE
enum BankAccount2 {
    case positive (Int)
    case negative (Int)
    func displayBankerMessage() {
        switch self {
        case .positive(let value):
            print("Super vous avez \(value) € sur votre compte")
            
        case .negative(_):
            print("Je vous bloque vos CB car vous etes négatif de")
            
        }
    }
}

let myBankAccount = BankAccount2.negative(1700)
myBankAccount.displayBankerMessage()
























