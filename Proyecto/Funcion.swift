//
//  Funcion.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 05/05/23.
//

import Foundation

class Funcion: Codable, Comparable {
    
    private var id: Int
    private var pelicula: Pelicula
    private var sala: Sala
    private var hora: String
    private var boletosVendidos: Int
    
    init(id: Int, pelicula: Pelicula, sala: Sala, hora: String, boletosVendidos: Int) {
        self.id = id
        self.pelicula = pelicula
        self.sala = sala
        self.hora = hora
        self.boletosVendidos = boletosVendidos
    }
        
    
    static func < (lhs: Funcion, rhs: Funcion) -> Bool {
        return (lhs.hora < rhs.hora) && (lhs.id < rhs.id)
    }
    
    static func == (lhs: Funcion, rhs: Funcion) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Devuelve el numero de boletos disponibles
    func getBoletosDisponibles() -> Int {
        return self.sala.cupo - self.boletosVendidos
    }
    
    // Incrementa los boletos vendidos en caso de que haya suficientes
    // Devuelve true si se vendieron los boletos, false en caso contrario
    func venderBoletos(cantidad: Int) -> Bool {
        let disponibles = self.getBoletosDisponibles()
        if disponibles >= cantidad {
            self.boletosVendidos += cantidad
            return true
        }
        else {
            return false
        }
    }
    
    func getImageName() -> String {
        return pelicula.getImageName()
    }
    
    func getTitulo() -> String {
        return pelicula.titulo
    }
    
    func getDescripcionCelda() -> String {
        return "Hora: \(hora)\nDuración: \(pelicula.duracion) min."
        // Puedes descomentar y ajustar este código según tus necesidades
        // return "Hora: \(hora)\nDuración: \(pelicula.duracion) min.\nTipo de sala: \(sala.tipo)\nPrecio: $\(sala.precio)/$\(sala.precio/2)\nBoletos disponibles: \(getBoletosDisponibles())/\(sala.cupo)"
    }
    
    func getDetalles() -> String {
        return "Clasificación: \(pelicula.clasificacion)\n\n\(pelicula.sinopsis)"
    }
    
    func getPrecio() -> Int {
        return self.sala.precio
    }
    
    func getSala() -> String {
        return "\(self.sala.id), \(self.sala.tipo)"
    }
    
    func getHora() -> String {
        return self.hora
    }
}
