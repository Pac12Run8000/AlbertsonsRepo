//
//  testUrlComponentConstants.swift
//  AlbertsonsProjectTests
//
//  Created by Michelle Grover on 6/22/22.
//

import XCTest
@testable import AlbertsonsProject

class testUrlComponentConstants: XCTestCase {
    var queryValue:String? = nil
    var queryKey:URLQueryName? = nil

    override func setUpWithError() throws {
        queryValue = "MA"
        queryKey = .sf
    }

    override func tearDownWithError() throws {
        queryValue = nil
        queryKey = nil
    }

    func testCreateURLWithComponents() throws {
        guard let value = queryValue, let key = queryKey?.rawValue, let url = URLComponentConstants.createURLWithComponents(queryParameters: [key:value]) else {return}
        
        XCTAssertEqual("http://nactem.ac.uk/software/acromine/dictionary.py?\(key)=\(value)", "\(url)")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
