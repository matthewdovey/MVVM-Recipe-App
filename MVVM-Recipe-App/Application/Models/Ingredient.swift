//
//  Ingredient.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import Foundation

struct Ingredient: Decodable {
    let quantity: Int
    let name: String
    let type: IngredientType
}
