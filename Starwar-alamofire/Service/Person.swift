// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let person = try? newJSONDecoder().decode(Person.self, from: jsonData)

import Foundation

// MARK: - Person
class Person: Codable {
    let results: [Result]?

    enum CodingKeys: String, CodingKey {
        case results = "results"
    }

    init(results: [Result]?) {
        self.results = results
    }
}

// MARK: - Result
class Result: Codable {
    let name: String?
    let height: String?
    let mass: String?
    let hairColor: String?
    let skinColor: String?
    let eyeColor: String?
    let birthYear: String?
    let gender: Gender?
    let homeworld: String?
    let films: [String]?
    let species: [String]?
    let vehicles: [String]?
    let starships: [String]?
    let created: String?
    let edited: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case height = "height"
        case mass = "mass"
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case eyeColor = "eye_color"
        case birthYear = "birth_year"
        case gender = "gender"
        case homeworld = "homeworld"
        case films = "films"
        case species = "species"
        case vehicles = "vehicles"
        case starships = "starships"
        case created = "created"
        case edited = "edited"
        case url = "url"
    }

    init(name: String?, height: String?, mass: String?, hairColor: String?, skinColor: String?, eyeColor: String?, birthYear: String?, gender: Gender?, homeworld: String?, films: [String]?, species: [String]?, vehicles: [String]?, starships: [String]?, created: String?, edited: String?, url: String?) {
        self.name = name
        self.height = height
        self.mass = mass
        self.hairColor = hairColor
        self.skinColor = skinColor
        self.eyeColor = eyeColor
        self.birthYear = birthYear
        self.gender = gender
        self.homeworld = homeworld
        self.films = films
        self.species = species
        self.vehicles = vehicles
        self.starships = starships
        self.created = created
        self.edited = edited
        self.url = url
    }
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
    case nA = "n/a"
}


