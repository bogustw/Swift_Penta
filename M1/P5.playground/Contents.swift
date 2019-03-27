import UIKit

func numar_palindrm ( number: Int) -> Int? {
    var aux = number
    var oglindit = 0
    
    
    while aux > 0 {
        oglindit = oglindit * 10 + aux % 10
        aux = aux / 10
    }

    if oglindit == number {
            return number
    }
    else {
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
