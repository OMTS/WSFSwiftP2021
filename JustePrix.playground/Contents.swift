//: Juste Prix
import Foundation

enum Result {
    case higher
    case lower
    case win
}

struct Animator {
    var choosenNumber: Int
    
    init(forced: Int? = nil) {
        self.choosenNumber = forced ?? Int(arc4random() % 1000000) + 1
        
        print("I choosed \(choosenNumber)")
    }
    
    func amIRight(guess: Int) -> Result {
        if guess > choosenNumber {
            print("Lower")
            return .lower
        } else if guess < choosenNumber {
            print("Higher")
            return .higher
        } else {
            return .win
        }
    }
}


struct Player {
    var animator: Animator
    
    init(animator: Animator) {
        self.animator = animator
    }
    
    func guess(lower: Int, higher: Int) -> Int {
        var guessNumber = lower + (higher - lower) / 2
        print("I'm guessing that the number is \(guessNumber)")
        
        if animator.amIRight(guess: guessNumber) == .lower {
            return guess(lower: lower, higher: guessNumber)

        } else if animator.amIRight(guess: guessNumber) == .higher {
            return guess(lower: guessNumber, higher: higher)
        } else {
            print("BOUYA! 🎉")
            return guessNumber
        }
    }
}

//Utilisation
let lagaffe = Animator()
let me = Player(animator: lagaffe)
print("I won with \(me.guess(lower: 0, higher: 1000000))")
