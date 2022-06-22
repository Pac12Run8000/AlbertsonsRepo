//
//  URLComponentConstants.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/22/22.
//

import Foundation


struct URLComponentConstants {
        
    static func createURLWithComponents(queryParameters:[String:String]? = nil) -> URLComponents? {
            var components = URLComponents()
            components.scheme = "http"
            components.host = "nactem.ac.uk"
            components.path = "/software/acromine/dictionary.py"
        if let queryParameters = queryParameters {
            components.queryItems = queryParameters.map { URLQueryItem(name: $0.key, value: $0.value) }
        }
            return components
        }

}
