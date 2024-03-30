//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Jasmine Sung on 30/3/2024.
//

import Foundation

struct CharacterResults : Codable {
    let info : InfoModel
    let results : [CharacterModel]
}

struct InfoModel : Codable {
    let count : Int
    let pages : Int
    let next : String
    let prev : String?
}

struct CharacterModel : Codable, Identifiable {
    let id : Int
    let name : String
    let status : String
    let species : String
    let type : String
    let gender : String
    let origin : CharacterDetailModel
    let location : CharacterDetailModel
    let image : String
    let episode : [String]
    let url : String
    let created : String
}

struct CharacterDetailModel : Codable {
    let name : String
    let url : String
}
