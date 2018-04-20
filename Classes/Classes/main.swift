//
//  main.swift
//  Classes
//
//  Created by Victor Miranda de Melo on 20/04/18.
//  Copyright © 2018 Victor Miranda de Melo. All rights reserved.
//

import Cocoa

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class FormaGeometrica {
    var x: Double
    var y: Double
    init(x:Double, y:Double) {
        self.x = x
        self.y = y
    }
    func mover(_ newX : Double, _ newY : Double) {
        self.x = newX
        self.y = newY
    }
    func igualForma(a outro: FormaGeometrica) -> Bool {
        return self.x == outro.x && self.y == outro.y
    }
}

class Retangulo : FormaGeometrica {
    var altura: Double
    var largura: Double
    
    func area() -> Double {
        return altura * largura
    }
    
    func igual(a outro:Retangulo) -> Bool {
        print(self.x)
        print(outro.x)
        return self.altura == outro.altura &&
        self.largura == outro.largura &&
        self.x == outro.x &&
        self.y == outro.y
    }
    
    init(x: Double, y: Double, largura: Double, altura: Double) {
        self.largura = largura
        self.altura = altura
        super.init(x: x, y: y)
    }
    
}

let ret = Retangulo(x: 4.0, y: 3.0, largura: 20.0, altura: 20.0)
let ret2 = Retangulo(x: 4.0, y: 3.0, largura: 20.0, altura: 20.0)
//let ret2 = ret
ret.x = 2
//print(ret.igual(a: ret2))

class Circulo : FormaGeometrica {
    var raio:Double

    func area() -> Double {
        return raio*raio*Double.pi
    }
    func igual(a outro:Circulo) -> Bool {
        return self.raio == outro.raio &&
                self.x == outro.x &&
                self.y == outro.y
    }

    init(x: Double, y: Double, raio: Double) {
        self.raio = raio
        super.init(x:x, y:y)
    }

}

let circ = Circulo(x: 6.0, y: 8.0, raio: 2.0)
let circ2 = Circulo(x: 3.0, y: 4.0, raio: 2.0)

print(circ2.x)
print(circ.x)

class Forma3D: FormaGeometrica {
    var z: Double
    
    init(x: Double, y: Double, z: Double) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    func volume() -> Double {
        return self.x * self.y * self.z
    }
}

//class Esfera: Forma3D {
//
//}


