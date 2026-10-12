//: [Previous](@previous)

import Foundation


var valor: Float?
    
let longitud:Dictionary<String, Double> =
["m": 1.0, "km": 1000.0, "mi": 1609.34, "ft": 0.3048, "cm": 0.01]

func kmAMillas(km: Float) -> Float {
    return km * 0.621371
}


enum ErrorConversion: Error {
    case unidadNoSoportada(String)
}
    
func convertirLongitud(_ valor: Double, unidad_origen: String, unidad_destino: String)
throws -> Double {
    guard let o = longitud[unidad_origen] else {
        throw ErrorConversion.unidadNoSoportada(unidad_origen)
    }
    guard let d = longitud[unidad_destino] else {
        throw ErrorConversion.unidadNoSoportada(unidad_destino)
    }
    return valor * o / d
}

enum Temperatura {
    case celsius, fahrenheit, kelvin
    
    func aCelsius(_ v: Double) -> Double {
        switch self {
            case .celsius: return v
            case .fahrenheit: return (v - 32) * 5 / 9
            case .kelvin: return v - 273.15
        }
    }
    
    func desdeCelsius(_ v: Double) -> Double {
        switch self {
        case .celsius: return v
        case .fahrenheit: return v * 9 / 5 + 32
        case .kelvin: return v + 273.15
        }
    }
}


//Probar la clase
print(kmAMillas(km: 10))

do {
    print(try convertirLongitud(5, unidad_origen: "km", unidad_destino: "mi"))
} catch ErrorConversion.unidadNoSoportada(let u){
    print("Unidad no soportada: \(u)")
}



