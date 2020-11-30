//
//  Endpoint.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 30/11/2020.
//

import Foundation

protocol Endpoint {
    var scheme: String { get }
    var baseUrl: String { get }
    var path: String { get }
    var params: [URLQueryItem] { get }
    var method: String { get }
    var body: String { get }
}
