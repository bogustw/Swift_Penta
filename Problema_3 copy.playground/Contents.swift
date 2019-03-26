import UIKit

var str = "Hello, playground"

func cea_mai_mare_cifra( number : Int )-> Int {
    var aux = number
    var cifra_max = 0
    var ultima_cifra = 0
    while aux > 0 {
        ultima_cifra = aux % 10
        if ultima_cifra > cifra_max {
            cifra_max = ultima_cifra
        
        }
        aux = aux / 10
    }
    return cifra_max
    
    
}

let numar = 763493
var cifra = cea_mai_mare_cifra(number: numar)
print("Cea mai mare cifra a numarului \(numar) este \(cifra)")
