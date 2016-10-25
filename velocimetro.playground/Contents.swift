//: Playground - noun: Mi velocimetro

import UIKit

enum Velocidades : Int{
    case apagado = 0 , velocidadBaja = 20 ,velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

//var velocidad = Velocidades.velocidadBaja
//velocidad.rawValue

class Auto {
    var velocidad = Velocidades(velocidadInicial: .apagado)
    
    
    init(){
        self.velocidad = .apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        var velString = " "
        let velActual = self.velocidad
         velActual.rawValue
        
        switch velActual.rawValue{
        case 0 :
            velocidad = .velocidadBaja
            velString = "Velocidad Baja"
        case 20 :
            velocidad = .velocidadMedia
            velString = "Velocidad Media"
        case 50 :
            velocidad = .velocidadAlta
            velString = "Velocidad Alta"
        case 120 :
            velocidad = .velocidadMedia
            velString = "Velocidad Media"
        default :
            velocidad = .apagado
            velString = "Apagado"
        }
        
        return (self.velocidad.rawValue,velString)
    }
}

//var velocidadIni = Velocidades(velocidadInicial: .apagado)
var auto = Auto.init()
//auto.velocidad.rawValue
//var auto = Auto.cambioDeVelocidad()
//auto.cambioDeVelocidad()
//auto.velocidad = .velocidadBaja
//var miAuto = auto.cambioDeVelocidad()
//miAuto.actual

for num in 1...20 {
    if num == 1 {
        print("\(auto.velocidad.rawValue), Apagado")
    }
    else {
        var miAuto = auto.cambioDeVelocidad()
        print("\(miAuto.0), \(miAuto.1)")
        
    }
}
