//
//  HomeNetwokTests.swift
//  CodeRefineryTests
//
//  Created by Kunal More on 10/04/24.
//

import XCTest
@testable import CodeRefinery

final class HomeNetwokTests: XCTestCase {
    
    private enum APIError: Error {
        case unknownError
        case connectionError
        case invalidCredentials
        case invalidRequest
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_that_response_contains_string_for_valid_request() {
        let mockService = MockServicable()
        mockService.result = .success("Api succeeded")
        let viewModel = HomeViewModel(service: mockService)
        viewModel.fetchFromAPI()
        XCTAssertEqual(viewModel.resultData, "Api succeeded")
    }
    
    func test_that_resultData_is_nil_for_invalid_request() {
        let mockService = MockServicable()
        let errorObj: APIError = .invalidRequest
        mockService.result = .failure(errorObj)
        let viewModel = HomeViewModel(service: mockService)
        viewModel.fetchFromAPI()
        XCTAssertEqual(viewModel.resultData, nil)
    }

}

//Mock Class
class MockServicable: NetworkingService {
    var result: Result<String, Error>!
    func getDataFromAPI(completion: @escaping (Result<String, any Error>) -> Void) {
        completion(result)
    }
}
