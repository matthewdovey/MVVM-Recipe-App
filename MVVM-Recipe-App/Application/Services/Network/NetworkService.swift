//
//  NetworkService.swift
//  MVVM-Recipe-App
//
//  Created by Matthew Dovey on 26/11/2020.
//

import Foundation

struct NetworkService: NetworkServiceProtocol {
    private var session: URLSession
    private var decoder: JSONDecoder
    
    init(urlSession: URLSession = .shared,
         decoder: JSONDecoder = JSONDecoder()) {
        self.session = urlSession
        self.decoder = decoder
    }
    
    func request<T: Codable>(request: URLRequest, completion: @escaping (Result<T, Error>) -> Void) {
        session.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                completion(.failure(error ?? RequestError.dataError))
                return
            }
            guard let decodedData = try? decoder.decode(T.self, from: data) else {
                completion(.failure(error ?? RequestError.decoderError))
                return
            }
            completion(.success(decodedData))
            return
        }.resume()
    }
    
    func buildRequest(from endpoint: Endpoint) -> URLRequest? {
        var urlComponents = URLComponents()
        urlComponents.scheme = endpoint.scheme.rawValue
        urlComponents.host = endpoint.baseUrl
        urlComponents.path = endpoint.path
        guard let url = urlComponents.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.httpBody = endpoint.body
        for param in endpoint.params {
            if let value = param.value {
                request.addValue(value, forHTTPHeaderField: param.name)
            }
        }
        return request
    }
}

enum RequestError: LocalizedError {
    case dataError
    case decoderError
    case urlError
    
    var errorDescription: String? {
        switch self {
        case .dataError: return "Failed to retrieve data..."
        case .decoderError: return "Failed to decode data..."
        case .urlError: return "Invalid URL in request..."
        }
    }
}
