//
//  NetworkingManager.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/22/22.
//

import Foundation


class NetworkingManager {
    
    static let shared = NetworkingManager()
    public func makeAPICall(url:URL?, completion:@escaping(Result<Data, APICallError>) -> ()) {
        guard let url = url else {
            completion(.failure(.noURL))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completion(.failure(.noUrlData))
                return
            }
            guard (response as! HTTPURLResponse).statusCode == 200 as? Int else {
                completion(.failure(.badResponseFromAPI))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
    
}
