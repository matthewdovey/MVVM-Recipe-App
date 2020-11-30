//
//  Recipe.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import Foundation

struct Recipe: Decodable {
    let name: String
    let ingredients: [Ingredient]
    let steps: [String]
    let timers: [Int]
    let imageUrl: String
    let originalUrl: String
}
