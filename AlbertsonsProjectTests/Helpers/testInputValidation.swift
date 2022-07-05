//
//  testInputValidation.swift
//  AlbertsonsProjectTests
//
//  Created by Michelle Grover on 6/23/22.
//

import XCTest
@testable import AlbertsonsProject

class testInputValidation: XCTestCase {
    
    var passString:String?
    var failString:String?

    override func setUpWithError() throws {
        passString = "&*OR"
        failString = "&*"
    }

    override func tearDownWithError() throws {
        passString = nil
        failString = nil
    }

    func testValidCharactersForAcronymAPICall() throws {
        let output = try? passString?.validCharactersForAcronymAPICall()
        XCTAssertEqual(output, "OR")
    }
    
    func testValidCharactersForAcronymAPICallThatThrows() throws {
        XCTAssertThrowsError(try failString?.validCharactersForAcronymAPICall()) { error in
            XCTAssertEqual(error as! ValidInputError, ValidInputError.noValidInput)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
