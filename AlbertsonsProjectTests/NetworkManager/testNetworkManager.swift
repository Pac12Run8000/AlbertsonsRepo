//
//  testNetworkManager.swift
//  AlbertsonsProjectTests
//
//  Created by Michelle Grover on 6/24/22.
//

import XCTest
@testable import AlbertsonsProject

class testNetworkManager: XCTestCase {
    var successUrl:URL?
    var failedUrl:URL?

    override func setUpWithError() throws {
        successUrl = URLComponentConstants.createURLWithComponents(queryParameters: [URLQueryName.sf.rawValue:"MI"])?.url
        failedUrl = URL(string: "https://nactem.ac.ukxxx/software/acromine/dictionary.py?sf=MI")
    }

    override func tearDownWithError() throws {
        successUrl = nil
    }

    func testMakeAPICall() throws {
        let expectation = expectation(description: "exp1")
        NetworkingManager.shared.makeAPICall(url: successUrl) { result in
            switch result {
            case .failure(let err):
                XCTAssertNil(err)
            case .success(let data):
                XCTAssertNotNil(data)
            }
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }
    
    func testMakeAPICallWithNoURL() throws {
        let expectation = expectation(description: "exp2")
        NetworkingManager.shared.makeAPICall(url: nil) { result in
            switch result {
            case .failure(let err):
                XCTAssertEqual(err as! APICallError , APICallError.noURL)
            case .success(let data):
                XCTAssertNil(data)
            }
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }
    
    func testMakeAPICallWithNoURLData() throws {
        let expectation = expectation(description: "exp3")
        NetworkingManager.shared.makeAPICall(url: failedUrl) { result in
            switch result {
            case .failure(let err):
                XCTAssertEqual(err, APICallError.noUrlData)
            case .success(let data):
                XCTAssertNil(data)
            }
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }
    


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
