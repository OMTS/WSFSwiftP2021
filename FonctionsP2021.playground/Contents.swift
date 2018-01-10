//: Fonctions

//Déclaration 1 : Nom explicite
func add(a: Int, b: Int) -> Int { //(Int, Int) -> Int
    return a + b
}

//Utilisation 1
let sum = add(a: 3, b: 7)
print(sum)


//Déclaration 2 : Closure ou fonctions anonymes ou fonctions inline
let add2 = { (a: Int, b: Int) -> Int in
    return a + b
}


//Utilisation 2
let sum2 = add2(7, 12)
print(sum2)


//Les fonction ayant des types, je peux passer une fonction en param d'une autre fonction

func applyArithmeticOperation(p1: Int,
                              p2: Int,
                              f: (Int, Int) -> Int)
                              -> Int {
    return f(p1,p2)
}


let sum3 = applyArithmeticOperation(p1: 4, p2: 7, f: add2)
print(sum3)


func multiply(c: Int, d: Int) -> Int {
    return c * d
}

let m3 = applyArithmeticOperation(p1: 4, p2: 7, f: multiply)
print(m3)


//:Higher order functions

//Fonction map
let arrayOriginal = [1,2,3]
let newArray = arrayOriginal.map { $0 * 2 }
print(newArray)

let arrayOfString = ["2","72","tot","7","-1"]

//let oneInt = Int("42") // String -> Int?
//print(oneInt)

let arrayOfInt = arrayOfString.map { (s: String) -> Int in
    let i  = Int(s)
    //Syntaxe 1
    /*if i != nil {
        return i!
    } else {
        return -99
    }*/
    
    //Syntaxe 2
    if let monEntier = i {
        return monEntier
    } else {
        return -99
    }
}

print(arrayOfInt)

//Fonction filter
let rawTab = [3,4,1,89,-1,8]
let filtered = rawTab.filter { i -> Bool in
    return i == 89
}

print(filtered)


func filterByHand(tab: [Int]) -> [Int] {
    var tab2 = [Int]()
    for val in tab {
        if val < 1 || val > 5 {
            tab2.append(val)
        }
    }
    return tab2
}

//print(filterByHand(tab: [0,1,2,3,4,5,6]))


let filteredTab = [-1,0,1,2,3,4,5,6].filter { $0 < 1 || $0 > 5 }
                                    .map { $0 * 2 }

print(filteredTab)


//Fonction sorted
let unsortedArray = [3,4,1,89,-1,8]
let sortedArray = unsortedArray.sorted { $0 < $1 }
print(sortedArray)


//Fonction reduce

func average(tab: [Int]) -> Double {
    var sum = 0
    for val in tab {
        sum = sum + val
    }
    var moyenne = 0.0
    if tab.count > 0 {
        moyenne = Double(sum / tab.count)
    } else {
        moyenne = 0.0
    }
    return moyenne
}

print(average(tab:[15, 18, 3, 20]))

let notes = [15, 18, 3, 20]
let newSum = notes.reduce(0) { $0 + $1 }
print(Double(newSum/notes.count))



