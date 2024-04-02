//
//  FunctionalTests.swift
//  CodeRefineryTests
//
//  Created by Kunal More on 02/04/24.
//

@testable import CodeRefinery
import XCTest

final class FunctionalTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testIsAdult() {
        let adultPerson = Person(name: "Joy", age: 30)
        XCTAssertTrue(adultPerson.isAdult())
        
        let childPerson = Person(name: "Alice", age: 10)
        XCTAssertFalse(childPerson.isAdult())
    }

}
