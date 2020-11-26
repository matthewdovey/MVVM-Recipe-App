//
//  FileReaderServiceProtocol.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

protocol FileReaderServiceProtocol {
    func decode(fileNamed name: String, withExtension ext: String) -> [Recipe]
}
