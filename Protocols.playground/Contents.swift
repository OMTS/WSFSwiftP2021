//: Protocols


protocol Talkable {
    func talk()
}

extension Talkable {
    func talk() {
        print("parle avec la bouche")
    }
}

struct Human: Talkable {

}


struct Alien: Talkable {
    func talk() {
        print("parle avec les antennes")
    }
}

let me = Human()
let et = Alien()

me.talk()
et.talk()


enum CoffeeType {
    case latte
    case macchiato
    case soluble
    case expresso

    var description: String {
        switch self {
        case .latte:
            return "Café latté"
        case .macchiato:
            return "Café Macchiato"
        case .expresso:
            return "Café Court"
        default:
            return "Café Soluble degueu"
        }
    }
}

protocol CoffeeShop {
    func makeCoffee() -> CoffeeType
}

extension CoffeeShop {
    func makeCoffee() -> CoffeeType {
        return CoffeeType.soluble
    }
}

struct Starbuck: CoffeeShop {
    func makeCoffee() -> CoffeeType {
        return CoffeeType.latte
    }
}

struct Costa: CoffeeShop {
    func makeCoffee() -> CoffeeType {
        return CoffeeType.macchiato
    }
}


struct PMU: CoffeeShop {
    func makeCoffee() -> CoffeeType {
        return .expresso
    }
}

struct Person: CoffeeShop {
    var coffeeShop: CoffeeShop?

    func wakeUpAndHaveACoffee() {
        print("je me reveille")
        if let cs = coffeeShop {
            print(coffeeShop!.makeCoffee().description)
        } else {
            print("je préfère le thé")
        }
        print("je vais au boulot")
    }
}

var him = Person()
/*let pmu = PMU()

him.coffeeShop = pmu

let sb = Starbuck()
him.coffeeShop = sb


let costa = Costa()
him.coffeeShop = costa
*/

var moi = Person()
moi.coffeeShop = Starbuck()

him.coffeeShop = moi

him.wakeUpAndHaveACoffee()



let i: Int = 4












