//: Playground - noun: a place where people can play

import Cocoa

// -------------  Con un Delegado

struct Meteorologo {
    func pronosticar(nubosidad: String, estacion: String) -> String {
        var pronostico = ""
        if nubosidad == "alta" && estacion == "invierno" || estacion == "otoño" {
            pronostico = "llueve seguro"
        }else {
            pronostico = "no creo que llueva"
        }
        return pronostico
    }
}

struct Turista {
    var nacionalidad = ""
    var paisVisitado = ""
    var delegate: Meteorologo
}


let faustoTurista = Turista(nacionalidad: "Español", paisVisitado: "China", delegate: Meteorologo())


faustoTurista.nacionalidad
faustoTurista.paisVisitado
faustoTurista.delegate.pronosticar(nubosidad: "baja", estacion: "verano")
faustoTurista.delegate.pronosticar(nubosidad: "alta", estacion: "invierno")


//----------------  adoptando un Protocolo


protocol AccountantDelegate {
    func addListOfNumbers (num1: Int, num2 : Int) -> Int
}

struct NiñoPequeño: AccountantDelegate {
    func addListOfNumbers(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    var edad: Int
}


let tony = NiñoPequeño(edad: 5)
tony.addListOfNumbers(num1: 3, num2: 2)












