//
//  MyCell.swift
//  Proyecto
//
//  Created by Francisco Munoz Rocha on 03/05/23.
//

import Foundation

    struct Pelicula: Codable {
        var id: Int
        var titulo: String
        var clasificacion: String
        var duracion: Int
        var sinopsis: String
        
        func getImageName() -> String {
            return "movie_1"
        }
    }
