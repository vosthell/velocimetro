//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
        case Apagado = 0,
            VelocidadBaja = 20,
            VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades)
    {
        self = velocidadInicial
    }
}


//var velocidad = Velocidades(50)
//velocidad.init(velocidadInicial: 50)
Velocidades.Apagado


class Auto{
    var velocidad : Velocidades
    
    
    init ()
    {
            self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String)
    {
     //   velocidad.hashValue = 1
        var descripcion : String = ""
        if(self.velocidad.rawValue==0)
        {
            descripcion = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        }
        if(self.velocidad.rawValue==20)
        {
            descripcion = "Velocidad Baja"
            self.velocidad = Velocidades.VelocidadMedia
        }
        if(self.velocidad.rawValue==50)
        {
            descripcion = "Velocidad media"
            self.velocidad = Velocidades.VelocidadAlta
        }
        if(self.velocidad.rawValue==120)
        {
            descripcion = "Veliocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        //Velocidades.Apagado
        return (self.velocidad.rawValue, descripcion)
    }
}

var auto = Auto()
//(auto.cambioDeVelocidad()

for id in 0...20{
    auto.velocidad = Velocidades.VelocidadBaja
    print (id, auto.cambioDeVelocidad())
    
}
