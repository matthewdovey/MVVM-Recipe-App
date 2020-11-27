//
//  RecipeViewModel.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 27/11/2020.
//

import UIKit

struct RecipeViewModel {
    let name: String
    let ingredients: [Ingredient]
    let steps: [String]
    let timers: [Int]
    let imageUrl: UIImage
}
