//
//  IngredientType.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 18/11/2020.
//

import Foundation

enum IngredientType: String, Decodable {
    case meat = "Meat"
    case baking = "Baking"
    case condiments = "Condiments"
    case drinks = "Drinks"
    case produce = "Produce"
    case misc = "Misc"
    case dairy = "Dairy"
}
