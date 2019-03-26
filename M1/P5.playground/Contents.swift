import UIKit

func numar_palindrm ( number: Int) -> Int? {
    var aux = number
    var oglindit = 0
    var produs = 1
    var result = 0
    
    while aux > 0 {
        oglindit = oglindit * produs + aux % 10
        produs *= 10
    }

    if oglindit == number {
            result = 1
    }
    
    switch result{
    case 1:
        return number
    default:
        return nil
    }
}

let palindrom = 1

var numar = 24342
let result = numar_palindrm(number: numar)
if result != nil {
    let value = result!
    print("Din verificare avem numarul \(value) palindrom")
}
else{
    print("Numarul nu este palindrom")
}
