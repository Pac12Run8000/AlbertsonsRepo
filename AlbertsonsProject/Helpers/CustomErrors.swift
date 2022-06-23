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
            return "There were no valid letter characters for the acronym."
        }
    }
    
    
    
}
