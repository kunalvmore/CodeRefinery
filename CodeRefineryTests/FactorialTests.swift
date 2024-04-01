//
//  FactorialTests.swift
//  CodeRefineryTests
//
//  Created by Kunal More on 02/04/24.
//

import XCTest

func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

final class FactorialTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFactorial() {
        XCTAssertEqual(factorial(0), 1)
        XCTAssertEqual(factorial(1), 1)
        XCTAssertEqual(factorial(5), 120)
        XCTAssertEqual(factorial(10), 3628800)
    }

}
