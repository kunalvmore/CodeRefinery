//
//  PerformanceTests.swift
//  CodeRefineryTests
//
//  Created by Kunal More on 10/04/24.
//

import XCTest
@testable import CodeRefinery

final class PerformanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformance() throws {
        measure {
            let _ = costlyFunction()
        }
    }

}
