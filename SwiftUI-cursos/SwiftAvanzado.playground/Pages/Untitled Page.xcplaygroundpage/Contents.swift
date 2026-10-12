//: [Previous](@previous)

import Foundation

protocol PersonProtocol {
    var name: String {get set}
    var age: Int {get set}
    
    func fullName() -> String
}


struct Programador: PersonProtocol {
    func fullName() -> String {
        return "El nombre es \(name), edad: \(age) y su lenguaje favorito es \(lenguaje)"
    }
    
    var name: String
    var age: Int
    var lenguaje: String
}

struct Profesor: PersonProtocol {
    func fullName() -> String {
        return "El nombre es \(name) , con edad: \(age) y imparte la asignatura de \(subject)"
    }
    
    var name: String
    var age: Int
    var subject: String
}

//protocolo delegado

class FirstClass: SecondClassProtocol {
    func call() {
        print("Estoy de vuelta")
    }
    
    func callSecond(){
        let secondClass = SecondClass()
        secondClass.delegate = self
        secondClass.callFirst()
    }
}

protocol SecondClassProtocol {
    func call()
}

class SecondClass {
    var delegate: SecondClassProtocol?
    
    func callFirst(){
        sleep(5)
        
        delegate?.call()
    }
}

let firstClass = FirstClass()
firstClass.callSecond()


var mySet = Set<String>()
let mySet2: Set<String> = []

mySet.insert("Hola")

for myElement in mySet {
    print(myElement)
}

