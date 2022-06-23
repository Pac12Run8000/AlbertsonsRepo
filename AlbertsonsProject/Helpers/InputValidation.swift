//
//  InputValidation.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/23/22.
//

import Foundation

struct InputValidation {
    
    
}

extension String {
    
    func validCharactersForAcronymAPICall() throws -> String {
        var output = ""
        let chars = Array(self)
        for item in chars {
            if item.lowercased() >= "a" && item.lowercased() <= "z" {
                output.append(item)
            }
        }
        output = output.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !output.isEmpty else {
            throw ValidInputError.noValidInput
        }
        return output
    }
}
