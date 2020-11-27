//
//  Services.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

protocol Services {
    var userDefaultsService: UserDefaultsServiceProtocol { get }
    var networkService: NetworkServiceProtocol { get }
    var fileReaderService: FileReaderServiceProtocol { get }
}
