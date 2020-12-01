//
//  Endpoint.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 30/11/2020.
//

import Foundation

protocol Endpoint {
    var scheme: UrlScheme { get }
    var baseUrl: String { get }
    var path: String { get }
    var params: [URLQueryItem] { get }
    var method: UrlMethod { get }
    var body: Data { get }
}

extension Endpoint {
    var scheme: UrlScheme {
        .https
    }
    
    var baseUrl: String {
        ""
    }
}

enum UrlScheme: String {
    case https
    case http
}

enum UrlMethod: String {
    case post = "POST"
    case get = "GET"
}
