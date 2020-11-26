//
//  UserDefaultsService.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

private let recipeKey = "Recipes"

struct UserDefaultsService: UserDefaultsServiceProtocol {
    private var userDefaults: UserDefaults
    
    init(_ userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }
    
    func getRecipes() -> [Recipe] {
        return userDefaults.object(forKey: recipeKey) as? [Recipe] ?? []
    }
    
    func store(recipes: [Recipe]) {
        userDefaults.setValue(recipes, forKey: recipeKey)
    }
}
