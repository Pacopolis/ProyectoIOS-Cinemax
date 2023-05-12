//
//  Boletos.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 04/05/23.
//


import Foundation

struct VentaBoletos: CustomStringConvertible {
    var funcion: Funcion
    var cantidadAdultos: Int
    var cantidadNinos: Int

    static var id: Int = 0
    
    init(funcion: Funcion, cantidadAdultos: Int, cantidadNinos: Int) {
        self.funcion = funcion
        self.cantidadAdultos = cantidadAdultos
        self.cantidadNinos = cantidadNinos
        VentaBoletos.id += 1
    }
    
    
    public var description: String {
        return "Número de transacción: \(VentaBoletos.id) \n\nPedido\n\n\nPelicula: \(funcion.getTitulo())\nHora: \(funcion.getHora())\nSala: \(funcion.getSala())\n\nBoletos de adulto: \(cantidadAdultos)\nPrecio: $ \(funcion.getPrecio())\n\nBoletos de niño: \(cantidadNinos)\nPrecio: $ \(funcion.getPrecio()/2)\n\n\nTotal: $ \(self.total())"
    }
    
    public func total() -> Int {
        let precio = funcion.getPrecio()
        return cantidadAdultos * precio + cantidadNinos * precio / 2
    }

}

