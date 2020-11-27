//
//  FileReaderService.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

struct FileReaderService: FileReaderServiceProtocol {
    private var bundle: Bundle
    
    init(bundle: Bundle = .main) {
        self.bundle = bundle
    }
    
    func decode(fileNamed name: String = "recipes", withExtension ext: String = "json") -> [Recipe] {
        guard let url = bundle.url(forResource: name, withExtension: ext) else {
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
