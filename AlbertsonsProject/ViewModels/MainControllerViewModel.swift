//
//  MainControllerViewModel.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/22/22.
//

import Foundation

class MainControllerViewModel {
    var params:[String:String]
    var url:URL?
    init(params:[String:String]) {
        self.params = params
        self.url = URLComponentConstants.createURLWithComponents(queryParameters: params)?.url ?? nil
    }
    
}
