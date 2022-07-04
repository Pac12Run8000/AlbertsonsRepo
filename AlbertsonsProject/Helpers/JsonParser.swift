//
//  JsonParser.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 7/4/22.
//

import Foundation


struct JsonParser {
    
    public static func parseData(data:Data) throws -> AcronymObject? {
        var output:AcronymObject?
        do {
            output = try JSONDecoder().decode(AcronymObject.self, from: data)
        } catch {
            throw JSONParsError.notConformingToModel(object: "AcronymObject")
        }
        guard let output = output else {
            return nil
        }
        return output
    }
}
