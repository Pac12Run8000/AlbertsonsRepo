//
//  acronymObjectModel.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/18/22.
//

import Foundation


struct AcromineResponse:Codable {
    var responses:[Acronym]
}

struct Acronym:Codable {
    var sf:String
    var lfs:[Acronym]
}


//JSONDecoder().decode([AcronyObjectElement].self, from: <#T##Data#>)
///*
// {
//     "glossary": {
//         "title": "example glossary",
//         "GlossDiv": {
//             "title": "S",
//             "GlossList": {
//                 "GlossEntry": {
//                     "ID": "SGML",
//                     "SortAs": "SGML",
//                     "GlossTerm": "Standard Generalized Markup Language",
//                     "Acronym": "SGML",
//                     "Abbrev": "ISO 8879:1986",
//                     "GlossDef": {
//                         "para": "A meta-markup language, used to create markup languages such as DocBook.",
//                         "GlossSeeAlso": ["GML", "XML"]
//                     },
//                     "GlossSee": "markup"
//                 }
//             }
//         }
//     }
// }
// */
//
// // MARK: - AcronyObjectElement
// struct AcronyObjectElement: Codable {
//     let sf: String
//     let lfs: [LF]
// }
//
// // MARK: - LF
// struct LF: Codable {
//     let lf: String
//     let freq: Int
//     let since: Int
//     let vars: [LF]?
// }
//
//// typealias AcronyObject = [AcronyObjectElement]



