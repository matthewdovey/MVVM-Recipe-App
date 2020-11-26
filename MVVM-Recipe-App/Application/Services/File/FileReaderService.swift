//
//  FileReaderService.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

struct FileReaderService: FileReaderServiceProtocol {
    func decode(fileNamed name: String = "recipes", withExtension ext: String = "json") -> [Recipe] {
        guard let url = Bundle.main.url(forResource: name, withExtension: ext) else {
            return []
        }
        
        let jsonDecoder = JSONDecoder()
        guard let data = try? Data(contentsOf: url) else {
            return []
        }
        let decodedJson = try? jsonDecoder.decode([Recipe].self, from: data)
        return decodedJson ?? []
    }
}
