import Foundation

// Enlaces opcionales

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Brais"
myOptionalString2 = "Moure"
myOptionalString3 = "32"

if let myString = myOptionalString, let myString2 = myOptionalString2, let myString3 = myOptionalString3 {
    
    print("\(myString) \(myString2) \(myString3)")
    
} else if let myString = myOptionalString {
    
    print("myOptionalString posee un valor no nulo = \(myString)")
    
} else {
    
    print("Alguna variable es nula")
    
}

// Desempaquetado forzado

if myOptionalString != nil {
    print(myOptionalString!)
}
