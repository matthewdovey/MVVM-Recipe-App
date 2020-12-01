//
//  NetworkServiceProtocol.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

protocol NetworkServiceProtocol {
    func request<T: Codable>(request: URLRequest, completion: @escaping (Result<T, Error>) -> Void)
    func buildRequest(from endpoint: Endpoint) -> URLRequest?
}
