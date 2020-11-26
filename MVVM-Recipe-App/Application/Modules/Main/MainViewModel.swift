//
//  MainViewModel.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

struct MainViewModel {
    var userDefaultsService: UserDefaultsServiceProtocol
    
    init(userDefaultsService: UserDefaultsServiceProtocol) {
        self.userDefaultsService = userDefaultsService
    }
    
    func recipes(completion: @escaping ([Recipe]) -> Void) {
        completion(userDefaultsService.getRecipes())
    }
}
