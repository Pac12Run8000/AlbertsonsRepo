//
//  MainControllerViewModel.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/22/22.
//

import Foundation

class MainControllerViewModel {
    init() {}
    static func fetchAPIData(key:URLQueryName, value:String, completion:@escaping(Result<Data, APICallError>) -> ()) {
        guard let url = URLComponentConstants.createURLWithComponents(queryParameters: [key.rawValue:value])?.url else {
            completion(.failure(.noURL))
            return
        }
        NetworkingManager.shared.makeAPICall(url: url) { result in
            switch result {
            case .failure(let err):
                completion(.failure(err))
            case .success(let data):
                completion(.success(data))
            }
        }
        
        
        
    }
    
    
}
