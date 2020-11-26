//
//  UserDefaultsServiceProtocol.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

protocol UserDefaultsServiceProtocol {
    func getRecipes() -> [Recipe]
    func store(recipes: [Recipe])
}
