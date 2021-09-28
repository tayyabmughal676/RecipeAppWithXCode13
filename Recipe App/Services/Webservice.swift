//
//  Webservice.swift
//  Recipe App
//
//  Created by Thor on 28/09/2021.
//

import Foundation

// Get All Categories
// Get Recipe For Category
// Get Recipe detail

enum NetworkError: Error{
    case badRequest
    case decodingError
}


class Webservice{
    
    @available(iOS 15.0.0, *)
    func get<T: Decodable>(url:URL, parse: (Data)-> T?) async throws -> T{
        let (data, response ) = try await URLSession.shared.data(from: url)
       
        if(response as? HTTPURLResponse)?.statusCode != 200{
            throw NetworkError.badRequest
        }
        
        guard let result = parse(data) else {
            throw NetworkError.decodingError
        }
        
        return result
    }
}
