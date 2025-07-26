//
//  MovieModel.swift
//  MovieApp
//
//  Created by Koray Urun on 23.07.2025.
//


//BASTAN YAP
import Foundation

struct MovieModel : Decodable {
    let page : Int
    let results : [Movies]
    
}

struct Movies : Decodable {
    let original_title : String
    let overview : String
    let poster_path : String
    
}

