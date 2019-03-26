import UIKit

func cel_mai_mare_divizor_comun (numar_a: Int, numar_b: Int) -> Int {
    var numar_1 = numar_a ; var numar_2 = numar_b
    
    while numar_1 != numar_2 {
        if numar_1 > numar_2 {
            numar_1 -= numar_2
        }
        else{
            numar_2 -= numar_1
        }
    }
    return numar_1
    
}


let numar_1 = 905
let numar_2 = 605
var divizor_comun=cel_mai_mare_divizor_comun(numar_a: numar_1, numar_b: numar_2)
print("cel mai mare divizor comun pentru a=\(numar_1) si b=\(numar_2) este \(divizor_comun)")


