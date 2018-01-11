//: Palindrome


var array = [1,3,4,3,1]

func isPalindrome(tab: [Int], start: Int, end: Int) -> Bool {
    if start >= end {
        return true
    } else {
        if tab[start] == tab[end] {
            return isPalindrome(tab: tab, start: start + 1, end: end - 1)
        } else {
            return false
        }
    }
}

print(isPalindrome(tab: array, start: 0, end: array.count - 1))



