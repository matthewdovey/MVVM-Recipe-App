//
//  ServiceManager.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

class ServiceManager: Services {
    var userDefaultsService: UserDefaultsServiceProtocol
    var networkService: NetworkServiceProtocol
    var fileReaderService: FileReaderServiceProtocol
    
    init() {
        userDefaultsService = UserDefaultsService(.standard)
        networkService = NetworkService()
        fileReaderService = FileReaderService()
    }
}
