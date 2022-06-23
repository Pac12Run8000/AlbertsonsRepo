//
//  CustomErrors.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/23/22.
//

import Foundation

enum ValidInputError:Error {
    case noValidInput
}

extension ValidInputError:CustomStringConvertible {
    var description: String {
        switch self {
        case .noValidInput:
            return "There were no valid letter characters present to create an acronym."
        }
    }
}

enum APICallError:Error {
    case noUrlData
    case noURL
    case badResponseFromAPI
}

extension APICallError:CustomStringConvertible {
    var description: String {
        switch self {
        case .noUrlData:
            return "No data was returned from the call."
        case .noURL:
            return "No URL was passed to the NetworkManager."
        case .badResponseFromAPI:
            return "The status code response was not 200"
        }
    }
    
    
    
}
